; ModuleID = './app/tools/gimprectangleoptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpRectangleOptionsInterface = type { %struct._GTypeInterface }
%struct._GTypeInterface = type { i64, i64 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GimpRectangleOptionsPrivate = type { i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, i32, double, double, double, double, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
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
%struct._GimpRectangleOptions = type opaque
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct._GimpToolInfo = type opaque
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpNumberPairEntry = type { %struct._GtkEntry, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkEntryCompletion = type { %struct._GObject, %struct._GtkEntryCompletionPrivate* }
%struct._GtkEntryCompletionPrivate = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }

@gimp_rectangle_options_interface_get_type.iface_type = internal global i64 0, align 8
@gimp_rectangle_options_interface_get_type.iface_info = internal constant %struct._GTypeInfo { i16 16, void (i8*)* bitcast (void (%struct._GimpRectangleOptionsInterface*)* @gimp_rectangle_options_iface_base_init to void (i8*)*), void (i8*)* null, void (i8*, i8*)* null, void (i8*, i8*)* null, i8* null, i16 0, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [30 x i8] c"GimpRectangleOptionsInterface\00", align 1
@gimp_rectangle_options_get_private.private_key = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_rectangle_options_get_private = private unnamed_addr constant [35 x i8] c"gimp_rectangle_options_get_private\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_RECTANGLE_OPTIONS (options)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gimp-rectangle-options-private\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"auto-shrink\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"shrink-merged\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"guide\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"position-unit\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"size-unit\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"fixed-rule-active\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"fixed-rule\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"desired-fixed-width\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"desired-fixed-height\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"desired-fixed-size-width\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"desired-fixed-size-height\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"default-fixed-size-width\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"default-fixed-size-height\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"overridden-fixed-size\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"aspect-numerator\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"aspect-denominator\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"default-aspect-numerator\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"default-aspect-denominator\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"overridden-fixed-aspect\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"use-string-current\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"fixed-unit\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"fixed-center\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"gimprectangleoptions.c\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Expand from center\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Fixed:\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c":/xX*\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"notify::user-override\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"notify::use-string-current\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"aspect\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"xX*:/\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Position:\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Size:\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Highlight\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Auto Shrink\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"Shrink merged\00", align 1
@__func__.gimp_rectangle_options_fixed_rule_active = private unnamed_addr constant [41 x i8] c"gimp_rectangle_options_fixed_rule_active\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"GIMP_IS_RECTANGLE_OPTIONS (rectangle_options)\00", align 1
@gimp_rectangle_options_iface_base_init.initialized = internal global i32 0, align 4
@.str.51 = private unnamed_addr constant [65 x i8] c"Automatically shrink to the nearest rectangular shape in a layer\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"Use all visible layers when shrinking the selection\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"Composition guides such as rule of thirds\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"X coordinate of top left corner\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"Y coordinate of top left corner\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"Width of selection\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Height of selection\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"Unit of top left corner coordinate\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"Unit of selection size\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"Enable lock of aspect ratio, width, height or size\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"Choose what has to be locked\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Custom fixed width\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"Custom fixed height\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"Unit of fixed width, height or size\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"Expand selection from center outwards\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"Current\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"inline-completion\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"ratio-changed\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"match-selected\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rectangle_options_interface_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rectangle_options_interface_get_type.iface_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_rectangle_options_interface_get_type.iface_info, i32 0)
  store i64 %call, i64* @gimp_rectangle_options_interface_get_type.iface_type, align 8
  %1 = load i64, i64* @gimp_rectangle_options_interface_get_type.iface_type, align 8
  %call1 = call i64 @gimp_tool_options_get_type() #7
  call void @g_type_interface_add_prerequisite(i64 %1, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_rectangle_options_interface_get_type.iface_type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_options_iface_base_init(%struct._GimpRectangleOptionsInterface* %iface) #1 {
entry:
  %iface.addr = alloca %struct._GimpRectangleOptionsInterface*, align 8
  store %struct._GimpRectangleOptionsInterface* %iface, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %0 = load i32, i32* @gimp_rectangle_options_iface_base_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %2 = bitcast %struct._GimpRectangleOptionsInterface* %1 to i8*
  %call = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_interface_install_property(i8* %2, %struct._GParamSpec* %call)
  %3 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %4 = bitcast %struct._GimpRectangleOptionsInterface* %3 to i8*
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_interface_install_property(i8* %4, %struct._GParamSpec* %call1)
  %5 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %6 = bitcast %struct._GimpRectangleOptionsInterface* %5 to i8*
  %call2 = call i64 @gimp_guides_type_get_type() #7
  %call3 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i32 0, i32 0), i64 %call2, i32 0, i32 487)
  call void @g_object_interface_install_property(i8* %6, %struct._GParamSpec* %call3)
  %7 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %8 = bitcast %struct._GimpRectangleOptionsInterface* %7 to i8*
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0), double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 231)
  call void @g_object_interface_install_property(i8* %8, %struct._GParamSpec* %call4)
  %9 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %10 = bitcast %struct._GimpRectangleOptionsInterface* %9 to i8*
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i32 0, i32 0), double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 231)
  call void @g_object_interface_install_property(i8* %10, %struct._GParamSpec* %call5)
  %11 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %12 = bitcast %struct._GimpRectangleOptionsInterface* %11 to i8*
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 231)
  call void @g_object_interface_install_property(i8* %12, %struct._GParamSpec* %call6)
  %13 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %14 = bitcast %struct._GimpRectangleOptionsInterface* %13 to i8*
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 231)
  call void @g_object_interface_install_property(i8* %14, %struct._GParamSpec* %call7)
  %15 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %16 = bitcast %struct._GimpRectangleOptionsInterface* %15 to i8*
  %call8 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i32 0, i32 0), i32 1, i32 1, i32 0, i32 231)
  call void @g_object_interface_install_property(i8* %16, %struct._GParamSpec* %call8)
  %17 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %18 = bitcast %struct._GimpRectangleOptionsInterface* %17 to i8*
  %call9 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i32 1, i32 1, i32 0, i32 231)
  call void @g_object_interface_install_property(i8* %18, %struct._GParamSpec* %call9)
  %19 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %20 = bitcast %struct._GimpRectangleOptionsInterface* %19 to i8*
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_interface_install_property(i8* %20, %struct._GParamSpec* %call10)
  %21 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %22 = bitcast %struct._GimpRectangleOptionsInterface* %21 to i8*
  %call11 = call i64 @gimp_rectangle_tool_fixed_rule_get_type() #7
  %call12 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i64 %call11, i32 0, i32 487)
  call void @g_object_interface_install_property(i8* %22, %struct._GParamSpec* %call12)
  %23 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %24 = bitcast %struct._GimpRectangleOptionsInterface* %23 to i8*
  %call13 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 1.000000e+02, i32 487)
  call void @g_object_interface_install_property(i8* %24, %struct._GParamSpec* %call13)
  %25 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %26 = bitcast %struct._GimpRectangleOptionsInterface* %25 to i8*
  %call14 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), double 0.000000e+00, double 2.621440e+05, double 1.000000e+02, i32 487)
  call void @g_object_interface_install_property(i8* %26, %struct._GParamSpec* %call14)
  %27 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %28 = bitcast %struct._GimpRectangleOptionsInterface* %27 to i8*
  %call15 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 1.000000e+02, i32 487)
  call void @g_object_interface_install_property(i8* %28, %struct._GParamSpec* %call15)
  %29 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %30 = bitcast %struct._GimpRectangleOptionsInterface* %29 to i8*
  %call16 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 1.000000e+02, i32 487)
  call void @g_object_interface_install_property(i8* %30, %struct._GParamSpec* %call16)
  %31 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %32 = bitcast %struct._GimpRectangleOptionsInterface* %31 to i8*
  %call17 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 1.000000e+02, i32 227)
  call void @g_object_interface_install_property(i8* %32, %struct._GParamSpec* %call17)
  %33 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %34 = bitcast %struct._GimpRectangleOptionsInterface* %33 to i8*
  %call18 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 1.000000e+02, i32 227)
  call void @g_object_interface_install_property(i8* %34, %struct._GParamSpec* %call18)
  %35 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %36 = bitcast %struct._GimpRectangleOptionsInterface* %35 to i8*
  %call19 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_interface_install_property(i8* %36, %struct._GParamSpec* %call19)
  %37 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %38 = bitcast %struct._GimpRectangleOptionsInterface* %37 to i8*
  %call20 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 1.000000e+00, i32 487)
  call void @g_object_interface_install_property(i8* %38, %struct._GParamSpec* %call20)
  %39 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %40 = bitcast %struct._GimpRectangleOptionsInterface* %39 to i8*
  %call21 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 1.000000e+00, i32 487)
  call void @g_object_interface_install_property(i8* %40, %struct._GParamSpec* %call21)
  %41 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %42 = bitcast %struct._GimpRectangleOptionsInterface* %41 to i8*
  %call22 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, double 1.000000e-03, double 2.621440e+05, double 1.000000e+00, i32 231)
  call void @g_object_interface_install_property(i8* %42, %struct._GParamSpec* %call22)
  %43 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %44 = bitcast %struct._GimpRectangleOptionsInterface* %43 to i8*
  %call23 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, double 1.000000e-03, double 2.621440e+05, double 1.000000e+00, i32 231)
  call void @g_object_interface_install_property(i8* %44, %struct._GParamSpec* %call23)
  %45 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %46 = bitcast %struct._GimpRectangleOptionsInterface* %45 to i8*
  %call24 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_interface_install_property(i8* %46, %struct._GParamSpec* %call24)
  %47 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %48 = bitcast %struct._GimpRectangleOptionsInterface* %47 to i8*
  %call25 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %48, %struct._GParamSpec* %call25)
  %49 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %50 = bitcast %struct._GimpRectangleOptionsInterface* %49 to i8*
  %call26 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i32 0, i32 0), i32 1, i32 1, i32 0, i32 231)
  call void @g_object_interface_install_property(i8* %50, %struct._GParamSpec* %call26)
  %51 = load %struct._GimpRectangleOptionsInterface*, %struct._GimpRectangleOptionsInterface** %iface.addr, align 8
  %52 = bitcast %struct._GimpRectangleOptionsInterface* %51 to i8*
  %call27 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_interface_install_property(i8* %52, %struct._GParamSpec* %call27)
  store i32 1, i32* @gimp_rectangle_options_iface_base_init.initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare void @g_type_interface_add_prerequisite(i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %options) #1 {
