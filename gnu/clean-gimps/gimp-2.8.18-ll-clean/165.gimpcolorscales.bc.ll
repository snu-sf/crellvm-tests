; ModuleID = './libgimpwidgets/gimpcolorscales.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorScalesClass = type { %struct._GimpColorSelectorClass }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GdkEventFocus = type { i32, %struct._GdkDrawable*, i8, i16 }
%struct._GdkEventProperty = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i32, i32 }
%struct._GdkAtom = type opaque
%struct._GdkEventSelection = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i32 }
%struct._GdkEventProximity = type { i32, %struct._GdkDrawable*, i8, i32, %struct._GdkDevice* }
%struct._GdkEventVisibility = type { i32, %struct._GdkDrawable*, i8, i32 }
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.0 }
%union.anon.0 = type { [5 x i64] }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkEventWindowState = type { i32, %struct._GdkDrawable*, i8, i32, i32 }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpColorSelector = type { %struct._GtkBox, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpColorConfig = type opaque
%struct._GimpColorScales = type { %struct._GimpColorSelector, [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*], [7 x %struct._GtkObject*] }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpColorScale = type { %struct._GtkScale, i32, %struct._GimpRGB, %struct._GimpHSV, i8*, i32, i32, i32, i32 }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque

@gimp_color_scales_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpColorScales\00", align 1
@gimp_color_scales_parent_class = internal global i8* null, align 8
@GimpColorScales_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Scales\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"gimp-colorselector-scales\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"gimp-tool-options\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@gimp_color_scales_init.slider_initial_vals = internal constant [7 x double] zeroinitializer, align 16
@gimp_color_scales_init.slider_max_vals = internal constant [7 x double] [double 3.600000e+02, double 1.000000e+02, double 1.000000e+02, double 2.550000e+02, double 2.550000e+02, double 2.550000e+02, double 1.000000e+02], align 16
@gimp_color_scales_init.slider_incs = internal constant [7 x double] [double 3.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.600000e+01, double 1.600000e+01, double 1.600000e+01, double 1.000000e+01], align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_scales_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_scales_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_scales_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_color_selector_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 936, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_scales_class_intern_init to void (i8*, i8*)*), i32 384, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorScales*)* @gimp_color_scales_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_scales_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_scales_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_scales_parent_class, align 8
  %1 = load i32, i32* @GimpColorScales_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorScales_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorScalesClass*
  call void @gimp_color_scales_class_init(%struct._GimpColorScalesClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_init(%struct._GimpColorScales* %scales) #3 {
entry:
  %scales.addr = alloca %struct._GimpColorScales*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %group = alloca %struct._GSList*, align 8
  %i = alloca i32, align 4
  %enum_desc = alloca %struct._GimpEnumDesc*, align 8
  store %struct._GimpColorScales* %scales, %struct._GimpColorScales** %scales.addr, align 8
  %0 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %1 = bitcast %struct._GimpColorScales* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %toggles_visible = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %3, i32 0, i32 1
  store i32 0, i32* %toggles_visible, align 4
  %call2 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 4, i32 0)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %table, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %6, i32 1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_table_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %9, i32 2, i32 3)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %12, i32 5, i32 3)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %15, i32 2)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %18, i32 0, i32 0)
  %19 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %20 = bitcast %struct._GimpColorScales* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call15 = call i64 @gimp_color_selector_channel_get_type() #6
  %call16 = call i8* @g_type_class_ref(i64 %call15)
  %24 = bitcast i8* %call16 to %struct._GEnumClass*
  store %struct._GEnumClass* %24, %struct._GEnumClass** %enum_class, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %25 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %25, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %27 = load i32, i32* %i, align 4
  %call17 = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %26, i32 %27)
  store %struct._GimpEnumDesc* %call17, %struct._GimpEnumDesc** %enum_desc, align 8
  %28 = load i32, i32* %i, align 4
  %cmp18 = icmp eq i32 %28, 6
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %toggles = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %30, i32 0, i32 1
  %arrayidx = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles, i32 0, i64 %idxprom
  store %struct._GtkWidget* null, %struct._GtkWidget** %arrayidx, align 8
  br label %if.end.47

