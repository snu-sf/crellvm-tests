; ModuleID = './app/tools/gimppaintoptions-gui.bc'
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
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpContainer = type opaque
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpSpinScale = type { %struct._GtkSpinButton }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon, %struct._GdkDrawable*, i32 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%union.anon = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [6 x i8] c"Mode:\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"paint-mode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"brush-view-type\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"brush-view-size\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gimp-brush-editor\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"brush-size\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Reset size to brush's native size\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"brush-aspect-ratio\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Aspect Ratio\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Reset aspect ratio to brush's native\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"brush-angle\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Reset angle to zero\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Dynamics\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"dynamics-view-type\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"dynamics-view-size\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"gimp-dynamics-editor\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"application-mode\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Incremental\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Hard edge\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"dynamics-expanded\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Dynamics Options\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Fade Options\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"fade-length\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Fade length\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"fade-unit\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Repeat:\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"fade-repeat\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"fade-reverse\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Reverse\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Color Options\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"gradient-view-type\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"gradient-view-size\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"gradient-reverse\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"gimp-gradient-editor\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"jitter-amount\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Amount\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"use-jitter\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Apply Jitter\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"use-smoothing\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Smooth stroke\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"smoothing-quality\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"smoothing-factor\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_paint_options_gui(%struct._GimpToolOptions* %tool_options) #0 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GObject*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %tool_type = alloca i64, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %hbox34 = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %frame117 = alloca %struct._GtkWidget*, align 8
  %button131 = alloca %struct._GtkWidget*, align 8
  %button158 = alloca %struct._GtkWidget*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %4 = bitcast %struct._GimpToolOptions* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_paint_options_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %5, %struct._GimpPaintOptions** %options, align 8
  %6 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions* %6)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %vbox, align 8
  %7 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %7, i32 0, i32 1
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_type4 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %8, i32 0, i32 2
  %9 = load i64, i64* %tool_type4, align 8
  store i64 %9, i64* %tool_type, align 8
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %hbox, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %13, i32 0, i32 0, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #5
  %call9 = call %struct._GtkWidget* @gtk_label_new(i8* %call8)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %label, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call12 = call %struct._GtkWidget* @gimp_prop_paint_mode_menu_new(%struct._GObject* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 0)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %menu, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call13)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 1, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load i64, i64* %tool_type, align 8
  %call15 = call i64 @gimp_eraser_tool_get_type() #4
  %cmp = icmp eq i64 %26, %call15
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %27 = load i64, i64* %tool_type, align 8
  %call16 = call i64 @gimp_convolve_tool_get_type() #4
  %cmp17 = icmp eq i64 %27, %call16
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %28 = load i64, i64* %tool_type, align 8
  %call19 = call i64 @gimp_dodge_burn_tool_get_type() #4
  %cmp20 = icmp eq i64 %28, %call19
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %29 = load i64, i64* %tool_type, align 8
  %call22 = call i64 @gimp_heal_tool_get_type() #4
  %cmp23 = icmp eq i64 %29, %call22
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %30 = load i64, i64* %tool_type, align 8
  %call25 = call i64 @gimp_smudge_tool_get_type() #4
  %cmp26 = icmp eq i64 %30, %call25
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false, %entry
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %31, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %32, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.24
  %33 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #5
  %call28 = call %struct._GtkWidget* @gimp_prop_opacity_spin_scale_new(%struct._GObject* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %scale, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call29)
  %36 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load i64, i64* %tool_type, align 8
  %call31 = call i64 @gimp_brush_tool_get_type() #4
  %call32 = call i32 @g_type_is_a(i64 %39, i64 %call31)
  %tobool = icmp ne i32 %call32, 0
  br i1 %tobool, label %if.then.33, label %if.end.112

