; ModuleID = './app/widgets/gimpviewablebox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type opaque
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
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpViewableButton = type { %struct._GimpButton, %struct._GimpContainer*, %struct._GimpContext*, i32, i32, i32, i32, %struct._GimpDialogFactory*, i8*, i8*, i8*, %struct._GtkWidget* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpWindowStrategy = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpViewRendererGradient = type { %struct._GimpViewRenderer, double, double, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_brush_box_new = private unnamed_addr constant [19 x i8] c"gimp_brush_box_new\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"container == NULL || GIMP_IS_CONTAINER (container)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_prop_brush_box_new = private unnamed_addr constant [24 x i8] c"gimp_prop_brush_box_new\00", align 1
@__func__.gimp_dynamics_box_new = private unnamed_addr constant [22 x i8] c"gimp_dynamics_box_new\00", align 1
@__func__.gimp_prop_dynamics_box_new = private unnamed_addr constant [27 x i8] c"gimp_prop_dynamics_box_new\00", align 1
@__func__.gimp_pattern_box_new = private unnamed_addr constant [21 x i8] c"gimp_pattern_box_new\00", align 1
@__func__.gimp_prop_pattern_box_new = private unnamed_addr constant [26 x i8] c"gimp_prop_pattern_box_new\00", align 1
@__func__.gimp_gradient_box_new = private unnamed_addr constant [22 x i8] c"gimp_gradient_box_new\00", align 1
@__func__.gimp_prop_gradient_box_new = private unnamed_addr constant [27 x i8] c"gimp_prop_gradient_box_new\00", align 1
@__func__.gimp_palette_box_new = private unnamed_addr constant [21 x i8] c"gimp_palette_box_new\00", align 1
@__func__.gimp_prop_palette_box_new = private unnamed_addr constant [26 x i8] c"gimp_prop_palette_box_new\00", align 1
@__func__.gimp_font_box_new = private unnamed_addr constant [18 x i8] c"gimp_font_box_new\00", align 1
@__func__.gimp_prop_font_box_new = private unnamed_addr constant [23 x i8] c"gimp_prop_font_box_new\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"gimp-brush-grid|gimp-brush-list\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Open the brush selection dialog\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"viewable-button\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gimp-edit\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"gimp-viewable-box-editor\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"gimp-dynamics-list\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"gimp-dynamics\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Open the dynamics selection dialog\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"gimp-pattern-grid|gimp-pattern-list\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Open the pattern selection dialog\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"gimp-gradient-list|gimp-gradient-grid\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Open the gradient selection dialog\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Reverse\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"gimp-flip-horizontal\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"notify::\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"gradient-reverse\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"gimp-palette-list|gimp-palette-grid\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Open the palette selection dialog\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"gimp-font-list|gimp-font-grid\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"gtk-select-font\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Open the font selection dialog\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"popup-view-type\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"popup-view-size\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_brush_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_brush_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_brush_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %label.addr, align 8
  %30 = load i32, i32* %spacing.addr, align 4
  %call40 = call %struct._GtkWidget* @brush_box_new(%struct._GimpContainer* %27, %struct._GimpContext* %28, i8* %29, i32 %30, i32 1, i32 24, i8* null)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @brush_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i32 %view_type, i32 %view_size, i8* %editor_id) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type.addr = alloca i32, align 4
  %view_size.addr = alloca i32, align 4
  %editor_id.addr = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  store i8* %editor_id, i8** %editor_id.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool = icmp ne %struct._GimpContainer* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 37
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %call = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %3)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load i32, i32* %spacing.addr, align 4
  %8 = load i32, i32* %view_type.addr, align 4
  %9 = load i32, i32* %view_size.addr, align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)) #7
  %10 = load i8*, i8** %editor_id.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_viewable_box_new(%struct._GimpContainer* %4, %struct._GimpContext* %5, i8* %6, i32 %7, i32 %8, i32 24, i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* %call1, i8* %10)
  ret %struct._GtkWidget* %call2
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_brush_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i8* %view_type_prop, i8* %view_size_prop, i8* %editor_id) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type_prop.addr = alloca i8*, align 8
  %view_size_prop.addr = alloca i8*, align 8
  %editor_id.addr = alloca i8*, align 8
  %view_type = alloca i32, align 4
  %view_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i8* %view_type_prop, i8** %view_type_prop.addr, align 8
  store i8* %view_size_prop, i8** %view_size_prop.addr, align 8
  store i8* %editor_id, i8** %editor_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_prop_brush_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_prop_brush_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to i8*
  %29 = load i8*, i8** %view_type_prop.addr, align 8
  %30 = load i8*, i8** %view_size_prop.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %28, i8* %29, i32* %view_type, i8* %30, i32* %view_size, i8* null)
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load i8*, i8** %label.addr, align 8
  %34 = load i32, i32* %spacing.addr, align 4
  %35 = load i32, i32* %view_type, align 4
  %36 = load i32, i32* %view_size, align 4
  %37 = load i8*, i8** %editor_id.addr, align 8
  %call40 = call %struct._GtkWidget* @brush_box_new(%struct._GimpContainer* %31, %struct._GimpContext* %32, i8* %33, i32 %34, i32 %35, i32 %36, i8* %37)
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = load i8*, i8** %view_type_prop.addr, align 8
  %40 = load i8*, i8** %view_size_prop.addr, align 8
  %call41 = call %struct._GtkWidget* @view_props_connect(%struct._GtkWidget* %call40, %struct._GimpContext* %38, i8* %39, i8* %40)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %41
}

