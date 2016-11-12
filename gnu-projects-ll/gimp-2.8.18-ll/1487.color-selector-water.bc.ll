; ModuleID = './modules/color-selector-water.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpModuleInfo = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._ColorselWaterClass = type { %struct._GimpColorSelectorClass }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
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
%struct._ColorselWater = type { %struct._GimpColorSelector, double, double, float, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._cairo = type opaque
%struct._cairo_surface = type opaque
%struct._GdkTimeCoord = type { i32, [128 x double] }

@colorsel_water_type_id = internal global i64 0, align 8
@colorsel_water_info = internal constant %struct._GimpModuleInfo { i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [32 x i8] c"Watercolor style color selector\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Raph Levien <raph@acm.org>, Sven Neumann <sven@gimp.org>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v0.4\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"released under the GPL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"1998-2006\00", align 1
@colorsel_water_register_type.g_define_type_info = internal constant %struct._GTypeInfo { i16 936, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (i8*)* @colorsel_water_class_intern_init to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (%struct._ColorselWaterClass*)* @colorsel_water_class_finalize to void (i8*, i8*)*), i8* null, i16 240, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._ColorselWater*)* @colorsel_water_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"ColorselWater\00", align 1
@colorsel_water_parent_class = internal global i8* null, align 8
@ColorselWater_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Watercolor\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"gimp-colorselector-watercolor\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"proximity-out-event\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1

; Function Attrs: nounwind uwtable
define i64 @colorsel_water_get_type() #0 {
entry:
  %0 = load i64, i64* @colorsel_water_type_id, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_query(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  ret %struct._GimpModuleInfo* @colorsel_water_info
}

; Function Attrs: nounwind uwtable
define i32 @gimp_module_register(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @colorsel_water_register_type(%struct._GTypeModule* %0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_water_register_type(%struct._GTypeModule* %type_module) #0 {
entry:
  %type_module.addr = alloca %struct._GTypeModule*, align 8
  %g_define_type_id = alloca i64, align 8
  store %struct._GTypeModule* %type_module, %struct._GTypeModule** %type_module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %type_module.addr, align 8
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call i64 @g_type_module_register_type(%struct._GTypeModule* %0, i64 %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @colorsel_water_register_type.g_define_type_info, i32 0)
  store i64 %call1, i64* @colorsel_water_type_id, align 8
  %1 = load i64, i64* @colorsel_water_type_id, align 8
  store i64 %1, i64* %g_define_type_id, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_water_class_intern_init(i8* %klass) #0 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @colorsel_water_parent_class, align 8
  %1 = load i32, i32* @ColorselWater_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @ColorselWater_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._ColorselWaterClass*
  call void @colorsel_water_class_init(%struct._ColorselWaterClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_water_class_finalize(%struct._ColorselWaterClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ColorselWaterClass*, align 8
  store %struct._ColorselWaterClass* %klass, %struct._ColorselWaterClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_water_init(%struct._ColorselWater* %water) #0 {
entry:
  %water.addr = alloca %struct._ColorselWater*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %area = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  store %struct._ColorselWater* %water, %struct._ColorselWater** %water.addr, align 8
  %0 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %pressure_adjust = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %0, i32 0, i32 3
  store float 1.000000e+00, float* %pressure_adjust, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %1 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %2 = bitcast %struct._ColorselWater* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %3, %struct._GtkWidget* %4, i32 1, i32 1, i32 0)
  %call3 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_frame_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %7, i32 1)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 1, i32 1, i32 0)
  %call8 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %area, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @select_area_expose to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %21 = bitcast %struct._ColorselWater* %20 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*, %struct._ColorselWater*)* @motion_notify_event to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %25 = bitcast %struct._ColorselWater* %24 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._ColorselWater*)* @button_press_event to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %29 = bitcast %struct._ColorselWater* %28 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventProximity*, %struct._ColorselWater*)* @proximity_out_event to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %30, i32 533772)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_set_extension_events(%struct._GtkWidget* %31, i32 1)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %32)
  %33 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %pressure_adjust15 = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %33, i32 0, i32 3
  %34 = load float, float* %pressure_adjust15, align 4
  %conv = fpext float %34 to double
  %mul = fmul double %conv, 1.000000e+02
  %sub = fsub double 2.000000e+02, %mul
  %call16 = call %struct._GtkObject* @gtk_adjustment_new(double %sub, double 0.000000e+00, double 2.000000e+02, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %35 = bitcast %struct._GtkObject* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_adjustment_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call17)
  %36 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %36, %struct._GtkAdjustment** %adj, align 8
  %37 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %38 = bitcast %struct._GtkAdjustment* %37 to i8*
  %39 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %40 = bitcast %struct._ColorselWater* %39 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._ColorselWater*)* @pressure_adjust_update to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call20 = call %struct._GtkWidget* @gtk_scale_new(i32 1, %struct._GtkAdjustment* %41)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %scale, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_scale_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call21)
  %44 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %44, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_scale_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call23)
  %47 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %47, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %call25 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %48, i8* %call25, i8* null)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call26)
  %51 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %53)
  ret void
}