if.then.33:                                       ; preds = %if.end
  %40 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %41 = bitcast %struct._GimpToolOptions* %40 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_context_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call35)
  %42 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpContext*
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #5
  %call38 = call %struct._GtkWidget* @gimp_prop_brush_box_new(%struct._GimpContainer* null, %struct._GimpContext* %42, i8* %call37, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %button, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call39)
  %45 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %46, i32 0, i32 0, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %call41 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %hbox34, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #4
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call42)
  %50 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #5
  %call45 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* %call44, double 1.000000e+00, double 1.000000e+01, i32 2)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %scale, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_spin_scale_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call46)
  %56 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpSpinScale*
  call void @gimp_spin_scale_set_scale_limits(%struct._GimpSpinScale* %56, double 1.000000e+00, double 1.000000e+03)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call48)
  %59 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 1, i32 1, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %call50 = call %struct._GtkWidget* @gimp_stock_button_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* null)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %button, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_button_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call51)
  %64 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %64, i32 2)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_bin_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call53)
  %67 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBin*
  %call55 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %67)
  %68 = bitcast %struct._GtkWidget* %call55 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_image_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call56)
  %69 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkImage*
  call void @gtk_image_set_from_stock(%struct._GtkImage* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #4
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call58)
  %72 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %72, %struct._GtkWidget* %73, i32 0, i32 0, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %77 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %78 = bitcast %struct._GimpPaintOptions* %77 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPaintOptions*)* @gimp_paint_options_gui_reset_size to void ()*), i8* %78, void (i8*, %struct._GClosure*)* null, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %79, i8* %call61, i8* null)
  %call62 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %hbox34, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #4
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call63)
  %82 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %82, %struct._GtkWidget* %83, i32 0, i32 0, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %85 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)) #5
  %call66 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* %call65, double 1.000000e-01, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %scale, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call67)
  %88 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 1, i32 1, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %call69 = call %struct._GtkWidget* @gimp_stock_button_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* null)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %button, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_button_get_type() #4
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call70)
  %93 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %93, i32 2)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_bin_get_type() #4
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call72)
  %96 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkBin*
  %call74 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %96)
  %97 = bitcast %struct._GtkWidget* %call74 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_image_get_type() #4
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call75)
  %98 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkImage*
  call void @gtk_image_set_from_stock(%struct._GtkImage* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_box_get_type() #4
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call77)
  %101 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBox*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %101, %struct._GtkWidget* %102, i32 0, i32 0, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %107 = bitcast %struct._GimpPaintOptions* %106 to i8*
  %call79 = call i64 @g_signal_connect_data(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPaintOptions*)* @gimp_paint_options_gui_reset_aspect_ratio to void ()*), i8* %107, void (i8*, %struct._GClosure*)* null, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %108, i8* %call80, i8* null)
  %call81 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %hbox34, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call82)
  %111 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %111, %struct._GtkWidget* %112, i32 0, i32 0, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %113)
  %114 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #5
  %call85 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %call84, double 1.000000e+00, double 5.000000e+00, i32 2)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %scale, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #4
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call86)
  %117 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %117, %struct._GtkWidget* %118, i32 1, i32 1, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  %call88 = call %struct._GtkWidget* @gimp_stock_button_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* null)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %button, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_button_get_type() #4
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call89)
  %122 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %122, i32 2)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_bin_get_type() #4
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call91)
  %125 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkBin*
  %call93 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %125)
  %126 = bitcast %struct._GtkWidget* %call93 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_image_get_type() #4
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call94)
  %127 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkImage*
  call void @gtk_image_set_from_stock(%struct._GtkImage* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox34, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_box_get_type() #4
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call96)
  %130 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkBox*
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %130, %struct._GtkWidget* %131, i32 0, i32 0, i32 0)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %132)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %134 = bitcast %struct._GtkWidget* %133 to i8*
  %135 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %136 = bitcast %struct._GimpPaintOptions* %135 to i8*
  %call98 = call i64 @g_signal_connect_data(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPaintOptions*)* @gimp_paint_options_gui_reset_angle to void ()*), i8* %136, void (i8*, %struct._GClosure*)* null, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %137, i8* %call99, i8* null)
  %138 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %139 = bitcast %struct._GimpToolOptions* %138 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_context_get_type() #4
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call100)
  %140 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpContext*
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #5
  %call103 = call %struct._GtkWidget* @gimp_prop_dynamics_box_new(%struct._GimpContainer* null, %struct._GimpContext* %140, i8* %call102, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %button, align 8
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #4
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call104)
  %143 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %143, %struct._GtkWidget* %144, i32 0, i32 0, i32 0)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %145)
  %146 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %147 = load i64, i64* %tool_type, align 8
  %call106 = call %struct._GtkWidget* @dynamics_options_gui(%struct._GimpPaintOptions* %146, i64 %147)
  store %struct._GtkWidget* %call106, %struct._GtkWidget** %frame, align 8
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_box_get_type() #4
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call107)
  %150 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkBox*
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %150, %struct._GtkWidget* %151, i32 0, i32 0, i32 0)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %152)
  %153 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %154 = load i64, i64* %tool_type, align 8
  %call109 = call %struct._GtkWidget* @jitter_options_gui(%struct._GimpPaintOptions* %153, i64 %154)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %frame, align 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_box_get_type() #4
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call110)
  %157 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkBox*
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %157, %struct._GtkWidget* %158, i32 0, i32 0, i32 0)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %159)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.33, %if.end
  %160 = load i64, i64* %tool_type, align 8
  %call113 = call i64 @gimp_paint_tool_get_type() #4
  %call114 = call i32 @g_type_is_a(i64 %160, i64 %call113)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %if.end.112
  %161 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %162 = load i64, i64* %tool_type, align 8
  %call118 = call %struct._GtkWidget* @smoothing_options_gui(%struct._GimpPaintOptions* %161, i64 %162)
  store %struct._GtkWidget* %call118, %struct._GtkWidget** %frame117, align 8
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_box_get_type() #4
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call119)
  %165 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkBox*
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %frame117, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %165, %struct._GtkWidget* %166, i32 0, i32 0, i32 0)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %frame117, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %167)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.116, %if.end.112
  %168 = load i64, i64* %tool_type, align 8
  %call122 = call i64 @gimp_pencil_tool_get_type() #4
  %cmp123 = icmp eq i64 %168, %call122
  br i1 %cmp123, label %if.then.130, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %if.end.121
  %169 = load i64, i64* %tool_type, align 8
  %call125 = call i64 @gimp_paintbrush_tool_get_type() #4
  %cmp126 = icmp eq i64 %169, %call125
  br i1 %cmp126, label %if.then.130, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.124
  %170 = load i64, i64* %tool_type, align 8
  %call128 = call i64 @gimp_eraser_tool_get_type() #4
  %cmp129 = icmp eq i64 %170, %call128
  br i1 %cmp129, label %if.then.130, label %if.end.136

