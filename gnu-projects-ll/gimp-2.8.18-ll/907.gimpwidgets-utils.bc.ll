; ModuleID = './app/widgets/gimpwidgets-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GHashTable = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkRegion = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GBinding = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkIconSet = type opaque
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GtkAccelLabelClass = type { %struct._GtkLabelClass, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, void ()*, void ()*, void ()*, void ()* }
%struct._GtkLabelClass = type { %struct._GtkMiscClass, void (%struct._GtkLabel*, i32, i32, i32)*, void (%struct._GtkLabel*)*, void (%struct._GtkLabel*, %struct._GtkMenu*)*, i32 (%struct._GtkLabel*, i8*)*, void ()*, void ()*, void ()* }
%struct._GtkMiscClass = type { %struct._GtkWidgetClass }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkArg = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
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
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GdkKeymap = type { %struct._GObject, %struct._GdkDisplay* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpDockContainer = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GimpDockWindowPrivate = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GimpDockPrivate = type opaque
%struct._GimpToolOptions = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GimpSessionInfoClass = type { %struct._GimpObjectClass, i32 }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_menu_position = private unnamed_addr constant [19 x i8] c"gimp_menu_position\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GTK_IS_MENU (menu)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"x != NULL\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"y != NULL\00", align 1
@__func__.gimp_button_menu_position = private unnamed_addr constant [26 x i8] c"gimp_button_menu_position\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (button)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"gtk_widget_get_realized (button)\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s: unhandled position (%d)\00", align 1
@__func__.gimp_table_attach_stock = private unnamed_addr constant [24 x i8] c"gimp_table_attach_stock\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"GTK_IS_TABLE (table)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@__func__.gimp_enum_radio_box_add = private unnamed_addr constant [24 x i8] c"gimp_enum_radio_box_add\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"GTK_IS_BOX (box)\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"indicator-size\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"indicator-spacing\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"focus-line-width\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"focus-padding\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"size-group\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@__func__.gimp_enum_radio_frame_add = private unnamed_addr constant [26 x i8] c"gimp_enum_radio_frame_add\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"GTK_IS_FRAME (frame)\00", align 1
@__func__.gimp_get_icon_size = private unnamed_addr constant [19 x i8] c"gimp_get_icon_size\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@gimp_get_mod_string.mod_labels = internal global %struct._GHashTable* null, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"%s (try %s)\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"%s (try %s, %s)\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"%s (try %s, %s, %s)\00", align 1
@__func__.gimp_get_screen_resolution = private unnamed_addr constant [27 x i8] c"gimp_get_screen_resolution\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"screen == NULL || GDK_IS_SCREEN (screen)\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"xres != NULL\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"yres != NULL\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"GDK returned bogus values for the screen resolution, using 96 dpi instead.\00", align 1
@__func__.gimp_rgb_get_gdk_color = private unnamed_addr constant [23 x i8] c"gimp_rgb_get_gdk_color\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"rgb != NULL\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"gdk_color != NULL\00", align 1
@__func__.gimp_rgb_set_gdk_color = private unnamed_addr constant [23 x i8] c"gimp_rgb_set_gdk_color\00", align 1
@__func__.gimp_window_set_hint = private unnamed_addr constant [21 x i8] c"gimp_window_set_hint\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"GTK_IS_WINDOW (window)\00", align 1
@__func__.gimp_window_get_native_id = private unnamed_addr constant [26 x i8] c"gimp_window_get_native_id\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@__func__.gimp_toggle_button_set_visible = private unnamed_addr constant [31 x i8] c"gimp_toggle_button_set_visible\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"GTK_IS_TOGGLE_BUTTON (toggle)\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"gimp-accel-closure\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"gimp-accel-action\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"accel-changed\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"gimp-info\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"gimp-error\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"gimpwidgets-utils.c\00", align 1
@__func__.gimp_get_message_stock_id = private unnamed_addr constant [26 x i8] c"gimp_get_message_stock_id\00", align 1
@__func__.gimp_pango_layout_set_scale = private unnamed_addr constant [28 x i8] c"gimp_pango_layout_set_scale\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"PANGO_IS_LAYOUT (layout)\00", align 1
@__func__.gimp_pango_layout_set_weight = private unnamed_addr constant [29 x i8] c"gimp_pango_layout_set_weight\00", align 1
@__func__.gimp_highlight_widget = private unnamed_addr constant [22 x i8] c"gimp_highlight_widget\00", align 1
@__func__.gimp_dock_with_window_new = private unnamed_addr constant [26 x i8] c"gimp_dock_with_window_new\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DIALOG_FACTORY (factory)\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"GDK_IS_SCREEN (screen)\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"gimp-dock-window\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"gimp-dock\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"gimp-tool-options-gui\00", align 1
@__func__.gimp_widget_flush_expose = private unnamed_addr constant [25 x i8] c"gimp_widget_flush_expose\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"ENTER_NOTIFY\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"LEAVE_NOTIFY\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"PROXIMITY_IN\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"PROXIMITY_OUT\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"FOCUS_IN\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"FOCUS_OUT\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"BUTTON_PRESS (%d @ %0.0f:%0.0f)\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"2BUTTON_PRESS (%d @ %0.0f:%0.0f)\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"3BUTTON_PRESS (%d @ %0.0f:%0.0f)\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"BUTTON_RELEASE (%d @ %0.0f:%0.0f)\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"SCROLL (%d)\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"MOTION_NOTIFY (%0.0f:%0.0f %d)\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"KEY_PRESS (%d, %s)\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"KEY_RELEASE (%d, %s)\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"UNHANDLED (type %d)\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"%s  <b>%s</b>\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_menu_position(%struct._GtkMenu* %menu, i32* %x, i32* %y) #0 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %requisition = alloca %struct._GtkRequisition, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  %monitor = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %1 = bitcast %struct._GtkMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_menu_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.65

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %x.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.65

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %y.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.65

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %16 = bitcast %struct._GtkMenu* %15 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call23)
  %17 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  store %struct._GtkWidget* %17, %struct._GtkWidget** %widget, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call25 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %18)
  store %struct._GdkScreen* %call25, %struct._GdkScreen** %screen, align 8
  %19 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %20 = load i32*, i32** %x.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %y.addr, align 8
  %23 = load i32, i32* %22, align 4
  %call26 = call i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen* %19, i32 %21, i32 %23)
  store i32 %call26, i32* %monitor, align 4
  %24 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %25 = load i32, i32* %monitor, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %24, i32 %25, %struct._GdkRectangle* %rect)
  %26 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %27 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  call void @gtk_menu_set_screen(%struct._GtkMenu* %26, %struct._GdkScreen* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %28, %struct._GtkRequisition* %requisition)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call27 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %29)
  %cmp28 = icmp eq i32 %call27, 2
  br i1 %cmp28, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %do.end.22
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %30 = load i32, i32* %width, align 4
  %31 = load i32*, i32** %x.addr, align 8
  %32 = load i32, i32* %31, align 4
  %sub = sub nsw i32 %32, %30
  store i32 %sub, i32* %31, align 4
  %33 = load i32*, i32** %x.addr, align 8
  %34 = load i32, i32* %33, align 4
  %x30 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %35 = load i32, i32* %x30, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.29
  %width33 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %36 = load i32, i32* %width33, align 4
  %37 = load i32*, i32** %x.addr, align 8
  %38 = load i32, i32* %37, align 4
  %add = add nsw i32 %38, %36
  store i32 %add, i32* %37, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.29
  br label %if.end.46

if.else.35:                                       ; preds = %do.end.22
  %39 = load i32*, i32** %x.addr, align 8
  %40 = load i32, i32* %39, align 4
  %width36 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %41 = load i32, i32* %width36, align 4
  %add37 = add nsw i32 %40, %41
  %x38 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %42 = load i32, i32* %x38, align 4
  %width39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %43 = load i32, i32* %width39, align 4
  %add40 = add nsw i32 %42, %43
  %cmp41 = icmp sgt i32 %add37, %add40
  br i1 %cmp41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.else.35
  %width43 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %44 = load i32, i32* %width43, align 4
  %45 = load i32*, i32** %x.addr, align 8
  %46 = load i32, i32* %45, align 4
  %sub44 = sub nsw i32 %46, %44
  store i32 %sub44, i32* %45, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.else.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.34
  %47 = load i32*, i32** %x.addr, align 8
  %48 = load i32, i32* %47, align 4
  %x47 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %49 = load i32, i32* %x47, align 4
  %cmp48 = icmp slt i32 %48, %49
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.46
  %x50 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %50 = load i32, i32* %x50, align 4
  %51 = load i32*, i32** %x.addr, align 8
  store i32 %50, i32* %51, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.46
  %52 = load i32*, i32** %y.addr, align 8
  %53 = load i32, i32* %52, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %54 = load i32, i32* %height, align 4
  %add52 = add nsw i32 %53, %54
  %y53 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %55 = load i32, i32* %y53, align 4
  %height54 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %56 = load i32, i32* %height54, align 4
  %add55 = add nsw i32 %55, %56
  %cmp56 = icmp sgt i32 %add52, %add55
  br i1 %cmp56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.51
  %height58 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %57 = load i32, i32* %height58, align 4
  %58 = load i32*, i32** %y.addr, align 8
  %59 = load i32, i32* %58, align 4
  %sub59 = sub nsw i32 %59, %57
  store i32 %sub59, i32* %58, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.51
  %60 = load i32*, i32** %y.addr, align 8
  %61 = load i32, i32* %60, align 4
  %y61 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %62 = load i32, i32* %y61, align 4
  %cmp62 = icmp slt i32 %61, %62
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %y64 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %63 = load i32, i32* %y64, align 4
  %64 = load i32*, i32** %y.addr, align 8
  store i32 %63, i32* %64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.9, %if.else.14, %if.else.20, %if.then.63, %if.end.60
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen*, i32, i32) #3

declare void @gdk_screen_get_monitor_geometry(%struct._GdkScreen*, i32, %struct._GdkRectangle*) #3

declare void @gtk_menu_set_screen(%struct._GtkMenu*, %struct._GdkScreen*) #3

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #3

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define void @gimp_button_menu_position(%struct._GtkWidget* %button, %struct._GtkMenu* %menu, i32 %position, i32* %x, i32* %y) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %position.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %button_allocation = alloca %struct._GdkRectangle, align 4
  %menu_requisition = alloca %struct._GtkRequisition, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  %monitor = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_button_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.116

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %call12 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_button_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.116

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %15 = bitcast %struct._GtkMenu* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gtk_menu_get_type() #6
  store i64 %call23, i64* %__t22, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.18
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type33, align 8
  %22 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %21, %22
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %24 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %25 = load i32, i32* %__r25, align 4
  store i32 %25, i32* %tmp40
  %26 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_button_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.116

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load i32*, i32** %x.addr, align 8
  %cmp47 = icmp ne i32* %27, null
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.46
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_button_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.116

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %28 = load i32*, i32** %y.addr, align 8
  %cmp53 = icmp ne i32* %28, null
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.52
  br label %if.end.56