entry:
  %retval = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %options.addr = alloca %struct._GimpRectangleOptions*, align 8
  %private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRectangleOptions* %options, %struct._GimpRectangleOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpRectangleOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_options_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_rectangle_options_get_private, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpRectangleOptionsPrivate* null, %struct._GimpRectangleOptionsPrivate** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* @gimp_rectangle_options_get_private.private_key, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %call13 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  store i32 %call13, i32* @gimp_rectangle_options_get_private.private_key, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %14 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options.addr, align 8
  %15 = bitcast %struct._GimpRectangleOptions* %14 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %17 = load i32, i32* @gimp_rectangle_options_get_private.private_key, align 4
  %call16 = call i8* @g_object_get_qdata(%struct._GObject* %16, i32 %17)
  %18 = bitcast i8* %call16 to %struct._GimpRectangleOptionsPrivate*
  store %struct._GimpRectangleOptionsPrivate* %18, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %19 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %tobool17 = icmp ne %struct._GimpRectangleOptionsPrivate* %19, null
  br i1 %tobool17, label %if.end.23, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  %call19 = call noalias i8* @g_slice_alloc0(i64 272)
  %20 = bitcast i8* %call19 to %struct._GimpRectangleOptionsPrivate*
  store %struct._GimpRectangleOptionsPrivate* %20, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %call20 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 60, i64 60, i64 64)
  %21 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_history = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %21, i32 0, i32 32
  store %struct._GtkListStore* %call20, %struct._GtkListStore** %aspect_history, align 8
  %call21 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 60, i64 60, i64 64)
  %22 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %size_history = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %22, i32 0, i32 35
  store %struct._GtkListStore* %call21, %struct._GtkListStore** %size_history, align 8
  %23 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options.addr, align 8
  %24 = bitcast %struct._GimpRectangleOptions* %23 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %26 = load i32, i32* @gimp_rectangle_options_get_private.private_key, align 4
  %27 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %28 = bitcast %struct._GimpRectangleOptionsPrivate* %27 to i8*
  call void @g_object_set_qdata_full(%struct._GObject* %25, i32 %26, i8* %28, void (i8*)* bitcast (void (%struct._GimpRectangleOptionsPrivate*)* @gimp_rectangle_options_private_finalize to void (i8*)*))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.14
  %29 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  store %struct._GimpRectangleOptionsPrivate* %29, %struct._GimpRectangleOptionsPrivate** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.else.9
  %30 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %retval
  ret %struct._GimpRectangleOptionsPrivate* %30
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_quark_from_static_string(i8*) #2

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

declare noalias i8* @g_slice_alloc0(i64) #2

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #2

declare void @g_object_set_qdata_full(%struct._GObject*, i32, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_options_private_finalize(%struct._GimpRectangleOptionsPrivate* %private) #1 {
entry:
  %private.addr = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  store %struct._GimpRectangleOptionsPrivate* %private, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %0 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %aspect_history = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %0, i32 0, i32 32
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %aspect_history, align 8
  %2 = bitcast %struct._GtkListStore* %1 to i8*
  call void @g_object_unref(i8* %2)
  %3 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %size_history = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %3, i32 0, i32 35
  %4 = load %struct._GtkListStore*, %struct._GtkListStore** %size_history, align 8
  %5 = bitcast %struct._GtkListStore* %4 to i8*
  call void @g_object_unref(i8* %5)
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %7 = bitcast %struct._GimpRectangleOptionsPrivate* %6 to i8*
  call void @g_slice_free1(i64 272, i8* %7)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_options_install_properties(%struct._GObjectClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GObjectClass*, align 8
  store %struct._GObjectClass* %klass, %struct._GObjectClass** %klass.addr, align 8
  %0 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %1 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %1, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  %2 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %2, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %3, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %4, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %5, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %6, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %7, i32 9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %8, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0))
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %9, i32 11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0))
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %10, i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0))
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %11, i32 13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0))
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %12, i32 14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0))
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %13, i32 15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %14, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0))
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %15, i32 17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0))
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %16, i32 18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0))
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %17, i32 19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0))
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %18, i32 20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0))
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %19, i32 21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0))
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %20, i32 22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %21, i32 23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0))
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %22, i32 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0))
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %23, i32 25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0))
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %24, i32 26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0))
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %25, i32 27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