if.then.130:                                      ; preds = %lor.lhs.false.127, %lor.lhs.false.124, %if.end.121
  %171 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call132 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #5
  %call133 = call %struct._GtkWidget* @gimp_prop_enum_check_button_new(%struct._GObject* %171, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* %call132, i32 0, i32 1)
  store %struct._GtkWidget* %call133, %struct._GtkWidget** %button131, align 8
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_box_get_type() #4
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call134)
  %174 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkBox*
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %button131, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %174, %struct._GtkWidget* %175, i32 0, i32 0, i32 0)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %button131, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.130, %lor.lhs.false.127
  %177 = load i64, i64* %tool_type, align 8
  %call137 = call i64 @gimp_eraser_tool_get_type() #4
  %cmp138 = icmp eq i64 %177, %call137
  br i1 %cmp138, label %if.then.157, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %if.end.136
  %178 = load i64, i64* %tool_type, align 8
  %call140 = call i64 @gimp_clone_tool_get_type() #4
  %cmp141 = icmp eq i64 %178, %call140
  br i1 %cmp141, label %if.then.157, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %lor.lhs.false.139
  %179 = load i64, i64* %tool_type, align 8
  %call143 = call i64 @gimp_heal_tool_get_type() #4
  %cmp144 = icmp eq i64 %179, %call143
  br i1 %cmp144, label %if.then.157, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false.142
  %180 = load i64, i64* %tool_type, align 8
  %call146 = call i64 @gimp_perspective_clone_tool_get_type() #4
  %cmp147 = icmp eq i64 %180, %call146
  br i1 %cmp147, label %if.then.157, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %lor.lhs.false.145
  %181 = load i64, i64* %tool_type, align 8
  %call149 = call i64 @gimp_convolve_tool_get_type() #4
  %cmp150 = icmp eq i64 %181, %call149
  br i1 %cmp150, label %if.then.157, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %lor.lhs.false.148
  %182 = load i64, i64* %tool_type, align 8
  %call152 = call i64 @gimp_dodge_burn_tool_get_type() #4
  %cmp153 = icmp eq i64 %182, %call152
  br i1 %cmp153, label %if.then.157, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.151
  %183 = load i64, i64* %tool_type, align 8
  %call155 = call i64 @gimp_smudge_tool_get_type() #4
  %cmp156 = icmp eq i64 %183, %call155
  br i1 %cmp156, label %if.then.157, label %if.end.163