if.else.55:                                       ; preds = %do.body.52
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_button_menu_position, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.116

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %29, %struct._GdkRectangle* %button_allocation)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %call58 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %30)
  %cmp59 = icmp eq i32 %call58, 2
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %do.end.57
  %31 = load i32, i32* %position.addr, align 4
  switch i32 %31, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.then.60
  store i32 1, i32* %position.addr, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.then.60
  store i32 0, i32* %position.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.60
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.61, %sw.bb
  br label %if.end.62

if.end.62:                                        ; preds = %sw.epilog, %do.end.57
  %32 = load i32*, i32** %x.addr, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %y.addr, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %call63 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %34)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.69, label %if.then.65

if.then.65:                                       ; preds = %if.end.62
  %x66 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %button_allocation, i32 0, i32 0
  %35 = load i32, i32* %x66, align 4
  %36 = load i32*, i32** %x.addr, align 8
  %37 = load i32, i32* %36, align 4
  %add = add nsw i32 %37, %35
  store i32 %add, i32* %36, align 4
  %y67 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %button_allocation, i32 0, i32 1
  %38 = load i32, i32* %y67, align 4
  %39 = load i32*, i32** %y.addr, align 8
  %40 = load i32, i32* %39, align 4
  %add68 = add nsw i32 %40, %38
  store i32 %add68, i32* %39, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.end.62
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %call70 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %41)
  %42 = load i32*, i32** %x.addr, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %y.addr, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %x.addr, align 8
  %47 = load i32*, i32** %y.addr, align 8
  call void @gdk_window_get_root_coords(%struct._GdkDrawable* %call70, i32 %43, i32 %45, i32* %46, i32* %47)
  %48 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %49 = bitcast %struct._GtkMenu* %48 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_widget_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call71)
  %50 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkWidget*
  call void @gtk_widget_size_request(%struct._GtkWidget* %50, %struct._GtkRequisition* %menu_requisition)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %call73 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %51)
  store %struct._GdkScreen* %call73, %struct._GdkScreen** %screen, align 8
  %52 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %53 = load i32*, i32** %x.addr, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %y.addr, align 8
  %56 = load i32, i32* %55, align 4
  %call74 = call i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen* %52, i32 %54, i32 %56)
  store i32 %call74, i32* %monitor, align 4
  %57 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %58 = load i32, i32* %monitor, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %57, i32 %58, %struct._GdkRectangle* %rect)
  %59 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %60 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  call void @gtk_menu_set_screen(%struct._GtkMenu* %59, %struct._GdkScreen* %60)
  %61 = load i32, i32* %position.addr, align 4
  switch i32 %61, label %sw.default.99 [
    i32 0, label %sw.bb.75
    i32 1, label %sw.bb.84
  ]

sw.bb.75:                                         ; preds = %if.end.69
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %menu_requisition, i32 0, i32 0
  %62 = load i32, i32* %width, align 4
  %63 = load i32*, i32** %x.addr, align 8
  %64 = load i32, i32* %63, align 4
  %sub = sub nsw i32 %64, %62
  store i32 %sub, i32* %63, align 4
  %65 = load i32*, i32** %x.addr, align 8
  %66 = load i32, i32* %65, align 4
  %x76 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %67 = load i32, i32* %x76, align 4
  %cmp77 = icmp slt i32 %66, %67
  br i1 %cmp77, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %sw.bb.75
  %width79 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %menu_requisition, i32 0, i32 0
  %68 = load i32, i32* %width79, align 4
  %width80 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %button_allocation, i32 0, i32 2
  %69 = load i32, i32* %width80, align 4
  %add81 = add nsw i32 %68, %69
  %70 = load i32*, i32** %x.addr, align 8
  %71 = load i32, i32* %70, align 4
  %add82 = add nsw i32 %71, %add81
  store i32 %add82, i32* %70, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %sw.bb.75
  br label %sw.epilog.100

sw.bb.84:                                         ; preds = %if.end.69
  %width85 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %button_allocation, i32 0, i32 2
  %72 = load i32, i32* %width85, align 4
  %73 = load i32*, i32** %x.addr, align 8
  %74 = load i32, i32* %73, align 4
  %add86 = add nsw i32 %74, %72
  store i32 %add86, i32* %73, align 4
  %75 = load i32*, i32** %x.addr, align 8
  %76 = load i32, i32* %75, align 4
  %width87 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %menu_requisition, i32 0, i32 0
  %77 = load i32, i32* %width87, align 4
  %add88 = add nsw i32 %76, %77
  %x89 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %78 = load i32, i32* %x89, align 4
  %width90 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %79 = load i32, i32* %width90, align 4
  %add91 = add nsw i32 %78, %79
  %cmp92 = icmp sgt i32 %add88, %add91
  br i1 %cmp92, label %if.then.93, label %if.end.98

if.then.93:                                       ; preds = %sw.bb.84
  %width94 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %button_allocation, i32 0, i32 2
  %80 = load i32, i32* %width94, align 4
  %width95 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %menu_requisition, i32 0, i32 0
  %81 = load i32, i32* %width95, align 4
  %add96 = add nsw i32 %80, %81
  %82 = load i32*, i32** %x.addr, align 8
  %83 = load i32, i32* %82, align 4
  %sub97 = sub nsw i32 %83, %add96
  store i32 %sub97, i32* %82, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.93, %sw.bb.84
  br label %sw.epilog.100

sw.default.99:                                    ; preds = %if.end.69
  %84 = load i32, i32* %position.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_button_menu_position, i32 0, i32 0), i32 %84)
  br label %sw.epilog.100

sw.epilog.100:                                    ; preds = %sw.default.99, %if.end.98, %if.end.83
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %button_allocation, i32 0, i32 3
  %85 = load i32, i32* %height, align 4
  %div = sdiv i32 %85, 2
  %86 = load i32*, i32** %y.addr, align 8
  %87 = load i32, i32* %86, align 4
  %add101 = add nsw i32 %87, %div
  store i32 %add101, i32* %86, align 4
  %88 = load i32*, i32** %y.addr, align 8
  %89 = load i32, i32* %88, align 4
  %height102 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %menu_requisition, i32 0, i32 1
  %90 = load i32, i32* %height102, align 4
  %add103 = add nsw i32 %89, %90
  %y104 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %91 = load i32, i32* %y104, align 4
  %height105 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %92 = load i32, i32* %height105, align 4
  %add106 = add nsw i32 %91, %92
  %cmp107 = icmp sgt i32 %add103, %add106
  br i1 %cmp107, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %sw.epilog.100
  %height109 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %menu_requisition, i32 0, i32 1
  %93 = load i32, i32* %height109, align 4
  %94 = load i32*, i32** %y.addr, align 8
  %95 = load i32, i32* %94, align 4
  %sub110 = sub nsw i32 %95, %93
  store i32 %sub110, i32* %94, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %sw.epilog.100
  %96 = load i32*, i32** %y.addr, align 8
  %97 = load i32, i32* %96, align 4
  %y112 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %98 = load i32, i32* %y112, align 4
  %cmp113 = icmp slt i32 %97, %98
  br i1 %cmp113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.111
  %y115 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %99 = load i32, i32* %y115, align 4
  %100 = load i32*, i32** %y.addr, align 8
  store i32 %99, i32* %100, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.9, %if.else.15, %if.else.43, %if.else.49, %if.else.55, %if.then.114, %if.end.111
  ret void
}

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #3

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #3

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #3

declare void @gdk_window_get_root_coords(%struct._GdkDrawable*, i32, i32, i32*, i32*) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_table_attach_stock(%struct._GtkTable* %table, i32 %row, i8* %stock_id, %struct._GtkWidget* %widget, i32 %colspan, i32 %left_align) #0 {
entry:
  %table.addr = alloca %struct._GtkTable*, align 8
  %row.addr = alloca i32, align 4
  %stock_id.addr = alloca i8*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %colspan.addr = alloca i32, align 4
  %left_align.addr = alloca i32, align 4
  %image = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %hbox = alloca %struct._GtkWidget*, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %colspan, i32* %colspan.addr, align 4
  store i32 %left_align, i32* %left_align.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %1 = bitcast %struct._GtkTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_table_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_table_attach_stock, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %stock_id.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_table_attach_stock, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gtk_widget_get_type() #6
  store i64 %call22, i64* %__t21, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type32, align 8
  %22 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %21, %22
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %24 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %25 = load i32, i32* %__r24, align 4
  store i32 %25, i32* %tmp39
  %26 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_table_attach_stock, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load i8*, i8** %stock_id.addr, align 8
  %call45 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %27, i32 4)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %image, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_misc_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call46)
  %30 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %30, float 1.000000e+00, float 5.000000e-01)
  %31 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %33 = load i32, i32* %row.addr, align 4
  %34 = load i32, i32* %row.addr, align 4
  %add = add nsw i32 %34, 1
  call void @gtk_table_attach(%struct._GtkTable* %31, %struct._GtkWidget* %32, i32 0, i32 1, i32 %33, i32 %add, i32 4, i32 4, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %36 = load i32, i32* %left_align.addr, align 4
  %tobool48 = icmp ne i32 %36, 0
  br i1 %tobool48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %do.end.44
  %call51 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %hbox, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call52)
  %39 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  store %struct._GtkWidget* %42, %struct._GtkWidget** %widget.addr, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %do.end.44
  %43 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %45 = load i32, i32* %colspan.addr, align 4
  %add55 = add nsw i32 1, %45
  %46 = load i32, i32* %row.addr, align 4
  %47 = load i32, i32* %row.addr, align 4
  %add56 = add nsw i32 %47, 1
  call void @gtk_table_attach(%struct._GtkTable* %43, %struct._GtkWidget* %44, i32 1, i32 %add55, i32 %46, i32 %add56, i32 5, i32 5, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  br label %return

return:                                           ; preds = %if.end.54, %if.else.42, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #3

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_enum_radio_box_add(%struct._GtkBox* %box, %struct._GtkWidget* %widget, i32 %enum_value, i32 %below) #0 {
entry:
  %box.addr = alloca %struct._GtkBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %enum_value.addr = alloca i32, align 4
  %below.addr = alloca i32, align 4
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %pos = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %radio = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %spacer = alloca %struct._GtkWidget*, align 8
  %indicator_size = alloca i32, align 4
  %indicator_spacing = alloca i32, align 4
  %focus_width = alloca i32, align 4
  %focus_padding = alloca i32, align 4
  %border_width = alloca i32, align 4
  %size_group = alloca %struct._GtkSizeGroup*, align 8
  store %struct._GtkBox* %box, %struct._GtkBox** %box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %enum_value, i32* %enum_value.addr, align 4
  store i32 %below, i32* %below.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %1 = bitcast %struct._GtkBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_enum_radio_box_add, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_enum_radio_box_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %27 = bitcast %struct._GtkBox* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  %call41 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %28)
  store %struct._GList* %call41, %struct._GList** %children, align 8
  %29 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %29, %struct._GList** %list, align 8
  store i32 1, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.38
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool42 = icmp ne %struct._GList* %30, null
  br i1 %tobool42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %33, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gtk_radio_button_get_type() #6
  store i64 %call47, i64* %__t46, align 8
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %34, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %for.body
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %for.body
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %36, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type57, align 8
  %40 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %39, %40
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %42 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %41, i64 %42) #7
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %43 = load i32, i32* %__r49, align 4
  store i32 %43, i32* %tmp64
  %44 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %44, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.118

