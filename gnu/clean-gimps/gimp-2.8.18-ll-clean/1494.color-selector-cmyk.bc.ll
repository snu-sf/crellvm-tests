; ModuleID = './modules/color-selector-cmyk.bc'
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
%struct._ColorselCmykClass = type { %struct._GimpColorSelectorClass }
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
%struct._ColorselCmyk = type { %struct._GimpColorSelector, %struct._GimpCMYK, double, [5 x %struct._GtkAdjustment*] }
%struct._GimpCMYK = type { double, double, double, double, double }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque

@colorsel_cmyk_type_id = internal global i64 0, align 8
@colorsel_cmyk_info = internal constant %struct._GimpModuleInfo { i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [20 x i8] c"CMYK color selector\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v0.2\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"(c) 2003, released under the GPL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"July 2003\00", align 1
@colorsel_cmyk_register_type.g_define_type_info = internal constant %struct._GTypeInfo { i16 936, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (i8*)* @colorsel_cmyk_class_intern_init to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (%struct._ColorselCmykClass*)* @colorsel_cmyk_class_finalize to void (i8*, i8*)*), i8* null, i16 304, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._ColorselCmyk*)* @colorsel_cmyk_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"ColorselCmyk\00", align 1
@colorsel_cmyk_parent_class = internal global i8* null, align 8
@ColorselCmyk_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"gimp-colorselector-cmyk\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"gtk-print\00", align 1
@colorsel_cmyk_init.cmyk_labels = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [3 x i8] c"_C\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"_M\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"_Y\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"_K\00", align 1
@colorsel_cmyk_init.cmyk_tips = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Black _pullout:\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"The percentage of black to pull out of the colored inks.\00", align 1

; Function Attrs: nounwind uwtable
define i64 @colorsel_cmyk_get_type() #0 {
entry:
  %0 = load i64, i64* @colorsel_cmyk_type_id, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_query(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  ret %struct._GimpModuleInfo* @colorsel_cmyk_info
}