declare i64 @g_type_module_register_type(%struct._GTypeModule*, i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @colorsel_water_class_init(%struct._ColorselWaterClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ColorselWaterClass*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._ColorselWaterClass* %klass, %struct._ColorselWaterClass** %klass.addr, align 8
  %0 = load %struct._ColorselWaterClass*, %struct._ColorselWaterClass** %klass.addr, align 8
  %1 = bitcast %struct._ColorselWaterClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %2, %struct._GimpColorSelectorClass** %selector_class, align 8
  %call2 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #5
  %3 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %3, i32 0, i32 1
  store i8* %call2, i8** %name, align 8
  %4 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8** %help_id, align 8
  %5 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8** %stock_id, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @select_area_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %cr = alloca %struct._cairo*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %dest = alloca i8*, align 8
  %y = alloca double, align 8
  %j = alloca i32, align 4
  %d = alloca i8*, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %dr = alloca double, align 8
  %dg = alloca double, align 8
  %db = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %0, i32 0, i32 1
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %1)
  store %struct._cairo* %call, %struct._cairo** %cr, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %3 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %3, i32 0, i32 4
  %4 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %2, %struct._GdkRegion* %4)
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %6, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %conv = sitofp i32 %7 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %dx, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %8 = load i32, i32* %height, align 4
  %conv1 = sitofp i32 %8 to double
  %div2 = fdiv double 1.000000e+00, %conv1
  store double %div2, double* %dy, align 8
  %9 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %9, i32 0, i32 3
  %width3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %10 = load i32, i32* %width3, align 4
  %11 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area4 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %11, i32 0, i32 3
  %height5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area4, i32 0, i32 3
  %12 = load i32, i32* %height5, align 4
  %call6 = call %struct._cairo_surface* @cairo_image_surface_create(i32 1, i32 %10, i32 %12)
  store %struct._cairo_surface* %call6, %struct._cairo_surface** %surface, align 8
  %13 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call7 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %13)
  store i8* %call7, i8** %dest, align 8
  store i32 0, i32* %j, align 4
  %14 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area8 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %14, i32 0, i32 3
  %y9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area8, i32 0, i32 1
  %15 = load i32, i32* %y9, align 4
  %height10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %16 = load i32, i32* %height10, align 4
  %div11 = sdiv i32 %15, %16
  %conv12 = sitofp i32 %div11 to double
  store double %conv12, double* %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %entry
  %17 = load i32, i32* %j, align 4
  %18 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area13 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %18, i32 0, i32 3
  %height14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area13, i32 0, i32 3
  %19 = load i32, i32* %height14, align 4
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %dest, align 8
  store i8* %20, i8** %d, align 8
  %21 = load double, double* %y, align 8
  %call16 = call double @calc(double 0.000000e+00, double %21, double 0.000000e+00)
  store double %call16, double* %r, align 8
  %22 = load double, double* %y, align 8
  %call17 = call double @calc(double 0.000000e+00, double %22, double 1.200000e+02)
  store double %call17, double* %g, align 8
  %23 = load double, double* %y, align 8
  %call18 = call double @calc(double 0.000000e+00, double %23, double 2.400000e+02)
  store double %call18, double* %b, align 8
  %24 = load double, double* %dx, align 8
  %25 = load double, double* %y, align 8
  %call19 = call double @calc(double %24, double %25, double 0.000000e+00)
  %26 = load double, double* %r, align 8
  %sub = fsub double %call19, %26
  store double %sub, double* %dr, align 8
  %27 = load double, double* %dx, align 8
  %28 = load double, double* %y, align 8
  %call20 = call double @calc(double %27, double %28, double 1.200000e+02)
  %29 = load double, double* %g, align 8
  %sub21 = fsub double %call20, %29
  store double %sub21, double* %dg, align 8
  %30 = load double, double* %dx, align 8
  %31 = load double, double* %y, align 8
  %call22 = call double @calc(double %30, double %31, double 2.400000e+02)
  %32 = load double, double* %b, align 8
  %sub23 = fsub double %call22, %32
  store double %sub23, double* %db, align 8
  %33 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area24 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %33, i32 0, i32 3
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area24, i32 0, i32 0
  %34 = load i32, i32* %x, align 4
  %conv25 = sitofp i32 %34 to double
  %35 = load double, double* %dr, align 8
  %mul = fmul double %conv25, %35
  %36 = load double, double* %r, align 8
  %add = fadd double %36, %mul
  store double %add, double* %r, align 8
  %37 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area26 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %37, i32 0, i32 3
  %x27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area26, i32 0, i32 0
  %38 = load i32, i32* %x27, align 4
  %conv28 = sitofp i32 %38 to double
  %39 = load double, double* %dg, align 8
  %mul29 = fmul double %conv28, %39
  %40 = load double, double* %g, align 8
  %add30 = fadd double %40, %mul29
  store double %add30, double* %g, align 8
  %41 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area31 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %41, i32 0, i32 3
  %x32 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area31, i32 0, i32 0
  %42 = load i32, i32* %x32, align 4
  %conv33 = sitofp i32 %42 to double
  %43 = load double, double* %db, align 8
  %mul34 = fmul double %conv33, %43
  %44 = load double, double* %b, align 8
  %add35 = fadd double %44, %mul34
  store double %add35, double* %b, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body
  %45 = load i32, i32* %i, align 4
  %46 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area37 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %46, i32 0, i32 3
  %width38 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area37, i32 0, i32 2
  %47 = load i32, i32* %width38, align 4
  %cmp39 = icmp slt i32 %45, %47
  br i1 %cmp39, label %for.body.41, label %for.end

