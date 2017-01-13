; ModuleID = './libgimpwidgets/gimpcolorbutton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpButtonClass = type { %struct._GtkButtonClass, void (%struct._GimpButton*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkButtonClass = type { %struct._GtkBinClass, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
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
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpColorButtonClass = type { %struct._GimpButtonClass, void (%struct._GimpColorButton*)*, i64 (%struct._GimpColorButton*)*, void ()*, void ()*, void ()* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpColorSelection = type { %struct._GtkBox, i32, %struct._GimpHSV, %struct._GimpRGB, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpHSV = type { double, double, double, double }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpColorNotebook = type { %struct._GimpColorSelector, %struct._GtkWidget*, %struct._GList*, %struct._GimpColorSelector* }
%struct._GimpColorSelector = type { %struct._GtkBox, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, i32 }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GimpColorConfig = type opaque

@gimp_color_button_get_type.button_type = internal global i64 0, align 8
@gimp_color_button_get_type.button_info = internal constant %struct._GTypeInfo { i16 984, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GimpColorButtonClass*)* @gimp_color_button_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 192, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorButton*, %struct._GimpColorButtonClass*)* @gimp_color_button_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpColorButton\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_button_new = private unnamed_addr constant [22 x i8] c"gimp_color_button_new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"area-width\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"area-height\00", align 1
@__func__.gimp_color_button_set_color = private unnamed_addr constant [28 x i8] c"gimp_color_button_set_color\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"GIMP_IS_COLOR_BUTTON (button)\00", align 1
@__func__.gimp_color_button_get_color = private unnamed_addr constant [28 x i8] c"gimp_color_button_get_color\00", align 1
@__func__.gimp_color_button_has_alpha = private unnamed_addr constant [28 x i8] c"gimp_color_button_has_alpha\00", align 1
@__func__.gimp_color_button_set_type = private unnamed_addr constant [27 x i8] c"gimp_color_button_set_type\00", align 1
@__func__.gimp_color_button_get_update = private unnamed_addr constant [29 x i8] c"gimp_color_button_get_update\00", align 1
@__func__.gimp_color_button_set_update = private unnamed_addr constant [29 x i8] c"gimp_color_button_set_update\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"gimp-color-selection\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"continuous-update\00", align 1
@parent_class = internal global %struct._GimpButtonClass* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@gimp_color_button_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"gimpcolorbutton.c\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"/color-button-popup\00", align 1
@__func__.gimp_color_button_state_changed = private unnamed_addr constant [32 x i8] c"gimp_color_button_state_changed\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"GIMP_IS_COLOR_BUTTON (widget)\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"drag-mask\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"color-button\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@actions = internal constant [5 x %struct._GtkActionEntry] [%struct._GtkActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GimpColorButton*)* @gimp_color_button_use_color to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GimpColorButton*)* @gimp_color_button_use_color to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GimpColorButton*)* @gimp_color_button_use_color to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, %struct._GimpColorButton*)* @gimp_color_button_use_color to void ()*) }], align 16
@.str.27 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.32 = private unnamed_addr constant [285 x i8] c"<ui>\0A  <popup action=\22color-button-popup\22>\0A    <menuitem action=\22color-button-use-foreground\22 />\0A    <menuitem action=\22color-button-use-background\22 />\0A    <separator />\0A    <menuitem action=\22color-button-use-black\22 />\0A    <menuitem action=\22color-button-use-white\22 />\0A  </popup>\0A</ui>\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"color-button-popup\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Color Button Menu\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"color-button-use-foreground\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"_Foreground Color\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"color-button-use-background\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"_Background Color\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"color-button-use-black\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Blac_k\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"color-button-use-white\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"_White\00", align 1
@_gimp_get_foreground_func = external global i32 (%struct._GimpRGB*)*, align 8
@_gimp_get_background_func = external global i32 (%struct._GimpRGB*)*, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_button_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_button_get_type.button_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_button_get_type() #7
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_color_button_get_type.button_info, i32 0)
  store i64 %call1, i64* @gimp_color_button_get_type.button_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_color_button_get_type.button_type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_class_init(%struct._GimpColorButtonClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpColorButtonClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %button_class = alloca %struct._GtkButtonClass*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorButtonClass* %klass, %struct._GimpColorButtonClass** %klass.addr, align 8
  %0 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorButtonClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorButtonClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorButtonClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_button_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkButtonClass*
  store %struct._GtkButtonClass* %8, %struct._GtkButtonClass** %button_class, align 8
  %9 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpColorButtonClass* %9 to i8*
  %call5 = call i8* @g_type_class_peek_parent(i8* %10)
  %11 = bitcast i8* %call5 to %struct._GimpButtonClass*
  store %struct._GimpButtonClass* %11, %struct._GimpButtonClass** @parent_class, align 8
  %12 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpColorButtonClass* %12 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i64 %14, i32 1, i32 944, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_button_signals, i32 0, i64 0), align 4
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_button_finalize, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_button_dispose, void (%struct._GObject*)** %dispose, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_button_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_button_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %19 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %19, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_color_button_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %20 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %state_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %20, i32 0, i32 14
  store void (%struct._GtkWidget*, i32)* @gimp_color_button_state_changed, void (%struct._GtkWidget*, i32)** %state_changed, align 8
  %21 = load %struct._GtkButtonClass*, %struct._GtkButtonClass** %button_class, align 8
  %clicked = getelementptr inbounds %struct._GtkButtonClass, %struct._GtkButtonClass* %21, i32 0, i32 3
  store void (%struct._GtkButton*)* @gimp_color_button_clicked, void (%struct._GtkButton*)** %clicked, align 8
  %22 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %klass.addr, align 8
  %color_changed = getelementptr inbounds %struct._GimpColorButtonClass, %struct._GimpColorButtonClass* %22, i32 0, i32 1
  store void (%struct._GimpColorButton*)* null, void (%struct._GimpColorButton*)** %color_changed, align 8
  %23 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %klass.addr, align 8
  %get_action_type = getelementptr inbounds %struct._GimpColorButtonClass, %struct._GimpColorButtonClass* %23, i32 0, i32 2
  store i64 (%struct._GimpColorButton*)* @gimp_color_button_get_action_type, i64 (%struct._GimpColorButton*)** %get_action_type, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 1, %struct._GParamSpec* %call7)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 1, %struct._GimpRGB* %color, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 2, %struct._GParamSpec* %call8)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i64 @gimp_color_area_type_get_type() #7
  %call10 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 3, %struct._GParamSpec* %call10)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i32 0, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 4, %struct._GParamSpec* %call11)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2147483647, i32 16, i32 6)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 5, %struct._GParamSpec* %call12)
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2147483647, i32 16, i32 6)
  call void @g_object_class_install_property(%struct._GObjectClass* %29, i32 6, %struct._GParamSpec* %call13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_init(%struct._GimpColorButton* %button, %struct._GimpColorButtonClass* %klass) #1 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %klass.addr = alloca %struct._GimpColorButtonClass*, align 8
  %group = alloca %struct._GtkActionGroup*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %i = alloca i32, align 4
  %label = alloca i8*, align 8
  %tooltip = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store %struct._GimpColorButtonClass* %klass, %struct._GimpColorButtonClass** %klass.addr, align 8
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %title = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %0, i32 0, i32 1
  store i8* null, i8** %title, align 8
  %1 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %1, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog, align 8
  %call = call i64 @gimp_color_area_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 256, i8* null)
  %2 = bitcast i8* %call1 to %struct._GtkWidget*
  %3 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %3, i32 0, i32 3
  store %struct._GtkWidget* %2, %struct._GtkWidget** %color_area, align 8
  %4 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area2 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %4, i32 0, i32 3
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area2, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %7 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %8 = bitcast %struct._GimpColorButton* %7 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorButton*)* @gimp_color_button_area_changed to void ()*), i8* %8, void (i8*, %struct._GClosure*)* null, i32 0)
  %9 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %10 = bitcast %struct._GimpColorButton* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %12 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area6 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %12, i32 0, i32 3
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area6, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %13)
  %14 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area7 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area7, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call8 = call %struct._GtkUIManager* @gtk_ui_manager_new()
  store %struct._GtkUIManager* %call8, %struct._GtkUIManager** %ui_manager, align 8
  %16 = bitcast %struct._GtkUIManager* %call8 to i8*
  %17 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %popup_menu = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %17, i32 0, i32 5
  store i8* %16, i8** %popup_menu, align 8
  %call9 = call %struct._GtkActionGroup* @gtk_action_group_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkActionGroup* %call9, %struct._GtkActionGroup** %group, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4
  %conv = sext i32 %18 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [5 x %struct._GtkActionEntry], [5 x %struct._GtkActionEntry]* @actions, i32 0, i64 %idxprom
  %label11 = getelementptr inbounds %struct._GtkActionEntry, %struct._GtkActionEntry* %arrayidx, i32 0, i32 2
  %20 = load i8*, i8** %label11, align 8
  %call12 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* %20) #5
  store i8* %call12, i8** %label, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [5 x %struct._GtkActionEntry], [5 x %struct._GtkActionEntry]* @actions, i32 0, i64 %idxprom13
  %tooltip15 = getelementptr inbounds %struct._GtkActionEntry, %struct._GtkActionEntry* %arrayidx14, i32 0, i32 4
  %22 = load i8*, i8** %tooltip15, align 8
  %call16 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* %22) #5
  store i8* %call16, i8** %tooltip, align 8
  %23 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %klass.addr, align 8
  %get_action_type = getelementptr inbounds %struct._GimpColorButtonClass, %struct._GimpColorButtonClass* %23, i32 0, i32 2
  %24 = load i64 (%struct._GimpColorButton*)*, i64 (%struct._GimpColorButton*)** %get_action_type, align 8
  %25 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %call17 = call i64 %24(%struct._GimpColorButton* %25)
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [5 x %struct._GtkActionEntry], [5 x %struct._GtkActionEntry]* @actions, i32 0, i64 %idxprom18
  %name = getelementptr inbounds %struct._GtkActionEntry, %struct._GtkActionEntry* %arrayidx19, i32 0, i32 0
  %27 = load i8*, i8** %name, align 8
  %28 = load i8*, i8** %label, align 8
  %29 = load i8*, i8** %tooltip, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [5 x %struct._GtkActionEntry], [5 x %struct._GtkActionEntry]* @actions, i32 0, i64 %idxprom20
  %stock_id = getelementptr inbounds %struct._GtkActionEntry, %struct._GtkActionEntry* %arrayidx21, i32 0, i32 1
  %31 = load i8*, i8** %stock_id, align 8
  %call22 = call i8* (i64, i8*, ...) @g_object_new(i64 %call17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* %31, i8* null)
  %32 = bitcast i8* %call22 to %struct._GtkAction*
  store %struct._GtkAction* %32, %struct._GtkAction** %action, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %33 to i64
  %arrayidx24 = getelementptr inbounds [5 x %struct._GtkActionEntry], [5 x %struct._GtkActionEntry]* @actions, i32 0, i64 %idxprom23
  %callback = getelementptr inbounds %struct._GtkActionEntry, %struct._GtkActionEntry* %arrayidx24, i32 0, i32 5
  %34 = load void ()*, void ()** %callback, align 8
  %tobool = icmp ne void ()* %34, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %35 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %36 = bitcast %struct._GtkAction* %35 to i8*
  %37 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %37 to i64
  %arrayidx26 = getelementptr inbounds [5 x %struct._GtkActionEntry], [5 x %struct._GtkActionEntry]* @actions, i32 0, i64 %idxprom25
  %callback27 = getelementptr inbounds %struct._GtkActionEntry, %struct._GtkActionEntry* %arrayidx26, i32 0, i32 5
  %38 = load void ()*, void ()** %callback27, align 8
  %39 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %40 = bitcast %struct._GimpColorButton* %39 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), void ()* %38, i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %41 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %42 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %43 to i64
  %arrayidx30 = getelementptr inbounds [5 x %struct._GtkActionEntry], [5 x %struct._GtkActionEntry]* @actions, i32 0, i64 %idxprom29
  %accelerator = getelementptr inbounds %struct._GtkActionEntry, %struct._GtkActionEntry* %arrayidx30, i32 0, i32 3
  %44 = load i8*, i8** %accelerator, align 8
  call void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup* %41, %struct._GtkAction* %42, i8* %44)
  %45 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %46 = bitcast %struct._GtkAction* %45 to i8*
  call void @g_object_unref(i8* %46)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %49 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager* %48, %struct._GtkActionGroup* %49, i32 -1)
  %50 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %51 = bitcast %struct._GtkActionGroup* %50 to i8*
  call void @g_object_unref(i8* %51)
  %52 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call31 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %52, i8* getelementptr inbounds ([285 x i8], [285 x i8]* @.str.32, i32 0, i32 0), i64 -1, %struct._GError** null)
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_button_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_button_new(i8* %title, i32 %width, i32 %height, %struct._GimpRGB* %color, i32 %type) #1 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %type.addr = alloca i32, align 4
  store i8* %title, i8** %title.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_button_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_button_new, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %height.addr, align 4
  %cmp8 = icmp sgt i32 %2, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_color_button_new, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %call = call i64 @gimp_color_button_get_type() #7
  %3 = load i8*, i8** %title.addr, align 8
  %4 = load i32, i32* %type.addr, align 4
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %6 = load i32, i32* %width.addr, align 4
  %7 = load i32, i32* %height.addr, align 4
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._GimpRGB* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %7, i8* null)
  %8 = bitcast i8* %call13 to %struct._GtkWidget*
  store %struct._GtkWidget* %8, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.else.10, %if.else.4, %if.else
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %9
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_object_new(i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @gimp_color_button_set_color(%struct._GimpColorButton* %button, %struct._GimpRGB* %color) #1 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %1 = bitcast %struct._GimpColorButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_button_set_color, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  br label %return

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_button_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_color_area_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColorArea*
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %17, %struct._GimpRGB* %18)
  %19 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %20 = bitcast %struct._GimpColorButton* %19 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #3