; Function Attrs: nounwind uwtable
define i32 @gimp_module_register(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @colorsel_cmyk_register_type(%struct._GTypeModule* %0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_cmyk_register_type(%struct._GTypeModule* %type_module) #0 {
entry:
  %type_module.addr = alloca %struct._GTypeModule*, align 8
  %g_define_type_id = alloca i64, align 8
  store %struct._GTypeModule* %type_module, %struct._GTypeModule** %type_module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %type_module.addr, align 8
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call i64 @g_type_module_register_type(%struct._GTypeModule* %0, i64 %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @colorsel_cmyk_register_type.g_define_type_info, i32 0)
  store i64 %call1, i64* @colorsel_cmyk_type_id, align 8
  %1 = load i64, i64* @colorsel_cmyk_type_id, align 8
  store i64 %1, i64* %g_define_type_id, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_cmyk_class_intern_init(i8* %klass) #0 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @colorsel_cmyk_parent_class, align 8
  %1 = load i32, i32* @ColorselCmyk_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @ColorselCmyk_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._ColorselCmykClass*
  call void @colorsel_cmyk_class_init(%struct._ColorselCmykClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_cmyk_class_finalize(%struct._ColorselCmykClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ColorselCmykClass*, align 8
  store %struct._ColorselCmykClass* %klass, %struct._ColorselCmykClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_cmyk_init(%struct._ColorselCmyk* %module) #0 {
entry:
  %module.addr = alloca %struct._ColorselCmyk*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %i = alloca i32, align 4
  store %struct._ColorselCmyk* %module, %struct._ColorselCmyk** %module.addr, align 8
  %0 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %pullout = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %0, i32 0, i32 2
  store double 1.000000e+00, double* %pullout, align 8
  %call = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 4, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %3, i32 1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %6, i32 2)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_table_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %9, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %12, i32 3, i32 4)
  %13 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %14 = bitcast %struct._ColorselCmyk* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 1, i32 1, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %17, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @colorsel_cmyk_init.cmyk_labels, i32 0, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8
  %call13 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %23) #5
  %24 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds [4 x i8*], [4 x i8*]* @colorsel_cmyk_init.cmyk_tips, i32 0, i64 %idxprom14
  %25 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %25) #5
  %call17 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %20, i32 1, i32 %21, i8* %call13, i32 -1, i32 -1, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call16, i8* null)
  store %struct._GtkObject* %call17, %struct._GtkObject** %adj, align 8
  %26 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %27 = bitcast %struct._GtkObject* %26 to i8*
  %28 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %29 = bitcast %struct._ColorselCmyk* %28 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._ColorselCmyk*)* @colorsel_cmyk_adj_update to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %31 = bitcast %struct._GtkObject* %30 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_adjustment_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call19)
  %32 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkAdjustment*
  %33 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %adj22 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %34, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [5 x %struct._GtkAdjustment*], [5 x %struct._GtkAdjustment*]* %adj22, i32 0, i64 %idxprom21
  store %struct._GtkAdjustment* %32, %struct._GtkAdjustment** %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call24 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)) #5
  %call25 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call24)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %label, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_misc_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %38, float 1.000000e+00, float 5.000000e-01)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %add = add nsw i32 %44, 1
  call void @gtk_table_attach(%struct._GtkTable* %41, %struct._GtkWidget* %42, i32 1, i32 3, i32 %43, i32 %add, i32 4, i32 4, i32 0, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %46 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %pullout30 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %46, i32 0, i32 2
  %47 = load double, double* %pullout30, align 8
  %mul = fmul double %47, 1.000000e+02
  %call31 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %mul, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %spinbutton, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call32)
  %50 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %53, 1
  call void @gtk_table_attach(%struct._GtkTable* %50, %struct._GtkWidget* %51, i32 3, i32 4, i32 %52, i32 %add34, i32 2, i32 2, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call35 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %55, i8* %call35, i8* null)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_label_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call36)
  %58 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkLabel*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %58, %struct._GtkWidget* %59)
  %60 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %61 = bitcast %struct._GtkObject* %60 to i8*
  %62 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %63 = bitcast %struct._ColorselCmyk* %62 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._ColorselCmyk*)* @colorsel_cmyk_pullout_update to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %65 = bitcast %struct._GtkObject* %64 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_adjustment_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call39)
  %66 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkAdjustment*
  %67 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %67 to i64
  %68 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %adj42 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %68, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [5 x %struct._GtkAdjustment*], [5 x %struct._GtkAdjustment*]* %adj42, i32 0, i64 %idxprom41
  store %struct._GtkAdjustment* %66, %struct._GtkAdjustment** %arrayidx43, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  ret void
}