declare void @g_object_get(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @view_props_connect(%struct._GtkWidget* %box, %struct._GimpContext* %context, i8* %view_type_prop, i8* %view_size_prop) #0 {
entry:
  %box.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_type_prop.addr = alloca i8*, align 8
  %view_size_prop.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %box, %struct._GtkWidget** %box.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %view_type_prop, i8** %view_type_prop.addr, align 8
  store i8* %view_size_prop, i8** %view_size_prop.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %box.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %button, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %5 = bitcast %struct._GimpContext* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %10 = load i8*, i8** %view_type_prop.addr, align 8
  call void @gimp_config_connect_full(%struct._GObject* %6, %struct._GObject* %9, i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0))
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %12 = bitcast %struct._GimpContext* %11 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %17 = load i8*, i8** %view_size_prop.addr, align 8
  call void @gimp_config_connect_full(%struct._GObject* %13, %struct._GObject* %16, i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0))
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %box.addr, align 8
  ret %struct._GtkWidget* %18
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dynamics_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dynamics_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dynamics_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %label.addr, align 8
  %30 = load i32, i32* %spacing.addr, align 4
  %call40 = call %struct._GtkWidget* @dynamics_box_new(%struct._GimpContainer* %27, %struct._GimpContext* %28, i8* %29, i32 %30, i32 24, i8* null)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @dynamics_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i32 %view_size, i8* %editor_id) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_size.addr = alloca i32, align 4
  %editor_id.addr = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  store i8* %editor_id, i8** %editor_id.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool = icmp ne %struct._GimpContainer* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 38
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %call = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %3)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load i32, i32* %spacing.addr, align 4
  %8 = load i32, i32* %view_size.addr, align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0)) #7
  %9 = load i8*, i8** %editor_id.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_viewable_box_new(%struct._GimpContainer* %4, %struct._GimpContext* %5, i8* %6, i32 %7, i32 0, i32 24, i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* %call1, i8* %9)
  ret %struct._GtkWidget* %call2
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_dynamics_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i8* %view_type_prop, i8* %view_size_prop, i8* %editor_id) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type_prop.addr = alloca i8*, align 8
  %view_size_prop.addr = alloca i8*, align 8
  %editor_id.addr = alloca i8*, align 8
  %view_type = alloca i32, align 4
  %view_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i8* %view_type_prop, i8** %view_type_prop.addr, align 8
  store i8* %view_size_prop, i8** %view_size_prop.addr, align 8
  store i8* %editor_id, i8** %editor_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_dynamics_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_dynamics_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to i8*
  %29 = load i8*, i8** %view_type_prop.addr, align 8
  %30 = load i8*, i8** %view_size_prop.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %28, i8* %29, i32* %view_type, i8* %30, i32* %view_size, i8* null)
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load i8*, i8** %label.addr, align 8
  %34 = load i32, i32* %spacing.addr, align 4
  %35 = load i32, i32* %view_size, align 4
  %36 = load i8*, i8** %editor_id.addr, align 8
  %call40 = call %struct._GtkWidget* @dynamics_box_new(%struct._GimpContainer* %31, %struct._GimpContext* %32, i8* %33, i32 %34, i32 %35, i8* %36)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %38 = load i8*, i8** %view_type_prop.addr, align 8
  %39 = load i8*, i8** %view_size_prop.addr, align 8
  %call41 = call %struct._GtkWidget* @view_props_connect(%struct._GtkWidget* %call40, %struct._GimpContext* %37, i8* %38, i8* %39)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %40
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_pattern_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_pattern_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_pattern_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %label.addr, align 8
  %30 = load i32, i32* %spacing.addr, align 4
  %call40 = call %struct._GtkWidget* @pattern_box_new(%struct._GimpContainer* %27, %struct._GimpContext* %28, i8* %29, i32 %30, i32 1, i32 24)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @pattern_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i32 %view_type, i32 %view_size) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type.addr = alloca i32, align 4
  %view_size.addr = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool = icmp ne %struct._GimpContainer* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 39
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %call = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %3)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load i32, i32* %spacing.addr, align 4
  %8 = load i32, i32* %view_type.addr, align 4
  %9 = load i32, i32* %view_size.addr, align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)) #7
  %call2 = call %struct._GtkWidget* @gimp_viewable_box_new(%struct._GimpContainer* %4, %struct._GimpContext* %5, i8* %6, i32 %7, i32 %8, i32 24, i32 %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* %call1, i8* null)
  ret %struct._GtkWidget* %call2
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_pattern_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i8* %view_type_prop, i8* %view_size_prop) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type_prop.addr = alloca i8*, align 8
  %view_size_prop.addr = alloca i8*, align 8
  %view_type = alloca i32, align 4
  %view_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i8* %view_type_prop, i8** %view_type_prop.addr, align 8
  store i8* %view_size_prop, i8** %view_size_prop.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_pattern_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_pattern_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to i8*
  %29 = load i8*, i8** %view_type_prop.addr, align 8
  %30 = load i8*, i8** %view_size_prop.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %28, i8* %29, i32* %view_type, i8* %30, i32* %view_size, i8* null)
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load i8*, i8** %label.addr, align 8
  %34 = load i32, i32* %spacing.addr, align 4
  %35 = load i32, i32* %view_type, align 4
  %36 = load i32, i32* %view_size, align 4
  %call40 = call %struct._GtkWidget* @pattern_box_new(%struct._GimpContainer* %31, %struct._GimpContext* %32, i8* %33, i32 %34, i32 %35, i32 %36)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %38 = load i8*, i8** %view_type_prop.addr, align 8
  %39 = load i8*, i8** %view_size_prop.addr, align 8
  %call41 = call %struct._GtkWidget* @view_props_connect(%struct._GtkWidget* %call40, %struct._GimpContext* %37, i8* %38, i8* %39)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %40
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_gradient_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i8* %reverse_prop) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %reverse_prop.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i8* %reverse_prop, i8** %reverse_prop.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_gradient_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_gradient_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %label.addr, align 8
  %30 = load i32, i32* %spacing.addr, align 4
  %31 = load i8*, i8** %reverse_prop.addr, align 8
  %call40 = call %struct._GtkWidget* @gradient_box_new(%struct._GimpContainer* %27, %struct._GimpContext* %28, i8* %29, i32 %30, i32 0, i32 48, i8* %31, i8* null)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gradient_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i32 %view_type, i32 %view_size, i8* %reverse_prop, i8* %editor_id) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type.addr = alloca i32, align 4
  %view_size.addr = alloca i32, align 4
  %reverse_prop.addr = alloca i8*, align 8
  %editor_id.addr = alloca i8*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %signal_name = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  store i8* %reverse_prop, i8** %reverse_prop.addr, align 8
  store i8* %editor_id, i8** %editor_id.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool = icmp ne %struct._GimpContainer* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 40
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %call = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %3)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load i32, i32* %spacing.addr, align 4
  %8 = load i32, i32* %view_type.addr, align 4
  %9 = load i32, i32* %view_size.addr, align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0)) #7
  %10 = load i8*, i8** %editor_id.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_viewable_box_new(%struct._GimpContainer* %4, %struct._GimpContext* %5, i8* %6, i32 %7, i32 %8, i32 48, i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* %call1, i8* %10)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %call5 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %13)
  store %struct._GList* %call5, %struct._GList** %children, align 8
  %14 = load %struct._GList*, %struct._GList** %children, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %button, align 8
  %17 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_viewable_button_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call6)
  %20 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpViewableButton*
  %button_view_size = getelementptr inbounds %struct._GimpViewableButton, %struct._GimpViewableButton* %20, i32 0, i32 5
  store i32 24, i32* %button_view_size, align 4
  %21 = load i8*, i8** %reverse_prop.addr, align 8
  %tobool8 = icmp ne i8* %21, null
  br i1 %tobool8, label %if.then.9, label %if.end.34