if.else:                                          ; preds = %for.body
  %31 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call19 = call %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList* %31)
  %32 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %32 to i64
  %33 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %toggles21 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %33, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles21, i32 0, i64 %idxprom20
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %arrayidx22, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %toggles24 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %35, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles24, i32 0, i64 %idxprom23
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx25, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_radio_button_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkRadioButton*
  %call28 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %38)
  store %struct._GSList* %call28, %struct._GSList** %group, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call29)
  %41 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  %42 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %42 to i64
  %43 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %toggles32 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %43, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles32, i32 0, i64 %idxprom31
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx33, align 8
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %i, align 4
  %add = add nsw i32 %46, 1
  call void @gtk_table_attach(%struct._GtkTable* %41, %struct._GtkWidget* %44, i32 0, i32 1, i32 %45, i32 %add, i32 2, i32 1, i32 0, i32 0)
  %47 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %toggles_visible34 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %47, i32 0, i32 1
  %48 = load i32, i32* %toggles_visible34, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %if.else
  %49 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %49 to i64
  %50 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %toggles37 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %50, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles37, i32 0, i64 %idxprom36
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx38, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  br label %if.end

if.end:                                           ; preds = %if.then.35, %if.else
  %52 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %52 to i64
  %53 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %toggles40 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %53, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles40, i32 0, i64 %idxprom39
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx41, align 8
  %55 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_help = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %55, i32 0, i32 2
  %56 = load i8*, i8** %value_help, align 8
  %call42 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %56) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %54, i8* %call42, i8* null)
  %57 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %57 to i64
  %58 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %toggles44 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %58, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles44, i32 0, i64 %idxprom43
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx45, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %62 = bitcast %struct._GimpColorScales* %61 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorScales*)* @gimp_color_scales_toggle_update to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.47