declare void @g_object_class_override_property(%struct._GObjectClass*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %2, %struct._GimpRectangleOptions** %options, align 8
  %3 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %4 = bitcast %struct._GimpRectangleOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleOptions*
  %call4 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %5)
  store %struct._GimpRectangleOptionsPrivate* %call4, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.12
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.16
    i32 8, label %sw.bb.18
    i32 9, label %sw.bb.20
    i32 10, label %sw.bb.22
    i32 11, label %sw.bb.24
    i32 12, label %sw.bb.26
    i32 13, label %sw.bb.28
    i32 14, label %sw.bb.30
    i32 15, label %sw.bb.32
    i32 16, label %sw.bb.34
    i32 17, label %sw.bb.36
    i32 18, label %sw.bb.38
    i32 19, label %sw.bb.40
    i32 20, label %sw.bb.42
    i32 21, label %sw.bb.44
    i32 22, label %sw.bb.46
    i32 23, label %sw.bb.48
    i32 24, label %sw.bb.50
    i32 25, label %sw.bb.52
    i32 26, label %sw.bb.54
    i32 27, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i32 @g_value_get_boolean(%struct._GValue* %7)
  %8 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %auto_shrink = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %8, i32 0, i32 0
  store i32 %call5, i32* %auto_shrink, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i32 @g_value_get_boolean(%struct._GValue* %9)
  %10 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %shrink_merged = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %10, i32 0, i32 1
  store i32 %call7, i32* %shrink_merged, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %11)
  %12 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %highlight = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %12, i32 0, i32 2
  store i32 %call9, i32* %highlight, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call i32 @g_value_get_enum(%struct._GValue* %13)
  %14 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %guide = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %14, i32 0, i32 3
  store i32 %call11, i32* %guide, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call13 = call double @g_value_get_double(%struct._GValue* %15)
  %16 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %16, i32 0, i32 4
  store double %call13, double* %x, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call double @g_value_get_double(%struct._GValue* %17)
  %18 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %18, i32 0, i32 5
  store double %call15, double* %y, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call17 = call double @g_value_get_double(%struct._GValue* %19)
  %20 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %20, i32 0, i32 6
  store double %call17, double* %width, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call double @g_value_get_double(%struct._GValue* %21)
  %22 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %22, i32 0, i32 7
  store double %call19, double* %height, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call21 = call i32 @g_value_get_int(%struct._GValue* %23)
  %24 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %position_unit = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %24, i32 0, i32 8
  store i32 %call21, i32* %position_unit, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call23 = call i32 @g_value_get_int(%struct._GValue* %25)
  %26 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %size_unit = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %26, i32 0, i32 9
  store i32 %call23, i32* %size_unit, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call25 = call i32 @g_value_get_boolean(%struct._GValue* %27)
  %28 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_rule_active = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %28, i32 0, i32 10
  store i32 %call25, i32* %fixed_rule_active, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %29 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call27 = call i32 @g_value_get_enum(%struct._GValue* %29)
  %30 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_rule = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %30, i32 0, i32 11
  store i32 %call27, i32* %fixed_rule, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call29 = call double @g_value_get_double(%struct._GValue* %31)
  %32 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %desired_fixed_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %32, i32 0, i32 12
  store double %call29, double* %desired_fixed_width, align 8
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call31 = call double @g_value_get_double(%struct._GValue* %33)
  %34 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %desired_fixed_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %34, i32 0, i32 13
  store double %call31, double* %desired_fixed_height, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call33 = call double @g_value_get_double(%struct._GValue* %35)
  %36 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %desired_fixed_size_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %36, i32 0, i32 14
  store double %call33, double* %desired_fixed_size_width, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call35 = call double @g_value_get_double(%struct._GValue* %37)
  %38 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %desired_fixed_size_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %38, i32 0, i32 15
  store double %call35, double* %desired_fixed_size_height, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call37 = call double @g_value_get_double(%struct._GValue* %39)
  %40 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %default_fixed_size_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %40, i32 0, i32 16
  store double %call37, double* %default_fixed_size_width, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %41 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call39 = call double @g_value_get_double(%struct._GValue* %41)
  %42 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %default_fixed_size_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %42, i32 0, i32 17
  store double %call39, double* %default_fixed_size_height, align 8
  br label %sw.epilog

sw.bb.40:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call41 = call i32 @g_value_get_boolean(%struct._GValue* %43)
  %44 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %overridden_fixed_size = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %44, i32 0, i32 18
  store i32 %call41, i32* %overridden_fixed_size, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %45 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call43 = call double @g_value_get_double(%struct._GValue* %45)
  %46 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_numerator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %46, i32 0, i32 19
  store double %call43, double* %aspect_numerator, align 8
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %47 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call45 = call double @g_value_get_double(%struct._GValue* %47)
  %48 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_denominator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %48, i32 0, i32 20
  store double %call45, double* %aspect_denominator, align 8
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call47 = call double @g_value_get_double(%struct._GValue* %49)
  %50 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %default_aspect_numerator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %50, i32 0, i32 21
  store double %call47, double* %default_aspect_numerator, align 8
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %51 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call49 = call double @g_value_get_double(%struct._GValue* %51)
  %52 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %default_aspect_denominator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %52, i32 0, i32 22
  store double %call49, double* %default_aspect_denominator, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %53 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call51 = call i32 @g_value_get_boolean(%struct._GValue* %53)
  %54 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %overridden_fixed_aspect = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %54, i32 0, i32 23
  store i32 %call51, i32* %overridden_fixed_aspect, align 4
  br label %sw.epilog

sw.bb.52:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call53 = call i32 @g_value_get_boolean(%struct._GValue* %55)
  %56 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %use_string_current = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %56, i32 0, i32 25
  store i32 %call53, i32* %use_string_current, align 4
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %57 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call55 = call i32 @g_value_get_int(%struct._GValue* %57)
  %58 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_unit = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %58, i32 0, i32 26
  store i32 %call55, i32* %fixed_unit, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %59 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call57 = call i32 @g_value_get_boolean(%struct._GValue* %59)
  %60 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_center = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %60, i32 0, i32 24
  store i32 %call57, i32* %fixed_center, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %61 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %61, %struct._GObject** %_glib__object, align 8
  %62 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %62, %struct._GParamSpec** %_glib__pspec, align 8
  %63 = load i32, i32* %property_id.addr, align 4
  store i32 %63, i32* %_glib__property_id, align 4
  %64 = load i32, i32* %_glib__property_id, align 4
  %65 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %65, i32 0, i32 1
  %66 = load i8*, i8** %name, align 8
  %67 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %68 = bitcast %struct._GParamSpec* %67 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %68, i32 0, i32 0
  %69 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %69, i32 0, i32 0
  %70 = load i64, i64* %g_type, align 8
  %call58 = call i8* @g_type_name(i64 %70)
  %71 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %72 = bitcast %struct._GObject* %71 to %struct._GTypeInstance*
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %72, i32 0, i32 0
  %73 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %g_type60 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %73, i32 0, i32 0
  %74 = load i64, i64* %g_type60, align 8
  %call61 = call i8* @g_type_name(i64 %74)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i32 566, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %64, i8* %66, i8* %call58, i8* %call61)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48, %sw.bb.46, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.30, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb
  ret void
}

declare i32 @g_value_get_boolean(%struct._GValue*) #2

declare i32 @g_value_get_enum(%struct._GValue*) #2

declare double @g_value_get_double(%struct._GValue*) #2