if.then.9:                                        ; preds = %if.end
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %vbox, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %30 = load i8*, i8** %reverse_prop.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %29, i8* %30, i8* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %toggle, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_toggle_button_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call15)
  %33 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_mode(%struct._GtkToggleButton* %33, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call17)
  %36 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %39, i8* %call19, i8* null)
  %call20 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %image, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_misc_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call21)
  %42 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %42, float 5.000000e-01, float 1.000000e+00)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call23)
  %45 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %45, %struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_bin_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call25)
  %50 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBin*
  %call27 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %50)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %view, align 8
  %51 = load i8*, i8** %reverse_prop.addr, align 8
  %call28 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* %51, i8* null)
  store i8* %call28, i8** %signal_name, align 8
  %52 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %53 = bitcast %struct._GimpContext* %52 to i8*
  %54 = load i8*, i8** %signal_name, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 80)
  %57 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  %58 = bitcast %struct._GObject* %57 to i8*
  %call30 = call i64 @g_signal_connect_object(i8* %53, i8* %54, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpView*)* @gimp_gradient_box_reverse_notify to void ()*), i8* %58, i32 0)
  %59 = load i8*, i8** %signal_name, align 8
  call void @g_free(i8* %59)
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %61 = bitcast %struct._GimpContext* %60 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 80)
  %62 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_view_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call32)
  %65 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpView*
  call void @gimp_gradient_box_reverse_notify(%struct._GObject* %62, %struct._GParamSpec* null, %struct._GimpView* %65)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.9, %if.end
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  ret %struct._GtkWidget* %66
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_gradient_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i8* %view_type_prop, i8* %view_size_prop, i8* %reverse_prop, i8* %editor_id) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type_prop.addr = alloca i8*, align 8
  %view_size_prop.addr = alloca i8*, align 8
  %reverse_prop.addr = alloca i8*, align 8
  %editor_id.addr = alloca i8*, align 8
  %view_type = alloca i32, align 4
  %view_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i8* %view_type_prop, i8** %view_type_prop.addr, align 8
  store i8* %view_size_prop, i8** %view_size_prop.addr, align 8
  store i8* %reverse_prop, i8** %reverse_prop.addr, align 8
  store i8* %editor_id, i8** %editor_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_gradient_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_gradient_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to i8*
  %29 = load i8*, i8** %view_type_prop.addr, align 8
  %30 = load i8*, i8** %view_size_prop.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %28, i8* %29, i32* %view_type, i8* %30, i32* %view_size, i8* null)
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load i8*, i8** %label.addr, align 8
  %34 = load i32, i32* %spacing.addr, align 4
  %35 = load i32, i32* %view_type, align 4
  %36 = load i32, i32* %view_size, align 4
  %37 = load i8*, i8** %reverse_prop.addr, align 8
  %38 = load i8*, i8** %editor_id.addr, align 8
  %call40 = call %struct._GtkWidget* @gradient_box_new(%struct._GimpContainer* %31, %struct._GimpContext* %32, i8* %33, i32 %34, i32 %35, i32 %36, i8* %37, i8* %38)
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %40 = load i8*, i8** %view_type_prop.addr, align 8
  %41 = load i8*, i8** %view_size_prop.addr, align 8
  %call41 = call %struct._GtkWidget* @view_props_connect(%struct._GtkWidget* %call40, %struct._GimpContext* %39, i8* %40, i8* %41)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %42
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_palette_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_palette_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_palette_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %label.addr, align 8
  %30 = load i32, i32* %spacing.addr, align 4
  %call40 = call %struct._GtkWidget* @palette_box_new(%struct._GimpContainer* %27, %struct._GimpContext* %28, i8* %29, i32 %30, i32 0, i32 32, i8* null)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @palette_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i32 %view_type, i32 %view_size, i8* %editor_id) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type.addr = alloca i32, align 4
  %view_size.addr = alloca i32, align 4
  %editor_id.addr = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  store i8* %editor_id, i8** %editor_id.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool = icmp ne %struct._GimpContainer* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 41
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %3)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load i32, i32* %spacing.addr, align 4
  %8 = load i32, i32* %view_type.addr, align 4
  %9 = load i32, i32* %view_size.addr, align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0)) #7
  %10 = load i8*, i8** %editor_id.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_viewable_box_new(%struct._GimpContainer* %4, %struct._GimpContext* %5, i8* %6, i32 %7, i32 %8, i32 32, i32 %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* %call1, i8* %10)
  ret %struct._GtkWidget* %call2
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_palette_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i8* %view_type_prop, i8* %view_size_prop, i8* %editor_id) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type_prop.addr = alloca i8*, align 8
  %view_size_prop.addr = alloca i8*, align 8
  %editor_id.addr = alloca i8*, align 8
  %view_type = alloca i32, align 4
  %view_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i8* %view_type_prop, i8** %view_type_prop.addr, align 8
  store i8* %view_size_prop, i8** %view_size_prop.addr, align 8
  store i8* %editor_id, i8** %editor_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_palette_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_palette_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to i8*
  %29 = load i8*, i8** %view_type_prop.addr, align 8
  %30 = load i8*, i8** %view_size_prop.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %28, i8* %29, i32* %view_type, i8* %30, i32* %view_size, i8* null)
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load i8*, i8** %label.addr, align 8
  %34 = load i32, i32* %spacing.addr, align 4
  %35 = load i32, i32* %view_type, align 4
  %36 = load i32, i32* %view_size, align 4
  %37 = load i8*, i8** %editor_id.addr, align 8
  %call40 = call %struct._GtkWidget* @palette_box_new(%struct._GimpContainer* %31, %struct._GimpContext* %32, i8* %33, i32 %34, i32 %35, i32 %36, i8* %37)
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = load i8*, i8** %view_type_prop.addr, align 8
  %40 = load i8*, i8** %view_size_prop.addr, align 8
  %call41 = call %struct._GtkWidget* @view_props_connect(%struct._GtkWidget* %call40, %struct._GimpContext* %38, i8* %39, i8* %40)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %41
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_font_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_font_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_font_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %label.addr, align 8
  %30 = load i32, i32* %spacing.addr, align 4
  %call40 = call %struct._GtkWidget* @font_box_new(%struct._GimpContainer* %27, %struct._GimpContext* %28, i8* %29, i32 %30, i32 0, i32 24)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @font_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i32 %view_type, i32 %view_size) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type.addr = alloca i32, align 4
  %view_size.addr = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool = icmp ne %struct._GimpContainer* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 36
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  store %struct._GimpContainer* %3, %struct._GimpContainer** %container.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load i32, i32* %spacing.addr, align 4
  %8 = load i32, i32* %view_type.addr, align 4
  %9 = load i32, i32* %view_size.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* @gimp_viewable_box_new(%struct._GimpContainer* %4, %struct._GimpContext* %5, i8* %6, i32 %7, i32 %8, i32 24, i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* %call, i8* null)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_font_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i8* %view_type_prop, i8* %view_size_prop) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type_prop.addr = alloca i8*, align 8
  %view_size_prop.addr = alloca i8*, align 8
  %view_type = alloca i32, align 4
  %view_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i8* %view_type_prop, i8** %view_type_prop.addr, align 8
  store i8* %view_size_prop, i8** %view_size_prop.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_prop_font_box_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_prop_font_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to i8*
  %29 = load i8*, i8** %view_type_prop.addr, align 8
  %30 = load i8*, i8** %view_size_prop.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %28, i8* %29, i32* %view_type, i8* %30, i32* %view_size, i8* null)
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = load i8*, i8** %label.addr, align 8
  %34 = load i32, i32* %spacing.addr, align 4
  %35 = load i32, i32* %view_type, align 4
  %36 = load i32, i32* %view_size, align 4
  %call40 = call %struct._GtkWidget* @font_box_new(%struct._GimpContainer* %31, %struct._GimpContext* %32, i8* %33, i32 %34, i32 %35, i32 %36)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %38 = load i8*, i8** %view_type_prop.addr, align 8
  %39 = load i8*, i8** %view_size_prop.addr, align 8
  %call41 = call %struct._GtkWidget* @view_props_connect(%struct._GtkWidget* %call40, %struct._GimpContext* %37, i8* %38, i8* %39)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.10
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %40
}

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_viewable_box_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i8* %label, i32 %spacing, i32 %view_type, i32 %button_view_size, i32 %view_size, i8* %dialog_identifier, i8* %dialog_stock_id, i8* %dialog_tooltip, i8* %editor_id) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %label.addr = alloca i8*, align 8
  %spacing.addr = alloca i32, align 4
  %view_type.addr = alloca i32, align 4
  %button_view_size.addr = alloca i32, align 4
  %view_size.addr = alloca i32, align 4
  %dialog_identifier.addr = alloca i8*, align 8
  %dialog_stock_id.addr = alloca i8*, align 8
  %dialog_tooltip.addr = alloca i8*, align 8
  %editor_id.addr = alloca i8*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %l = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %edit_vbox = alloca %struct._GtkWidget*, align 8
  %edit_button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store i32 %button_view_size, i32* %button_view_size.addr, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  store i8* %dialog_identifier, i8** %dialog_identifier.addr, align 8
  store i8* %dialog_stock_id, i8** %dialog_stock_id.addr, align 8
  store i8* %dialog_tooltip, i8** %dialog_tooltip.addr, align 8
  store i8* %editor_id, i8** %editor_id.addr, align 8
  %0 = load i32, i32* %spacing.addr, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %3 = load i32, i32* %view_type.addr, align 4
  %4 = load i32, i32* %button_view_size.addr, align 4
  %5 = load i32, i32* %view_size.addr, align 4
  %call2 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %6 = load i8*, i8** %dialog_identifier.addr, align 8
  %7 = load i8*, i8** %dialog_stock_id.addr, align 8
  %8 = load i8*, i8** %dialog_tooltip.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_viewable_button_new(%struct._GimpContainer* %1, %struct._GimpContext* %2, i32 %3, i32 %4, i32 %5, i32 1, %struct._GimpDialogFactory* %call2, i8* %6, i8* %7, i8* %8)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %button, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  call void @g_object_set_data(%struct._GObject* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call5)
  %16 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 0, i32 0, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %vbox, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call8)
  %21 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 1, i32 1, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load i8*, i8** %label.addr, align 8
  %tobool = icmp ne i8* %24, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load i8*, i8** %label.addr, align 8
  %call10 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %25)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %l, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %l, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_misc_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call11)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %28, float 0.000000e+00, float 5.000000e-01)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call13)
  %31 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %l, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %l, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %36 = load i32, i32* %view_size.addr, align 4
  %call15 = call %struct._GtkWidget* @gimp_container_entry_new(%struct._GimpContainer* %34, %struct._GimpContext* %35, i32 %36, i32 1)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %entry1, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_entry_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call16)
  %39 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %39, i32 4)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call18)
  %42 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %44 = load i8*, i8** %label.addr, align 8
  %tobool20 = icmp ne i8* %44, null
  %cond = select i1 %tobool20, i32 0, i32 1
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 %cond, i32 0, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %46 = load i8*, i8** %editor_id.addr, align 8
  %tobool21 = icmp ne i8* %46, null
  br i1 %tobool21, label %if.then.22, label %if.end.39