if.end.47:                                        ; preds = %if.end, %if.then
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call48)
  %65 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %66 = load i32, i32* %i, align 4
  %67 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %67, i32 0, i32 1
  %68 = load i8*, i8** %value_desc, align 8
  %call50 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %68) #7
  %69 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %69 to i64
  %arrayidx52 = getelementptr inbounds [7 x double], [7 x double]* @gimp_color_scales_init.slider_initial_vals, i32 0, i64 %idxprom51
  %70 = load double, double* %arrayidx52, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %71 to i64
  %arrayidx54 = getelementptr inbounds [7 x double], [7 x double]* @gimp_color_scales_init.slider_max_vals, i32 0, i64 %idxprom53
  %72 = load double, double* %arrayidx54, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %73 to i64
  %arrayidx56 = getelementptr inbounds [7 x double], [7 x double]* @gimp_color_scales_init.slider_incs, i32 0, i64 %idxprom55
  %74 = load double, double* %arrayidx56, align 8
  %75 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_help57 = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %75, i32 0, i32 2
  %76 = load i8*, i8** %value_help57, align 8
  %call58 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %76) #7
  %call59 = call %struct._GtkObject* @gimp_color_scale_entry_new(%struct._GtkTable* %65, i32 1, i32 %66, i8* %call50, i32 -1, i32 -1, double %70, double 0.000000e+00, double %72, double 1.000000e+00, double %74, i32 0, i8* %call58, i8* null)
  %77 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %77 to i64
  %78 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %slider_data = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %78, i32 0, i32 3
  %arrayidx61 = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data, i32 0, i64 %idxprom60
  store %struct._GtkObject* %call59, %struct._GtkObject** %arrayidx61, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %79 to i64
  %80 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %slider_data63 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %80, i32 0, i32 3
  %arrayidx64 = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data63, i32 0, i64 %idxprom62
  %81 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx64, align 8
  %82 = bitcast %struct._GtkObject* %81 to %struct._GTypeInstance*
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call65 to %struct._GObject*
  %call66 = call i8* @g_object_get_data(%struct._GObject* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %84 = bitcast i8* %call66 to %struct._GtkWidget*
  %85 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %85 to i64
  %86 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %sliders = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %86, i32 0, i32 2
  %arrayidx68 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %sliders, i32 0, i64 %idxprom67
  store %struct._GtkWidget* %84, %struct._GtkWidget** %arrayidx68, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %87 to i64
  %88 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %sliders70 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %88, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %sliders70, i32 0, i64 %idxprom69
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx71, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_color_scale_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call72)
  %91 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpColorScale*
  %92 = load i32, i32* %i, align 4
  call void @gimp_color_scale_set_channel(%struct._GimpColorScale* %91, i32 %92)
  %93 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %93 to i64
  %94 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %slider_data75 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %94, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data75, i32 0, i64 %idxprom74
  %95 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx76, align 8
  %96 = bitcast %struct._GtkObject* %95 to i8*
  %97 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %98 = bitcast %struct._GimpColorScales* %97 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorScales*)* @gimp_color_scales_scale_update to void ()*), i8* %98, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %99 = load i32, i32* %i, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %100 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %101 = bitcast %struct._GEnumClass* %100 to i8*
  call void @g_type_class_unref(i8* %101)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_class_init(%struct._GimpColorScalesClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorScalesClass*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._GimpColorScalesClass* %klass, %struct._GimpColorScalesClass** %klass.addr, align 8
  %0 = load %struct._GimpColorScalesClass*, %struct._GimpColorScalesClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorScalesClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %2, %struct._GimpColorSelectorClass** %selector_class, align 8
  %call2 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #7
  %3 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %3, i32 0, i32 1
  store i8* %call2, i8** %name, align 8
  %4 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8** %help_id, align 8
  %5 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %stock_id, align 8
  %6 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_visible = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %6, i32 0, i32 4
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_scales_togg_visible, void (%struct._GimpColorSelector*, i32)** %set_toggles_visible, align 8
  %7 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_sensitive = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %7, i32 0, i32 5
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_scales_togg_sensitive, void (%struct._GimpColorSelector*, i32)** %set_toggles_sensitive, align 8
  %8 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_show_alpha = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %8, i32 0, i32 6
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_scales_set_show_alpha, void (%struct._GimpColorSelector*, i32)** %set_show_alpha, align 8
  %9 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_color = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %9, i32 0, i32 7
  store void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* @gimp_color_scales_set_color, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color, align 8
  %10 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_channel = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %10, i32 0, i32 8
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_scales_set_channel, void (%struct._GimpColorSelector*, i32)** %set_channel, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_togg_visible(%struct._GimpColorSelector* %selector, i32 %visible) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %visible.addr = alloca i32, align 4
  %scales = alloca %struct._GimpColorScales*, align 8
  %i = alloca i32, align 4
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %visible, i32* %visible.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scales_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScales*
  store %struct._GimpColorScales* %2, %struct._GimpColorScales** %scales, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %toggles = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles, i32 0, i64 %idxprom
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %7 = load i32, i32* %visible.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %6, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_togg_sensitive(%struct._GimpColorSelector* %selector, i32 %sensitive) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %sensitive.addr = alloca i32, align 4
  %scales = alloca %struct._GimpColorScales*, align 8
  %i = alloca i32, align 4
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scales_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScales*
  store %struct._GimpColorScales* %2, %struct._GimpColorScales** %scales, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %toggles = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles, i32 0, i64 %idxprom
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %7 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %6, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_set_show_alpha(%struct._GimpColorSelector* %selector, i32 %show_alpha) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %show_alpha.addr = alloca i32, align 4
  %scales = alloca %struct._GimpColorScales*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %spin = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %show_alpha, i32* %show_alpha.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scales_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScales*
  store %struct._GimpColorScales* %2, %struct._GimpColorScales** %scales, align 8
  %3 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %slider_data = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data, i32 0, i64 6
  %4 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx, align 8
  %5 = bitcast %struct._GtkObject* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %7 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %7, %struct._GtkWidget** %label, align 8
  %8 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %slider_data4 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %8, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data4, i32 0, i64 6
  %9 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx5, align 8
  %10 = bitcast %struct._GtkObject* %9 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @g_object_get_data(%struct._GObject* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %12 = bitcast i8* %call7 to %struct._GtkWidget*
  store %struct._GtkWidget* %12, %struct._GtkWidget** %scale, align 8
  %13 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %slider_data8 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %13, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data8, i32 0, i64 6
  %14 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx9, align 8
  %15 = bitcast %struct._GtkObject* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %call11 = call i8* @g_object_get_data(%struct._GObject* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %17 = bitcast i8* %call11 to %struct._GtkWidget*
  store %struct._GtkWidget* %17, %struct._GtkWidget** %spin, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %call12 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %18)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %table, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gtk_table_get_type() #6
  store i64 %call13, i64* %__t, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.19

if.else:                                          ; preds = %entry
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool14 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool14, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %27 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %26, %27
  br i1 %cmp, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.17:                                       ; preds = %land.lhs.true, %if.else
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %29 = load i64, i64* %__t, align 8
  %call18 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #8
  store i32 %call18, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %30 = load i32, i32* %__r, align 4
  store i32 %30, i32* %tmp
  %31 = load i32, i32* %tmp
  %tobool20 = icmp ne i32 %31, 0
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.19
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %35 = load i32, i32* %show_alpha.addr, align 4
  %tobool24 = icmp ne i32 %35, 0
  %cond = select i1 %tobool24, i32 3, i32 0
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %34, i32 5, i32 %cond)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.19
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %37 = load i32, i32* %show_alpha.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %36, i32 %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %39 = load i32, i32* %show_alpha.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %38, i32 %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  %41 = load i32, i32* %show_alpha.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %40, i32 %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_set_color(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %scales = alloca %struct._GimpColorScales*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scales_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScales*
  store %struct._GimpColorScales* %2, %struct._GimpColorScales** %scales, align 8
  %3 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  call void @gimp_color_scales_update_scales(%struct._GimpColorScales* %3, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_set_channel(%struct._GimpColorSelector* %selector, i32 %channel) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %channel.addr = alloca i32, align 4
  %scales = alloca %struct._GimpColorScales*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scales_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScales*
  store %struct._GimpColorScales* %2, %struct._GimpColorScales** %scales, align 8
  %3 = load i32, i32* %channel.addr, align 4
  %cmp = icmp ult i32 %3, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %channel.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %toggles = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles, i32 0, i64 %idxprom
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %8 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %9 = bitcast %struct._GimpColorScales* %8 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpColorScales*)* @gimp_color_scales_toggle_update to i8*), i8* %9)
  %10 = load i32, i32* %channel.addr, align 4
  %idxprom3 = zext i32 %10 to i64
  %11 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %toggles4 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %11, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles4, i32 0, i64 %idxprom3
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx5, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_toggle_button_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %14, i32 1)
  %15 = load i32, i32* %channel.addr, align 4
  %idxprom8 = zext i32 %15 to i64
  %16 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %toggles9 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %16, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles9, i32 0, i64 %idxprom8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx10, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales, align 8
  %20 = bitcast %struct._GimpColorScales* %19 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpColorScales*)* @gimp_color_scales_toggle_update to i8*), i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_update_scales(%struct._GimpColorScales* %scales, i32 %skip) #3 {