land.lhs.true.66:                                 ; preds = %if.end.63
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %data67 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 0
  %46 = load i8*, i8** %data67, align 8
  %47 = bitcast i8* %46 to %struct._GObject*
  %call68 = call i8* @g_object_get_data(%struct._GObject* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  %48 = ptrtoint i8* %call68 to i64
  %conv = trunc i64 %48 to i32
  %49 = load i32, i32* %enum_value.addr, align 4
  %cmp69 = icmp eq i32 %conv, %49
  br i1 %cmp69, label %if.then.71, label %if.end.118

if.then.71:                                       ; preds = %land.lhs.true.66
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %data73 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 0
  %51 = load i8*, i8** %data73, align 8
  %52 = bitcast i8* %51 to %struct._GtkWidget*
  store %struct._GtkWidget* %52, %struct._GtkWidget** %radio, align 8
  %call75 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %hbox, align 8
  %53 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %54 = bitcast %struct._GtkBox* %53 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call76)
  %55 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %55, %struct._GtkWidget* %56, i32 0, i32 0, i32 0)
  %57 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %58 = bitcast %struct._GtkBox* %57 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call78)
  %59 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %61 = load i32, i32* %pos, align 4
  call void @gtk_box_reorder_child(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 %61)
  %62 = load i32, i32* %below.addr, align 4
  %tobool80 = icmp ne i32 %62, 0
  br i1 %tobool80, label %if.then.81, label %if.else.97

if.then.81:                                       ; preds = %if.then.71
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32* %indicator_size, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32* %indicator_spacing, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32* %focus_width, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32* %focus_padding, i8* null)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_container_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call88)
  %66 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkContainer*
  %call90 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %66)
  store i32 %call90, i32* %border_width, align 4
  %call91 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %spacer, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %spacer, align 8
  %68 = load i32, i32* %indicator_size, align 4
  %69 = load i32, i32* %indicator_spacing, align 4
  %mul = mul nsw i32 3, %69
  %add = add nsw i32 %68, %mul
  %70 = load i32, i32* %focus_width, align 4
  %add92 = add nsw i32 %add, %70
  %71 = load i32, i32* %focus_padding, align 4
  %add93 = add nsw i32 %add92, %71
  %72 = load i32, i32* %border_width, align 4
  %add94 = add nsw i32 %add93, %72
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %67, i32 %add94, i32 -1)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call95)
  %75 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %spacer, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %75, %struct._GtkWidget* %76, i32 0, i32 0, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %spacer, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  br label %if.end.114

if.else.97:                                       ; preds = %if.then.71
  %78 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %79 = bitcast %struct._GtkBox* %78 to %struct._GTypeInstance*
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 80)
  %80 = bitcast %struct._GTypeInstance* %call99 to %struct._GObject*
  %call100 = call i8* @g_object_get_data(%struct._GObject* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  %81 = bitcast i8* %call100 to %struct._GtkSizeGroup*
  store %struct._GtkSizeGroup* %81, %struct._GtkSizeGroup** %size_group, align 8
  %82 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %tobool101 = icmp ne %struct._GtkSizeGroup* %82, null
  br i1 %tobool101, label %if.else.105, label %if.then.102

if.then.102:                                      ; preds = %if.else.97
  %call103 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call103, %struct._GtkSizeGroup** %size_group, align 8
  %83 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %84 = bitcast %struct._GtkBox* %83 to %struct._GTypeInstance*
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 80)
  %85 = bitcast %struct._GTypeInstance* %call104 to %struct._GObject*
  %86 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %87 = bitcast %struct._GtkSizeGroup* %86 to i8*
  call void @g_object_set_data(%struct._GObject* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* %87)
  %88 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %88, %struct._GtkWidget* %89)
  %90 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %91 = bitcast %struct._GtkSizeGroup* %90 to i8*
  call void @g_object_unref(i8* %91)
  br label %if.end.106

if.else.105:                                      ; preds = %if.else.97
  %92 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %92, %struct._GtkWidget* %93)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.then.102
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_box_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call107)
  %96 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %96, i32 4)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %call109 = call i8* @g_object_ref(i8* %98)
  %99 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %100 = bitcast %struct._GtkBox* %99 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_container_get_type() #6
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call110)
  %101 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkContainer*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %101, %struct._GtkWidget* %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_box_get_type() #6
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call112)
  %105 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkBox*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %105, %struct._GtkWidget* %106, i32 0, i32 0, i32 0)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %108 = bitcast %struct._GtkWidget* %107 to i8*
  call void @g_object_unref(i8* %108)
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.106, %if.then.81
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_box_get_type() #6
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call115)
  %111 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkBox*
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %111, %struct._GtkWidget* %112, i32 1, i32 1, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %113)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %radio, align 8
  %115 = bitcast %struct._GtkWidget* %114 to i8*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %117 = bitcast %struct._GtkWidget* %116 to i8*
  %call117 = call %struct._GBinding* @g_object_bind_property(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 2)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  br label %for.end

if.end.118:                                       ; preds = %land.lhs.true.66, %if.end.63
  br label %for.inc

for.inc:                                          ; preds = %if.end.118
  %119 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool119 = icmp ne %struct._GList* %119, null
  br i1 %tobool119, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %120 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %120, i32 0, i32 1
  %121 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %121, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %122 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %122, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.114, %for.cond
  %123 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %123)
  br label %return

return:                                           ; preds = %for.end, %if.else.36, %if.else.9
  ret void
}

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #3

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #3

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #3

declare void @g_object_unref(i8*) #3

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #3

declare i8* @g_object_ref(i8*) #3

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #3

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #3

declare void @g_list_free(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_enum_radio_frame_add(%struct._GtkFrame* %frame, %struct._GtkWidget* %widget, i32 %enum_value, i32 %below) #0 {
entry:
  %frame.addr = alloca %struct._GtkFrame*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %enum_value.addr = alloca i32, align 4
  %below.addr = alloca i32, align 4
  %box = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  store %struct._GtkFrame* %frame, %struct._GtkFrame** %frame.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %enum_value, i32* %enum_value.addr, align 4
  store i32 %below, i32* %below.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %1 = bitcast %struct._GtkFrame* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_frame_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_enum_radio_frame_add, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_enum_radio_frame_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkFrame*, %struct._GtkFrame** %frame.addr, align 8
  %27 = bitcast %struct._GtkFrame* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_bin_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBin*
  %call41 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %28)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %box, align 8
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.38
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gtk_box_get_type() #6
  store i64 %call47, i64* %__t46, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %do.body.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %do.body.42
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type57, align 8
  %37 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %36, %37
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %39 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %40 = load i32, i32* %__r49, align 4
  store i32 %40, i32* %tmp64
  %41 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %41, 0
  br i1 %tobool65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.63
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.63
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_enum_radio_frame_add, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.68:                                        ; preds = %if.then.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_box_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call70)
  %44 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %46 = load i32, i32* %enum_value.addr, align 4
  %47 = load i32, i32* %below.addr, align 4
  call void @gimp_enum_radio_box_add(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 %46, i32 %47)
  br label %return

return:                                           ; preds = %do.end.69, %if.else.67, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_get_icon_size(%struct._GtkWidget* %widget, i8* %stock_id, i32 %max_size, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %stock_id.addr = alloca i8*, align 8
  %max_size.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %icon_set = alloca %struct._GtkIconSet*, align 8
  %sizes = alloca i32*, align 8
  %n_sizes = alloca i32, align 4
  %i = alloca i32, align 4
  %width_diff = alloca i32, align 4
  %height_diff = alloca i32, align 4
  %max_width = alloca i32, align 4
  %max_height = alloca i32, align 4
  %icon_size = alloca i32, align 4
  %settings = alloca %struct._GtkSettings*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %icon_width = alloca i32, align 4
  %icon_height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i32 %max_size, i32* %max_size.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 1024, i32* %width_diff, align 4
  store i32 1024, i32* %height_diff, align 4
  store i32 1, i32* %icon_size, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_get_icon_size, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0))
  %13 = load i32, i32* %icon_size, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load i8*, i8** %stock_id.addr, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_get_icon_size, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  %15 = load i32, i32* %icon_size, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %16 = load i32, i32* %width.addr, align 4
  %cmp18 = icmp sgt i32 %16, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_get_icon_size, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0))
  %17 = load i32, i32* %icon_size, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %18 = load i32, i32* %height.addr, align 4
  %cmp24 = icmp sgt i32 %18, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_get_icon_size, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0))
  %19 = load i32, i32* %icon_size, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call29 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %20)
  %21 = load i8*, i8** %stock_id.addr, align 8
  %call30 = call %struct._GtkIconSet* @gtk_style_lookup_icon_set(%struct._GtkStyle* %call29, i8* %21)
  store %struct._GtkIconSet* %call30, %struct._GtkIconSet** %icon_set, align 8
  %22 = load %struct._GtkIconSet*, %struct._GtkIconSet** %icon_set, align 8
  %tobool31 = icmp ne %struct._GtkIconSet* %22, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %do.end.28
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %do.end.28
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call34 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %23)
  store %struct._GtkSettings* %call34, %struct._GtkSettings** %settings, align 8
  %24 = load %struct._GtkSettings*, %struct._GtkSettings** %settings, align 8
  %25 = load i32, i32* %max_size.addr, align 4
  %call35 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %24, i32 %25, i32* %max_width, i32* %max_height)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.33
  store i32 1024, i32* %max_width, align 4
  store i32 1024, i32* %max_height, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.33
  %26 = load %struct._GtkIconSet*, %struct._GtkIconSet** %icon_set, align 8
  call void @gtk_icon_set_get_sizes(%struct._GtkIconSet* %26, i32** %sizes, i32* %n_sizes)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n_sizes, align 4
  %cmp39 = icmp slt i32 %27, %28
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GtkSettings*, %struct._GtkSettings** %settings, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i32*, i32** %sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 %idxprom
  %32 = load i32, i32* %arrayidx, align 4
  %call42 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %29, i32 %32, i32* %icon_width, i32* %icon_height)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.62

if.then.44:                                       ; preds = %for.body
  %33 = load i32, i32* %icon_width, align 4
  %34 = load i32, i32* %width.addr, align 4
  %cmp45 = icmp sle i32 %33, %34
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.61

land.lhs.true.46:                                 ; preds = %if.then.44
  %35 = load i32, i32* %icon_height, align 4
  %36 = load i32, i32* %height.addr, align 4
  %cmp47 = icmp sle i32 %35, %36
  br i1 %cmp47, label %land.lhs.true.48, label %if.end.61

land.lhs.true.48:                                 ; preds = %land.lhs.true.46
  %37 = load i32, i32* %icon_width, align 4
  %38 = load i32, i32* %max_width, align 4
  %cmp49 = icmp sle i32 %37, %38
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.61