if.then.22:                                       ; preds = %if.end
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %edit_vbox, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call24)
  %49 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_vbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %49, %struct._GtkWidget* %50, i32 0, i32 0, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call26 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %edit_button, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_button_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call27)
  %54 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %54, i32 2)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_vbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call29)
  %57 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %call31 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %image, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_misc_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call32)
  %62 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %62, float 5.000000e-01, float 1.000000e+00)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call34)
  %65 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %65, %struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 80)
  %70 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %71 = load i8*, i8** %editor_id.addr, align 8
  %call37 = call noalias i8* @g_strdup(i8* %71)
  call void @g_object_set_data_full(%struct._GObject* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8* %call37, void (i8*)* @g_free)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpViewableButton*)* @gimp_viewable_box_edit_clicked to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.22, %if.end
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  ret %struct._GtkWidget* %76
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare %struct._GtkWidget* @gimp_viewable_button_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32, i32, i32, %struct._GimpDialogFactory*, i8*, i8*, i8*) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare %struct._GtkWidget* @gimp_container_entry_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #3

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_button_new() #3

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare noalias i8* @g_strdup(i8*) #3

declare void @g_free(i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_viewable_box_edit_clicked(%struct._GtkWidget* %widget, %struct._GimpViewableButton* %button) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %button.addr = alloca %struct._GimpViewableButton*, align 8
  %editor_id = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpViewableButton* %button, %struct._GimpViewableButton** %button.addr, align 8
  %0 = load %struct._GimpViewableButton*, %struct._GimpViewableButton** %button.addr, align 8
  %1 = bitcast %struct._GimpViewableButton* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call1, i8** %editor_id, align 8
  %3 = load %struct._GimpViewableButton*, %struct._GimpViewableButton** %button.addr, align 8
  %context = getelementptr inbounds %struct._GimpViewableButton, %struct._GimpViewableButton* %3, i32 0, i32 2
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %5)
  %6 = bitcast %struct._GimpObject* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_window_strategy_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpWindowStrategy*
  %8 = load %struct._GimpViewableButton*, %struct._GimpViewableButton** %button.addr, align 8
  %context5 = getelementptr inbounds %struct._GimpViewableButton, %struct._GimpViewableButton* %8, i32 0, i32 2
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  %gimp6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp6, align 8
  %call7 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %11)
  %12 = load i8*, i8** %editor_id, align 8
  %call9 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %7, %struct._Gimp* %10, %struct._GimpDialogFactory* %call7, %struct._GdkScreen* %call8, i8* %12)
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #3

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #3