if.then.157:                                      ; preds = %lor.lhs.false.154, %lor.lhs.false.151, %lor.lhs.false.148, %lor.lhs.false.145, %lor.lhs.false.142, %lor.lhs.false.139, %if.end.136
  %184 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call159 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)) #5
  %call160 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* %call159)
  store %struct._GtkWidget* %call160, %struct._GtkWidget** %button158, align 8
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call161 = call i64 @gtk_box_get_type() #4
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call161)
  %187 = bitcast %struct._GTypeInstance* %call162 to %struct._GtkBox*
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %button158, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %187, %struct._GtkWidget* %188, i32 0, i32 0, i32 0)
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %button158, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %189)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.157, %lor.lhs.false.154
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %190
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

declare %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkWidget* @gimp_prop_paint_mode_menu_new(%struct._GObject*, i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_eraser_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_convolve_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_dodge_burn_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_heal_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_smudge_tool_get_type() #2

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gimp_prop_opacity_spin_scale_new(%struct._GObject*, i8*, i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_tool_get_type() #2

declare %struct._GtkWidget* @gimp_prop_brush_box_new(%struct._GimpContainer*, %struct._GimpContext*, i8*, i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject*, i8*, i8*, double, double, i32) #1

declare void @gimp_spin_scale_set_scale_limits(%struct._GimpSpinScale*, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_spin_scale_get_type() #2

declare %struct._GtkWidget* @gimp_stock_button_new(i8*, i8*) #1

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_gui_reset_size(%struct._GtkWidget* %button, %struct._GimpPaintOptions* %paint_options) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  %call2 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %2)
  store %struct._GimpBrush* %call2, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool = icmp ne %struct._GimpBrush* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void @gimp_paint_options_set_default_brush_size(%struct._GimpPaintOptions* %4, %struct._GimpBrush* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_gui_reset_aspect_ratio(%struct._GtkWidget* %button, %struct._GimpPaintOptions* %paint_options) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), double 0.000000e+00, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_gui_reset_angle(%struct._GtkWidget* %button, %struct._GimpPaintOptions* %paint_options) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), double 0.000000e+00, i8* null)
  ret void
}