declare i32 @g_value_get_int(%struct._GValue*) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #1 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind uwtable
define void @gimp_rectangle_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpRectangleOptions*, align 8
  %private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleOptions*
  store %struct._GimpRectangleOptions* %2, %struct._GimpRectangleOptions** %options, align 8
  %3 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %options, align 8
  %4 = bitcast %struct._GimpRectangleOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleOptions*
  %call4 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %5)
  store %struct._GimpRectangleOptionsPrivate* %call4, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.8
    i32 6, label %sw.bb.9
    i32 7, label %sw.bb.10
    i32 8, label %sw.bb.11
    i32 9, label %sw.bb.12
    i32 10, label %sw.bb.13
    i32 11, label %sw.bb.14
    i32 12, label %sw.bb.15
    i32 13, label %sw.bb.16
    i32 14, label %sw.bb.17
    i32 15, label %sw.bb.18
    i32 16, label %sw.bb.19
    i32 17, label %sw.bb.20
    i32 18, label %sw.bb.21
    i32 19, label %sw.bb.22
    i32 20, label %sw.bb.23
    i32 21, label %sw.bb.24
    i32 22, label %sw.bb.25
    i32 23, label %sw.bb.26
    i32 24, label %sw.bb.27
    i32 25, label %sw.bb.28
    i32 26, label %sw.bb.29
    i32 27, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %auto_shrink = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %8, i32 0, i32 0
  %9 = load i32, i32* %auto_shrink, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %shrink_merged = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %11, i32 0, i32 1
  %12 = load i32, i32* %shrink_merged, align 4
  call void @g_value_set_boolean(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %highlight = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %14, i32 0, i32 2
  %15 = load i32, i32* %highlight, align 4
  call void @g_value_set_boolean(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %guide = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %17, i32 0, i32 3
  %18 = load i32, i32* %guide, align 4
  call void @g_value_set_enum(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %x = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %20, i32 0, i32 4
  %21 = load double, double* %x, align 8
  call void @g_value_set_double(%struct._GValue* %19, double %21)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %y = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %23, i32 0, i32 5
  %24 = load double, double* %y, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %24)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %26, i32 0, i32 6
  %27 = load double, double* %width, align 8
  call void @g_value_set_double(%struct._GValue* %25, double %27)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %29, i32 0, i32 7
  %30 = load double, double* %height, align 8
  call void @g_value_set_double(%struct._GValue* %28, double %30)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %position_unit = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %32, i32 0, i32 8
  %33 = load i32, i32* %position_unit, align 4
  call void @g_value_set_int(%struct._GValue* %31, i32 %33)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %size_unit = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %35, i32 0, i32 9
  %36 = load i32, i32* %size_unit, align 4
  call void @g_value_set_int(%struct._GValue* %34, i32 %36)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %38 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_rule_active = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %38, i32 0, i32 10
  %39 = load i32, i32* %fixed_rule_active, align 4
  call void @g_value_set_boolean(%struct._GValue* %37, i32 %39)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_rule = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %41, i32 0, i32 11
  %42 = load i32, i32* %fixed_rule, align 4
  call void @g_value_set_enum(%struct._GValue* %40, i32 %42)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %desired_fixed_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %44, i32 0, i32 12
  %45 = load double, double* %desired_fixed_width, align 8
  call void @g_value_set_double(%struct._GValue* %43, double %45)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %47 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %desired_fixed_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %47, i32 0, i32 13
  %48 = load double, double* %desired_fixed_height, align 8
  call void @g_value_set_double(%struct._GValue* %46, double %48)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %50 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %desired_fixed_size_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %50, i32 0, i32 14
  %51 = load double, double* %desired_fixed_size_width, align 8
  call void @g_value_set_double(%struct._GValue* %49, double %51)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %52 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %53 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %desired_fixed_size_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %53, i32 0, i32 15
  %54 = load double, double* %desired_fixed_size_height, align 8
  call void @g_value_set_double(%struct._GValue* %52, double %54)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %56 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %default_fixed_size_width = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %56, i32 0, i32 16
  %57 = load double, double* %default_fixed_size_width, align 8
  call void @g_value_set_double(%struct._GValue* %55, double %57)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %58 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %59 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %default_fixed_size_height = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %59, i32 0, i32 17
  %60 = load double, double* %default_fixed_size_height, align 8
  call void @g_value_set_double(%struct._GValue* %58, double %60)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %61 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %62 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %overridden_fixed_size = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %62, i32 0, i32 18
  %63 = load i32, i32* %overridden_fixed_size, align 4
  call void @g_value_set_boolean(%struct._GValue* %61, i32 %63)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %64 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %65 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_numerator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %65, i32 0, i32 19
  %66 = load double, double* %aspect_numerator, align 8
  call void @g_value_set_double(%struct._GValue* %64, double %66)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %67 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %68 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_denominator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %68, i32 0, i32 20
  %69 = load double, double* %aspect_denominator, align 8
  call void @g_value_set_double(%struct._GValue* %67, double %69)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %70 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %71 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %default_aspect_numerator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %71, i32 0, i32 21
  %72 = load double, double* %default_aspect_numerator, align 8
  call void @g_value_set_double(%struct._GValue* %70, double %72)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %73 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %74 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %default_aspect_denominator = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %74, i32 0, i32 22
  %75 = load double, double* %default_aspect_denominator, align 8
  call void @g_value_set_double(%struct._GValue* %73, double %75)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %76 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %77 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %overridden_fixed_aspect = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %77, i32 0, i32 23
  %78 = load i32, i32* %overridden_fixed_aspect, align 4
  call void @g_value_set_boolean(%struct._GValue* %76, i32 %78)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %79 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %80 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %use_string_current = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %80, i32 0, i32 25
  %81 = load i32, i32* %use_string_current, align 4
  call void @g_value_set_boolean(%struct._GValue* %79, i32 %81)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %82 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %83 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_unit = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %83, i32 0, i32 26
  %84 = load i32, i32* %fixed_unit, align 4
  call void @g_value_set_int(%struct._GValue* %82, i32 %84)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %85 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %86 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_center = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %86, i32 0, i32 24
  %87 = load i32, i32* %fixed_center, align 4
  call void @g_value_set_boolean(%struct._GValue* %85, i32 %87)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %88 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %88, %struct._GObject** %_glib__object, align 8
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %89, %struct._GParamSpec** %_glib__pspec, align 8
  %90 = load i32, i32* %property_id.addr, align 4
  store i32 %90, i32* %_glib__property_id, align 4
  %91 = load i32, i32* %_glib__property_id, align 4
  %92 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %92, i32 0, i32 1
  %93 = load i8*, i8** %name, align 8
  %94 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %95 = bitcast %struct._GParamSpec* %94 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %95, i32 0, i32 0
  %96 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %96, i32 0, i32 0
  %97 = load i64, i64* %g_type, align 8
  %call31 = call i8* @g_type_name(i64 %97)
  %98 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %99 = bitcast %struct._GObject* %98 to %struct._GTypeInstance*
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %99, i32 0, i32 0
  %100 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %100, i32 0, i32 0
  %101 = load i64, i64* %g_type33, align 8
  %call34 = call i8* @g_type_name(i64 %101)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i32 670, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %91, i8* %93, i8* %call31, i8* %call34)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb
  ret void
}

declare void @g_value_set_boolean(%struct._GValue*, i32) #2

declare void @g_value_set_enum(%struct._GValue*, i32) #2

declare void @g_value_set_double(%struct._GValue*, double) #2