declare void @g_object_notify(%struct._GObject*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_color_button_get_color(%struct._GimpColorButton* %button, %struct._GimpRGB* %color) #1 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %1 = bitcast %struct._GimpColorButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_button_get_color, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  br label %return

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_button_get_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_color_area_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColorArea*
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_area_get_color(%struct._GimpColorArea* %17, %struct._GimpRGB* %18)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_color_area_get_color(%struct._GimpColorArea*, %struct._GimpRGB*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_color_button_has_alpha(%struct._GimpColorButton* %button) #1 {
entry:
  %retval = alloca i32, align 4
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %1 = bitcast %struct._GimpColorButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_button_has_alpha, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_area_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorArea*
  %call13 = call i32 @gimp_color_area_has_alpha(%struct._GimpColorArea* %16)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gimp_color_area_has_alpha(%struct._GimpColorArea*) #2

; Function Attrs: nounwind uwtable
define void @gimp_color_button_set_type(%struct._GimpColorButton* %button, i32 %type) #1 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %type.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %1 = bitcast %struct._GimpColorButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_button_set_type, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_area_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorArea*
  %17 = load i32, i32* %type.addr, align 4
  call void @gimp_color_area_set_type(%struct._GimpColorArea* %16, i32 %17)
  %18 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %19 = bitcast %struct._GimpColorButton* %18 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gimp_color_area_set_type(%struct._GimpColorArea*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_color_button_get_update(%struct._GimpColorButton* %button) #1 {
entry:
  %retval = alloca i32, align 4
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %1 = bitcast %struct._GimpColorButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_button_get_update, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %continuous_update = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %13, i32 0, i32 2
  %14 = load i32, i32* %continuous_update, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_color_button_set_update(%struct._GimpColorButton* %button, i32 %continuous) #1 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %continuous.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %selection = alloca %struct._GimpColorSelection*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store i32 %continuous, i32* %continuous.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %1 = bitcast %struct._GimpColorButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_button_set_update, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %continuous.addr, align 4
  %14 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %continuous_update = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %14, i32 0, i32 2
  %15 = load i32, i32* %continuous_update, align 4
  %cmp11 = icmp ne i32 %13, %15
  br i1 %cmp11, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %do.end
  %16 = load i32, i32* %continuous.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  %17 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %continuous_update14 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %17, i32 0, i32 2
  store i32 %cond, i32* %continuous_update14, align 4
  %18 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %18, i32 0, i32 4
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool15 = icmp ne %struct._GtkWidget* %19, null
  br i1 %tobool15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.then.12
  %20 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %dialog19 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %20, i32 0, i32 4
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog19, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %call21 = call i8* @g_object_get_data(%struct._GObject* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  %24 = bitcast i8* %call21 to %struct._GimpColorSelection*
  store %struct._GimpColorSelection* %24, %struct._GimpColorSelection** %selection, align 8
  %25 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %continuous_update22 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %25, i32 0, i32 2
  %26 = load i32, i32* %continuous_update22, align 4
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.then.16
  %27 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection, align 8
  call void @gimp_color_selection_get_color(%struct._GimpColorSelection* %27, %struct._GimpRGB* %color)
  %28 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %28, %struct._GimpRGB* %color)
  br label %if.end.26

if.else.25:                                       ; preds = %if.then.16
  %29 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection, align 8
  call void @gimp_color_selection_get_old_color(%struct._GimpColorSelection* %29, %struct._GimpRGB* %color)
  %30 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %30, %struct._GimpRGB* %color)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.12
  %31 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %32 = bitcast %struct._GimpColorButton* %31 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.end.27, %do.end
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #2

declare void @gimp_color_selection_get_color(%struct._GimpColorSelection*, %struct._GimpRGB*) #2

declare void @gimp_color_selection_get_old_color(%struct._GimpColorSelection*, %struct._GimpRGB*) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #3

declare i8* @g_type_class_peek_parent(i8*) #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_finalize(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %button = alloca %struct._GimpColorButton*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  store %struct._GimpColorButton* %2, %struct._GimpColorButton** %button, align 8
  %3 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %title = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %3, i32 0, i32 1
  %4 = load i8*, i8** %title, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %title2 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %5, i32 0, i32 1
  %6 = load i8*, i8** %title2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %title3 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %7, i32 0, i32 1
  store i8* null, i8** %title3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpButtonClass*, %struct._GimpButtonClass** @parent_class, align 8
  %9 = bitcast %struct._GimpButtonClass* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_dispose(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %button = alloca %struct._GimpColorButton*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  store %struct._GimpColorButton* %2, %struct._GimpColorButton** %button, align 8
  %3 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %dialog = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %dialog2 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  %7 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %dialog3 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %7, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area6 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %10, i32 0, i32 3
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area6, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  %12 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area7 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %12, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_area7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %popup_menu = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %13, i32 0, i32 5
  %14 = load i8*, i8** %popup_menu, align 8
  %tobool9 = icmp ne i8* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %popup_menu11 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %15, i32 0, i32 5
  %16 = load i8*, i8** %popup_menu11, align 8
  call void @g_object_unref(i8* %16)
  %17 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %popup_menu12 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %17, i32 0, i32 5
  store i8* null, i8** %popup_menu12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct._GimpButtonClass*, %struct._GimpButtonClass** @parent_class, align 8
  %19 = bitcast %struct._GimpButtonClass* %18 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 80)
  %20 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %20, i32 0, i32 5
  %21 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %21(%struct._GObject* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpColorButton*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  store %struct._GimpColorButton* %2, %struct._GimpColorButton** %button, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %title = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %5, i32 0, i32 1
  %6 = load i8*, i8** %title, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_get_property(%struct._GObject* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._GValue* %11)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %12 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area5 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %12, i32 0, i32 3
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area5, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_get_property(%struct._GObject* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._GValue* %16)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %continuous_update = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %18, i32 0, i32 2
  %19 = load i32, i32* %continuous_update, align 4
  call void @g_value_set_boolean(%struct._GValue* %17, i32 %19)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %20, %struct._GObject** %_glib__object, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %21, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = load i32, i32* %property_id.addr, align 4
  store i32 %22, i32* %_glib__property_id, align 4
  %23 = load i32, i32* %_glib__property_id, align 4
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %24, i32 0, i32 1
  %25 = load i8*, i8** %name, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = bitcast %struct._GParamSpec* %26 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type, align 8
  %call8 = call i8* @g_type_name(i64 %29)
  %30 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type10, align 8
  %call11 = call i8* @g_type_name(i64 %33)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 434, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %23, i8* %25, i8* %call8, i8* %call11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpColorButton*, align 8
  %other = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  store %struct._GimpColorButton* %2, %struct._GimpColorButton** %button, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %title = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %4, i32 0, i32 1
  %5 = load i8*, i8** %title, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %title3 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %7, i32 0, i32 1
  store i8* %call2, i8** %title3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %8 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_set_property(%struct._GObject* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._GValue* %12)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %13 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area7 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area7, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_set_property(%struct._GObject* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._GValue* %17)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %18 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %19)
  call void @gimp_color_button_set_update(%struct._GimpColorButton* %18, i32 %call10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %20 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area12 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %20, i32 0, i32 3
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area12, align 8
  call void @gtk_widget_get_size_request(%struct._GtkWidget* %21, i32* null, i32* %other)
  %22 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area13 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %22, i32 0, i32 3
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area13, align 8
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_int(%struct._GValue* %24)
  %25 = load i32, i32* %other, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %23, i32 %call14, i32 %25)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %26 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area16 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %26, i32 0, i32 3
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area16, align 8
  call void @gtk_widget_get_size_request(%struct._GtkWidget* %27, i32* %other, i32* null)
  %28 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %color_area17 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %28, i32 0, i32 3
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area17, align 8
  %30 = load i32, i32* %other, align 4
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_int(%struct._GValue* %31)
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %29, i32 %30, i32 %call18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %32, %struct._GObject** %_glib__object, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %33, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = load i32, i32* %property_id.addr, align 4
  store i32 %34, i32* %_glib__property_id, align 4
  %35 = load i32, i32* %_glib__property_id, align 4
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type, align 8
  %call19 = call i8* @g_type_name(i64 %41)
  %42 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %43 = bitcast %struct._GObject* %42 to %struct._GTypeInstance*
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type21, align 8
  %call22 = call i8* @g_type_name(i64 %45)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %35, i8* %37, i8* %call19, i8* %call22)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %sw.bb.11, %sw.bb.9, %sw.bb.6, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_button_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #1 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %button = alloca %struct._GimpColorButton*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  store %struct._GimpColorButton* %2, %struct._GimpColorButton** %button, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %4 = bitcast %struct._GdkEventButton* %3 to %union._GdkEvent*
  %call2 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button, align 8
  %popup_menu = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %5, i32 0, i32 5
  %6 = load i8*, i8** %popup_menu, align 8
  %7 = bitcast i8* %6 to %struct._GtkUIManager*
  %call3 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %menu, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_menu_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkMenu*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call6 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %11)
  call void @gtk_menu_set_screen(%struct._GtkMenu* %10, %struct._GdkScreen* %call6)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_menu_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkMenu*
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button9 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %15, i32 0, i32 8
  %16 = load i32, i32* %button9, align 4
  %17 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %17, i32 0, i32 3
  %18 = load i32, i32* %time, align 4
  call void @gtk_menu_popup(%struct._GtkMenu* %14, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, i8* null, i32 %16, i32 %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GimpButtonClass*, %struct._GimpButtonClass** @parent_class, align 8
  %20 = bitcast %struct._GimpButtonClass* %19 to %struct._GTypeClass*
  %call10 = call i64 @gtk_widget_get_type() #7
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 %call10)
  %21 = bitcast %struct._GTypeClass* %call11 to %struct._GtkWidgetClass*
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %21, i32 0, i32 25
  %22 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %tobool12 = icmp ne i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %22, null
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end
  %23 = load %struct._GimpButtonClass*, %struct._GimpButtonClass** @parent_class, align 8
  %24 = bitcast %struct._GimpButtonClass* %23 to %struct._GTypeClass*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 %call14)
  %25 = bitcast %struct._GTypeClass* %call15 to %struct._GtkWidgetClass*
  %button_press_event16 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %25, i32 0, i32 25
  %26 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event16, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %28 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %call17 = call i32 %26(%struct._GtkWidget* %27, %struct._GdkEventButton* %28)
  store i32 %call17, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.13
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_state_changed(%struct._GtkWidget* %widget, i32 %prev_state) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_state.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %prev_state, i32* %prev_state.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_button_state_changed, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.21, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_color_button_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpColorButton*
  %dialog = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %16, i32 0, i32 4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %land.lhs.true.13
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_color_button_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpColorButton*
  %dialog20 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %20, i32 0, i32 4
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog20, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %land.lhs.true.13, %do.end
  %22 = load %struct._GimpButtonClass*, %struct._GimpButtonClass** @parent_class, align 8
  %23 = bitcast %struct._GimpButtonClass* %22 to %struct._GTypeClass*
  %call22 = call i64 @gtk_widget_get_type() #7
  %call23 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 %call22)
  %24 = bitcast %struct._GTypeClass* %call23 to %struct._GtkWidgetClass*
  %state_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %24, i32 0, i32 14
  %25 = load void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)** %state_changed, align 8
  %tobool24 = icmp ne void (%struct._GtkWidget*, i32)* %25, null
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.21
  %26 = load %struct._GimpButtonClass*, %struct._GimpButtonClass** @parent_class, align 8
  %27 = bitcast %struct._GimpButtonClass* %26 to %struct._GTypeClass*
  %call26 = call i64 @gtk_widget_get_type() #7
  %call27 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %27, i64 %call26)
  %28 = bitcast %struct._GTypeClass* %call27 to %struct._GtkWidgetClass*
  %state_changed28 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %28, i32 0, i32 14
  %29 = load void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)** %state_changed28, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %31 = load i32, i32* %prev_state.addr, align 4
  call void %29(%struct._GtkWidget* %30, i32 %31)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.then.25, %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_clicked(%struct._GtkButton* %button) #1 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %color_button = alloca %struct._GimpColorButton*, align 8
  %dialog2 = alloca %struct._GtkWidget*, align 8
  %selection = alloca %struct._GtkWidget*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  %0 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %1 = bitcast %struct._GtkButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  store %struct._GimpColorButton* %2, %struct._GimpColorButton** %color_button, align 8
  %3 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %dialog = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %5, %struct._GimpRGB* %color)
  %6 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %title = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %6, i32 0, i32 1
  %7 = load i8*, i8** %title, align 8
  %8 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %9 = bitcast %struct._GtkButton* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %call5 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %10)
  %call6 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), %struct._GtkWidget* %call5, i32 0, void (i8*, i8*)* @gimp_color_button_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 -5, i8* null)
  %11 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %dialog7 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %11, i32 0, i32 4
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %dialog7, align 8
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %dialog2, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %14, i32 1, i32 -5, i32 -6, i32 -1)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %18 = bitcast %struct._GimpColorButton* %17 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpColorButton*)* @gimp_color_button_dialog_response to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %dialog11 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %21, i32 0, i32 4
  %22 = bitcast %struct._GtkWidget** %dialog11 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %call13 = call %struct._GtkWidget* @gimp_color_selection_new()
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %selection, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call14)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %25, i32 6)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_color_selection_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpColorSelection*
  %29 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %call18 = call i32 @gimp_color_button_has_alpha(%struct._GimpColorButton* %29)
  call void @gimp_color_selection_set_show_alpha(%struct._GimpColorSelection* %28, i32 %call18)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_color_selection_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call19)
  %32 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpColorSelection*
  call void @gimp_color_selection_set_color(%struct._GimpColorSelection* %32, %struct._GimpRGB* %color)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_color_selection_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call21)
  %35 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpColorSelection*
  call void @gimp_color_selection_set_old_color(%struct._GimpColorSelection* %35, %struct._GimpRGB* %color)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_dialog_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call23)
  %38 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkDialog*
  %call25 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %38)
  %39 = bitcast %struct._GtkWidget* %call25 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 1, i32 1, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %45 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %46 = bitcast %struct._GtkButton* %45 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorButton*)* @gimp_color_button_selection_changed to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %dialog29 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %47, i32 0, i32 4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog29, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 80)
  %50 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  call void @g_object_set_data(%struct._GObject* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* %52)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %53 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %dialog31 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %53, i32 0, i32 4
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog31, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_window_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call32)
  %56 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %56)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_color_button_get_action_type(%struct._GimpColorButton* %button) #1 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %call = call i64 @gtk_action_get_type() #7
  ret i64 %call
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #2

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #2

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #2

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_type_get_type() #3

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #2