land.lhs.true.50:                                 ; preds = %land.lhs.true.48
  %39 = load i32, i32* %icon_height, align 4
  %40 = load i32, i32* %max_height, align 4
  %cmp51 = icmp sle i32 %39, %40
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.61

land.lhs.true.52:                                 ; preds = %land.lhs.true.50
  %41 = load i32, i32* %width.addr, align 4
  %42 = load i32, i32* %icon_width, align 4
  %sub = sub nsw i32 %41, %42
  %43 = load i32, i32* %width_diff, align 4
  %cmp53 = icmp slt i32 %sub, %43
  br i1 %cmp53, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.52
  %44 = load i32, i32* %height.addr, align 4
  %45 = load i32, i32* %icon_height, align 4
  %sub54 = sub nsw i32 %44, %45
  %46 = load i32, i32* %height_diff, align 4
  %cmp55 = icmp slt i32 %sub54, %46
  br i1 %cmp55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %lor.lhs.false, %land.lhs.true.52
  %47 = load i32, i32* %width.addr, align 4
  %48 = load i32, i32* %icon_width, align 4
  %sub57 = sub nsw i32 %47, %48
  store i32 %sub57, i32* %width_diff, align 4
  %49 = load i32, i32* %height.addr, align 4
  %50 = load i32, i32* %icon_height, align 4
  %sub58 = sub nsw i32 %49, %50
  store i32 %sub58, i32* %height_diff, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %51 to i64
  %52 = load i32*, i32** %sizes, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %52, i64 %idxprom59
  %53 = load i32, i32* %arrayidx60, align 4
  store i32 %53, i32* %icon_size, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %lor.lhs.false, %land.lhs.true.50, %land.lhs.true.48, %land.lhs.true.46, %if.then.44
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i32*, i32** %sizes, align 8
  %56 = bitcast i32* %55 to i8*
  call void @g_free(i8* %56)
  %57 = load i32, i32* %icon_size, align 4
  store i32 %57, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.32, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %58 = load i32, i32* %retval
  ret i32 %58
}

declare %struct._GtkIconSet* @gtk_style_lookup_icon_set(%struct._GtkStyle*, i8*) #3

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #3

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #3

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #3

declare void @gtk_icon_set_get_sizes(%struct._GtkIconSet*, i32**, i32*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_preview_tab_style_to_icon(i32 %tab_style) #0 {
entry:
  %tab_style.addr = alloca i32, align 4
  store i32 %tab_style, i32* %tab_style.addr, align 4
  %0 = load i32, i32* %tab_style.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb.1
    i32 7, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %tab_style.addr, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 4, i32* %tab_style.addr, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 5, i32* %tab_style.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %tab_style.addr, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i8* @gimp_get_mod_string(i32 %modifiers) #0 {
entry:
  %retval = alloca i8*, align 8
  %modifiers.addr = alloca i32, align 4
  %label = alloca i8*, align 8
  %accel_label_class = alloca %struct._GtkAccelLabelClass*, align 8
  %sep = alloca i8*, align 8
  store i32 %modifiers, i32* %modifiers.addr, align 4
  %0 = load i32, i32* %modifiers.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @gimp_get_mod_string.mod_labels, align 8
  %tobool1 = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_int_hash, i32 (i8*, i8*)* @g_int_equal)
  store %struct._GHashTable* %call, %struct._GHashTable** @gimp_get_mod_string.mod_labels, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i32, i32* %modifiers.addr, align 4
  %call4 = call i32 @gimp_replace_virtual_modifiers(i32 %2)
  store i32 %call4, i32* %modifiers.addr, align 4
  %3 = load %struct._GHashTable*, %struct._GHashTable** @gimp_get_mod_string.mod_labels, align 8
  %4 = bitcast i32* %modifiers.addr to i8*
  %call5 = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  store i8* %call5, i8** %label, align 8
  %5 = load i8*, i8** %label, align 8
  %tobool6 = icmp ne i8* %5, null
  br i1 %tobool6, label %if.end.26, label %if.then.7

if.then.7:                                        ; preds = %if.end.3
  %6 = load i32, i32* %modifiers.addr, align 4
  %call8 = call i8* @gtk_accelerator_get_label(i32 0, i32 %6)
  store i8* %call8, i8** %label, align 8
  %call9 = call i64 @gtk_accel_label_get_type() #6
  %call10 = call i8* @g_type_class_ref(i64 %call9)
  %7 = bitcast i8* %call10 to %struct._GtkAccelLabelClass*
  store %struct._GtkAccelLabelClass* %7, %struct._GtkAccelLabelClass** %accel_label_class, align 8
  %8 = load %struct._GtkAccelLabelClass*, %struct._GtkAccelLabelClass** %accel_label_class, align 8
  %mod_separator = getelementptr inbounds %struct._GtkAccelLabelClass, %struct._GtkAccelLabelClass* %8, i32 0, i32 6
  %9 = load i8*, i8** %mod_separator, align 8
  %tobool11 = icmp ne i8* %9, null
  br i1 %tobool11, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.then.7
  %10 = load %struct._GtkAccelLabelClass*, %struct._GtkAccelLabelClass** %accel_label_class, align 8
  %mod_separator12 = getelementptr inbounds %struct._GtkAccelLabelClass, %struct._GtkAccelLabelClass* %10, i32 0, i32 6
  %11 = load i8*, i8** %mod_separator12, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %tobool13 = icmp ne i32 %conv, 0
  br i1 %tobool13, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %land.lhs.true
  %13 = load i8*, i8** %label, align 8
  %14 = load %struct._GtkAccelLabelClass*, %struct._GtkAccelLabelClass** %accel_label_class, align 8
  %mod_separator15 = getelementptr inbounds %struct._GtkAccelLabelClass, %struct._GtkAccelLabelClass* %14, i32 0, i32 6
  %15 = load i8*, i8** %mod_separator15, align 8
  %call16 = call i8* @g_strrstr(i8* %13, i8* %15)
  store i8* %call16, i8** %sep, align 8
  %16 = load i8*, i8** %sep, align 8
  %17 = load i8*, i8** %label, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load i8*, i8** %label, align 8
  %call17 = call i64 @strlen(i8* %18) #7
  %19 = load %struct._GtkAccelLabelClass*, %struct._GtkAccelLabelClass** %accel_label_class, align 8
  %mod_separator18 = getelementptr inbounds %struct._GtkAccelLabelClass, %struct._GtkAccelLabelClass* %19, i32 0, i32 6
  %20 = load i8*, i8** %mod_separator18, align 8
  %call19 = call i64 @strlen(i8* %20) #7
  %sub = sub i64 %call17, %call19
  %cmp = icmp eq i64 %sub.ptr.sub, %sub
  br i1 %cmp, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.14
  %21 = load i8*, i8** %sep, align 8
  store i8 0, i8* %21, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %if.then.7
  %22 = load %struct._GtkAccelLabelClass*, %struct._GtkAccelLabelClass** %accel_label_class, align 8
  %23 = bitcast %struct._GtkAccelLabelClass* %22 to i8*
  call void @g_type_class_unref(i8* %23)
  %24 = load %struct._GHashTable*, %struct._GHashTable** @gimp_get_mod_string.mod_labels, align 8
  %25 = bitcast i32* %modifiers.addr to i8*
  %call24 = call noalias i8* @g_memdup(i8* %25, i32 4)
  %26 = load i8*, i8** %label, align 8
  %call25 = call i32 @g_hash_table_insert(%struct._GHashTable* %24, i8* %call24, i8* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.23, %if.end.3
  %27 = load i8*, i8** %label, align 8
  store i8* %27, i8** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  %28 = load i8*, i8** %retval
  ret i8* %28
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #3

declare i32 @g_int_hash(i8*) #3

declare i32 @g_int_equal(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_replace_virtual_modifiers(i32 %modifiers) #0 {
entry:
  %modifiers.addr = alloca i32, align 4
  %display = alloca %struct._GdkDisplay*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %real = alloca i32, align 4
  %virtual = alloca i32, align 4
  store i32 %modifiers, i32* %modifiers.addr, align 4
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %shl = shl i32 1, %1
  store i32 %shl, i32* %real, align 4
  %2 = load i32, i32* %modifiers.addr, align 4
  %3 = load i32, i32* %real, align 4
  %and = and i32 %2, %3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %real, align 4
  store i32 %4, i32* %virtual, align 4
  %5 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %5)
  call void @gdk_keymap_add_virtual_modifiers(%struct._GdkKeymap* %call1, i32* %virtual)
  %6 = load i32, i32* %virtual, align 4
  %7 = load i32, i32* %real, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %virtual, align 4
  %9 = load i32, i32* %result, align 4
  %or = or i32 %9, %8
  store i32 %or, i32* %result, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %virtual, align 4
  %11 = load i32, i32* %real, align 4
  %neg = xor i32 %11, -1
  %and4 = and i32 %10, %neg
  %12 = load i32, i32* %result, align 4
  %or5 = or i32 %12, %and4
  store i32 %or5, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %result, align 4
  ret i32 %14
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #3

declare i8* @gtk_accelerator_get_label(i32, i32) #3

declare i8* @g_type_class_ref(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_accel_label_get_type() #1

declare i8* @g_strrstr(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @g_type_class_unref(i8*) #3

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #3

declare noalias i8* @g_memdup(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_suggest_modifiers(i8* %message, i32 %modifiers, i8* %shift_format, i8* %control_format, i8* %alt_format) #0 {
entry:
  %retval = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %modifiers.addr = alloca i32, align 4
  %shift_format.addr = alloca i8*, align 8
  %control_format.addr = alloca i8*, align 8
  %alt_format.addr = alloca i8*, align 8
  %msg_buf = alloca [3 x [100 x i8]], align 16
  %num_msgs = alloca i32, align 4
  %try = alloca i32, align 4
  store i8* %message, i8** %message.addr, align 8
  store i32 %modifiers, i32* %modifiers.addr, align 4
  store i8* %shift_format, i8** %shift_format.addr, align 8
  store i8* %control_format, i8** %control_format.addr, align 8
  store i8* %alt_format, i8** %alt_format.addr, align 8
  store i32 0, i32* %num_msgs, align 4
  store i32 0, i32* %try, align 4
  %0 = load i32, i32* %modifiers.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %shift_format.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8*, i8** %shift_format.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %num_msgs, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx, i32 0, i32 0
  %5 = load i8*, i8** %shift_format.addr, align 8
  %call = call i8* @gimp_get_mod_string(i32 1)
  %call4 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 100, i8* %5, i8* %call)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %6 = load i32, i32* %num_msgs, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx6, i32 0, i32 0
  %call8 = call i8* @gimp_get_mod_string(i32 1)
  %call9 = call i64 @g_strlcpy(i8* %arraydecay7, i8* %call8, i64 100)
  store i32 1, i32* %try, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %7 = load i32, i32* %num_msgs, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %num_msgs, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %8 = load i32, i32* %modifiers.addr, align 4
  %call11 = call i32 @gimp_get_toggle_behavior_mask()
  %and12 = and i32 %8, %call11
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.35

if.then.14:                                       ; preds = %if.end.10
  %9 = load i8*, i8** %control_format.addr, align 8
  %tobool15 = icmp ne i8* %9, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.else.26

land.lhs.true.16:                                 ; preds = %if.then.14
  %10 = load i8*, i8** %control_format.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv17 = sext i8 %11 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.26

if.then.19:                                       ; preds = %land.lhs.true.16
  %12 = load i32, i32* %num_msgs, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 %idxprom20
  %arraydecay22 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx21, i32 0, i32 0
  %13 = load i8*, i8** %control_format.addr, align 8
  %call23 = call i32 @gimp_get_toggle_behavior_mask()
  %call24 = call i8* @gimp_get_mod_string(i32 %call23)
  %call25 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay22, i64 100, i8* %13, i8* %call24)
  br label %if.end.33

if.else.26:                                       ; preds = %land.lhs.true.16, %if.then.14
  %14 = load i32, i32* %num_msgs, align 4
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 %idxprom27
  %arraydecay29 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx28, i32 0, i32 0
  %call30 = call i32 @gimp_get_toggle_behavior_mask()
  %call31 = call i8* @gimp_get_mod_string(i32 %call30)
  %call32 = call i64 @g_strlcpy(i8* %arraydecay29, i8* %call31, i64 100)
  store i32 1, i32* %try, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.26, %if.then.19
  %15 = load i32, i32* %num_msgs, align 4
  %inc34 = add nsw i32 %15, 1
  store i32 %inc34, i32* %num_msgs, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.33, %if.end.10
  %16 = load i32, i32* %modifiers.addr, align 4
  %and36 = and i32 %16, 8
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.57

if.then.38:                                       ; preds = %if.end.35
  %17 = load i8*, i8** %alt_format.addr, align 8
  %tobool39 = icmp ne i8* %17, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.else.49

land.lhs.true.40:                                 ; preds = %if.then.38
  %18 = load i8*, i8** %alt_format.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv41 = sext i8 %19 to i32
  %tobool42 = icmp ne i32 %conv41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.49

if.then.43:                                       ; preds = %land.lhs.true.40
  %20 = load i32, i32* %num_msgs, align 4
  %idxprom44 = sext i32 %20 to i64
  %arrayidx45 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 %idxprom44
  %arraydecay46 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx45, i32 0, i32 0
  %21 = load i8*, i8** %alt_format.addr, align 8
  %call47 = call i8* @gimp_get_mod_string(i32 8)
  %call48 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay46, i64 100, i8* %21, i8* %call47)
  br label %if.end.55

if.else.49:                                       ; preds = %land.lhs.true.40, %if.then.38
  %22 = load i32, i32* %num_msgs, align 4
  %idxprom50 = sext i32 %22 to i64
  %arrayidx51 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 %idxprom50
  %arraydecay52 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx51, i32 0, i32 0
  %call53 = call i8* @gimp_get_mod_string(i32 8)
  %call54 = call i64 @g_strlcpy(i8* %arraydecay52, i8* %call53, i64 100)
  store i32 1, i32* %try, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.49, %if.then.43
  %23 = load i32, i32* %num_msgs, align 4
  %inc56 = add nsw i32 %23, 1
  store i32 %inc56, i32* %num_msgs, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.55, %if.end.35
  %24 = load i32, i32* %num_msgs, align 4
  switch i32 %24, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.64
    i32 3, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %if.end.57
  %25 = load i32, i32* %try, align 4
  %tobool58 = icmp ne i32 %25, 0
  br i1 %tobool58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call59, %cond.true ], [ %call60, %cond.false ]
  %26 = load i8*, i8** %message.addr, align 8
  %arrayidx61 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 0
  %arraydecay62 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx61, i32 0, i32 0
  %call63 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %cond, i8* %26, i8* %arraydecay62)
  store i8* %call63, i8** %retval
  br label %return