declare %struct._GtkWidget* @gimp_prop_dynamics_box_new(%struct._GimpContainer*, %struct._GimpContext*, i8*, i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @dynamics_options_gui(%struct._GimpPaintOptions* %paint_options, i64 %tool_type) #0 {
entry:
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %tool_type.addr = alloca i64, align 8
  %config = alloca %struct._GObject*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %inner_frame = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %checkbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %inner_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i64 %tool_type, i64* %tool_type.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* @gimp_prop_expander_new(%struct._GObject* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* %call1)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %frame, align 8
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %vbox, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %6, %struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #5
  %call7 = call %struct._GtkWidget* @gimp_frame_new(i8* %call6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %inner_frame, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %inner_vbox, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %16, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call13 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %hbox, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0)) #5
  %call17 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* %call16, double 1.000000e+00, double 5.000000e+01, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %scale, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_spin_scale_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpSpinScale*
  call void @gimp_spin_scale_set_scale_limits(%struct._GimpSpinScale* %27, double 1.000000e+00, double 1.000000e+03)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 1, i32 1, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call22 = call %struct._GtkWidget* @gimp_prop_unit_combo_box_new(%struct._GObject* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0))
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %menu, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call25 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %hbox, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call26)
  %41 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 0, i32 0, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #5
  %call29 = call %struct._GtkWidget* @gtk_label_new(i8* %call28)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %label, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call30)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %49 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call32 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %combo, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call33)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 1, i32 1, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)) #5
  %call36 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* %call35)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %checkbox, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_vbox, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call37)
  %58 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %checkbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %checkbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load i64, i64* %tool_type.addr, align 8
  %call39 = call i64 @gimp_paintbrush_tool_get_type() #4
  %call40 = call i32 @g_type_is_a(i64 %61, i64 %call39)
  %tobool = icmp ne i32 %call40, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)) #5
  %call42 = call %struct._GtkWidget* @gimp_frame_new(i8* %call41)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %inner_frame, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call43)
  %64 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 0, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GObject*, %struct._GObject** %config, align 8
  %68 = bitcast %struct._GObject* %67 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_context_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call45)
  %69 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpContext*
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)) #5
  %call48 = call %struct._GtkWidget* @gimp_prop_gradient_box_new(%struct._GimpContainer* null, %struct._GimpContext* %69, i8* %call47, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0))
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %box, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_container_get_type() #4
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call49)
  %72 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkContainer*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_container_add(%struct._GtkContainer* %72, %struct._GtkWidget* %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %75
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @jitter_options_gui(%struct._GimpPaintOptions* %paint_options, i64 %tool_type) #0 {
entry:
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %tool_type.addr = alloca i64, align 8
  %config = alloca %struct._GObject*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i64 %tool_type, i64* %tool_type.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* %call1, double 1.000000e-02, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %scale, align 8
  %4 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)) #5
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %call4 = call %struct._GtkWidget* @gimp_prop_expanding_frame_new(%struct._GObject* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* %call3, %struct._GtkWidget* %5, %struct._GtkWidget** null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %6
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @smoothing_options_gui(%struct._GimpPaintOptions* %paint_options, i64 %tool_type) #0 {
entry:
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %tool_type.addr = alloca i64, align 8
  %config = alloca %struct._GObject*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i64 %tool_type, i64* %tool_type.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %3 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0)) #5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call3 = call %struct._GtkWidget* @gimp_prop_expanding_frame_new(%struct._GObject* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* %call2, %struct._GtkWidget* %4, %struct._GtkWidget** null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)) #5
  %call5 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i8* %call4, double 1.000000e+00, double 1.000000e+01, i32 1)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %scale, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0)) #5
  %call9 = call %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8* %call8, double 1.000000e+00, double 1.000000e+01, i32 1)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %scale, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pencil_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_paintbrush_tool_get_type() #2

declare %struct._GtkWidget* @gimp_prop_enum_check_button_new(%struct._GObject*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_clone_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_perspective_clone_tool_get_type() #2

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_prop_expander_new(%struct._GObject*, i8*, i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gimp_prop_unit_combo_box_new(%struct._GObject*, i8*) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_gradient_box_new(%struct._GimpContainer*, %struct._GimpContext*, i8*, i32, i8*, i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_prop_expanding_frame_new(%struct._GObject*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget**) #1

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

declare void @gimp_paint_options_set_default_brush_size(%struct._GimpPaintOptions*, %struct._GimpBrush*) #1

declare void @g_object_set(i8*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