declare void @g_free(i8*) #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #2

declare void @g_object_unref(i8*) #2

declare void @g_value_set_string(%struct._GValue*, i8*) #2

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #2

declare void @g_value_set_boolean(%struct._GValue*, i32) #2

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @g_value_dup_string(%struct._GValue*) #2

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #2

declare i32 @g_value_get_boolean(%struct._GValue*) #2

declare void @gtk_widget_get_size_request(%struct._GtkWidget*, i32*, i32*) #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #2

declare i32 @g_value_get_int(%struct._GValue*) #2

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #2

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #2

declare void @gtk_menu_set_screen(%struct._GtkMenu*, %struct._GdkScreen*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #2

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #2

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #2

declare void @gtk_widget_hide(%struct._GtkWidget*) #2

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #2

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_help_func(i8* %help_id, i8* %help_data) #1 {
entry:
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  %selection = alloca %struct._GimpColorSelection*, align 8
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  %0 = load i8*, i8** %help_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpColorSelection*
  store %struct._GimpColorSelection* %3, %struct._GimpColorSelection** %selection, align 8
  %4 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection, align 8
  %notebook2 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %4, i32 0, i32 7
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook2, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_notebook_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %7, %struct._GimpColorNotebook** %notebook, align 8
  %8 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %8, i32 0, i32 3
  %9 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page, align 8
  %10 = bitcast %struct._GimpColorSelector* %9 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %12 = bitcast %struct._GTypeClass* %11 to %struct._GimpColorSelectorClass*
  %help_id5 = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %12, i32 0, i32 2
  %13 = load i8*, i8** %help_id5, align 8
  store i8* %13, i8** %help_id.addr, align 8
  %14 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_standard_help_func(i8* %14, i8* null)
  ret void
}

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpColorButton* %button) #1 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %selection = alloca %struct._GtkWidget*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %selection, align 8
  %4 = load i32, i32* %response_id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_selection_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorSelection*
  call void @gimp_color_selection_reset(%struct._GimpColorSelection* %7)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %8 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %continuous_update = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %8, i32 0, i32 2
  %9 = load i32, i32* %continuous_update, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_selection_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorSelection*
  call void @gimp_color_selection_get_color(%struct._GimpColorSelection* %12, %struct._GimpRGB* %color)
  %13 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %13, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %14)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %continuous_update7 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %15, i32 0, i32 2
  %16 = load i32, i32* %continuous_update7, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %sw.default
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_color_selection_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpColorSelection*
  call void @gimp_color_selection_get_old_color(%struct._GimpColorSelection* %19, %struct._GimpRGB* %color)
  %20 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %20, %struct._GimpRGB* %color)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %sw.default
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %21)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.12, %if.end, %sw.bb
  ret void
}

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #2