for.body.41:                                      ; preds = %for.cond.36
  br label %do.body

do.body:                                          ; preds = %for.body.41
  %48 = load double, double* %b, align 8
  %conv42 = fptosi double %48 to i32
  %cmp43 = icmp sgt i32 %conv42, 255
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end.51

cond.false:                                       ; preds = %do.body
  %49 = load double, double* %b, align 8
  %conv45 = fptosi double %49 to i32
  %cmp46 = icmp slt i32 %conv45, 0
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.false
  br label %cond.end

cond.false.49:                                    ; preds = %cond.false
  %50 = load double, double* %b, align 8
  %conv50 = fptosi double %50 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.49, %cond.true.48
  %cond = phi i32 [ 0, %cond.true.48 ], [ %conv50, %cond.false.49 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end, %cond.true
  %cond52 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv53 = trunc i32 %cond52 to i8
  %51 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %conv53, i8* %arrayidx, align 1
  %52 = load double, double* %g, align 8
  %conv54 = fptosi double %52 to i32
  %cmp55 = icmp sgt i32 %conv54, 255
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end.51
  br label %cond.end.67

cond.false.58:                                    ; preds = %cond.end.51
  %53 = load double, double* %g, align 8
  %conv59 = fptosi double %53 to i32
  %cmp60 = icmp slt i32 %conv59, 0
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false.58
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.false.58
  %54 = load double, double* %g, align 8
  %conv64 = fptosi double %54 to i32
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.62
  %cond66 = phi i32 [ 0, %cond.true.62 ], [ %conv64, %cond.false.63 ]
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.end.65, %cond.true.57
  %cond68 = phi i32 [ 255, %cond.true.57 ], [ %cond66, %cond.end.65 ]
  %conv69 = trunc i32 %cond68 to i8
  %55 = load i8*, i8** %d, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %conv69, i8* %arrayidx70, align 1
  %56 = load double, double* %r, align 8
  %conv71 = fptosi double %56 to i32
  %cmp72 = icmp sgt i32 %conv71, 255
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.end.67
  br label %cond.end.84

cond.false.75:                                    ; preds = %cond.end.67
  %57 = load double, double* %r, align 8
  %conv76 = fptosi double %57 to i32
  %cmp77 = icmp slt i32 %conv76, 0
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.75
  br label %cond.end.82

cond.false.80:                                    ; preds = %cond.false.75
  %58 = load double, double* %r, align 8
  %conv81 = fptosi double %58 to i32
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.79
  %cond83 = phi i32 [ 0, %cond.true.79 ], [ %conv81, %cond.false.80 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.74
  %cond85 = phi i32 [ 255, %cond.true.74 ], [ %cond83, %cond.end.82 ]
  %conv86 = trunc i32 %cond85 to i8
  %59 = load i8*, i8** %d, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %59, i64 2
  store i8 %conv86, i8* %arrayidx87, align 1
  br label %do.end

do.end:                                           ; preds = %cond.end.84
  %60 = load double, double* %dr, align 8
  %61 = load double, double* %r, align 8
  %add88 = fadd double %61, %60
  store double %add88, double* %r, align 8
  %62 = load double, double* %dg, align 8
  %63 = load double, double* %g, align 8
  %add89 = fadd double %63, %62
  store double %add89, double* %g, align 8
  %64 = load double, double* %db, align 8
  %65 = load double, double* %b, align 8
  %add90 = fadd double %65, %64
  store double %add90, double* %b, align 8
  %66 = load i8*, i8** %d, align 8
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  %68 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call91 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %68)
  %69 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %call91 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %69, i64 %idx.ext
  store i8* %add.ptr92, i8** %dest, align 8
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end
  %70 = load i32, i32* %j, align 4
  %inc94 = add nsw i32 %70, 1
  store i32 %inc94, i32* %j, align 4
  %71 = load double, double* %dy, align 8
  %72 = load double, double* %y, align 8
  %add95 = fadd double %72, %71
  store double %add95, double* %y, align 8
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  %73 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %73)
  %74 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %75 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %76 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area97 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %76, i32 0, i32 3
  %x98 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area97, i32 0, i32 0
  %77 = load i32, i32* %x98, align 4
  %conv99 = sitofp i32 %77 to double
  %78 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area100 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %78, i32 0, i32 3
  %y101 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area100, i32 0, i32 1
  %79 = load i32, i32* %y101, align 4
  %conv102 = sitofp i32 %79 to double
  call void @cairo_set_source_surface(%struct._cairo* %74, %struct._cairo_surface* %75, double %conv99, double %conv102)
  %80 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %80)
  %81 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %81)
  %82 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %82)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @motion_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event, %struct._ColorselWater* %water) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %water.addr = alloca %struct._ColorselWater*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %coords = alloca %struct._GdkTimeCoord**, align 8
  %nevents = alloca i32, align 4
  %i = alloca i32, align 4
  %erase = alloca i32, align 4
  %last_motion_time = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %pressure = alloca double, align 8
  %pressure29 = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  store %struct._ColorselWater* %water, %struct._ColorselWater** %water.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  %1 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %1, i32 0, i32 7
  %2 = load i32, i32* %state, align 4
  %and = and i32 %2, 3840
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  %3 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %3, i32 0, i32 3
  %4 = load i32, i32* %time, align 4
  store i32 %4, i32* %last_motion_time, align 4
  %5 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %state1 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %5, i32 0, i32 7
  %6 = load i32, i32* %state1, align 4
  %and2 = and i32 %6, 3584
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %7 = phi i1 [ true, %if.then ], [ false, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  store i32 %lor.ext, i32* %erase, align 4
  %8 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %state4 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %8, i32 0, i32 7
  %9 = load i32, i32* %state4, align 4
  %and5 = and i32 %9, 1
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.end
  %10 = load i32, i32* %erase, align 4
  %tobool8 = icmp ne i32 %10, 0
  %lnot = xor i1 %tobool8, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %erase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %lor.end
  %11 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %time9 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %11, i32 0, i32 3
  %12 = load i32, i32* %time9, align 4
  %13 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %motion_time = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %13, i32 0, i32 4
  store i32 %12, i32* %motion_time, align 4
  %14 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %device = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %14, i32 0, i32 9
  %15 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %16 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %16, i32 0, i32 1
  %17 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %18 = load i32, i32* %last_motion_time, align 4
  %19 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %time10 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %19, i32 0, i32 3
  %20 = load i32, i32* %time10, align 4
  %call = call i32 @gdk_device_get_history(%struct._GdkDevice* %15, %struct._GdkDrawable* %17, i32 %18, i32 %20, %struct._GdkTimeCoord*** %coords, i32* %nevents)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nevents, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %y, align 8
  store double 5.000000e-01, double* %pressure, align 8
  %23 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %device13 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %23, i32 0, i32 9
  %24 = load %struct._GdkDevice*, %struct._GdkDevice** %device13, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct._GdkTimeCoord**, %struct._GdkTimeCoord*** %coords, align 8
  %arrayidx = getelementptr inbounds %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %26, i64 %idxprom
  %27 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %arrayidx, align 8
  %axes = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %27, i32 0, i32 1
  %arraydecay = getelementptr inbounds [128 x double], [128 x double]* %axes, i32 0, i32 0
  %call14 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %24, double* %arraydecay, i32 1, double* %x)
  %28 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %device15 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %28, i32 0, i32 9
  %29 = load %struct._GdkDevice*, %struct._GdkDevice** %device15, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %31 = load %struct._GdkTimeCoord**, %struct._GdkTimeCoord*** %coords, align 8
  %arrayidx17 = getelementptr inbounds %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %31, i64 %idxprom16
  %32 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %arrayidx17, align 8
  %axes18 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %32, i32 0, i32 1
  %arraydecay19 = getelementptr inbounds [128 x double], [128 x double]* %axes18, i32 0, i32 0
  %call20 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %29, double* %arraydecay19, i32 2, double* %y)
  %33 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %device21 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %33, i32 0, i32 9
  %34 = load %struct._GdkDevice*, %struct._GdkDevice** %device21, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load %struct._GdkTimeCoord**, %struct._GdkTimeCoord*** %coords, align 8
  %arrayidx23 = getelementptr inbounds %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %36, i64 %idxprom22
  %37 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %arrayidx23, align 8
  %axes24 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %37, i32 0, i32 1
  %arraydecay25 = getelementptr inbounds [128 x double], [128 x double]* %axes24, i32 0, i32 0
  %call26 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %34, double* %arraydecay25, i32 3, double* %pressure)
  %38 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %40 = load i32, i32* %erase, align 4
  %41 = load double, double* %x, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %42 = load i32, i32* %width, align 4
  %conv = sitofp i32 %42 to double
  %div = fdiv double %41, %conv
  %43 = load double, double* %y, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %44 = load i32, i32* %height, align 4
  %conv27 = sitofp i32 %44 to double
  %div28 = fdiv double %43, %conv27
  %45 = load double, double* %pressure, align 8
  call void @draw_brush(%struct._ColorselWater* %38, %struct._GtkWidget* %39, i32 %40, double %div, double %div28, double %45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct._GdkTimeCoord**, %struct._GdkTimeCoord*** %coords, align 8
  %48 = bitcast %struct._GdkTimeCoord** %47 to i8*
  call void @g_free(i8* %48)
  br label %if.end.39

if.else:                                          ; preds = %if.end
  store double 5.000000e-01, double* %pressure29, align 8
  %49 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %50 = bitcast %struct._GdkEventMotion* %49 to %union._GdkEvent*
  %call30 = call i32 @gdk_event_get_axis(%union._GdkEvent* %50, i32 3, double* %pressure29)
  %51 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %53 = load i32, i32* %erase, align 4
  %54 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x31 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %54, i32 0, i32 4
  %55 = load double, double* %x31, align 8
  %width32 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %56 = load i32, i32* %width32, align 4
  %conv33 = sitofp i32 %56 to double
  %div34 = fdiv double %55, %conv33
  %57 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y35 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %57, i32 0, i32 5
  %58 = load double, double* %y35, align 8
  %height36 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %59 = load i32, i32* %height36, align 4
  %conv37 = sitofp i32 %59 to double
  %div38 = fdiv double %58, %conv37
  %60 = load double, double* %pressure29, align 8
  call void @draw_brush(%struct._ColorselWater* %51, %struct._GtkWidget* %52, i32 %53, double %div34, double %div38, double %60)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %for.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %entry
  %61 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %61)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @button_press_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct._ColorselWater* %water) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %water.addr = alloca %struct._ColorselWater*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %erase = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct._ColorselWater* %water, %struct._ColorselWater** %water.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  %1 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %1, i32 0, i32 4
  %2 = load double, double* %x, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %3 = load i32, i32* %width, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %2, %conv
  %4 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_x = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %4, i32 0, i32 1
  store double %div, double* %last_x, align 8
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 5
  %6 = load double, double* %y, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %7 = load i32, i32* %height, align 4
  %conv1 = sitofp i32 %7 to double
  %div2 = fdiv double %6, %conv1
  %8 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_y = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %8, i32 0, i32 2
  store double %div2, double* %last_y, align 8
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 8
  %10 = load i32, i32* %button, align 4
  %cmp = icmp ne i32 %10, 1
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %erase, align 4
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 7
  %12 = load i32, i32* %state, align 4
  %and = and i32 %12, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %erase, align 4
  %tobool4 = icmp ne i32 %13, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %erase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %15 = load i32, i32* %erase, align 4
  %16 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_x5 = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %16, i32 0, i32 1
  %17 = load double, double* %last_x5, align 8
  %18 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_y6 = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %18, i32 0, i32 2
  %19 = load double, double* %last_y6, align 8
  call void @add_pigment(%struct._ColorselWater* %14, i32 %15, double %17, double %19, double 5.000000e-02)
  %20 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %20, i32 0, i32 3
  %21 = load i32, i32* %time, align 4
  %22 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %motion_time = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %22, i32 0, i32 4
  store i32 %21, i32* %motion_time, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @proximity_out_event(%struct._GtkWidget* %widget, %struct._GdkEventProximity* %event, %struct._ColorselWater* %water) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventProximity*, align 8
  %water.addr = alloca %struct._ColorselWater*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventProximity* %event, %struct._GdkEventProximity** %event.addr, align 8
  store %struct._ColorselWater* %water, %struct._ColorselWater** %water.addr, align 8
  ret i32 1
}

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_set_extension_events(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @pressure_adjust_update(%struct._GtkAdjustment* %adj, %struct._ColorselWater* %water) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %water.addr = alloca %struct._ColorselWater*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._ColorselWater* %water, %struct._ColorselWater** %water.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %0)
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %sub = fsub double %call, %call1
  %div = fdiv double %sub, 1.000000e+02
  %conv = fptrunc double %div to float
  %2 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %pressure_adjust = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %2, i32 0, i32 3
  store float %conv, float* %pressure_adjust, align 4
  ret void
}

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_digits(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

; Function Attrs: nounwind uwtable
define internal double @calc(double %x, double %y, double %angle) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %s = alloca double, align 8
  %c = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %angle, double* %angle.addr, align 8
  %0 = load double, double* %angle.addr, align 8
  %mul = fmul double %0, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  %call = call double @sin(double %div) #5
  %mul1 = fmul double 2.000000e+00, %call
  %mul2 = fmul double %mul1, 2.560000e+02
  store double %mul2, double* %s, align 8
  %1 = load double, double* %angle.addr, align 8
  %mul3 = fmul double %1, 0x400921FB54442D18
  %div4 = fdiv double %mul3, 1.800000e+02
  %call5 = call double @cos(double %div4) #5
  %mul6 = fmul double 2.000000e+00, %call5
  %mul7 = fmul double %mul6, 2.560000e+02
  store double %mul7, double* %c, align 8
  %2 = load double, double* %x.addr, align 8
  %sub = fsub double %2, 5.000000e-01
  %3 = load double, double* %c, align 8
  %mul8 = fmul double %sub, %3
  %add = fadd double 1.280000e+02, %mul8
  %4 = load double, double* %y.addr, align 8
  %sub9 = fsub double %4, 5.000000e-01
  %5 = load double, double* %s, align 8
  %mul10 = fmul double %sub9, %5
  %sub11 = fsub double %add, %mul10
  ret double %sub11
}

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