declare void @g_list_free(%struct._GList*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_button_get_type() #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #3

declare void @gtk_toggle_button_set_mode(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #3

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #1

declare noalias i8* @g_strconcat(i8*, ...) #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_box_reverse_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpView* %view) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view.addr = alloca %struct._GimpView*, align 8
  %rendergrad = alloca %struct._GimpViewRendererGradient*, align 8
  %reverse = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpView* %view, %struct._GimpView** %view.addr, align 8
  %0 = load %struct._GimpView*, %struct._GimpView** %view.addr, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %0, i32 0, i32 3
  %1 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %2 = bitcast %struct._GimpViewRenderer* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_gradient_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererGradient*
  store %struct._GimpViewRendererGradient* %3, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %5 = bitcast %struct._GObject* %4 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32* %reverse, i8* null)
  %6 = load %struct._GimpViewRendererGradient*, %struct._GimpViewRendererGradient** %rendergrad, align 8
  %7 = load i32, i32* %reverse, align 4
  call void @gimp_view_renderer_gradient_set_reverse(%struct._GimpViewRendererGradient* %6, i32 %7)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_gradient_get_type() #1

declare void @gimp_view_renderer_gradient_set_reverse(%struct._GimpViewRendererGradient*, i32) #3

declare void @gimp_config_connect_full(%struct._GObject*, %struct._GObject*, i8*, i8*) #3

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