sw.bb.64:                                         ; preds = %if.end.57
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)) #5
  %27 = load i8*, i8** %message.addr, align 8
  %arrayidx66 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 0
  %arraydecay67 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx66, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 1
  %arraydecay69 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx68, i32 0, i32 0
  %call70 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call65, i8* %27, i8* %arraydecay67, i8* %arraydecay69)
  store i8* %call70, i8** %retval
  br label %return

sw.bb.71:                                         ; preds = %if.end.57
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #5
  %28 = load i8*, i8** %message.addr, align 8
  %arrayidx73 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 0
  %arraydecay74 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx73, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 1
  %arraydecay76 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx75, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x [100 x i8]], [3 x [100 x i8]]* %msg_buf, i32 0, i64 2
  %arraydecay78 = getelementptr inbounds [100 x i8], [100 x i8]* %arrayidx77, i32 0, i32 0
  %call79 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call72, i8* %28, i8* %arraydecay74, i8* %arraydecay76, i8* %arraydecay78)
  store i8* %call79, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.57
  %29 = load i8*, i8** %message.addr, align 8
  %call80 = call noalias i8* @g_strdup(i8* %29)
  store i8* %call80, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.71, %sw.bb.64, %cond.end
  %30 = load i8*, i8** %retval
  ret i8* %30
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #3

declare i64 @g_strlcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_get_toggle_behavior_mask() #0 {
entry:
  %display = alloca %struct._GdkDisplay*, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %0)
  %call2 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call1, i32 3)
  ret i32 %call2
}

declare noalias i8* @g_strdup_printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_modifiers_to_channel_op(i32 %modifiers) #0 {
entry:
  %retval = alloca i32, align 4
  %modifiers.addr = alloca i32, align 4
  %extend_mask = alloca i32, align 4
  %modify_mask = alloca i32, align 4
  store i32 %modifiers, i32* %modifiers.addr, align 4
  %call = call i32 @gimp_get_extend_selection_mask()
  store i32 %call, i32* %extend_mask, align 4
  %call1 = call i32 @gimp_get_modify_selection_mask()
  store i32 %call1, i32* %modify_mask, align 4
  %0 = load i32, i32* %modifiers.addr, align 4
  %1 = load i32, i32* %extend_mask, align 4
  %and = and i32 %0, %1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.5

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %modifiers.addr, align 4
  %3 = load i32, i32* %modify_mask, align 4
  %and2 = and i32 %2, %3
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else.5:                                        ; preds = %entry
  %4 = load i32, i32* %modifiers.addr, align 4
  %5 = load i32, i32* %modify_mask, align 4
  %and6 = and i32 %4, %5
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else.5
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.else, %if.then.4
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_get_extend_selection_mask() #0 {
entry:
  %display = alloca %struct._GdkDisplay*, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %0)
  %call2 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call1, i32 2)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @gimp_get_modify_selection_mask() #0 {
entry:
  %display = alloca %struct._GdkDisplay*, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %0)
  %call2 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call1, i32 3)
  ret i32 %call2
}

declare %struct._GdkDisplay* @gdk_display_get_default() #3

declare void @gdk_keymap_add_virtual_modifiers(%struct._GdkKeymap*, i32*) #3

declare %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay*) #3

declare i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_get_constrain_behavior_mask() #0 {
entry:
  %display = alloca %struct._GdkDisplay*, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %0)
  %call2 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call1, i32 3)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define i32 @gimp_get_all_modifiers_mask() #0 {
entry:
  %display = alloca %struct._GdkDisplay*, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %0)
  %call2 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call1, i32 0)
  %or = or i32 13, %call2
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call3 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %1)
  %call4 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call3, i32 2)
  %or5 = or i32 %or, %call4
  %2 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call6 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %2)
  %call7 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call6, i32 3)
  %or8 = or i32 %or5, %call7
  ret i32 %or8
}

; Function Attrs: nounwind uwtable
define void @gimp_get_screen_resolution(%struct._GdkScreen* %screen, double* %xres, double* %yres) #0 {
entry:
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %xres.addr = alloca double*, align 8
  %yres.addr = alloca double*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %width_mm = alloca i32, align 4
  %height_mm = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store double* %xres, double** %xres.addr, align 8
  store double* %yres, double** %yres.addr, align 8
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %y, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %cmp = icmp eq %struct._GdkScreen* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %2 = bitcast %struct._GdkScreen* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_screen_get_type() #6
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_get_screen_resolution, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load double*, double** %xres.addr, align 8
  %cmp13 = icmp ne double* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_get_screen_resolution, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load double*, double** %yres.addr, align 8
  %cmp19 = icmp ne double* %15, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_get_screen_resolution, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %16 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %tobool24 = icmp ne %struct._GdkScreen* %16, null
  br i1 %tobool24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %do.end.23
  %call26 = call %struct._GdkScreen* @gdk_screen_get_default()
  store %struct._GdkScreen* %call26, %struct._GdkScreen** %screen.addr, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.23
  %17 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call28 = call i32 @gdk_screen_get_width(%struct._GdkScreen* %17)
  store i32 %call28, i32* %width, align 4
  %18 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call29 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %18)
  store i32 %call29, i32* %height, align 4
  %19 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call30 = call i32 @gdk_screen_get_width_mm(%struct._GdkScreen* %19)
  store i32 %call30, i32* %width_mm, align 4
  %20 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call31 = call i32 @gdk_screen_get_height_mm(%struct._GdkScreen* %20)
  store i32 %call31, i32* %height_mm, align 4
  %21 = load i32, i32* %width_mm, align 4
  %cmp32 = icmp sgt i32 %21, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.41

land.lhs.true.33:                                 ; preds = %if.end.27
  %22 = load i32, i32* %height_mm, align 4
  %cmp34 = icmp sgt i32 %22, 0
  br i1 %cmp34, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %land.lhs.true.33
  %23 = load i32, i32* %width, align 4
  %conv = sitofp i32 %23 to double
  %mul = fmul double %conv, 2.540000e+01
  %24 = load i32, i32* %width_mm, align 4
  %conv36 = sitofp i32 %24 to double
  %div = fdiv double %mul, %conv36
  store double %div, double* %x, align 8
  %25 = load i32, i32* %height, align 4
  %conv37 = sitofp i32 %25 to double
  %mul38 = fmul double %conv37, 2.540000e+01
  %26 = load i32, i32* %height_mm, align 4
  %conv39 = sitofp i32 %26 to double
  %div40 = fdiv double %mul38, %conv39
  store double %div40, double* %y, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.35, %land.lhs.true.33, %if.end.27
  %27 = load double, double* %x, align 8
  %cmp42 = fcmp olt double %27, 5.000000e-03
  br i1 %cmp42, label %if.then.53, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.41
  %28 = load double, double* %x, align 8
  %cmp45 = fcmp ogt double %28, 6.553600e+04
  br i1 %cmp45, label %if.then.53, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.44
  %29 = load double, double* %y, align 8
  %cmp48 = fcmp olt double %29, 5.000000e-03
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.47
  %30 = load double, double* %y, align 8
  %cmp51 = fcmp ogt double %30, 6.553600e+04
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.47, %lor.lhs.false.44, %if.end.41
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.29, i32 0, i32 0))
  store double 9.600000e+01, double* %x, align 8
  store double 9.600000e+01, double* %y, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %lor.lhs.false.50
  %31 = load double, double* %x, align 8
  %add = fadd double %31, 5.000000e-01
  %conv55 = fptosi double %add to i32
  %conv56 = sitofp i32 %conv55 to double
  %32 = load double*, double** %xres.addr, align 8
  store double %conv56, double* %32, align 8
  %33 = load double, double* %y, align 8
  %add57 = fadd double %33, 5.000000e-01
  %conv58 = fptosi double %add57 to i32
  %conv59 = sitofp i32 %conv58 to double
  %34 = load double*, double** %yres.addr, align 8
  store double %conv59, double* %34, align 8
  br label %return