declare void @g_value_set_int(%struct._GValue*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_rectangle_options_get_width_entry(%struct._GimpRectangleOptions* %rectangle_options) #1 {
entry:
  %rectangle_options.addr = alloca %struct._GimpRectangleOptions*, align 8
  %private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  store %struct._GimpRectangleOptions* %rectangle_options, %struct._GimpRectangleOptions** %rectangle_options.addr, align 8
  %0 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options.addr, align 8
  %1 = bitcast %struct._GimpRectangleOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleOptions*
  %call2 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %2)
  store %struct._GimpRectangleOptionsPrivate* %call2, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %3 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %width_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %3, i32 0, i32 38
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %width_entry, align 8
  ret %struct._GtkWidget* %4
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_rectangle_options_gui(%struct._GimpToolOptions* %tool_options) #1 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %config = alloca %struct._GObject*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %entry9 = alloca %struct._GtkWidget*, align 8
  %size_group = alloca %struct._GtkSizeGroup*, align 8
  %children = alloca %struct._GList*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions* %3)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %4 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %5 = bitcast %struct._GimpToolOptions* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleOptions*
  %call4 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %6)
  store %struct._GimpRectangleOptionsPrivate* %call4, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %7 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0)) #6
  %call6 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %button, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 0, i32 0, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call10 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %frame, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 0, i32 0, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call13 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %hbox, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_frame_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkFrame*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %20, %struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #6
  %call17 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* %call16)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %button, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 1, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %32 = bitcast %struct._GimpRectangleOptionsPrivate* %31 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpRectangleOptionsPrivate*)* @gimp_rectangle_options_fixed_rule_changed to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call21 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %combo, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call22)
  %36 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 1, i32 1, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %42 = bitcast %struct._GimpRectangleOptionsPrivate* %41 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpRectangleOptionsPrivate*)* @gimp_rectangle_options_fixed_rule_changed to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %call25 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %vbox2, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call26)
  %45 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %45, %struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %call28 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 2)
  store %struct._GtkSizeGroup* %call28, %struct._GtkSizeGroup** %size_group, align 8
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  %48 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_aspect_hbox = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %48, i32 0, i32 30
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %fixed_aspect_hbox, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call30)
  %51 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %52 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_aspect_hbox32 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %52, i32 0, i32 30
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_aspect_hbox32, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %55 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_aspect_hbox33 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %55, i32 0, i32 30
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_aspect_hbox33, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %54, %struct._GtkWidget* %56)
  %57 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %58 = bitcast %struct._GtkSizeGroup* %57 to i8*
  call void @g_object_unref(i8* %58)
  %59 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_aspect_hbox34 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %59, i32 0, i32 30
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_aspect_hbox34, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 80)
  %62 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %63 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_aspect_hbox36 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %63, i32 0, i32 30
  %64 = bitcast %struct._GtkWidget** %fixed_aspect_hbox36 to i8*
  %65 = bitcast i8* %64 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %62, i8** %65)
  %66 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call37 = call %struct._GtkWidget* @gimp_prop_number_pair_entry_new(%struct._GObject* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 1, double 1.000000e-03, double 2.621440e+05)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %entry9, align 8
  %67 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_aspect_hbox38 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %67, i32 0, i32 30
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_aspect_hbox38, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call39)
  %70 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 1, i32 1, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %75 = load %struct._GObject*, %struct._GObject** %config, align 8
  %76 = bitcast %struct._GObject* %75 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpNumberPairEntry*, %struct._GParamSpec*, %struct._GimpRectangleOptions*)* @gimp_rectangle_options_string_current_updates to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GObject*, %struct._GObject** %config, align 8
  %78 = bitcast %struct._GObject* %77 to i8*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpNumberPairEntry*, %struct._GParamSpec*, %struct._GimpRectangleOptions*)* @gimp_rectangle_options_string_current_updates to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 2)
  %81 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %82 = bitcast %struct._GimpToolOptions* %81 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call43)
  %83 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpRectangleOptions*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  %85 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_history = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %85, i32 0, i32 32
  %86 = load %struct._GtkListStore*, %struct._GtkListStore** %aspect_history, align 8
  call void @gimp_rectangle_options_setup_ratio_completion(%struct._GimpRectangleOptions* %83, %struct._GtkWidget* %84, %struct._GtkListStore* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 80)
  %89 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %call46 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 -1, i32 -1)
  %90 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_button_box = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %90, i32 0, i32 31
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %aspect_button_box, align 8
  %91 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_aspect_hbox47 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %91, i32 0, i32 30
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_aspect_hbox47, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call48)
  %94 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %95 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_button_box50 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %95, i32 0, i32 31
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_button_box50, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %96, i32 0, i32 0, i32 0)
  %97 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_button_box51 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %97, i32 0, i32 31
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_button_box51, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_button_box52 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %99, i32 0, i32 31
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_button_box52, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 80)
  %102 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %103 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_button_box54 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %103, i32 0, i32 31
  %104 = bitcast %struct._GtkWidget** %aspect_button_box54 to i8*
  %105 = bitcast i8* %104 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %102, i8** %105)
  %106 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_button_box55 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %106, i32 0, i32 31
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_button_box55, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_container_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call56)
  %109 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkContainer*
  %call58 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %109)
  store %struct._GList* %call58, %struct._GList** %children, align 8
  %110 = load %struct._GList*, %struct._GList** %children, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %110, i32 0, i32 0
  %111 = load i8*, i8** %data, align 8
  %112 = bitcast i8* %111 to %struct._GtkWidget*
  call void @gtk_widget_hide(%struct._GtkWidget* %112)
  %113 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %113)
  %114 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call59 = call %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 1, double 3.000000e+02)
  %115 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_width_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %115, i32 0, i32 28
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %fixed_width_entry, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call60)
  %118 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %119 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_width_entry62 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %119, i32 0, i32 28
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_width_entry62, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %120, i32 0, i32 0, i32 0)
  %121 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %122 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_width_entry63 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %122, i32 0, i32 28
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_width_entry63, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %121, %struct._GtkWidget* %123)
  %124 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_width_entry64 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %124, i32 0, i32 28
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_width_entry64, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 80)
  %127 = bitcast %struct._GTypeInstance* %call65 to %struct._GObject*
  %128 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_width_entry66 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %128, i32 0, i32 28
  %129 = bitcast %struct._GtkWidget** %fixed_width_entry66 to i8*
  %130 = bitcast i8* %129 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %127, i8** %130)
  %131 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call67 = call %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject* %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 1, double 3.000000e+02)
  %132 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_height_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %132, i32 0, i32 29
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %fixed_height_entry, align 8
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call68)
  %135 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %136 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_height_entry70 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %136, i32 0, i32 29
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_height_entry70, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %137, i32 0, i32 0, i32 0)
  %138 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %139 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_height_entry71 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %139, i32 0, i32 29
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_height_entry71, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %138, %struct._GtkWidget* %140)
  %141 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_height_entry72 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %141, i32 0, i32 29
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_height_entry72, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 80)
  %144 = bitcast %struct._GTypeInstance* %call73 to %struct._GObject*
  %145 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_height_entry74 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %145, i32 0, i32 29
  %146 = bitcast %struct._GtkWidget** %fixed_height_entry74 to i8*
  %147 = bitcast i8* %146 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %144, i8** %147)
  %call75 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  %148 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_size_hbox = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %148, i32 0, i32 33
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %fixed_size_hbox, align 8
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call76)
  %151 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %152 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_size_hbox78 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %152, i32 0, i32 33
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_size_hbox78, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %151, %struct._GtkWidget* %153, i32 0, i32 0, i32 0)
  %154 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %155 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_size_hbox79 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %155, i32 0, i32 33
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_size_hbox79, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %154, %struct._GtkWidget* %156)
  %157 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_size_hbox80 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %157, i32 0, i32 33
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_size_hbox80, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 80)
  %160 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  %161 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_size_hbox82 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %161, i32 0, i32 33
  %162 = bitcast %struct._GtkWidget** %fixed_size_hbox82 to i8*
  %163 = bitcast i8* %162 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %160, i8** %163)
  %164 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call83 = call %struct._GtkWidget* @gimp_prop_number_pair_entry_new(%struct._GObject* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, double 1.000000e+00, double 2.621440e+05)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %entry9, align 8
  %165 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_size_hbox84 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %165, i32 0, i32 33
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_size_hbox84, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call85)
  %168 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %168, %struct._GtkWidget* %169, i32 1, i32 1, i32 0)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %170)
  %171 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %172 = bitcast %struct._GimpToolOptions* %171 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call87)
  %173 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpRectangleOptions*
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  %175 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %size_history = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %175, i32 0, i32 35
  %176 = load %struct._GtkListStore*, %struct._GtkListStore** %size_history, align 8
  call void @gimp_rectangle_options_setup_ratio_completion(%struct._GimpRectangleOptions* %173, %struct._GtkWidget* %174, %struct._GtkListStore* %176)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %entry9, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 80)
  %179 = bitcast %struct._GTypeInstance* %call89 to %struct._GObject*
  %call90 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 -1, i32 -1)
  %180 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %size_button_box = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %180, i32 0, i32 34
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %size_button_box, align 8
  %181 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_size_hbox91 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %181, i32 0, i32 33
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_size_hbox91, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_box_get_type() #7
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call92)
  %184 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkBox*
  %185 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %size_button_box94 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %185, i32 0, i32 34
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %size_button_box94, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %184, %struct._GtkWidget* %186, i32 0, i32 0, i32 0)
  %187 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %size_button_box95 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %187, i32 0, i32 34
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %size_button_box95, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %188)
  %189 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %size_button_box96 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %189, i32 0, i32 34
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %size_button_box96, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_container_get_type() #7
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call97)
  %192 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkContainer*
  %call99 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %192)
  store %struct._GList* %call99, %struct._GList** %children, align 8
  %193 = load %struct._GList*, %struct._GList** %children, align 8
  %data100 = getelementptr inbounds %struct._GList, %struct._GList* %193, i32 0, i32 0
  %194 = load i8*, i8** %data100, align 8
  %195 = bitcast i8* %194 to %struct._GtkWidget*
  call void @gtk_widget_hide(%struct._GtkWidget* %195)
  %196 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %196)
  %197 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)) #6
  %198 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %x_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %198, i32 0, i32 36
  %199 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %y_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %199, i32 0, i32 37
  %call102 = call %struct._GtkWidget* @gimp_rectangle_options_prop_dimension_frame_new(%struct._GObject* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* %call101, %struct._GtkWidget** %x_entry, %struct._GtkWidget** %y_entry)
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %frame, align 8
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %201 = bitcast %struct._GtkWidget* %200 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_box_get_type() #7
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %201, i64 %call103)
  %202 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkBox*
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %202, %struct._GtkWidget* %203, i32 0, i32 0, i32 0)
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %204)
  %205 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)) #6
  %206 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %width_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %206, i32 0, i32 38
  %207 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %height_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %207, i32 0, i32 39
  %call106 = call %struct._GtkWidget* @gimp_rectangle_options_prop_dimension_frame_new(%struct._GObject* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %call105, %struct._GtkWidget** %width_entry, %struct._GtkWidget** %height_entry)
  store %struct._GtkWidget* %call106, %struct._GtkWidget** %frame, align 8
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %209 = bitcast %struct._GtkWidget* %208 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_box_get_type() #7
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %209, i64 %call107)
  %210 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkBox*
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %210, %struct._GtkWidget* %211, i32 0, i32 0, i32 0)
  %212 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %212)
  %213 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call109 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #6
  %call110 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %213, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* %call109)
  store %struct._GtkWidget* %call110, %struct._GtkWidget** %button, align 8
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %215 = bitcast %struct._GtkWidget* %214 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_box_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %215, i64 %call111)
  %216 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkBox*
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %216, %struct._GtkWidget* %217, i32 0, i32 0, i32 0)
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %218)
  %219 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call113 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 5)
  store %struct._GtkWidget* %call113, %struct._GtkWidget** %combo, align 8
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_box_get_type() #7
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call114)
  %222 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkBox*
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %222, %struct._GtkWidget* %223, i32 0, i32 0, i32 0)
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %224)
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0)) #6
  %call117 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call116)
  %225 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %auto_shrink_button = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %225, i32 0, i32 27
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %auto_shrink_button, align 8
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %227 = bitcast %struct._GtkWidget* %226 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_box_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %227, i64 %call118)
  %228 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkBox*
  %229 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %auto_shrink_button120 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %229, i32 0, i32 27
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button120, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %228, %struct._GtkWidget* %230, i32 0, i32 0, i32 0)
  %231 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %auto_shrink_button121 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %231, i32 0, i32 27
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button121, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %232, i32 0)
  %233 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %auto_shrink_button122 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %233, i32 0, i32 27
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button122, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %234)
  %235 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %auto_shrink_button123 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %235, i32 0, i32 27
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_shrink_button123, align 8
  %237 = bitcast %struct._GtkWidget* %236 to %struct._GTypeInstance*
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %237, i64 80)
  %238 = bitcast %struct._GTypeInstance* %call124 to %struct._GObject*
  %239 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %auto_shrink_button125 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %239, i32 0, i32 27
  %240 = bitcast %struct._GtkWidget** %auto_shrink_button125 to i8*
  %241 = bitcast i8* %240 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %238, i8** %241)
  %242 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0)) #6
  %call127 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %242, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %call126)
  store %struct._GtkWidget* %call127, %struct._GtkWidget** %button, align 8
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %244 = bitcast %struct._GtkWidget* %243 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_box_get_type() #7
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %244, i64 %call128)
  %245 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkBox*
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %245, %struct._GtkWidget* %246, i32 0, i32 0, i32 0)
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %247)
  %248 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  call void @gimp_rectangle_options_fixed_rule_changed(%struct._GtkWidget* null, %struct._GimpRectangleOptionsPrivate* %248)
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %249
}