declare i64 @g_type_module_register_type(%struct._GTypeModule*, i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @colorsel_cmyk_class_init(%struct._ColorselCmykClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ColorselCmykClass*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._ColorselCmykClass* %klass, %struct._ColorselCmykClass** %klass.addr, align 8
  %0 = load %struct._ColorselCmykClass*, %struct._ColorselCmykClass** %klass.addr, align 8
  %1 = bitcast %struct._ColorselCmykClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %2, %struct._GimpColorSelectorClass** %selector_class, align 8
  %call2 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #5
  %3 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %3, i32 0, i32 1
  store i8* %call2, i8** %name, align 8
  %4 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8** %help_id, align 8
  %5 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8** %stock_id, align 8
  %6 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_color = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %6, i32 0, i32 7
  store void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* @colorsel_cmyk_set_color, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @colorsel_cmyk_set_color(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #0 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %module = alloca %struct._ColorselCmyk*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @colorsel_cmyk_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ColorselCmyk*
  store %struct._ColorselCmyk* %2, %struct._ColorselCmyk** %module, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %4 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %pullout = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %4, i32 0, i32 2
  %5 = load double, double* %pullout, align 8
  %6 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %cmyk = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %6, i32 0, i32 1
  call void @gimp_rgb_to_cmyk(%struct._GimpRGB* %3, double %5, %struct._GimpCMYK* %cmyk)
  %7 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %adj = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x %struct._GtkAdjustment*], [5 x %struct._GtkAdjustment*]* %adj, i32 0, i64 0
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx, align 8
  %9 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %cmyk2 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %9, i32 0, i32 1
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk2, i32 0, i32 0
  %10 = load double, double* %c, align 8
  %mul = fmul double %10, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %mul)
  %11 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %adj3 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %11, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [5 x %struct._GtkAdjustment*], [5 x %struct._GtkAdjustment*]* %adj3, i32 0, i64 1
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx4, align 8
  %13 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %cmyk5 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %13, i32 0, i32 1
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk5, i32 0, i32 1
  %14 = load double, double* %m, align 8
  %mul6 = fmul double %14, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %12, double %mul6)
  %15 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %adj7 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %15, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [5 x %struct._GtkAdjustment*], [5 x %struct._GtkAdjustment*]* %adj7, i32 0, i64 2
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx8, align 8
  %17 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %cmyk9 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %17, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk9, i32 0, i32 2
  %18 = load double, double* %y, align 8
  %mul10 = fmul double %18, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %16, double %mul10)
  %19 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %adj11 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %19, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [5 x %struct._GtkAdjustment*], [5 x %struct._GtkAdjustment*]* %adj11, i32 0, i64 3
  %20 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx12, align 8
  %21 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module, align 8
  %cmyk13 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %21, i32 0, i32 1
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk13, i32 0, i32 3
  %22 = load double, double* %k, align 8
  %mul14 = fmul double %22, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %20, double %mul14)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_rgb_to_cmyk(%struct._GimpRGB*, double, %struct._GimpCMYK*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @colorsel_cmyk_adj_update(%struct._GtkAdjustment* %adj, %struct._ColorselCmyk* %module) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %module.addr = alloca %struct._ColorselCmyk*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %value = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._ColorselCmyk* %module, %struct._ColorselCmyk** %module.addr, align 8
  %0 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %1 = bitcast %struct._ColorselCmyk* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %adj2 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %5, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x %struct._GtkAdjustment*], [5 x %struct._GtkAdjustment*]* %adj2, i32 0, i64 %idxprom
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %arrayidx, align 8
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %cmp3 = icmp eq %struct._GtkAdjustment* %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call4 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %9)
  store double %call4, double* %value, align 8
  %10 = load i32, i32* %i, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %for.end
  %11 = load double, double* %value, align 8
  %div = fdiv double %11, 1.000000e+02
  %12 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %cmyk = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %12, i32 0, i32 1
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk, i32 0, i32 0
  store double %div, double* %c, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.end
  %13 = load double, double* %value, align 8
  %div6 = fdiv double %13, 1.000000e+02
  %14 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %cmyk7 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %14, i32 0, i32 1
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk7, i32 0, i32 1
  store double %div6, double* %m, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.end
  %15 = load double, double* %value, align 8
  %div9 = fdiv double %15, 1.000000e+02
  %16 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %cmyk10 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %16, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk10, i32 0, i32 2
  store double %div9, double* %y, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.end
  %17 = load double, double* %value, align 8
  %div12 = fdiv double %17, 1.000000e+02
  %18 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %cmyk13 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %18, i32 0, i32 1
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk13, i32 0, i32 3
  store double %div12, double* %k, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %return

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.8, %sw.bb.5, %sw.bb
  %19 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %cmyk14 = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %19, i32 0, i32 1
  %20 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %20, i32 0, i32 4
  call void @gimp_cmyk_to_rgb(%struct._GimpCMYK* %cmyk14, %struct._GimpRGB* %rgb)
  %21 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb15 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %21, i32 0, i32 4
  %22 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %22, i32 0, i32 5
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb15, %struct._GimpHSV* %hsv)
  %23 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  call void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %23)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @colorsel_cmyk_pullout_update(%struct._GtkAdjustment* %adj, %struct._ColorselCmyk* %module) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %module.addr = alloca %struct._ColorselCmyk*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._ColorselCmyk* %module, %struct._ColorselCmyk** %module.addr, align 8
  %0 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %1 = bitcast %struct._ColorselCmyk* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  %div = fdiv double %call2, 1.000000e+02
  %4 = load %struct._ColorselCmyk*, %struct._ColorselCmyk** %module.addr, align 8
  %pullout = getelementptr inbounds %struct._ColorselCmyk, %struct._ColorselCmyk* %4, i32 0, i32 2
  store double %div, double* %pullout, align 8
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %6 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %6, i32 0, i32 4
  %7 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %7, i32 0, i32 5
  call void @gimp_color_selector_set_color(%struct._GimpColorSelector* %5, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_cmyk_to_rgb(%struct._GimpCMYK*, %struct._GimpRGB*) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_color_selector_color_changed(%struct._GimpColorSelector*) #1

declare void @gimp_color_selector_set_color(%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*) #1

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