return:                                           ; preds = %if.end.54, %if.else.21, %if.else.15, %if.else.10
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gdk_screen_get_type() #1

declare %struct._GdkScreen* @gdk_screen_get_default() #3

declare i32 @gdk_screen_get_width(%struct._GdkScreen*) #3

declare i32 @gdk_screen_get_height(%struct._GdkScreen*) #3

declare i32 @gdk_screen_get_width_mm(%struct._GdkScreen*) #3

declare i32 @gdk_screen_get_height_mm(%struct._GdkScreen*) #3

; Function Attrs: nounwind uwtable
define void @gimp_rgb_get_gdk_color(%struct._GimpRGB* %rgb, %struct._GdkColor* %gdk_color) #0 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %gdk_color.addr = alloca %struct._GdkColor*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GdkColor* %gdk_color, %struct._GdkColor** %gdk_color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_rgb_get_gdk_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %cmp2 = icmp ne %struct._GdkColor* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_rgb_get_gdk_color, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %2, i8* %r, i8* %g, i8* %b)
  %3 = load i8, i8* %r, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 8
  %4 = load i8, i8* %r, align 1
  %conv7 = zext i8 %4 to i32
  %or = or i32 %shl, %conv7
  %conv8 = trunc i32 %or to i16
  %5 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %5, i32 0, i32 1
  store i16 %conv8, i16* %red, align 2
  %6 = load i8, i8* %g, align 1
  %conv9 = zext i8 %6 to i32
  %shl10 = shl i32 %conv9, 8
  %7 = load i8, i8* %g, align 1
  %conv11 = zext i8 %7 to i32
  %or12 = or i32 %shl10, %conv11
  %conv13 = trunc i32 %or12 to i16
  %8 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %8, i32 0, i32 2
  store i16 %conv13, i16* %green, align 2
  %9 = load i8, i8* %b, align 1
  %conv14 = zext i8 %9 to i32
  %shl15 = shl i32 %conv14, 8
  %10 = load i8, i8* %b, align 1
  %conv16 = zext i8 %10 to i32
  %or17 = or i32 %shl15, %conv16
  %conv18 = trunc i32 %or17 to i16
  %11 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %11, i32 0, i32 3
  store i16 %conv18, i16* %blue, align 2
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_rgb_set_gdk_color(%struct._GimpRGB* %rgb, %struct._GdkColor* %gdk_color) #0 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %gdk_color.addr = alloca %struct._GdkColor*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GdkColor* %gdk_color, %struct._GdkColor** %gdk_color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_rgb_set_gdk_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %cmp2 = icmp ne %struct._GdkColor* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_rgb_set_gdk_color, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %2, i32 0, i32 1
  %3 = load i16, i16* %red, align 2
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 8
  %conv7 = trunc i32 %shr to i8
  store i8 %conv7, i8* %r, align 1
  %4 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %4, i32 0, i32 2
  %5 = load i16, i16* %green, align 2
  %conv8 = zext i16 %5 to i32
  %shr9 = ashr i32 %conv8, 8
  %conv10 = trunc i32 %shr9 to i8
  store i8 %conv10, i8* %g, align 1
  %6 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color.addr, align 8
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %6, i32 0, i32 3
  %7 = load i16, i16* %blue, align 2
  %conv11 = zext i16 %7 to i32
  %shr12 = ashr i32 %conv11, 8
  %conv13 = trunc i32 %shr12 to i8
  store i8 %conv13, i8* %b, align 1
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %9 = load i8, i8* %r, align 1
  %10 = load i8, i8* %g, align 1
  %11 = load i8, i8* %b, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %8, i8 zeroext %9, i8 zeroext %10, i8 zeroext %11)
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #3

; Function Attrs: nounwind uwtable
define void @gimp_window_set_hint(%struct._GtkWindow* %window, i32 %hint) #0 {
entry:
  %window.addr = alloca %struct._GtkWindow*, align 8
  %hint.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  store i32 %hint, i32* %hint.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %1 = bitcast %struct._GtkWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_window_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_window_set_hint, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %hint.addr, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %do.end
  %14 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_set_type_hint(%struct._GtkWindow* %14, i32 0)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  %15 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_set_type_hint(%struct._GtkWindow* %15, i32 5)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  %16 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_set_keep_above(%struct._GtkWindow* %16, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %do.end, %sw.bb.12, %sw.bb.11, %sw.bb
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @gtk_window_set_type_hint(%struct._GtkWindow*, i32) #3

declare void @gtk_window_set_keep_above(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_window_get_native_id(%struct._GtkWindow* %window) #0 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GtkWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %1 = bitcast %struct._GtkWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_window_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_window_get_native_id, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %tobool11 = icmp ne %struct._GtkWindow* %13, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.22

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %15 = bitcast %struct._GtkWindow* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  %call15 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %16)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %18 = bitcast %struct._GtkWindow* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  %call20 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %19)
  %call21 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call20)
  %conv = trunc i64 %call21 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.12, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.17, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable*) #3

; Function Attrs: nounwind uwtable
define void @gimp_window_set_transient_for(%struct._GtkWindow* %window, i32 %parent_ID) #0 {
entry:
  %window.addr = alloca %struct._GtkWindow*, align 8
  %parent_ID.addr = alloca i32, align 4
  %parent = alloca %struct._GdkDrawable*, align 8
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  store i32 %parent_ID, i32* %parent_ID.addr, align 4
  %0 = load i32, i32* %parent_ID.addr, align 4
  %call = call %struct._GdkDrawable* @gimp_get_foreign_window(i32 %0)
  store %struct._GdkDrawable* %call, %struct._GdkDrawable** %parent, align 8
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent, align 8
  %tobool = icmp ne %struct._GdkDrawable* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %3 = bitcast %struct._GtkWindow* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %5 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %6 = bitcast %struct._GtkWindow* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %7)
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent, align 8
  call void @gdk_window_set_transient_for(%struct._GdkDrawable* %call8, %struct._GdkDrawable* %8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %10 = bitcast %struct._GtkWindow* %9 to i8*
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent, align 8
  %12 = bitcast %struct._GdkDrawable* %11 to i8*
  %call10 = call i64 @g_signal_connect_object(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDrawable*)* @gimp_window_transient_realized to void ()*), i8* %12, i32 0)
  %13 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent, align 8
  %14 = bitcast %struct._GdkDrawable* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GdkDrawable* @gimp_get_foreign_window(i32 %window) #0 {
entry:
  %window.addr = alloca i32, align 4
  store i32 %window, i32* %window.addr, align 4
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  %0 = load i32, i32* %window.addr, align 4
  %conv = zext i32 %0 to i64
  %call1 = call %struct._GdkDrawable* @gdk_x11_window_foreign_new_for_display(%struct._GdkDisplay* %call, i64 %conv)
  ret %struct._GdkDrawable* %call1
}

declare void @gdk_window_set_transient_for(%struct._GdkDrawable*, %struct._GdkDrawable*) #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_window_transient_realized(%struct._GtkWidget* %window, %struct._GdkDrawable* %parent) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  %parent.addr = alloca %struct._GdkDrawable*, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  store %struct._GdkDrawable* %parent, %struct._GdkDrawable** %parent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %call = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %call1 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %1)
  %2 = load %struct._GdkDrawable*, %struct._GdkDrawable** %parent.addr, align 8
  call void @gdk_window_set_transient_for(%struct._GdkDrawable* %call1, %struct._GdkDrawable* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_toggle_button_set_visible(%struct._GtkToggleButton* %toggle, %struct._GtkWidget* %widget) #0 {
entry:
  %toggle.addr = alloca %struct._GtkToggleButton*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GtkToggleButton* %toggle, %struct._GtkToggleButton** %toggle.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %1 = bitcast %struct._GtkToggleButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_toggle_button_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_toggle_button_set_visible, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_toggle_button_set_visible, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %27 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %call39 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %27)
  call void @gtk_widget_set_visible(%struct._GtkWidget* %26, i32 %call39)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #3

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #3

; Function Attrs: nounwind uwtable
define void @gimp_widget_set_accel_help(%struct._GtkWidget* %widget, %struct._GtkAction* %action) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %action.addr = alloca %struct._GtkAction*, align 8
  %accel_closure = alloca %struct._GClosure*, align 8
  %accel_group = alloca %struct._GtkAccelGroup*, align 8
  %tooltip = alloca i8*, align 8
  %help_id = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %call = call %struct._GClosure* @gtk_action_get_accel_closure(%struct._GtkAction* %0)
  store %struct._GClosure* %call, %struct._GClosure** %accel_closure, align 8
  %1 = load %struct._GClosure*, %struct._GClosure** %accel_closure, align 8
  %tobool = icmp ne %struct._GClosure* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %5 = load %struct._GClosure*, %struct._GClosure** %accel_closure, align 8
  %6 = bitcast %struct._GClosure* %5 to i8*
  call void @g_object_set_data(%struct._GObject* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i8* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %10 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %11 = bitcast %struct._GtkAction* %10 to i8*
  call void @g_object_set_data(%struct._GObject* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i8* %11)
  %12 = load %struct._GClosure*, %struct._GClosure** %accel_closure, align 8
  %call3 = call %struct._GtkAccelGroup* @gtk_accel_group_from_accel_closure(%struct._GClosure* %12)
  store %struct._GtkAccelGroup* %call3, %struct._GtkAccelGroup** %accel_group, align 8
  %13 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %14 = bitcast %struct._GtkAccelGroup* %13 to i8*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %call4 = call i64 @g_signal_connect_object(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAccelGroup*, i32, i32, %struct._GClosure*, %struct._GtkWidget*)* @gimp_widget_accel_changed to void ()*), i8* %16, i32 0)
  %17 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %18 = load %struct._GClosure*, %struct._GClosure** %accel_closure, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_widget_accel_changed(%struct._GtkAccelGroup* %17, i32 0, i32 0, %struct._GClosure* %18, %struct._GtkWidget* %19)
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %call5 = call i8* @gtk_action_get_tooltip(%struct._GtkAction* %20)
  store i8* %call5, i8** %tooltip, align 8
  %21 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %22 = bitcast %struct._GtkAction* %21 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i32 @gimp_help_id_quark() #6
  %call8 = call i8* @g_object_get_qdata(%struct._GObject* %23, i32 %call7)
  store i8* %call8, i8** %help_id, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %25 = load i8*, i8** %tooltip, align 8
  %26 = load i8*, i8** %help_id, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %24, i8* %25, i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GClosure* @gtk_action_get_accel_closure(%struct._GtkAction*) #3