declare %struct._GtkWidget* @gimp_color_selection_new() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gimp_color_selection_set_show_alpha(%struct._GimpColorSelection*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selection_get_type() #3

declare void @gimp_color_selection_set_color(%struct._GimpColorSelection*, %struct._GimpRGB*) #2

declare void @gimp_color_selection_set_old_color(%struct._GimpColorSelection*, %struct._GimpRGB*) #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_selection_changed(%struct._GtkWidget* %selection, %struct._GimpColorButton* %button) #1 {
entry:
  %selection.addr = alloca %struct._GtkWidget*, align 8
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %selection, %struct._GtkWidget** %selection.addr, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %continuous_update = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %0, i32 0, i32 2
  %1 = load i32, i32* %continuous_update, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %selection.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelection*
  call void @gimp_color_selection_get_color(%struct._GimpColorSelection* %4, %struct._GimpRGB* %color)
  %5 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %5, i32 0, i32 3
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %8 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %9 = bitcast %struct._GimpColorButton* %8 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpColorButton*)* @gimp_color_button_area_changed to i8*), i8* %9)
  %10 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area3 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %10, i32 0, i32 3
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area3, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_area_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorArea*
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %13, %struct._GimpRGB* %color)
  %14 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %color_area6 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area6, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %18 = bitcast %struct._GimpColorButton* %17 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpColorButton*)* @gimp_color_button_area_changed to i8*), i8* %18)
  %19 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %20 = bitcast %struct._GimpColorButton* %19 to i8*
  %21 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_button_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %20, i32 %21, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #2

