; ModuleID = './app/tools/gimpforegroundselectoptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolOptionsClass = type { %struct._GimpContextClass, void (%struct._GimpToolOptions*)* }
%struct._GimpContextClass = type { %struct._GimpViewableClass, void (%struct._GimpContext*, %struct._GimpImage*)*, void (%struct._GimpContext*, i8*)*, void (%struct._GimpContext*, %struct._GimpToolInfo*)*, void (%struct._GimpContext*, %struct._GimpPaintInfo*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, double)*, void (%struct._GimpContext*, i32)*, void (%struct._GimpContext*, %struct._GimpBrush*)*, void (%struct._GimpContext*, %struct._GimpDynamics*)*, void (%struct._GimpContext*, %struct._GimpPattern*)*, void (%struct._GimpContext*, %struct._GimpGradient*)*, void (%struct._GimpContext*, %struct._GimpPalette*)*, void (%struct._GimpContext*, %struct._GimpToolPreset*)*, void (%struct._GimpContext*, %struct._GimpFont*)*, void (%struct._GimpContext*, %struct._GimpBuffer*)*, void (%struct._GimpContext*, %struct._GimpImagefile*)*, void (%struct._GimpContext*, %struct._GimpTemplate*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
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
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpForegroundSelectOptions = type { %struct._GimpSelectionOptions, i32, i32, i32, i32, i32, i32, [3 x double] }
%struct._GimpSelectionOptions = type { %struct._GimpToolOptions, i32, i32, i32, double, %struct._GtkWidget* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_foreground_select_options_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"GimpForegroundSelectOptions\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"contiguous\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Contiguous\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Interactive refinement  (%s)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Mark background\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Mark foreground\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Small brush\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Large brush\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"stroke-width\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"smoothness\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Smoothing:\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"mask-color\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Preview color:\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Color Sensitivity\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"<expander>\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"sensitivity-l\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"sensitivity-a\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"sensitivity-b\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_foreground_select_options_get_mask_color = private unnamed_addr constant [46 x i8] c"gimp_foreground_select_options_get_mask_color\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"GIMP_IS_FOREGROUND_SELECT_OPTIONS (options)\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"gimpforegroundselectoptions.c\00", align 1
@gimp_foreground_select_options_parent_class = internal global i8* null, align 8
@GimpForegroundSelectOptions_private_offset = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"antialias\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Smooth edges\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Select a single contiguous area\00", align 1
@.str.30 = private unnamed_addr constant [80 x i8] c"Paint over areas to mark color values for inclusion or exclusion from selection\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"Size of the brush used for refinements\00", align 1
@.str.32 = private unnamed_addr constant [94 x i8] c"Smaller values give a more accurate selection border but may introduce holes in the selection\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Color of selection preview mask\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Sensitivity for brightness component\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"Sensitivity for red/green component\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"Sensitivity for yellow/blue component\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_foreground_select_options_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_foreground_select_options_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_foreground_select_options_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_selection_options_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 432, void (i8*, i8*)* bitcast (void (i8*)* @gimp_foreground_select_options_class_intern_init to void (i8*, i8*)*), i32 432, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpForegroundSelectOptions*)* @gimp_foreground_select_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_foreground_select_options_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_foreground_select_options_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_options_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_options_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_foreground_select_options_parent_class, align 8
  %1 = load i32, i32* @GimpForegroundSelectOptions_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpForegroundSelectOptions_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolOptionsClass*
  call void @gimp_foreground_select_options_class_init(%struct._GimpToolOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_options_init(%struct._GimpForegroundSelectOptions* %options) #3 {
entry:
  %options.addr = alloca %struct._GimpForegroundSelectOptions*, align 8
  store %struct._GimpForegroundSelectOptions* %options, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_foreground_select_options_gui(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GObject*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %inner_frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %title = alloca i8*, align 8
  %row = alloca i32, align 4
  %toggle_mask = alloca i32, align 4
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_selection_options_gui(%struct._GimpToolOptions* %3)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  store i32 0, i32* %row, align 4
  %call2 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call2, i32* %toggle_mask, align 4
  %4 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %5 = bitcast %struct._GimpToolOptions* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_selection_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSelectionOptions*
  %antialias_toggle = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %6, i32 0, i32 5
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %antialias_toggle, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %7, i32 0)
  %8 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #6
  %call6 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %button, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #6
  %14 = load i32, i32* %toggle_mask, align 4
  %call10 = call i8* @gimp_get_mod_string(i32 %14)
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call9, i8* %call10)
  store i8* %call11, i8** %title, align 8
  %15 = load %struct._GObject*, %struct._GObject** %config, align 8
  %16 = load i8*, i8** %title, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #6
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #6
  %call14 = call %struct._GtkWidget* @gimp_prop_boolean_radio_frame_new(%struct._GObject* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* %16, i8* %call12, i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %frame, align 8
  %17 = load i8*, i8** %title, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %inner_frame, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_bin_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBin*
  %call20 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %25)
  %26 = bitcast %struct._GtkWidget* %call20 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 2)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %hbox, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #6
  %call27 = call %struct._GtkWidget* @gtk_label_new(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %label, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_label_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call28)
  %37 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %37, i32 3, i32 2, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call30)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #6
  %call33 = call %struct._GtkWidget* @gtk_label_new(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %label, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_label_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call34)
  %45 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %45, i32 3, i32 2, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call36)
  %48 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call38 = call %struct._GtkWidget* @gimp_prop_hscale_new(%struct._GObject* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), double 1.000000e+00, double 5.000000e+00, i32 0)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %scale, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_scale_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call39)
  %54 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %54, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call41)
  %57 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %call43 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %table, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call44)
  %62 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %62, i32 2)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call46)
  %65 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %65, i32 2)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call48)
  %68 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call50 = call %struct._GtkWidget* @gimp_prop_hscale_new(%struct._GObject* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), double 1.000000e-01, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %scale, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_scale_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call51)
  %74 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkScale*
  call void @gtk_scale_set_value_pos(%struct._GtkScale* %74, i32 1)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call53)
  %77 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #6
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %call56 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %77, i32 0, i32 0, i8* %call55, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %78, i32 2, i32 0)
  %79 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call57 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 2)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %menu, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call58)
  %82 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #6
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %call61 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %82, i32 0, i32 1, i8* %call60, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %83, i32 2, i32 0)
  %84 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0)) #6
  %call63 = call %struct._GtkWidget* @gimp_prop_expander_new(%struct._GObject* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* %call62)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %frame, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_box_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call64)
  %87 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkBox*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %87, %struct._GtkWidget* %88, i32 0, i32 0, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %call66 = call %struct._GtkWidget* @gimp_frame_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %inner_frame, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_container_get_type() #7
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call67)
  %92 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkContainer*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %92, %struct._GtkWidget* %93)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %call69 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %table, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call70)
  %97 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %97, i32 2)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_table_get_type() #7
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call72)
  %100 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %100, i32 2)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_frame, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_container_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call74)
  %103 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkContainer*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %103, %struct._GtkWidget* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %106 = load %struct._GObject*, %struct._GObject** %config, align 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call76)
  %109 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  %110 = load i32, i32* %row, align 4
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %row, align 4
  %call78 = call %struct._GtkObject* @gimp_prop_opacity_entry_new(%struct._GObject* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), %struct._GtkTable* %109, i32 0, i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  %111 = load %struct._GObject*, %struct._GObject** %config, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call79)
  %114 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  %115 = load i32, i32* %row, align 4
  %inc81 = add nsw i32 %115, 1
  store i32 %inc81, i32* %row, align 4
  %call82 = call %struct._GtkObject* @gimp_prop_opacity_entry_new(%struct._GObject* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), %struct._GtkTable* %114, i32 0, i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %116 = load %struct._GObject*, %struct._GObject** %config, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_table_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call83)
  %119 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkTable*
  %120 = load i32, i32* %row, align 4
  %inc85 = add nsw i32 %120, 1
  store i32 %inc85, i32* %row, align 4
  %call86 = call %struct._GtkObject* @gimp_prop_opacity_entry_new(%struct._GObject* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), %struct._GtkTable* %119, i32 0, i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %121
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_selection_options_gui(%struct._GimpToolOptions*) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_get_mod_string(i32) #1