declare %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions*) #2

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #2

declare %struct._GtkWidget* @gimp_frame_new(i8*) #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #2

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_options_fixed_rule_changed(%struct._GtkWidget* %combo_box, %struct._GimpRectangleOptionsPrivate* %private) #1 {
entry:
  %combo_box.addr = alloca %struct._GtkWidget*, align 8
  %private.addr = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  store %struct._GtkWidget* %combo_box, %struct._GtkWidget** %combo_box.addr, align 8
  store %struct._GimpRectangleOptionsPrivate* %private, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %0 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %width_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %0, i32 0, i32 38
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %width_entry, align 8
  %2 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_rule_active = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %2, i32 0, i32 10
  %3 = load i32, i32* %fixed_rule_active, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_rule = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %4, i32 0, i32 11
  %5 = load i32, i32* %fixed_rule, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_rule1 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %6, i32 0, i32 11
  %7 = load i32, i32* %fixed_rule1, align 4
  %cmp2 = icmp eq i32 %7, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %9 = phi i1 [ false, %entry ], [ %8, %lor.end ]
  %lnot = xor i1 %9, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %1, i32 %lnot.ext)
  %10 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %height_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %10, i32 0, i32 39
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %height_entry, align 8
  %12 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_rule_active3 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %12, i32 0, i32 10
  %13 = load i32, i32* %fixed_rule_active3, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %land.rhs.5, label %land.end.12