entry:
  %scales.addr = alloca %struct._GimpColorScales*, align 8
  %skip.addr = alloca i32, align 4
  %selector = alloca %struct._GimpColorSelector*, align 8
  %values = alloca [7 x i32], align 16
  %i = alloca i32, align 4
  store %struct._GimpColorScales* %scales, %struct._GimpColorScales** %scales.addr, align 8
  store i32 %skip, i32* %skip.addr, align 4
  %0 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %1 = bitcast %struct._GimpColorScales* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %3, i32 0, i32 5
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %4 = load double, double* %h, align 8
  %mul = fmul double %4, 3.600000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %values, i32 0, i64 0
  store i32 %conv, i32* %arrayidx, align 4
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv2 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %5, i32 0, i32 5
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv2, i32 0, i32 1
  %6 = load double, double* %s, align 8
  %mul3 = fmul double %6, 1.000000e+02
  %add4 = fadd double %mul3, 5.000000e-01
  %conv5 = fptosi double %add4 to i32
  %arrayidx6 = getelementptr inbounds [7 x i32], [7 x i32]* %values, i32 0, i64 1
  store i32 %conv5, i32* %arrayidx6, align 4
  %7 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv7 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %7, i32 0, i32 5
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv7, i32 0, i32 2
  %8 = load double, double* %v, align 8
  %mul8 = fmul double %8, 1.000000e+02
  %add9 = fadd double %mul8, 5.000000e-01
  %conv10 = fptosi double %add9 to i32
  %arrayidx11 = getelementptr inbounds [7 x i32], [7 x i32]* %values, i32 0, i64 2
  store i32 %conv10, i32* %arrayidx11, align 4
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %9, i32 0, i32 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %10 = load double, double* %r, align 8
  %mul12 = fmul double %10, 2.550000e+02
  %add13 = fadd double %mul12, 5.000000e-01
  %conv14 = fptosi double %add13 to i32
  %arrayidx15 = getelementptr inbounds [7 x i32], [7 x i32]* %values, i32 0, i64 3
  store i32 %conv14, i32* %arrayidx15, align 4
  %11 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb16 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %11, i32 0, i32 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb16, i32 0, i32 1
  %12 = load double, double* %g, align 8
  %mul17 = fmul double %12, 2.550000e+02
  %add18 = fadd double %mul17, 5.000000e-01
  %conv19 = fptosi double %add18 to i32
  %arrayidx20 = getelementptr inbounds [7 x i32], [7 x i32]* %values, i32 0, i64 4
  store i32 %conv19, i32* %arrayidx20, align 4
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb21 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %13, i32 0, i32 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb21, i32 0, i32 2
  %14 = load double, double* %b, align 8
  %mul22 = fmul double %14, 2.550000e+02
  %add23 = fadd double %mul22, 5.000000e-01
  %conv24 = fptosi double %add23 to i32
  %arrayidx25 = getelementptr inbounds [7 x i32], [7 x i32]* %values, i32 0, i64 5
  store i32 %conv24, i32* %arrayidx25, align 4
  %15 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb26 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %15, i32 0, i32 4
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb26, i32 0, i32 3
  %16 = load double, double* %a, align 8
  %mul27 = fmul double %16, 1.000000e+02
  %add28 = fadd double %mul27, 5.000000e-01
  %conv29 = fptosi double %add28 to i32
  %arrayidx30 = getelementptr inbounds [7 x i32], [7 x i32]* %values, i32 0, i64 6
  store i32 %conv29, i32* %arrayidx30, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %17, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %skip.addr, align 4
  %cmp32 = icmp ne i32 %18, %19
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %slider_data = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %21, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data, i32 0, i64 %idxprom
  %22 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx34, align 8
  %23 = bitcast %struct._GtkObject* %22 to i8*
  %24 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %25 = bitcast %struct._GimpColorScales* %24 to i8*
  %call35 = call i32 @g_signal_handlers_block_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorScales*)* @gimp_color_scales_scale_update to i8*), i8* %25)
  %26 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %26 to i64
  %27 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %slider_data37 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %27, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data37, i32 0, i64 %idxprom36
  %28 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx38, align 8
  %29 = bitcast %struct._GtkObject* %28 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_adjustment_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call39)
  %30 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkAdjustment*
  %31 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [7 x i32], [7 x i32]* %values, i32 0, i64 %idxprom41
  %32 = load i32, i32* %arrayidx42, align 4
  %conv43 = sitofp i32 %32 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %30, double %conv43)
  %33 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %33 to i64
  %34 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %slider_data45 = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %34, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data45, i32 0, i64 %idxprom44
  %35 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx46, align 8
  %36 = bitcast %struct._GtkObject* %35 to i8*
  %37 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %38 = bitcast %struct._GimpColorScales* %37 to i8*
  %call47 = call i32 @g_signal_handlers_unblock_matched(i8* %36, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpColorScales*)* @gimp_color_scales_scale_update to i8*), i8* %38)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %39 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %sliders = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %40, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %sliders, i32 0, i64 %idxprom48
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx49, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_color_scale_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call50)
  %43 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpColorScale*
  %44 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb52 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %44, i32 0, i32 4
  %45 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv53 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %45, i32 0, i32 5
  call void @gimp_color_scale_set_color(%struct._GimpColorScale* %43, %struct._GimpRGB* %rgb52, %struct._GimpHSV* %hsv53)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_scale_update(%struct._GtkAdjustment* %adjustment, %struct._GimpColorScales* %scales) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %scales.addr = alloca %struct._GimpColorScales*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %value = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpColorScales* %scales, %struct._GimpColorScales** %scales.addr, align 8
  %0 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %1 = bitcast %struct._GimpColorScales* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  store double %call2, double* %value, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %slider_data = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [7 x %struct._GtkObject*], [7 x %struct._GtkObject*]* %slider_data, i32 0, i64 %idxprom
  %7 = load %struct._GtkObject*, %struct._GtkObject** %arrayidx, align 8
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %9 = bitcast %struct._GtkAdjustment* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_object_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkObject*
  %cmp5 = icmp eq %struct._GtkObject* %7, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, i32* %i, align 4
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.14
    i32 5, label %sw.bb.17
    i32 6, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %for.end
  %13 = load double, double* %value, align 8
  %div = fdiv double %13, 3.600000e+02
  %14 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %14, i32 0, i32 5
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  store double %div, double* %h, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.end
  %15 = load double, double* %value, align 8
  %div7 = fdiv double %15, 1.000000e+02
  %16 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv8 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %16, i32 0, i32 5
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv8, i32 0, i32 1
  store double %div7, double* %s, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.end
  %17 = load double, double* %value, align 8
  %div10 = fdiv double %17, 1.000000e+02
  %18 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv11 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %18, i32 0, i32 5
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv11, i32 0, i32 2
  store double %div10, double* %v, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.end
  %19 = load double, double* %value, align 8
  %div13 = fdiv double %19, 2.550000e+02
  %20 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %20, i32 0, i32 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  store double %div13, double* %r, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.end
  %21 = load double, double* %value, align 8
  %div15 = fdiv double %21, 2.550000e+02
  %22 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb16 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %22, i32 0, i32 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb16, i32 0, i32 1
  store double %div15, double* %g, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.end
  %23 = load double, double* %value, align 8
  %div18 = fdiv double %23, 2.550000e+02
  %24 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb19 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %24, i32 0, i32 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb19, i32 0, i32 2
  store double %div18, double* %b, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.end
  %25 = load double, double* %value, align 8
  %div21 = fdiv double %25, 1.000000e+02
  %26 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb22 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %26, i32 0, i32 4
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb22, i32 0, i32 3
  store double %div21, double* %a, align 8
  %27 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv23 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %27, i32 0, i32 5
  %a24 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv23, i32 0, i32 3
  store double %div21, double* %a24, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb.20, %sw.bb.17, %sw.bb.14, %sw.bb.12, %sw.bb.9, %sw.bb.6, %sw.bb
  %28 = load i32, i32* %i, align 4
  %cmp25 = icmp sge i32 %28, 0
  br i1 %cmp25, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %29 = load i32, i32* %i, align 4
  %cmp26 = icmp sle i32 %29, 2
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %30 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv28 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %30, i32 0, i32 5
  %31 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb29 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %31, i32 0, i32 4
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv28, %struct._GimpRGB* %rgb29)
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %32 = load i32, i32* %i, align 4
  %cmp30 = icmp sge i32 %32, 3
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.36