declare void @gtk_window_present(%struct._GtkWindow*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_notebook_get_type() #3

declare void @gimp_standard_help_func(i8*, i8*) #2

declare void @gimp_color_selection_reset(%struct._GimpColorSelection*) #2

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_area_changed(%struct._GtkWidget* %color_area, %struct._GimpColorButton* %button) #1 {
entry:
  %color_area.addr = alloca %struct._GtkWidget*, align 8
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %selection = alloca %struct._GimpColorSelection*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %color_area, %struct._GtkWidget** %color_area.addr, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %dialog1 = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %2, i32 0, i32 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  %6 = bitcast i8* %call2 to %struct._GimpColorSelection*
  store %struct._GimpColorSelection* %6, %struct._GimpColorSelection** %selection, align 8
  %7 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %7, %struct._GimpRGB* %color)
  %8 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection, align 8
  %9 = bitcast %struct._GimpColorSelection* %8 to i8*
  %10 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %11 = bitcast %struct._GimpColorButton* %10 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpColorButton*)* @gimp_color_button_selection_changed to i8*), i8* %11)
  %12 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection, align 8
  call void @gimp_color_selection_set_color(%struct._GimpColorSelection* %12, %struct._GimpRGB* %color)
  %13 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection, align 8
  %14 = bitcast %struct._GimpColorSelection* %13 to i8*
  %15 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %16 = bitcast %struct._GimpColorButton* %15 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpColorButton*)* @gimp_color_button_selection_changed to i8*), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %18 = bitcast %struct._GimpColorButton* %17 to i8*
  %19 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_button_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %18, i32 %19, i32 0)
  ret void
}

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