declare %struct._GtkWidget* @gimp_prop_boolean_radio_frame_new(%struct._GObject*, i8*, i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_hscale_new(%struct._GObject*, i8*, double, double, i32) #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_scale_set_value_pos(%struct._GtkScale*, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_expander_new(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkObject* @gimp_prop_opacity_entry_new(%struct._GObject*, i8*, %struct._GtkTable*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_foreground_select_options_get_mask_color(%struct._GimpForegroundSelectOptions* %options, %struct._GimpRGB* %color) #3 {
entry:
  %options.addr = alloca %struct._GimpForegroundSelectOptions*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpForegroundSelectOptions* %options, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpForegroundSelectOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_foreground_select_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_foreground_select_options_get_mask_color, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_foreground_select_options_get_mask_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  br label %sw.epilog

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options.addr, align 8
  %mask_color = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %14, i32 0, i32 5
  %15 = load i32, i32* %mask_color, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %do.end.16
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %16, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %do.end.16
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %17, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 5.000000e-01)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %do.end.16
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %18, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 5.000000e-01)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.16
  br label %do.body.19

do.body.19:                                       ; preds = %sw.default
  call void @g_warn_message(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i32 395, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_foreground_select_options_get_mask_color, i32 0, i32 0), i8* null)
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.14, %do.end.20, %sw.bb.18, %sw.bb.17, %sw.bb
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_options_class_init(%struct._GimpToolOptionsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpToolOptionsClass* %klass, %struct._GimpToolOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpToolOptionsClass*, %struct._GimpToolOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_foreground_select_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_foreground_select_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call1)
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 2, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 3, %struct._GParamSpec* %call3)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0), i32 1, i32 80, i32 18, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 4, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 8, i32 3, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 5, %struct._GParamSpec* %call5)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_channel_type_get_type() #7
  %call7 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), i64 %call6, i32 2, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 6, %struct._GParamSpec* %call7)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i32 0, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 7, %struct._GParamSpec* %call8)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0), double 0.000000e+00, double 1.000000e+01, double 6.400000e-01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 8, %struct._GParamSpec* %call9)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0), double 0.000000e+00, double 1.000000e+01, double 1.280000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 9, %struct._GParamSpec* %call10)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i32 0, i32 0), double 0.000000e+00, double 1.000000e+01, double 2.560000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 10, %struct._GParamSpec* %call11)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpForegroundSelectOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectOptions*
  store %struct._GimpForegroundSelectOptions* %2, %struct._GimpForegroundSelectOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.13
    i32 7, label %sw.bb.15
    i32 8, label %sw.bb.17
    i32 9, label %sw.bb.19
    i32 10, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = bitcast %struct._GObject* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_selection_options_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSelectionOptions*
  %antialias = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %7, i32 0, i32 2
  store i32 %call2, i32* %antialias, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %8)
  %9 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %contiguous = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %9, i32 0, i32 1
  store i32 %call6, i32* %contiguous, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %10)
  %11 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %background = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %11, i32 0, i32 2
  store i32 %call8, i32* %background, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_int(%struct._GValue* %12)
  %13 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %stroke_width = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %13, i32 0, i32 3
  store i32 %call10, i32* %stroke_width, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %14)
  %15 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %smoothness = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %15, i32 0, i32 4
  store i32 %call12, i32* %smoothness, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_enum(%struct._GValue* %16)
  %17 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %mask_color = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %17, i32 0, i32 5
  store i32 %call14, i32* %mask_color, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %18)
  %19 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %expanded = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %19, i32 0, i32 6
  store i32 %call16, i32* %expanded, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call double @g_value_get_double(%struct._GValue* %20)
  %21 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %sensitivity = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %21, i32 0, i32 7
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %sensitivity, i32 0, i64 0
  store double %call18, double* %arrayidx, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call double @g_value_get_double(%struct._GValue* %22)
  %23 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %sensitivity21 = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %23, i32 0, i32 7
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %sensitivity21, i32 0, i64 1
  store double %call20, double* %arrayidx22, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call double @g_value_get_double(%struct._GValue* %24)
  %25 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %sensitivity25 = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %25, i32 0, i32 7
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %sensitivity25, i32 0, i64 2
  store double %call24, double* %arrayidx26, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %26, %struct._GObject** %_glib__object, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %27, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = load i32, i32* %property_id.addr, align 4
  store i32 %28, i32* %_glib__property_id, align 4
  %29 = load i32, i32* %_glib__property_id, align 4
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 1
  %31 = load i8*, i8** %name, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %33 = bitcast %struct._GParamSpec* %32 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type, align 8
  %call27 = call i8* @g_type_name(i64 %35)
  %36 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %37 = bitcast %struct._GObject* %36 to %struct._GTypeInstance*
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type29, align 8
  %call30 = call i8* @g_type_name(i64 %39)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i32 197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %29, i8* %31, i8* %call27, i8* %call30)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.23, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_foreground_select_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpForegroundSelectOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_foreground_select_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpForegroundSelectOptions*
  store %struct._GimpForegroundSelectOptions* %2, %struct._GimpForegroundSelectOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.8
    i32 7, label %sw.bb.9
    i32 8, label %sw.bb.10
    i32 9, label %sw.bb.11
    i32 10, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = bitcast %struct._GObject* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_selection_options_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSelectionOptions*
  %antialias = getelementptr inbounds %struct._GimpSelectionOptions, %struct._GimpSelectionOptions* %7, i32 0, i32 2
  %8 = load i32, i32* %antialias, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %8)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %contiguous = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %10, i32 0, i32 1
  %11 = load i32, i32* %contiguous, align 4
  call void @g_value_set_boolean(%struct._GValue* %9, i32 %11)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %background = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %13, i32 0, i32 2
  %14 = load i32, i32* %background, align 4
  call void @g_value_set_boolean(%struct._GValue* %12, i32 %14)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %16 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %stroke_width = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %16, i32 0, i32 3
  %17 = load i32, i32* %stroke_width, align 4
  call void @g_value_set_int(%struct._GValue* %15, i32 %17)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %19 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %smoothness = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %19, i32 0, i32 4
  %20 = load i32, i32* %smoothness, align 4
  call void @g_value_set_int(%struct._GValue* %18, i32 %20)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %22 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %mask_color = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %22, i32 0, i32 5
  %23 = load i32, i32* %mask_color, align 4
  call void @g_value_set_enum(%struct._GValue* %21, i32 %23)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %25 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %expanded = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %25, i32 0, i32 6
  %26 = load i32, i32* %expanded, align 4
  call void @g_value_set_boolean(%struct._GValue* %24, i32 %26)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %sensitivity = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %28, i32 0, i32 7
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %sensitivity, i32 0, i64 0
  %29 = load double, double* %arrayidx, align 8
  call void @g_value_set_double(%struct._GValue* %27, double %29)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %31 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %sensitivity12 = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %31, i32 0, i32 7
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %sensitivity12, i32 0, i64 1
  %32 = load double, double* %arrayidx13, align 8
  call void @g_value_set_double(%struct._GValue* %30, double %32)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %34 = load %struct._GimpForegroundSelectOptions*, %struct._GimpForegroundSelectOptions** %options, align 8
  %sensitivity15 = getelementptr inbounds %struct._GimpForegroundSelectOptions, %struct._GimpForegroundSelectOptions* %34, i32 0, i32 7
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %sensitivity15, i32 0, i64 2
  %35 = load double, double* %arrayidx16, align 8
  call void @g_value_set_double(%struct._GValue* %33, double %35)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %36 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %36, %struct._GObject** %_glib__object, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %37, %struct._GParamSpec** %_glib__pspec, align 8
  %38 = load i32, i32* %property_id.addr, align 4
  store i32 %38, i32* %_glib__property_id, align 4
  %39 = load i32, i32* %_glib__property_id, align 4
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %40, i32 0, i32 1
  %41 = load i8*, i8** %name, align 8
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %43 = bitcast %struct._GParamSpec* %42 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %45)
  %46 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %47 = bitcast %struct._GObject* %46 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %49)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i32 253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %39, i8* %41, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.14, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