declare i32 @gdk_device_get_history(%struct._GdkDevice*, %struct._GdkDrawable*, i32, i32, %struct._GdkTimeCoord***, i32*) #1

declare i32 @gdk_device_get_axis(%struct._GdkDevice*, double*, i32, double*) #1

; Function Attrs: nounwind uwtable
define internal void @draw_brush(%struct._ColorselWater* %water, %struct._GtkWidget* %widget, i32 %erase, double %x, double %y, double %pressure) #0 {
entry:
  %water.addr = alloca %struct._ColorselWater*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %erase.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pressure.addr = alloca double, align 8
  %much = alloca double, align 8
  store %struct._ColorselWater* %water, %struct._ColorselWater** %water.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %erase, i32* %erase.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %pressure, double* %pressure.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_x = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %1, i32 0, i32 1
  %2 = load double, double* %last_x, align 8
  %sub = fsub double %0, %2
  %3 = load double, double* %x.addr, align 8
  %4 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_x1 = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %4, i32 0, i32 1
  %5 = load double, double* %last_x1, align 8
  %sub2 = fsub double %3, %5
  %mul = fmul double %sub, %sub2
  %6 = load double, double* %y.addr, align 8
  %7 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_y = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %7, i32 0, i32 2
  %8 = load double, double* %last_y, align 8
  %sub3 = fsub double %6, %8
  %9 = load double, double* %y.addr, align 8
  %10 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_y4 = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %10, i32 0, i32 2
  %11 = load double, double* %last_y4, align 8
  %sub5 = fsub double %9, %11
  %mul6 = fmul double %sub3, %sub5
  %add = fadd double %mul, %mul6
  %call = call double @sqrt(double %add) #5
  store double %call, double* %much, align 8
  %12 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %13 = load i32, i32* %erase.addr, align 4
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %y.addr, align 8
  %16 = load double, double* %much, align 8
  %17 = load double, double* %pressure.addr, align 8
  %mul7 = fmul double %16, %17
  call void @add_pigment(%struct._ColorselWater* %12, i32 %13, double %14, double %15, double %mul7)
  %18 = load double, double* %x.addr, align 8
  %19 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_x8 = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %19, i32 0, i32 1
  store double %18, double* %last_x8, align 8
  %20 = load double, double* %y.addr, align 8
  %21 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %last_y9 = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %21, i32 0, i32 2
  store double %20, double* %last_y9, align 8
  ret void
}