declare void @g_signal_emit(i8*, i32, i32, ...) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_action_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #2

declare %struct._GtkUIManager* @gtk_ui_manager_new() #2

declare %struct._GtkActionGroup* @gtk_action_group_new(i8*) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare void @gtk_action_group_add_action_with_accel(%struct._GtkActionGroup*, %struct._GtkAction*, i8*) #2

declare void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager*, %struct._GtkActionGroup*, i32) #2

declare i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager*, i8*, i64, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_button_use_color(%struct._GtkAction* %action, %struct._GimpColorButton* %button) #1 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %name = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %call = call i8* @gtk_action_get_name(%struct._GtkAction* %0)
  store i8* %call, i8** %name, align 8
  %1 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %1, %struct._GimpRGB* %color)
  %2 = load i8*, i8** %name, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else.5, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32 (%struct._GimpRGB*)*, i32 (%struct._GimpRGB*)** @_gimp_get_foreground_func, align 8
  %tobool2 = icmp ne i32 (%struct._GimpRGB*)* %3, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load i32 (%struct._GimpRGB*)*, i32 (%struct._GimpRGB*)** @_gimp_get_foreground_func, align 8
  %call4 = call i32 %4(%struct._GimpRGB* %color)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.25

if.else.5:                                        ; preds = %entry
  %5 = load i8*, i8** %name, align 8
  %call6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0)) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else.14, label %if.then.8

if.then.8:                                        ; preds = %if.else.5
  %6 = load i32 (%struct._GimpRGB*)*, i32 (%struct._GimpRGB*)** @_gimp_get_background_func, align 8
  %tobool9 = icmp ne i32 (%struct._GimpRGB*)* %6, null
  br i1 %tobool9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.then.8
  %7 = load i32 (%struct._GimpRGB*)*, i32 (%struct._GimpRGB*)** @_gimp_get_background_func, align 8
  %call11 = call i32 %7(%struct._GimpRGB* %color)
  br label %if.end.13

if.else.12:                                       ; preds = %if.then.8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.10
  br label %if.end.24

if.else.14:                                       ; preds = %if.else.5
  %8 = load i8*, i8** %name, align 8
  %call15 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0)) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %if.else.14
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  br label %if.end.23

if.else.18:                                       ; preds = %if.else.14
  %9 = load i8*, i8** %name, align 8
  %call19 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0)) #8
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.else.18
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.13
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %10 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %color)
  ret void
}

declare i8* @gtk_action_get_name(%struct._GtkAction*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