land.lhs.true.31:                                 ; preds = %if.else
  %33 = load i32, i32* %i, align 4
  %cmp32 = icmp sle i32 %33, 5
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %land.lhs.true.31
  %34 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb34 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %34, i32 0, i32 4
  %35 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv35 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %35, i32 0, i32 5
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb34, %struct._GimpHSV* %hsv35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %land.lhs.true.31, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.27
  %36 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %37 = load i32, i32* %i, align 4
  call void @gimp_color_scales_update_scales(%struct._GimpColorScales* %36, i32 %37)
  %38 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  call void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %38)
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_color_scale_set_color(%struct._GimpColorScale*, %struct._GimpRGB*, %struct._GimpHSV*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_scale_get_type() #2

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_object_get_type() #2

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_color_selector_color_changed(%struct._GimpColorSelector*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scales_toggle_update(%struct._GtkWidget* %widget, %struct._GimpColorScales* %scales) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %scales.addr = alloca %struct._GimpColorScales*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorScales* %scales, %struct._GimpColorScales** %scales.addr, align 8
  %0 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %1 = bitcast %struct._GimpColorScales* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %call4 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %5)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GimpColorScales*, %struct._GimpColorScales** %scales.addr, align 8
  %toggles = getelementptr inbounds %struct._GimpColorScales, %struct._GimpColorScales* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [7 x %struct._GtkWidget*], [7 x %struct._GtkWidget*]* %toggles, i32 0, i64 %idxprom
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %cmp5 = icmp eq %struct._GtkWidget* %7, %10
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %12 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %channel = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %12, i32 0, i32 6
  store i32 %11, i32* %channel, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %14 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  call void @gimp_color_selector_channel_changed(%struct._GimpColorSelector* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %for.end, %entry
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gimp_color_selector_channel_changed(%struct._GimpColorSelector*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_channel_get_type() #2

declare %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass*, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkObject* @gimp_color_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i8*, i8*) #1

declare void @gimp_color_scale_set_channel(%struct._GimpColorScale*, i32) #1

declare void @g_type_class_unref(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