land.rhs.5:                                       ; preds = %land.end
  %14 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_rule6 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %14, i32 0, i32 11
  %15 = load i32, i32* %fixed_rule6, align 4
  %cmp7 = icmp eq i32 %15, 2
  br i1 %cmp7, label %lor.end.11, label %lor.rhs.8

lor.rhs.8:                                        ; preds = %land.rhs.5
  %16 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_rule9 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %16, i32 0, i32 11
  %17 = load i32, i32* %fixed_rule9, align 4
  %cmp10 = icmp eq i32 %17, 3
  br label %lor.end.11

lor.end.11:                                       ; preds = %lor.rhs.8, %land.rhs.5
  %18 = phi i1 [ true, %land.rhs.5 ], [ %cmp10, %lor.rhs.8 ]
  br label %land.end.12

land.end.12:                                      ; preds = %lor.end.11, %land.end
  %19 = phi i1 [ false, %land.end ], [ %18, %lor.end.11 ]
  %lnot13 = xor i1 %19, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %11, i32 %lnot.ext14)
  %20 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_width_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %20, i32 0, i32 28
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_width_entry, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %21)
  %22 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_height_entry = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %22, i32 0, i32 29
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_height_entry, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %23)
  %24 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_aspect_hbox = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %24, i32 0, i32 30
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_aspect_hbox, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %25)
  %26 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_size_hbox = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %26, i32 0, i32 33
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_size_hbox, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %27)
  %28 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_rule15 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %28, i32 0, i32 11
  %29 = load i32, i32* %fixed_rule15, align 4
  switch i32 %29, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.17
    i32 2, label %sw.bb.19
    i32 3, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %land.end.12
  %30 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_aspect_hbox16 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %30, i32 0, i32 30
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_aspect_hbox16, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %land.end.12
  %32 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_width_entry18 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %32, i32 0, i32 28
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_width_entry18, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %land.end.12
  %34 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_height_entry20 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %34, i32 0, i32 29
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_height_entry20, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %land.end.12
  %36 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private.addr, align 8
  %fixed_size_hbox22 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %36, i32 0, i32 33
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %fixed_size_hbox22, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end.12, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb
  ret void
}

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #2

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #2

declare void @g_object_unref(i8*) #2

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #2

declare %struct._GtkWidget* @gimp_prop_number_pair_entry_new(%struct._GObject*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, double, double) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_options_string_current_updates(%struct._GimpNumberPairEntry* %entry1, %struct._GParamSpec* %param, %struct._GimpRectangleOptions* %rectangle_options) #1 {
entry:
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %param.addr = alloca %struct._GParamSpec*, align 8
  %rectangle_options.addr = alloca %struct._GimpRectangleOptions*, align 8
  %private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %user_override = alloca i32, align 4
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  store %struct._GParamSpec* %param, %struct._GParamSpec** %param.addr, align 8
  store %struct._GimpRectangleOptions* %rectangle_options, %struct._GimpRectangleOptions** %rectangle_options.addr, align 8
  %0 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options.addr, align 8
  %1 = bitcast %struct._GimpRectangleOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpRectangleOptions*
  %call3 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %2)
  store %struct._GimpRectangleOptionsPrivate* %call3, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %3 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %call4 = call i32 @gimp_number_pair_entry_get_user_override(%struct._GimpNumberPairEntry* %3)
  store i32 %call4, i32* %user_override, align 4
  %4 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %5 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %use_string_current = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %5, i32 0, i32 25
  %6 = load i32, i32* %use_string_current, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0)) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ null, %cond.false ]
  call void @gimp_number_pair_entry_set_default_text(%struct._GimpNumberPairEntry* %4, i8* %cond)
  %7 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %aspect_button_box = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %7, i32 0, i32 31
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_button_box, align 8
  %9 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %use_string_current6 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %9, i32 0, i32 25
  %10 = load i32, i32* %use_string_current6, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end
  %11 = load i32, i32* %user_override, align 4
  %tobool8 = icmp ne i32 %11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %12 = phi i1 [ true, %cond.end ], [ %tobool8, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %8, i32 %lor.ext)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rectangle_options_setup_ratio_completion(%struct._GimpRectangleOptions* %rectangle_options, %struct._GtkWidget* %entry1, %struct._GtkListStore* %history) #1 {
entry:
  %rectangle_options.addr = alloca %struct._GimpRectangleOptions*, align 8
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %history.addr = alloca %struct._GtkListStore*, align 8
  %completion = alloca %struct._GtkEntryCompletion*, align 8
  store %struct._GimpRectangleOptions* %rectangle_options, %struct._GimpRectangleOptions** %rectangle_options.addr, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct._GtkListStore* %history, %struct._GtkListStore** %history.addr, align 8
  %call = call i64 @gtk_entry_completion_get_type() #7
  %0 = load %struct._GtkListStore*, %struct._GtkListStore** %history.addr, align 8
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), %struct._GtkListStore* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i32 1, i8* null)
  %1 = bitcast i8* %call2 to %struct._GtkEntryCompletion*
  store %struct._GtkEntryCompletion* %1, %struct._GtkEntryCompletion** %completion, align 8
  %2 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_completion_set_text_column(%struct._GtkEntryCompletion* %2, i32 2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_entry_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEntry*
  %6 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_set_completion(%struct._GtkEntry* %5, %struct._GtkEntryCompletion* %6)
  %7 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %8 = bitcast %struct._GtkEntryCompletion* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._GtkListStore*, %struct._GtkListStore** %history.addr, align 8
  %12 = bitcast %struct._GtkListStore* %11 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkTreeModel*)* @gimp_number_pair_entry_history_add to void ()*), i8* %12, void (i8*, %struct._GClosure*)* null, i32 0)
  %13 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %14 = bitcast %struct._GtkEntryCompletion* %13 to i8*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkEntryCompletion*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GimpNumberPairEntry*)* @gimp_number_pair_entry_history_select to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject*, i8*, i8*, i32, i32) #2

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #2

declare void @gtk_widget_hide(%struct._GtkWidget*) #2

declare void @g_list_free(%struct._GList*) #2