declare void @g_free(i8*) #1

declare i32 @gdk_event_get_axis(%union._GdkEvent*, i32, double*) #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define internal void @add_pigment(%struct._ColorselWater* %water, i32 %erase, double %x, double %y, double %much) #0 {
entry:
  %water.addr = alloca %struct._ColorselWater*, align 8
  %erase.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %much.addr = alloca double, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %r21 = alloca double, align 8
  %g23 = alloca double, align 8
  %b26 = alloca double, align 8
  store %struct._ColorselWater* %water, %struct._ColorselWater** %water.addr, align 8
  store i32 %erase, i32* %erase.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %much, double* %much.addr, align 8
  %0 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %1 = bitcast %struct._ColorselWater* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._ColorselWater*, %struct._ColorselWater** %water.addr, align 8
  %pressure_adjust = getelementptr inbounds %struct._ColorselWater, %struct._ColorselWater* %3, i32 0, i32 3
  %4 = load float, float* %pressure_adjust, align 4
  %conv = fpext float %4 to double
  %5 = load double, double* %much.addr, align 8
  %mul = fmul double %5, %conv
  store double %mul, double* %much.addr, align 8
  %6 = load i32, i32* %erase.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %7, i32 0, i32 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %8 = load double, double* %r, align 8
  %sub = fsub double 1.000000e+00, %8
  %9 = load double, double* %much.addr, align 8
  %sub2 = fsub double 1.000000e+00, %9
  %mul3 = fmul double %sub, %sub2
  %sub4 = fsub double 1.000000e+00, %mul3
  %10 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb5 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %10, i32 0, i32 4
  %r6 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb5, i32 0, i32 0
  store double %sub4, double* %r6, align 8
  %11 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb7 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %11, i32 0, i32 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb7, i32 0, i32 1
  %12 = load double, double* %g, align 8
  %sub8 = fsub double 1.000000e+00, %12
  %13 = load double, double* %much.addr, align 8
  %sub9 = fsub double 1.000000e+00, %13
  %mul10 = fmul double %sub8, %sub9
  %sub11 = fsub double 1.000000e+00, %mul10
  %14 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb12 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %14, i32 0, i32 4
  %g13 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb12, i32 0, i32 1
  store double %sub11, double* %g13, align 8
  %15 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb14 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %15, i32 0, i32 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb14, i32 0, i32 2
  %16 = load double, double* %b, align 8
  %sub15 = fsub double 1.000000e+00, %16
  %17 = load double, double* %much.addr, align 8
  %sub16 = fsub double 1.000000e+00, %17
  %mul17 = fmul double %sub15, %sub16
  %sub18 = fsub double 1.000000e+00, %mul17
  %18 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb19 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %18, i32 0, i32 4
  %b20 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb19, i32 0, i32 2
  store double %sub18, double* %b20, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load double, double* %x.addr, align 8
  %20 = load double, double* %y.addr, align 8
  %call22 = call double @calc(double %19, double %20, double 0.000000e+00)
  %div = fdiv double %call22, 2.560000e+02
  store double %div, double* %r21, align 8
  %21 = load double, double* %x.addr, align 8
  %22 = load double, double* %y.addr, align 8
  %call24 = call double @calc(double %21, double %22, double 1.200000e+02)
  %div25 = fdiv double %call24, 2.560000e+02
  store double %div25, double* %g23, align 8
  %23 = load double, double* %x.addr, align 8
  %24 = load double, double* %y.addr, align 8
  %call27 = call double @calc(double %23, double %24, double 2.400000e+02)
  %div28 = fdiv double %call27, 2.560000e+02
  store double %div28, double* %b26, align 8
  %25 = load double, double* %r21, align 8
  %sub29 = fsub double 1.000000e+00, %25
  %26 = load double, double* %much.addr, align 8
  %mul30 = fmul double %sub29, %26
  %sub31 = fsub double 1.000000e+00, %mul30
  %27 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb32 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %27, i32 0, i32 4
  %r33 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb32, i32 0, i32 0
  %28 = load double, double* %r33, align 8
  %mul34 = fmul double %28, %sub31
  store double %mul34, double* %r33, align 8
  %29 = load double, double* %g23, align 8
  %sub35 = fsub double 1.000000e+00, %29
  %30 = load double, double* %much.addr, align 8
  %mul36 = fmul double %sub35, %30
  %sub37 = fsub double 1.000000e+00, %mul36
  %31 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb38 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %31, i32 0, i32 4
  %g39 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb38, i32 0, i32 1
  %32 = load double, double* %g39, align 8
  %mul40 = fmul double %32, %sub37
  store double %mul40, double* %g39, align 8
  %33 = load double, double* %b26, align 8
  %sub41 = fsub double 1.000000e+00, %33
  %34 = load double, double* %much.addr, align 8
  %mul42 = fmul double %sub41, %34
  %sub43 = fsub double 1.000000e+00, %mul42
  %35 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb44 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %35, i32 0, i32 4
  %b45 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb44, i32 0, i32 2
  %36 = load double, double* %b45, align 8
  %mul46 = fmul double %36, %sub43
  store double %mul46, double* %b45, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb47 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %37, i32 0, i32 4
  call void @gimp_rgb_clamp(%struct._GimpRGB* %rgb47)
  %38 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb48 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %38, i32 0, i32 4
  %39 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %39, i32 0, i32 5
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb48, %struct._GimpHSV* %hsv)
  %40 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  call void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %40)
  ret void
}

declare void @gimp_rgb_clamp(%struct._GimpRGB*) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_color_selector_color_changed(%struct._GimpColorSelector*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