declare %struct._GtkAccelGroup* @gtk_accel_group_from_accel_closure(%struct._GClosure*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_widget_accel_changed(%struct._GtkAccelGroup* %accel_group, i32 %unused1, i32 %unused2, %struct._GClosure* %accel_closure, %struct._GtkWidget* %widget) #0 {
entry:
  %accel_group.addr = alloca %struct._GtkAccelGroup*, align 8
  %unused1.addr = alloca i32, align 4
  %unused2.addr = alloca i32, align 4
  %accel_closure.addr = alloca %struct._GClosure*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %widget_closure = alloca %struct._GClosure*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %accel_key = alloca %struct._GtkAccelKey*, align 8
  %tooltip = alloca i8*, align 8
  %help_id = alloca i8*, align 8
  %escaped = alloca i8*, align 8
  %accel = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct._GtkAccelGroup* %accel_group, %struct._GtkAccelGroup** %accel_group.addr, align 8
  store i32 %unused1, i32* %unused1.addr, align 4
  store i32 %unused2, i32* %unused2.addr, align 4
  store %struct._GClosure* %accel_closure, %struct._GClosure** %accel_closure.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GClosure*
  store %struct._GClosure* %3, %struct._GClosure** %widget_closure, align 8
  %4 = load %struct._GClosure*, %struct._GClosure** %accel_closure.addr, align 8
  %5 = load %struct._GClosure*, %struct._GClosure** %widget_closure, align 8
  %cmp = icmp eq %struct._GClosure* %4, %5
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0))
  %9 = bitcast i8* %call3 to %struct._GtkAction*
  store %struct._GtkAction* %9, %struct._GtkAction** %action, align 8
  %10 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call4 = call i8* @gtk_action_get_tooltip(%struct._GtkAction* %10)
  store i8* %call4, i8** %tooltip, align 8
  %11 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %12 = bitcast %struct._GtkAction* %11 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i32 @gimp_help_id_quark() #6
  %call7 = call i8* @g_object_get_qdata(%struct._GObject* %13, i32 %call6)
  store i8* %call7, i8** %help_id, align 8
  %14 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group.addr, align 8
  %15 = load %struct._GClosure*, %struct._GClosure** %accel_closure.addr, align 8
  %16 = bitcast %struct._GClosure* %15 to i8*
  %call8 = call %struct._GtkAccelKey* @gtk_accel_group_find(%struct._GtkAccelGroup* %14, i32 (%struct._GtkAccelKey*, %struct._GClosure*, i8*)* @gimp_widget_accel_find_func, i8* %16)
  store %struct._GtkAccelKey* %call8, %struct._GtkAccelKey** %accel_key, align 8
  %17 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %accel_key, align 8
  %tobool = icmp ne %struct._GtkAccelKey* %17, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %18 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %accel_key, align 8
  %accel_key9 = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %18, i32 0, i32 0
  %19 = load i32, i32* %accel_key9, align 4
  %tobool10 = icmp ne i32 %19, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %20 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %accel_key, align 8
  %accel_flags = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %20, i32 0, i32 2
  %bf.load = load i16, i16* %accel_flags, align 4
  %bf.cast = zext i16 %bf.load to i32
  %and = and i32 %bf.cast, 1
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true.11
  %21 = load i8*, i8** %tooltip, align 8
  %call14 = call i8* @g_markup_escape_text(i8* %21, i64 -1)
  store i8* %call14, i8** %escaped, align 8
  %22 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %accel_key, align 8
  %accel_key15 = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %22, i32 0, i32 0
  %23 = load i32, i32* %accel_key15, align 4
  %24 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %accel_key, align 8
  %accel_mods = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %24, i32 0, i32 1
  %25 = load i32, i32* %accel_mods, align 4
  %call16 = call i8* @gtk_accelerator_get_label(i32 %23, i32 %25)
  store i8* %call16, i8** %accel, align 8
  %26 = load i8*, i8** %escaped, align 8
  %27 = load i8*, i8** %accel, align 8
  %call17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i8* %26, i8* %27)
  store i8* %call17, i8** %tmp, align 8
  %28 = load i8*, i8** %accel, align 8
  call void @g_free(i8* %28)
  %29 = load i8*, i8** %escaped, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %31 = load i8*, i8** %tmp, align 8
  %32 = load i8*, i8** %help_id, align 8
  call void @gimp_help_set_help_data_with_markup(%struct._GtkWidget* %30, i8* %31, i8* %32)
  %33 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %33)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true, %if.then
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %35 = load i8*, i8** %tooltip, align 8
  %36 = load i8*, i8** %help_id, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %34, i8* %35, i8* %36)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  ret void
}

declare i8* @gtk_action_get_tooltip(%struct._GtkAction*) #3

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_help_id_quark() #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_get_message_stock_id(i32 %severity) #0 {
entry:
  %retval = alloca i8*, align 8
  %severity.addr = alloca i32, align 4
  store i32 %severity, i32* %severity.addr, align 4
  %0 = load i32, i32* %severity.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8** %retval
  br label %do.end

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8** %retval
  br label %do.end

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8** %retval
  br label %do.end

sw.epilog:                                        ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 1062, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_get_message_stock_id, i32 0, i32 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8** %retval
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb.1, %sw.bb.2, %do.body
  %1 = load i8*, i8** %retval
  ret i8* %1
}

declare void @g_log(i8*, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @gimp_pango_layout_set_scale(%struct._PangoLayout* %layout, double %scale) #0 {
entry:
  %layout.addr = alloca %struct._PangoLayout*, align 8
  %scale.addr = alloca double, align 8
  %attrs = alloca %struct._PangoAttrList*, align 8
  %attr = alloca %struct._PangoAttribute*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._PangoLayout* %layout, %struct._PangoLayout** %layout.addr, align 8
  store double %scale, double* %scale.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PangoLayout*, %struct._PangoLayout** %layout.addr, align 8
  %1 = bitcast %struct._PangoLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @pango_layout_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pango_layout_set_scale, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call11, %struct._PangoAttrList** %attrs, align 8
  %13 = load double, double* %scale.addr, align 8
  %call12 = call %struct._PangoAttribute* @pango_attr_scale_new(double %13)
  store %struct._PangoAttribute* %call12, %struct._PangoAttribute** %attr, align 8
  %14 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %14, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %15 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %15, i32 0, i32 2
  store i32 -1, i32* %end_index, align 4
  %16 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  %17 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %16, %struct._PangoAttribute* %17)
  %18 = load %struct._PangoLayout*, %struct._PangoLayout** %layout.addr, align 8
  %19 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %18, %struct._PangoAttrList* %19)
  %20 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %20)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @pango_layout_get_type() #1

declare %struct._PangoAttrList* @pango_attr_list_new() #3

declare %struct._PangoAttribute* @pango_attr_scale_new(double) #3

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #3

declare void @pango_layout_set_attributes(%struct._PangoLayout*, %struct._PangoAttrList*) #3

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_pango_layout_set_weight(%struct._PangoLayout* %layout, i32 %weight) #0 {
entry:
  %layout.addr = alloca %struct._PangoLayout*, align 8
  %weight.addr = alloca i32, align 4
  %attrs = alloca %struct._PangoAttrList*, align 8
  %attr = alloca %struct._PangoAttribute*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._PangoLayout* %layout, %struct._PangoLayout** %layout.addr, align 8
  store i32 %weight, i32* %weight.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PangoLayout*, %struct._PangoLayout** %layout.addr, align 8
  %1 = bitcast %struct._PangoLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @pango_layout_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pango_layout_set_weight, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call11, %struct._PangoAttrList** %attrs, align 8
  %13 = load i32, i32* %weight.addr, align 4
  %call12 = call %struct._PangoAttribute* @pango_attr_weight_new(i32 %13)
  store %struct._PangoAttribute* %call12, %struct._PangoAttribute** %attr, align 8
  %14 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %14, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %15 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %15, i32 0, i32 2
  store i32 -1, i32* %end_index, align 4
  %16 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  %17 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %16, %struct._PangoAttribute* %17)
  %18 = load %struct._PangoLayout*, %struct._PangoLayout** %layout.addr, align 8
  %19 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %18, %struct._PangoAttrList* %19)
  %20 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %20)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare %struct._PangoAttribute* @pango_attr_weight_new(i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_highlight_widget(%struct._GtkWidget* %widget, i32 %highlight) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %highlight.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %highlight, i32* %highlight.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_highlight_widget, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %highlight.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_drag_highlight(%struct._GtkWidget* %14)
  br label %if.end.14

if.else.13:                                       ; preds = %do.end
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_drag_unhighlight(%struct._GtkWidget* %15)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.else.13, %if.then.12
  ret void
}

declare void @gtk_drag_highlight(%struct._GtkWidget*) #3

declare void @gtk_drag_unhighlight(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dock_with_window_new(%struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, i32 %toolbox) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %toolbox.addr = alloca i32, align 4
  %dock_window = alloca %struct._GtkWidget*, align 8
  %dock_container = alloca %struct._GimpDockContainer*, align 8
  %dock = alloca %struct._GtkWidget*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store i32 %toolbox, i32* %toolbox.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDialogFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dialog_factory_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dock_with_window_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %14 = bitcast %struct._GdkScreen* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gdk_screen_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dock_with_window_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %27 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %28 = load i32, i32* %toolbox.addr, align 4
  %tobool39 = icmp ne i32 %28, 0
  %cond = select i1 %tobool39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0)
  %call40 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %26, %struct._GdkScreen* %27, %struct._GimpUIManager* null, i8* %cond, i32 -1, i32 0)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %dock_window, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_dock_container_interface_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call41)
  %31 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpDockContainer*
  store %struct._GimpDockContainer* %31, %struct._GimpDockContainer** %dock_container, align 8
  %32 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container, align 8
  %call43 = call %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer* %32)
  store %struct._GimpUIManager* %call43, %struct._GimpUIManager** %ui_manager, align 8
  %33 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %34 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %35 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %36 = load i32, i32* %toolbox.addr, align 4
  %tobool44 = icmp ne i32 %36, 0
  %cond45 = select i1 %tobool44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0)
  %call46 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %33, %struct._GdkScreen* %34, %struct._GimpUIManager* %35, i8* %cond45, i32 -1, i32 0)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %dock, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %tobool47 = icmp ne %struct._GtkWidget* %37, null
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %do.end.38
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_dock_window_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call49)
  %40 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDockWindow*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_dock_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call51)
  %43 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDock*
  call void @gimp_dock_window_add_dock(%struct._GimpDockWindow* %40, %struct._GimpDock* %43, i32 -1)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %do.end.38
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  store %struct._GtkWidget* %44, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.else.36, %if.else.9
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %45
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #1

declare %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer*) #3