declare %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject*, i8*, i32, i8*, i8*, i32, double) #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_rectangle_options_prop_dimension_frame_new(%struct._GObject* %config, i8* %x_property_name, i8* %y_property_name, i8* %unit_property_name, i8* %table_label, %struct._GtkWidget** %x_entry, %struct._GtkWidget** %y_entry) #1 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %x_property_name.addr = alloca i8*, align 8
  %y_property_name.addr = alloca i8*, align 8
  %unit_property_name.addr = alloca i8*, align 8
  %table_label.addr = alloca i8*, align 8
  %x_entry.addr = alloca %struct._GtkWidget**, align 8
  %y_entry.addr = alloca %struct._GtkWidget**, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %x_property_name, i8** %x_property_name.addr, align 8
  store i8* %y_property_name, i8** %y_property_name.addr, align 8
  store i8* %unit_property_name, i8** %unit_property_name.addr, align 8
  store i8* %table_label, i8** %table_label.addr, align 8
  store %struct._GtkWidget** %x_entry, %struct._GtkWidget*** %x_entry.addr, align 8
  store %struct._GtkWidget** %y_entry, %struct._GtkWidget*** %y_entry.addr, align 8
  %call = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_frame_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkFrame*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %2, %struct._GtkWidget* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %4)
  %5 = load i8*, i8** %table_label.addr, align 8
  %call5 = call %struct._GtkWidget* @gtk_label_new(i8* %5)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %label, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = load i8*, i8** %unit_property_name.addr, align 8
  %call8 = call %struct._GtkWidget* @gimp_prop_unit_combo_box_new(%struct._GObject* %11, i8* %12)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %menu, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 0, i32 0, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call11 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %hbox, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %20, %struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %24 = load i8*, i8** %x_property_name.addr, align 8
  %25 = load i8*, i8** %unit_property_name.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject* %23, i8* %24, i32 1, i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 1, double 3.000000e+02)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %entry1, align 8
  %26 = load %struct._GtkWidget**, %struct._GtkWidget*** %x_entry.addr, align 8
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %26, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %29, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_size_entry_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call17)
  %32 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_show_unit_menu(%struct._GimpSizeEntry* %32, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call19)
  %35 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 1, i32 1, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %39 = load i8*, i8** %y_property_name.addr, align 8
  %40 = load i8*, i8** %unit_property_name.addr, align 8
  %call21 = call %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject* %38, i8* %39, i32 1, i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 1, double 3.000000e+02)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %entry1, align 8
  %41 = load %struct._GtkWidget**, %struct._GtkWidget*** %y_entry.addr, align 8
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %41, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call22)
  %44 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %44, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_size_entry_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call24)
  %47 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_show_unit_menu(%struct._GimpSizeEntry* %47, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call26)
  %50 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 1, i32 1, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %53
}

declare %struct._GtkWidget* @gtk_button_new_with_label(i8*) #2

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_rectangle_options_fixed_rule_active(%struct._GimpRectangleOptions* %rectangle_options, i32 %fixed_rule) #1 {
entry:
  %retval = alloca i32, align 4
  %rectangle_options.addr = alloca %struct._GimpRectangleOptions*, align 8
  %fixed_rule.addr = alloca i32, align 4
  %private = alloca %struct._GimpRectangleOptionsPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRectangleOptions* %rectangle_options, %struct._GimpRectangleOptions** %rectangle_options.addr, align 8
  store i32 %fixed_rule, i32* %fixed_rule.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options.addr, align 8
  %1 = bitcast %struct._GimpRectangleOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rectangle_options_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_rectangle_options_fixed_rule_active, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRectangleOptions*, %struct._GimpRectangleOptions** %rectangle_options.addr, align 8
  %14 = bitcast %struct._GimpRectangleOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_options_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleOptions*
  %call13 = call %struct._GimpRectangleOptionsPrivate* @gimp_rectangle_options_get_private(%struct._GimpRectangleOptions* %15)
  store %struct._GimpRectangleOptionsPrivate* %call13, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %16 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_rule_active = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %16, i32 0, i32 10
  %17 = load i32, i32* %fixed_rule_active, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end
  %18 = load %struct._GimpRectangleOptionsPrivate*, %struct._GimpRectangleOptionsPrivate** %private, align 8
  %fixed_rule15 = getelementptr inbounds %struct._GimpRectangleOptionsPrivate, %struct._GimpRectangleOptionsPrivate* %18, i32 0, i32 11
  %19 = load i32, i32* %fixed_rule15, align 4
  %20 = load i32, i32* %fixed_rule.addr, align 4
  %cmp16 = icmp eq i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %21 = phi i1 [ false, %do.end ], [ %cmp16, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @g_object_interface_install_property(i8*, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #2

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_guides_type_get_type() #3

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #2

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_tool_fixed_rule_get_type() #3

declare void @g_slice_free1(i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @gimp_number_pair_entry_get_user_override(%struct._GimpNumberPairEntry*) #2

declare void @gimp_number_pair_entry_set_default_text(%struct._GimpNumberPairEntry*, i8*) #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #2

declare %struct._GtkWidget* @gimp_prop_unit_combo_box_new(%struct._GObject*, i8*) #2

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gimp_size_entry_show_unit_menu(%struct._GimpSizeEntry*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare i8* @g_object_new(i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_completion_get_type() #3

declare void @gtk_entry_completion_set_text_column(%struct._GtkEntryCompletion*, i32) #2

declare void @gtk_entry_set_completion(%struct._GtkEntry*, %struct._GtkEntryCompletion*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_number_pair_entry_history_add(%struct._GtkWidget* %entry1, %struct._GtkTreeModel* %model) #1 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %value = alloca %struct._GValue, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %left_number = alloca double, align 8
  %right_number = alloca double, align 8
  %text = alloca i8*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %3)
  store i8* %call3, i8** %text, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_number_pair_entry_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpNumberPairEntry*
  call void @gimp_number_pair_entry_get_values(%struct._GimpNumberPairEntry* %6, double* %left_number, double* %right_number)
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %call6 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter)
  store i32 %call6, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 2, %struct._GValue* %value)
  %10 = load i8*, i8** %text, align 8
  %call7 = call i8* @g_value_get_string(%struct._GValue* %value)
  %call8 = call i32 @strcmp(i8* %10, i8* %call7) #8
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %call9 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %iter)
  store i32 %call9, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, i32* %iter_valid, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.end
  %13 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %14 = bitcast %struct._GtkTreeModel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_list_store_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkListStore*
  call void @gtk_list_store_move_after(%struct._GtkListStore* %15, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null)
  br label %if.end.18

if.else:                                          ; preds = %for.end
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %17 = bitcast %struct._GtkTreeModel* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_list_store_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkListStore*
  call void @gtk_list_store_append(%struct._GtkListStore* %18, %struct._GtkTreeIter* %iter)
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %20 = bitcast %struct._GtkTreeModel* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_list_store_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkListStore*
  %22 = load double, double* %left_number, align 8
  %23 = load double, double* %right_number, align 8
  %24 = load i8*, i8** %text, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %21, %struct._GtkTreeIter* %iter, i32 0, double %22, i32 1, double %23, i32 2, i8* %24, i32 -1)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_number_pair_entry_history_select(%struct._GtkEntryCompletion* %completion, %struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, %struct._GimpNumberPairEntry* %entry1) #1 {
entry:
  %completion.addr = alloca %struct._GtkEntryCompletion*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %entry.addr = alloca %struct._GimpNumberPairEntry*, align 8
  %left_number = alloca double, align 8
  %right_number = alloca double, align 8
  store %struct._GtkEntryCompletion* %completion, %struct._GtkEntryCompletion** %completion.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GimpNumberPairEntry* %entry1, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, double* %left_number, i32 1, double* %right_number, i32 -1)
  %2 = load %struct._GimpNumberPairEntry*, %struct._GimpNumberPairEntry** %entry.addr, align 8
  %3 = load double, double* %left_number, align 8
  %4 = load double, double* %right_number, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %2, double %3, double %4)
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #2

declare void @gimp_number_pair_entry_get_values(%struct._GimpNumberPairEntry*, double*, double*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_number_pair_entry_get_type() #3

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #2

declare void @gtk_tree_model_get_value(%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @g_value_get_string(%struct._GValue*) #2

declare void @g_value_unset(%struct._GValue*) #2

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #2

declare void @gtk_list_store_move_after(%struct._GtkListStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #2

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #2

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #2

declare void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry*, double, double) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