declare void @gimp_dock_window_add_dock(%struct._GimpDockWindow*, %struct._GimpDock*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_tools_get_tool_options_gui(%struct._GimpToolOptions* %tool_options) #0 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %3
}

; Function Attrs: nounwind uwtable
define void @gimp_tools_set_tool_options_gui(%struct._GimpToolOptions* %tool_options, %struct._GtkWidget* %widget) #0 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  %cond = select i1 %tobool, void (i8*)* @g_object_unref, void (i8*)* null
  call void @g_object_set_data_full(%struct._GObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0), i8* %4, void (i8*)* %cond)
  ret void
}

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define void @gimp_widget_flush_expose(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_widget_flush_expose, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end
  br label %return

if.end.14:                                        ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call15 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %14)
  call void @gdk_window_process_updates(%struct._GdkDrawable* %call15, i32 0)
  call void @gdk_flush()
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  ret void
}

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #3

declare void @gdk_window_process_updates(%struct._GdkDrawable*, i32) #3

declare void @gdk_flush() #3

; Function Attrs: nounwind uwtable
define i8* @gimp_print_event(%union._GdkEvent* %event) #0 {
entry:
  %event.addr = alloca %union._GdkEvent*, align 8
  %str = alloca i8*, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.1
    i32 20, label %sw.bb.3
    i32 21, label %sw.bb.5
    i32 12, label %sw.bb.7
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.15
    i32 6, label %sw.bb.23
    i32 7, label %sw.bb.31
    i32 31, label %sw.bb.39
    i32 3, label %sw.bb.41
    i32 8, label %sw.bb.47
    i32 9, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %entry
  %call = call noalias i8* @g_strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0))
  store i8* %call, i8** %str, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %call2 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0))
  store i8* %call2, i8** %str, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %call4 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0))
  store i8* %call4, i8** %str, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %call6 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0))
  store i8* %call6, i8** %str, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %focus_change = bitcast %union._GdkEvent* %2 to %struct._GdkEventFocus*
  %in = getelementptr inbounds %struct._GdkEventFocus, %struct._GdkEventFocus* %focus_change, i32 0, i32 3
  %3 = load i16, i16* %in, align 2
  %tobool = icmp ne i16 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.7
  %call8 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0))
  store i8* %call8, i8** %str, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.7
  %call9 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0))
  store i8* %call9, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %4 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button = bitcast %union._GdkEvent* %4 to %struct._GdkEventButton*
  %button11 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button, i32 0, i32 8
  %5 = load i32, i32* %button11, align 4
  %6 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button12 = bitcast %union._GdkEvent* %6 to %struct._GdkEventButton*
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button12, i32 0, i32 4
  %7 = load double, double* %x, align 8
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button13 = bitcast %union._GdkEvent* %8 to %struct._GdkEventButton*
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button13, i32 0, i32 5
  %9 = load double, double* %y, align 8
  %call14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i32 %5, double %7, double %9)
  store i8* %call14, i8** %str, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %10 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button16 = bitcast %union._GdkEvent* %10 to %struct._GdkEventButton*
  %button17 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button16, i32 0, i32 8
  %11 = load i32, i32* %button17, align 4
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button18 = bitcast %union._GdkEvent* %12 to %struct._GdkEventButton*
  %x19 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button18, i32 0, i32 4
  %13 = load double, double* %x19, align 8
  %14 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button20 = bitcast %union._GdkEvent* %14 to %struct._GdkEventButton*
  %y21 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button20, i32 0, i32 5
  %15 = load double, double* %y21, align 8
  %call22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i32 0, i32 0), i32 %11, double %13, double %15)
  store i8* %call22, i8** %str, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %16 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button24 = bitcast %union._GdkEvent* %16 to %struct._GdkEventButton*
  %button25 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button24, i32 0, i32 8
  %17 = load i32, i32* %button25, align 4
  %18 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button26 = bitcast %union._GdkEvent* %18 to %struct._GdkEventButton*
  %x27 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button26, i32 0, i32 4
  %19 = load double, double* %x27, align 8
  %20 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button28 = bitcast %union._GdkEvent* %20 to %struct._GdkEventButton*
  %y29 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button28, i32 0, i32 5
  %21 = load double, double* %y29, align 8
  %call30 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i32 0, i32 0), i32 %17, double %19, double %21)
  store i8* %call30, i8** %str, align 8
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %22 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button32 = bitcast %union._GdkEvent* %22 to %struct._GdkEventButton*
  %button33 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button32, i32 0, i32 8
  %23 = load i32, i32* %button33, align 4
  %24 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button34 = bitcast %union._GdkEvent* %24 to %struct._GdkEventButton*
  %x35 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button34, i32 0, i32 4
  %25 = load double, double* %x35, align 8
  %26 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button36 = bitcast %union._GdkEvent* %26 to %struct._GdkEventButton*
  %y37 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button36, i32 0, i32 5
  %27 = load double, double* %y37, align 8
  %call38 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i32 %23, double %25, double %27)
  store i8* %call38, i8** %str, align 8
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %28 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %scroll = bitcast %union._GdkEvent* %28 to %struct._GdkEventScroll*
  %direction = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %scroll, i32 0, i32 7
  %29 = load i32, i32* %direction, align 4
  %call40 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i32 %29)
  store i8* %call40, i8** %str, align 8
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %30 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion = bitcast %union._GdkEvent* %30 to %struct._GdkEventMotion*
  %x42 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion, i32 0, i32 4
  %31 = load double, double* %x42, align 8
  %32 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion43 = bitcast %union._GdkEvent* %32 to %struct._GdkEventMotion*
  %y44 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion43, i32 0, i32 5
  %33 = load double, double* %y44, align 8
  %34 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion45 = bitcast %union._GdkEvent* %34 to %struct._GdkEventMotion*
  %time = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion45, i32 0, i32 3
  %35 = load i32, i32* %time, align 4
  %call46 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0), double %31, double %33, i32 %35)
  store i8* %call46, i8** %str, align 8
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  %36 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %key = bitcast %union._GdkEvent* %36 to %struct._GdkEventKey*
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %key, i32 0, i32 5
  %37 = load i32, i32* %keyval, align 4
  %38 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %key48 = bitcast %union._GdkEvent* %38 to %struct._GdkEventKey*
  %keyval49 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %key48, i32 0, i32 5
  %39 = load i32, i32* %keyval49, align 4
  %call50 = call i8* @gdk_keyval_name(i32 %39) #6
  %tobool51 = icmp ne i8* %call50, null
  br i1 %tobool51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.47
  %40 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %key52 = bitcast %union._GdkEvent* %40 to %struct._GdkEventKey*
  %keyval53 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %key52, i32 0, i32 5
  %41 = load i32, i32* %keyval53, align 4
  %call54 = call i8* @gdk_keyval_name(i32 %41) #6
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call54, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), %cond.false ]
  %call55 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0), i32 %37, i8* %cond)
  store i8* %call55, i8** %str, align 8
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %42 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %key57 = bitcast %union._GdkEvent* %42 to %struct._GdkEventKey*
  %keyval58 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %key57, i32 0, i32 5
  %43 = load i32, i32* %keyval58, align 4
  %44 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %key59 = bitcast %union._GdkEvent* %44 to %struct._GdkEventKey*
  %keyval60 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %key59, i32 0, i32 5
  %45 = load i32, i32* %keyval60, align 4
  %call61 = call i8* @gdk_keyval_name(i32 %45) #6
  %tobool62 = icmp ne i8* %call61, null
  br i1 %tobool62, label %cond.true.63, label %cond.false.67

cond.true.63:                                     ; preds = %sw.bb.56
  %46 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %key64 = bitcast %union._GdkEvent* %46 to %struct._GdkEventKey*
  %keyval65 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %key64, i32 0, i32 5
  %47 = load i32, i32* %keyval65, align 4
  %call66 = call i8* @gdk_keyval_name(i32 %47) #6
  br label %cond.end.68

cond.false.67:                                    ; preds = %sw.bb.56
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.63
  %cond69 = phi i8* [ %call66, %cond.true.63 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), %cond.false.67 ]
  %call70 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), i32 %43, i8* %cond69)
  store i8* %call70, i8** %str, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %48 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type71 = bitcast %union._GdkEvent* %48 to i32*
  %49 = load i32, i32* %type71, align 4
  %call72 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), i32 %49)
  store i8* %call72, i8** %str, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.68, %cond.end, %sw.bb.41, %sw.bb.39, %sw.bb.31, %sw.bb.23, %sw.bb.15, %sw.bb.10, %if.end, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %50 = load i8*, i8** %str, align 8
  %call73 = call i32 @g_idle_add(i32 (i8*)* @gimp_print_event_free, i8* %50)
  %51 = load i8*, i8** %str, align 8
  ret i8* %51
}

; Function Attrs: nounwind readnone
declare i8* @gdk_keyval_name(i32) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_print_event_free(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  call void @g_free(i8* %0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gimp_session_write_position(%struct._GimpConfigWriter* %writer, i32 %position) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %position.addr = alloca i32, align 4
  %klass = alloca %struct._GimpSessionInfoClass*, align 8
  %pos_to_write = alloca i32, align 4
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  %call = call i64 @gimp_session_info_get_type() #6
  %call1 = call i8* @g_type_class_ref(i64 %call)
  %0 = bitcast i8* %call1 to %struct._GimpSessionInfoClass*
  store %struct._GimpSessionInfoClass* %0, %struct._GimpSessionInfoClass** %klass, align 8
  %1 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass, align 8
  %2 = load i32, i32* %position.addr, align 4
  %call2 = call i32 @gimp_session_info_class_apply_position_accuracy(%struct._GimpSessionInfoClass* %1, i32 %2)
  store i32 %call2, i32* %pos_to_write, align 4
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0))
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %5 = load i32, i32* %pos_to_write, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 %5)
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %6)
  %7 = load %struct._GimpSessionInfoClass*, %struct._GimpSessionInfoClass** %klass, align 8
  %8 = bitcast %struct._GimpSessionInfoClass* %7 to i8*
  call void @g_type_class_unref(i8* %8)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_session_info_get_type() #1

declare i32 @gimp_session_info_class_apply_position_accuracy(%struct._GimpSessionInfoClass*, i32) #3

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #3

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GdkDrawable* @gdk_x11_window_foreign_new_for_display(%struct._GdkDisplay*, i64) #3

declare %struct._GtkAccelKey* @gtk_accel_group_find(%struct._GtkAccelGroup*, i32 (%struct._GtkAccelKey*, %struct._GClosure*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_widget_accel_find_func(%struct._GtkAccelKey* %key, %struct._GClosure* %closure, i8* %data) #0 {
entry:
  %key.addr = alloca %struct._GtkAccelKey*, align 8
  %closure.addr = alloca %struct._GClosure*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAccelKey* %key, %struct._GtkAccelKey** %key.addr, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GClosure*
  %2 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %cmp = icmp eq %struct._GClosure* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8* @g_markup_escape_text(i8*, i64) #3

declare void @gimp_help_set_help_data_with_markup(%struct._GtkWidget*, i8*, i8*) #3

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
