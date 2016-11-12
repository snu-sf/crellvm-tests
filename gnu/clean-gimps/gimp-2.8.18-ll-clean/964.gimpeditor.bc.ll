; ModuleID = './app/widgets/gimpeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
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
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.1 }
%union.anon.1 = type { [5 x i64] }
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
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type { %struct._GimpMenuFactory*, i8*, %struct._GimpUIManager*, i8*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._Gimp = type opaque
%struct._GtkOrientable = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDocked = type opaque
%struct._GimpContext = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpActionGroup = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ExtendedAction = type { i32, %struct._GtkAction* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkActivatable = type opaque
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.0, %struct._GdkDrawable*, i32 }
%union.anon.0 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque

@gimp_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpEditor\00", align 1
@gimp_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_editor_create_menu = private unnamed_addr constant [24 x i8] c"gimp_editor_create_menu\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GIMP_IS_EDITOR (editor)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"menu_identifier != NULL\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@__func__.gimp_editor_popup_menu = private unnamed_addr constant [23 x i8] c"gimp_editor_popup_menu\00", align 1
@__func__.gimp_editor_add_button = private unnamed_addr constant [23 x i8] c"gimp_editor_add_button\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"use-stock\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"extended-clicked\00", align 1
@__func__.gimp_editor_add_stock_box = private unnamed_addr constant [26 x i8] c"gimp_editor_add_stock_box\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"g_type_is_a (enum_type, G_TYPE_ENUM)\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"stock_prefix != NULL\00", align 1
@__func__.gimp_editor_add_action_button = private unnamed_addr constant [30 x i8] c"gimp_editor_add_action_button\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"action_name != NULL\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"editor->priv->ui_manager != NULL\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"group != NULL\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"action != NULL\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\0A<b>\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"</b>  \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"extended-actions\00", align 1
@__func__.gimp_editor_set_show_name = private unnamed_addr constant [26 x i8] c"gimp_editor_set_show_name\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"show-name\00", align 1
@__func__.gimp_editor_set_name = private unnamed_addr constant [21 x i8] c"gimp_editor_set_name\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"(None)\00", align 1
@__func__.gimp_editor_set_box_style = private unnamed_addr constant [26 x i8] c"gimp_editor_set_box_style\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"GTK_IS_BOX (box)\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"button-icon-size\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"button-spacing\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"button-relief\00", align 1
@__func__.gimp_editor_get_ui_manager = private unnamed_addr constant [27 x i8] c"gimp_editor_get_ui_manager\00", align 1
@__func__.gimp_editor_get_button_box = private unnamed_addr constant [27 x i8] c"gimp_editor_get_button_box\00", align 1
@__func__.gimp_editor_get_menu_factory = private unnamed_addr constant [29 x i8] c"gimp_editor_get_menu_factory\00", align 1
@__func__.gimp_editor_get_popup_data = private unnamed_addr constant [27 x i8] c"gimp_editor_get_popup_data\00", align 1
@__func__.gimp_editor_get_ui_path = private unnamed_addr constant [24 x i8] c"gimp_editor_get_ui_path\00", align 1
@gimp_editor_parent_class = internal global i8* null, align 8
@GimpEditor_private_offset = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"popup-data\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"content-spacing\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"gimpeditor.c\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_editor_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpEditor*)* @gimp_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_editor_parent_class, align 8
  %1 = load i32, i32* @GimpEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpEditorClass*
  call void @gimp_editor_class_init(%struct._GimpEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_init(%struct._GimpEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpEditor*, align 8
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_editor_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpEditorPrivate*
  %6 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %6, i32 0, i32 1
  store %struct._GimpEditorPrivate* %5, %struct._GimpEditorPrivate** %priv, align 8
  %7 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpEditor* %7 to i8*
  %9 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %9, i32 0, i32 1
  %10 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv4, align 8
  %popup_data = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %10, i32 0, i32 4
  store i8* %8, i8** %popup_data, align 8
  %11 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %11, i32 0, i32 1
  %12 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv5, align 8
  %show_button_bar = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %12, i32 0, i32 5
  store i32 1, i32* %show_button_bar, align 4
  %call6 = call i64 @gtk_label_get_type() #7
  %call7 = call i8* (i64, i8*, ...) @g_object_new(i64 %call6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), double 5.000000e-01, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 3, i8* null)
  %13 = bitcast i8* %call7 to %struct._GtkWidget*
  %14 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv8 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %14, i32 0, i32 1
  %15 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv8, align 8
  %name_label = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %15, i32 0, i32 6
  store %struct._GtkWidget* %13, %struct._GtkWidget** %name_label, align 8
  %16 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv9 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv9, align 8
  %name_label10 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %17, i32 0, i32 6
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %name_label10, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %20, i32 3, i32 2, i32 -1)
  %21 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpEditor* %21 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call13)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %24 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %24, i32 0, i32 1
  %25 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv15, align 8
  %name_label16 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %25, i32 0, i32 6
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %name_label16, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %26, i32 0, i32 0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %iface, %struct._GimpDockedInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_menu = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %0, i32 0, i32 6
  store %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)* @gimp_editor_get_menu, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)** %get_menu, align 8
  %1 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %has_button_bar = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %1, i32 0, i32 9
  store i32 (%struct._GimpDocked*)* @gimp_editor_has_button_bar, i32 (%struct._GimpDocked*)** %has_button_bar, align 8
  %2 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_show_button_bar = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %2, i32 0, i32 10
  store void (%struct._GimpDocked*, i32)* @gimp_editor_set_show_button_bar, void (%struct._GimpDocked*, i32)** %set_show_button_bar, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_show_button_bar = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 11
  store i32 (%struct._GimpDocked*)* @gimp_editor_get_show_button_bar, i32 (%struct._GimpDocked*)** %get_show_button_bar, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_editor_new() #3 {
entry:
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_editor_create_menu(%struct._GimpEditor* %editor, %struct._GimpMenuFactory* %menu_factory, i8* %menu_identifier, i8* %ui_path, i8* %popup_data) #3 {
entry:
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %menu_identifier.addr = alloca i8*, align 8
  %ui_path.addr = alloca i8*, align 8
  %popup_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store i8* %menu_identifier, i8** %menu_identifier.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  store i8* %popup_data, i8** %popup_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_editor_create_menu, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %14 = bitcast %struct._GimpMenuFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_menu_factory_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_editor_create_menu, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %menu_identifier.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_editor_create_menu, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load i8*, i8** %ui_path.addr, align 8
  %cmp46 = icmp ne i8* %27, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_editor_create_menu, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %28 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %28, i32 0, i32 1
  %29 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %menu_factory51 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %29, i32 0, i32 0
  %30 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory51, align 8
  %tobool52 = icmp ne %struct._GimpMenuFactory* %30, null
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %do.end.50
  %31 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv54 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %31, i32 0, i32 1
  %32 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv54, align 8
  %menu_factory55 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %32, i32 0, i32 0
  %33 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory55, align 8
  %34 = bitcast %struct._GimpMenuFactory* %33 to i8*
  call void @g_object_unref(i8* %34)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %do.end.50
  %35 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %36 = bitcast %struct._GimpMenuFactory* %35 to i8*
  %call57 = call i8* @g_object_ref(i8* %36)
  %37 = bitcast i8* %call57 to %struct._GimpMenuFactory*
  %38 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv58 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %38, i32 0, i32 1
  %39 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv58, align 8
  %menu_factory59 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %39, i32 0, i32 0
  store %struct._GimpMenuFactory* %37, %struct._GimpMenuFactory** %menu_factory59, align 8
  %40 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv60 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %40, i32 0, i32 1
  %41 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv60, align 8
  %ui_manager = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %41, i32 0, i32 2
  %42 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool61 = icmp ne %struct._GimpUIManager* %42, null
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.56
  %43 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv63 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %43, i32 0, i32 1
  %44 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv63, align 8
  %ui_manager64 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %44, i32 0, i32 2
  %45 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager64, align 8
  %46 = bitcast %struct._GimpUIManager* %45 to i8*
  call void @g_object_unref(i8* %46)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.56
  %47 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %48 = load i8*, i8** %menu_identifier.addr, align 8
  %49 = load i8*, i8** %popup_data.addr, align 8
  %call66 = call %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %47, i8* %48, i8* %49, i32 0)
  %50 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv67 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %50, i32 0, i32 1
  %51 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv67, align 8
  %ui_manager68 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %51, i32 0, i32 2
  store %struct._GimpUIManager* %call66, %struct._GimpUIManager** %ui_manager68, align 8
  %52 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv69 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %52, i32 0, i32 1
  %53 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv69, align 8
  %ui_path70 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %53, i32 0, i32 3
  %54 = load i8*, i8** %ui_path70, align 8
  %tobool71 = icmp ne i8* %54, null
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.end.65
  %55 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv73 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %55, i32 0, i32 1
  %56 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv73, align 8
  %ui_path74 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %56, i32 0, i32 3
  %57 = load i8*, i8** %ui_path74, align 8
  call void @g_free(i8* %57)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.end.65
  %58 = load i8*, i8** %ui_path.addr, align 8
  %call76 = call noalias i8* @g_strdup(i8* %58)
  %59 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv77 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %59, i32 0, i32 1
  %60 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv77, align 8
  %ui_path78 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %60, i32 0, i32 3
  store i8* %call76, i8** %ui_path78, align 8
  %61 = load i8*, i8** %popup_data.addr, align 8
  %62 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv79 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %62, i32 0, i32 1
  %63 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv79, align 8
  %popup_data80 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %63, i32 0, i32 4
  store i8* %61, i8** %popup_data80, align 8
  br label %return

return:                                           ; preds = %if.end.75, %if.else.48, %if.else.42, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory*, i8*, i8*, i32) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_editor_popup_menu(%struct._GimpEditor* %editor, void (%struct._GtkMenu*, i32*, i32*, i8*)* %position_func, i8* %position_data) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %position_func.addr = alloca void (%struct._GtkMenu*, i32*, i32*, i8*)*, align 8
  %position_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store void (%struct._GtkMenu*, i32*, i32*, i8*)* %position_func, void (%struct._GtkMenu*, i32*, i32*, i8*)** %position_func.addr, align 8
  store i8* %position_data, i8** %position_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_editor_popup_menu, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %ui_manager = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %14, i32 0, i32 2
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool11 = icmp ne %struct._GimpUIManager* %15, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.25

land.lhs.true.12:                                 ; preds = %do.end
  %16 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv13 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv13, align 8
  %ui_path = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %17, i32 0, i32 3
  %18 = load i8*, i8** %ui_path, align 8
  %tobool14 = icmp ne i8* %18, null
  br i1 %tobool14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %land.lhs.true.12
  %19 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv16 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %19, i32 0, i32 1
  %20 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv16, align 8
  %ui_manager17 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %20, i32 0, i32 2
  %21 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager17, align 8
  %22 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv18 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %22, i32 0, i32 1
  %23 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv18, align 8
  %popup_data = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %23, i32 0, i32 4
  %24 = load i8*, i8** %popup_data, align 8
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %21, i8* %24)
  %25 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv19 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %25, i32 0, i32 1
  %26 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv19, align 8
  %ui_manager20 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %26, i32 0, i32 2
  %27 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager20, align 8
  %28 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv21 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %28, i32 0, i32 1
  %29 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv21, align 8
  %ui_path22 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %29, i32 0, i32 3
  %30 = load i8*, i8** %ui_path22, align 8
  %31 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %32 = bitcast %struct._GimpEditor* %31 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call23)
  %33 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  %34 = load void (%struct._GtkMenu*, i32*, i32*, i8*)*, void (%struct._GtkMenu*, i32*, i32*, i8*)** %position_func.addr, align 8
  %35 = load i8*, i8** %position_data.addr, align 8
  call void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %27, i8* %30, %struct._GtkWidget* %33, void (%struct._GtkMenu*, i32*, i32*, i8*)* %34, i8* %35, void (i8*)* null, i8* null)
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.12, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15, %if.else.9
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare void @gimp_ui_manager_ui_popup(%struct._GimpUIManager*, i8*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*, void (i8*)*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %editor, i8* %stock_id, i8* %tooltip, i8* %help_id, void ()* %callback, void ()* %extended_callback, i8* %callback_data) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %stock_id.addr = alloca i8*, align 8
  %tooltip.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %callback.addr = alloca void ()*, align 8
  %extended_callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %button_icon_size = alloca i32, align 4
  %button_relief = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store void ()* %extended_callback, void ()** %extended_callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_editor_add_button, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_editor_add_button, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %call17 = call i32 @gimp_editor_ensure_button_box(%struct._GimpEditor* %14, i32* %button_relief)
  store i32 %call17, i32* %button_icon_size, align 4
  %call18 = call i64 @gimp_button_get_type() #7
  %call19 = call i8* (i64, i8*, ...) @g_object_new(i64 %call18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  %15 = bitcast i8* %call19 to %struct._GtkWidget*
  store %struct._GtkWidget* %15, %struct._GtkWidget** %button, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_button_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call20)
  %18 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkButton*
  %19 = load i32, i32* %button_relief, align 4
  call void @gtk_button_set_relief(%struct._GtkButton* %18, i32 %19)
  %20 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %20, i32 0, i32 1
  %21 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %button_box = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %21, i32 0, i32 7
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 1, i32 1, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load i8*, i8** %tooltip.addr, align 8
  %tobool24 = icmp ne i8* %27, null
  br i1 %tobool24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.16
  %28 = load i8*, i8** %help_id.addr, align 8
  %tobool25 = icmp ne i8* %28, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %do.end.16
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = load i8*, i8** %tooltip.addr, align 8
  %31 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %29, i8* %30, i8* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %lor.lhs.false
  %32 = load void ()*, void ()** %callback.addr, align 8
  %tobool28 = icmp ne void ()* %32, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load void ()*, void ()** %callback.addr, align 8
  %36 = load i8*, i8** %callback_data.addr, align 8
  %call30 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* %35, i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  %37 = load void ()*, void ()** %extended_callback.addr, align 8
  %tobool32 = icmp ne void ()* %37, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load void ()*, void ()** %extended_callback.addr, align 8
  %41 = load i8*, i8** %callback_data.addr, align 8
  %call34 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void ()* %40, i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  %42 = load i8*, i8** %stock_id.addr, align 8
  %43 = load i32, i32* %button_icon_size, align 4
  %call36 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %42, i32 %43)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %image, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_container_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call37)
  %46 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkContainer*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %46, %struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %49, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.else.14, %if.else.9
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %50
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_editor_ensure_button_box(%struct._GimpEditor* %editor, i32* %button_relief) #3 {
entry:
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %button_relief.addr = alloca i32*, align 8
  %button_icon_size = alloca i32, align 4
  %button_spacing = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store i32* %button_relief, i32** %button_relief.addr, align 8
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %3 = load i32*, i32** %button_relief.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32* %button_icon_size, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32* %button_spacing, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32* %3, i8* null)
  %4 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %button_box = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %5, i32 0, i32 7
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %if.end.22, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %button_spacing, align 4
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %7)
  %8 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %8, i32 0, i32 1
  %9 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv3, align 8
  %button_box4 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %9, i32 0, i32 7
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %button_box4, align 8
  %10 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv5, align 8
  %button_box6 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %11, i32 0, i32 7
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box6, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %14, i32 1)
  %15 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %16 = bitcast %struct._GimpEditor* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %18 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv11, align 8
  %button_box12 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %19, i32 0, i32 7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box12, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %17, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpEditor* %21 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call13)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %24 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %24, i32 0, i32 1
  %25 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv15, align 8
  %button_box16 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %25, i32 0, i32 7
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box16, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %23, %struct._GtkWidget* %26, i32 0)
  %27 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv17 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %27, i32 0, i32 1
  %28 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv17, align 8
  %show_button_bar = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %28, i32 0, i32 5
  %29 = load i32, i32* %show_button_bar, align 4
  %tobool18 = icmp ne i32 %29, 0
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  %30 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv20 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %30, i32 0, i32 1
  %31 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv20, align 8
  %button_box21 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %31, i32 0, i32 7
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box21, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %33 = load i32, i32* %button_icon_size, align 4
  ret i32 %33
}

; Function Attrs: nounwind readnone
declare i64 @gimp_button_get_type() #2

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_editor_add_stock_box(%struct._GimpEditor* %editor, i64 %enum_type, i8* %stock_prefix, void ()* %callback, i8* %callback_data) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %enum_type.addr = alloca i64, align 8
  %stock_prefix.addr = alloca i8*, align 8
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %first_button = alloca %struct._GtkWidget*, align 8
  %button_icon_size = alloca i32, align 4
  %button_relief = alloca i32, align 4
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i8* %stock_prefix, i8** %stock_prefix.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_editor_add_stock_box, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %enum_type.addr, align 8
  %call12 = call i32 @g_type_is_a(i64 %13, i64 48)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_editor_add_stock_box, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load i8*, i8** %stock_prefix.addr, align 8
  %cmp19 = icmp ne i8* %14, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_editor_add_stock_box, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %15 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %call24 = call i32 @gimp_editor_ensure_button_box(%struct._GimpEditor* %15, i32* %button_relief)
  store i32 %call24, i32* %button_icon_size, align 4
  %16 = load i64, i64* %enum_type.addr, align 8
  %17 = load i8*, i8** %stock_prefix.addr, align 8
  %18 = load i32, i32* %button_icon_size, align 4
  %19 = load void ()*, void ()** %callback.addr, align 8
  %20 = load i8*, i8** %callback_data.addr, align 8
  %call25 = call %struct._GtkWidget* @gimp_enum_stock_box_new(i64 %16, i8* %17, i32 %18, void ()* %19, i8* %20, %struct._GtkWidget** %first_button)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %hbox, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call26)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %call28 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %23)
  store %struct._GList* %call28, %struct._GList** %children, align 8
  %24 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %24, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.23
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %25, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GtkWidget*
  store %struct._GtkWidget* %28, %struct._GtkWidget** %button, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call31 = call i8* @g_object_ref(i8* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_button_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call32)
  %33 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkButton*
  %34 = load i32, i32* %button_relief, align 4
  call void @gtk_button_set_relief(%struct._GtkButton* %33, i32 %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call34)
  %37 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %37, %struct._GtkWidget* %38)
  %39 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %39, i32 0, i32 1
  %40 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %button_box = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %40, i32 0, i32 7
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call36)
  %43 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %43, %struct._GtkWidget* %44, i32 1, i32 1, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  call void @g_object_unref(i8* %46)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool38 = icmp ne %struct._GList* %47, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %49, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %call39 = call i8* @g_object_ref_sink(i8* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  call void @g_object_unref(i8* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %first_button, align 8
  store %struct._GtkWidget* %55, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.21, %if.else.15, %if.else.9
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %56
}

declare i32 @g_type_is_a(i64, i64) #1

declare %struct._GtkWidget* @gimp_enum_stock_box_new(i64, i8*, i32, void ()*, i8*, %struct._GtkWidget**) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_object_ref_sink(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor* %editor, i8* %group_name, i8* %action_name, ...) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %group_name.addr = alloca i8*, align 8
  %action_name.addr = alloca i8*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %old_child = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %button_icon_size = alloca i32, align 4
  %button_relief = alloca i32, align 4
  %stock_id = alloca i8*, align 8
  %tooltip = alloca i8*, align 8
  %help_id = alloca i8*, align 8
  %extended = alloca %struct._GList*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %mod_mask = alloca i32, align 4
  %ext = alloca %struct.ExtendedAction*, align 8
  %ext_tooltip = alloca i8*, align 8
  %tmp127 = alloca i8*, align 8
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store i8* %group_name, i8** %group_name.addr, align 8
  store i8* %action_name, i8** %action_name.addr, align 8
  store %struct._GList* null, %struct._GList** %extended, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_editor_add_action_button, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %action_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_editor_add_action_button, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %14, i32 0, i32 1
  %15 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %ui_manager = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %15, i32 0, i32 2
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %cmp18 = icmp ne %struct._GimpUIManager* %16, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_editor_add_action_button, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %17 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv23 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %17, i32 0, i32 1
  %18 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv23, align 8
  %ui_manager24 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %18, i32 0, i32 2
  %19 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager24, align 8
  %20 = load i8*, i8** %group_name.addr, align 8
  %call25 = call %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %19, i8* %20)
  store %struct._GimpActionGroup* %call25, %struct._GimpActionGroup** %group, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.22
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %cmp27 = icmp ne %struct._GimpActionGroup* %21, null
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.30

if.else.29:                                       ; preds = %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_editor_add_action_button, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.30:                                        ; preds = %if.then.28
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %23 = bitcast %struct._GimpActionGroup* %22 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_action_group_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call32)
  %24 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkActionGroup*
  %25 = load i8*, i8** %action_name.addr, align 8
  %call34 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %24, i8* %25)
  store %struct._GtkAction* %call34, %struct._GtkAction** %action, align 8
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.31
  %26 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %cmp36 = icmp ne %struct._GtkAction* %26, null
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_editor_add_action_button, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %27 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %call41 = call i32 @gimp_editor_ensure_button_box(%struct._GimpEditor* %27, i32* %button_relief)
  store i32 %call41, i32* %button_icon_size, align 4
  %28 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %29 = bitcast %struct._GtkAction* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gtk_toggle_action_get_type() #7
  store i64 %call46, i64* %__t45, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %do.end.40
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %do.end.40
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type56, align 8
  %36 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %35, %36
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %38 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #8
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %39 = load i32, i32* %__r48, align 4
  store i32 %39, i32* %tmp63
  %40 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %40, 0
  br i1 %tobool64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.end.62
  %call66 = call %struct._GtkWidget* @gtk_toggle_button_new()
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %button, align 8
  br label %if.end.69

if.else.67:                                       ; preds = %if.end.62
  %call68 = call %struct._GtkWidget* @gimp_button_new()
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %button, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.65
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_button_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call70)
  %43 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkButton*
  %44 = load i32, i32* %button_relief, align 4
  call void @gtk_button_set_relief(%struct._GtkButton* %43, i32 %44)
  %45 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call72 = call i8* @gtk_action_get_stock_id(%struct._GtkAction* %45)
  store i8* %call72, i8** %stock_id, align 8
  %46 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call73 = call i8* @gtk_action_get_tooltip(%struct._GtkAction* %46)
  %call74 = call noalias i8* @g_strdup(i8* %call73)
  store i8* %call74, i8** %tooltip, align 8
  %47 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %48 = bitcast %struct._GtkAction* %47 to %struct._GTypeInstance*
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call75 to %struct._GObject*
  %call76 = call i32 @gimp_help_id_quark() #7
  %call77 = call i8* @g_object_get_qdata(%struct._GObject* %49, i32 %call76)
  store i8* %call77, i8** %help_id, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_bin_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call78)
  %52 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBin*
  %call80 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %52)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %old_child, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %old_child, align 8
  %tobool81 = icmp ne %struct._GtkWidget* %53, null
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.69
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %old_child, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %54)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.69
  %55 = load i8*, i8** %stock_id, align 8
  %56 = load i32, i32* %button_icon_size, align 4
  %call84 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %55, i32 %56)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %image, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_container_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call85)
  %59 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkContainer*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %59, %struct._GtkWidget* %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_activatable_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call87)
  %64 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkActivatable*
  %65 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_activatable_set_related_action(%struct._GtkActivatable* %64, %struct._GtkAction* %65)
  %66 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv89 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %66, i32 0, i32 1
  %67 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv89, align 8
  %button_box = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %67, i32 0, i32 7
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_box_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call90)
  %70 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 1, i32 1, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay92 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay92)
  %arraydecay93 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay93, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.end.83
  %73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay93, i32 0, i32 3
  %reg_save_area = load i8*, i8** %73
  %74 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %75 = bitcast i8* %74 to i8**
  %76 = add i32 %gp_offset, 8
  store i32 %76, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.end.83
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay93, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %77 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %75, %vaarg.in_reg ], [ %77, %vaarg.in_mem ]
  %78 = load i8*, i8** %vaarg.addr
  store i8* %78, i8** %action_name.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.144, %vaarg.end
  %79 = load i8*, i8** %action_name.addr, align 8
  %tobool94 = icmp ne i8* %79, null
  br i1 %tobool94, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay96 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay96, i32 0, i32 0
  %gp_offset98 = load i32, i32* %gp_offset_p97
  %fits_in_gp99 = icmp ule i32 %gp_offset98, 40
  br i1 %fits_in_gp99, label %vaarg.in_reg.100, label %vaarg.in_mem.102

vaarg.in_reg.100:                                 ; preds = %while.body
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay96, i32 0, i32 3
  %reg_save_area101 = load i8*, i8** %80
  %81 = getelementptr i8, i8* %reg_save_area101, i32 %gp_offset98
  %82 = bitcast i8* %81 to i32*
  %83 = add i32 %gp_offset98, 8
  store i32 %83, i32* %gp_offset_p97
  br label %vaarg.end.106

vaarg.in_mem.102:                                 ; preds = %while.body
  %overflow_arg_area_p103 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay96, i32 0, i32 2
  %overflow_arg_area104 = load i8*, i8** %overflow_arg_area_p103
  %84 = bitcast i8* %overflow_arg_area104 to i32*
  %overflow_arg_area.next105 = getelementptr i8, i8* %overflow_arg_area104, i32 8
  store i8* %overflow_arg_area.next105, i8** %overflow_arg_area_p103
  br label %vaarg.end.106

vaarg.end.106:                                    ; preds = %vaarg.in_mem.102, %vaarg.in_reg.100
  %vaarg.addr107 = phi i32* [ %82, %vaarg.in_reg.100 ], [ %84, %vaarg.in_mem.102 ]
  %85 = load i32, i32* %vaarg.addr107
  store i32 %85, i32* %mod_mask, align 4
  %86 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %87 = bitcast %struct._GimpActionGroup* %86 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_action_group_get_type() #7
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call108)
  %88 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkActionGroup*
  %89 = load i8*, i8** %action_name.addr, align 8
  %call110 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %88, i8* %89)
  store %struct._GtkAction* %call110, %struct._GtkAction** %action, align 8
  %90 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool111 = icmp ne %struct._GtkAction* %90, null
  br i1 %tobool111, label %land.lhs.true.112, label %if.end.133

land.lhs.true.112:                                ; preds = %vaarg.end.106
  %91 = load i32, i32* %mod_mask, align 4
  %tobool113 = icmp ne i32 %91, 0
  br i1 %tobool113, label %if.then.114, label %if.end.133

if.then.114:                                      ; preds = %land.lhs.true.112
  %call116 = call noalias i8* @g_slice_alloc(i64 16)
  %92 = bitcast i8* %call116 to %struct.ExtendedAction*
  store %struct.ExtendedAction* %92, %struct.ExtendedAction** %ext, align 8
  %93 = load i32, i32* %mod_mask, align 4
  %94 = load %struct.ExtendedAction*, %struct.ExtendedAction** %ext, align 8
  %mod_mask117 = getelementptr inbounds %struct.ExtendedAction, %struct.ExtendedAction* %94, i32 0, i32 0
  store i32 %93, i32* %mod_mask117, align 4
  %95 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %96 = load %struct.ExtendedAction*, %struct.ExtendedAction** %ext, align 8
  %action118 = getelementptr inbounds %struct.ExtendedAction, %struct.ExtendedAction* %96, i32 0, i32 1
  store %struct._GtkAction* %95, %struct._GtkAction** %action118, align 8
  %97 = load %struct._GList*, %struct._GList** %extended, align 8
  %98 = load %struct.ExtendedAction*, %struct.ExtendedAction** %ext, align 8
  %99 = bitcast %struct.ExtendedAction* %98 to i8*
  %call119 = call %struct._GList* @g_list_prepend(%struct._GList* %97, i8* %99)
  store %struct._GList* %call119, %struct._GList** %extended, align 8
  %100 = load i8*, i8** %tooltip, align 8
  %tobool120 = icmp ne i8* %100, null
  br i1 %tobool120, label %if.then.121, label %if.end.132

if.then.121:                                      ; preds = %if.then.114
  %101 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call123 = call i8* @gtk_action_get_tooltip(%struct._GtkAction* %101)
  store i8* %call123, i8** %ext_tooltip, align 8
  %102 = load i8*, i8** %ext_tooltip, align 8
  %tobool124 = icmp ne i8* %102, null
  br i1 %tobool124, label %if.then.125, label %if.end.131

if.then.125:                                      ; preds = %if.then.121
  %103 = load i8*, i8** %tooltip, align 8
  %104 = load %struct.ExtendedAction*, %struct.ExtendedAction** %ext, align 8
  %mod_mask128 = getelementptr inbounds %struct.ExtendedAction, %struct.ExtendedAction* %104, i32 0, i32 0
  %105 = load i32, i32* %mod_mask128, align 4
  %call129 = call i8* @gimp_get_mod_string(i32 %105)
  %106 = load i8*, i8** %ext_tooltip, align 8
  %call130 = call noalias i8* (i8*, ...) @g_strconcat(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %call129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* %106, i8* null)
  store i8* %call130, i8** %tmp127, align 8
  %107 = load i8*, i8** %tooltip, align 8
  call void @g_free(i8* %107)
  %108 = load i8*, i8** %tmp127, align 8
  store i8* %108, i8** %tooltip, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.125, %if.then.121
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.114
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %land.lhs.true.112, %vaarg.end.106
  %arraydecay134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay134, i32 0, i32 0
  %gp_offset136 = load i32, i32* %gp_offset_p135
  %fits_in_gp137 = icmp ule i32 %gp_offset136, 40
  br i1 %fits_in_gp137, label %vaarg.in_reg.138, label %vaarg.in_mem.140

vaarg.in_reg.138:                                 ; preds = %if.end.133
  %109 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay134, i32 0, i32 3
  %reg_save_area139 = load i8*, i8** %109
  %110 = getelementptr i8, i8* %reg_save_area139, i32 %gp_offset136
  %111 = bitcast i8* %110 to i8**
  %112 = add i32 %gp_offset136, 8
  store i32 %112, i32* %gp_offset_p135
  br label %vaarg.end.144

vaarg.in_mem.140:                                 ; preds = %if.end.133
  %overflow_arg_area_p141 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay134, i32 0, i32 2
  %overflow_arg_area142 = load i8*, i8** %overflow_arg_area_p141
  %113 = bitcast i8* %overflow_arg_area142 to i8**
  %overflow_arg_area.next143 = getelementptr i8, i8* %overflow_arg_area142, i32 8
  store i8* %overflow_arg_area.next143, i8** %overflow_arg_area_p141
  br label %vaarg.end.144

vaarg.end.144:                                    ; preds = %vaarg.in_mem.140, %vaarg.in_reg.138
  %vaarg.addr145 = phi i8** [ %111, %vaarg.in_reg.138 ], [ %113, %vaarg.in_mem.140 ]
  %114 = load i8*, i8** %vaarg.addr145
  store i8* %114, i8** %action_name.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay146 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay146147 = bitcast %struct.__va_list_tag* %arraydecay146 to i8*
  call void @llvm.va_end(i8* %arraydecay146147)
  %115 = load %struct._GList*, %struct._GList** %extended, align 8
  %tobool148 = icmp ne %struct._GList* %115, null
  br i1 %tobool148, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %while.end
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 80)
  %118 = bitcast %struct._GTypeInstance* %call150 to %struct._GObject*
  %119 = load %struct._GList*, %struct._GList** %extended, align 8
  %120 = bitcast %struct._GList* %119 to i8*
  call void @g_object_set_data_full(%struct._GObject* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* %120, void (i8*)* bitcast (void (%struct._GList*)* @gimp_editor_button_extended_actions_free to void (i8*)*))
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %122 = bitcast %struct._GtkWidget* %121 to i8*
  %call151 = call i64 @g_signal_connect_data(i8* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @gimp_editor_button_extended_clicked to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %while.end
  %123 = load i8*, i8** %tooltip, align 8
  %tobool153 = icmp ne i8* %123, null
  br i1 %tobool153, label %if.then.155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.152
  %124 = load i8*, i8** %help_id, align 8
  %tobool154 = icmp ne i8* %124, null
  br i1 %tobool154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %lor.lhs.false, %if.end.152
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %126 = load i8*, i8** %tooltip, align 8
  %127 = load i8*, i8** %help_id, align 8
  call void @gimp_help_set_help_data_with_markup(%struct._GtkWidget* %125, i8* %126, i8* %127)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %lor.lhs.false
  %128 = load i8*, i8** %tooltip, align 8
  call void @g_free(i8* %128)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %129, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.156, %if.else.38, %if.else.29, %if.else.20, %if.else.14, %if.else.9
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %130
}

declare %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager*, i8*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #2

declare %struct._GtkWidget* @gtk_toggle_button_new() #1

declare %struct._GtkWidget* @gimp_button_new() #1

declare i8* @gtk_action_get_stock_id(%struct._GtkAction*) #1

declare i8* @gtk_action_get_tooltip(%struct._GtkAction*) #1

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_help_id_quark() #2

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_activatable_set_related_action(%struct._GtkActivatable*, %struct._GtkAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_activatable_get_type() #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare noalias i8* @g_slice_alloc(i64) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i8* @gimp_get_mod_string(i32) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_button_extended_actions_free(%struct._GList* %actions) #3 {
entry:
  %actions.addr = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GList* %actions, %struct._GList** %actions.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %actions.addr, align 8
  store %struct._GList* %0, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  call void @g_slice_free1(i64 16, i8* %3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %actions.addr, align 8
  call void @g_list_free(%struct._GList* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_button_extended_clicked(%struct._GtkWidget* %button, i32 %mask, i8* %data) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %mask.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %extended = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %ext = alloca %struct.ExtendedAction*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i32 %mask, i32* %mask.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GList*
  store %struct._GList* %3, %struct._GList** %extended, align 8
  %4 = load %struct._GList*, %struct._GList** %extended, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data2, align 8
  %8 = bitcast i8* %7 to %struct.ExtendedAction*
  store %struct.ExtendedAction* %8, %struct.ExtendedAction** %ext, align 8
  %9 = load %struct.ExtendedAction*, %struct.ExtendedAction** %ext, align 8
  %mod_mask = getelementptr inbounds %struct.ExtendedAction, %struct.ExtendedAction* %9, i32 0, i32 0
  %10 = load i32, i32* %mod_mask, align 4
  %11 = load i32, i32* %mask.addr, align 4
  %and = and i32 %10, %11
  %12 = load %struct.ExtendedAction*, %struct.ExtendedAction** %ext, align 8
  %mod_mask3 = getelementptr inbounds %struct.ExtendedAction, %struct.ExtendedAction* %12, i32 0, i32 0
  %13 = load i32, i32* %mod_mask3, align 4
  %cmp = icmp eq i32 %and, %13
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.ExtendedAction*, %struct.ExtendedAction** %ext, align 8
  %action = getelementptr inbounds %struct.ExtendedAction, %struct.ExtendedAction* %14, i32 0, i32 1
  %15 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call4 = call i32 @gtk_action_get_sensitive(%struct._GtkAction* %15)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.ExtendedAction*, %struct.ExtendedAction** %ext, align 8
  %action6 = getelementptr inbounds %struct.ExtendedAction, %struct.ExtendedAction* %16, i32 0, i32 1
  %17 = load %struct._GtkAction*, %struct._GtkAction** %action6, align 8
  call void @gtk_action_activate(%struct._GtkAction* %17)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %18, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @gimp_help_set_help_data_with_markup(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_editor_set_show_name(%struct._GimpEditor* %editor, i32 %show) #3 {
entry:
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %show.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_editor_set_show_name, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpEditor* %13 to i8*
  %15 = load i32, i32* %show.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 %15, i8* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_editor_set_name(%struct._GimpEditor* %editor, i8* %name) #3 {
entry:
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_editor_set_name, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %name_label = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %name_label, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %18 = load i8*, i8** %name.addr, align 8
  %tobool13 = icmp ne i8* %18, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %19 = load i8*, i8** %name.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %19, %cond.true ], [ %call14, %cond.false ]
  call void @gtk_label_set_text(%struct._GtkLabel* %17, i8* %cond)
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  ret void
}

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: nounwind uwtable
define void @gimp_editor_set_box_style(%struct._GimpEditor* %editor, %struct._GtkBox* %box) #3 {
entry:
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %box.addr = alloca %struct._GtkBox*, align 8
  %button_icon_size = alloca i32, align 4
  %button_spacing = alloca i32, align 4
  %button_relief = alloca i32, align 4
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst46 = alloca %struct._GTypeInstance*, align 8
  %__t48 = alloca i64, align 8
  %__r51 = alloca i32, align 4
  %tmp66 = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  %__inst78 = alloca %struct._GTypeInstance*, align 8
  %__t80 = alloca i64, align 8
  %__r83 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  %old_size = alloca i32, align 4
  %stock_id = alloca i8*, align 8
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  store %struct._GtkBox* %box, %struct._GtkBox** %box.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_editor_set_box_style, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %14 = bitcast %struct._GtkBox* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_box_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_editor_set_box_style, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %27 = bitcast %struct._GimpEditor* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_widget_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32* %button_icon_size, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32* %button_spacing, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32* %button_relief, i8* null)
  %29 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %30 = load i32, i32* %button_spacing, align 4
  call void @gtk_box_set_spacing(%struct._GtkBox* %29, i32 %30)
  %31 = load %struct._GtkBox*, %struct._GtkBox** %box.addr, align 8
  %32 = bitcast %struct._GtkBox* %31 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_container_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call41)
  %33 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkContainer*
  %call43 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %33)
  store %struct._GList* %call43, %struct._GList** %children, align 8
  %34 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %34, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.38
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool44 = icmp ne %struct._GList* %35, null
  br i1 %tobool44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data, align 8
  %38 = bitcast i8* %37 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %38, %struct._GTypeInstance** %__inst46, align 8
  %call49 = call i64 @gtk_button_get_type() #7
  store i64 %call49, i64* %__t48, align 8
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst46, align 8
  %tobool52 = icmp ne %struct._GTypeInstance* %39, null
  br i1 %tobool52, label %if.else.54, label %if.then.53

if.then.53:                                       ; preds = %for.body
  store i32 0, i32* %__r51, align 4
  br label %if.end.65

if.else.54:                                       ; preds = %for.body
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst46, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %tobool56 = icmp ne %struct._GTypeClass* %41, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.else.62

land.lhs.true.57:                                 ; preds = %if.else.54
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst46, align 8
  %g_class58 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class58, align 8
  %g_type59 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type59, align 8
  %45 = load i64, i64* %__t48, align 8
  %cmp60 = icmp eq i64 %44, %45
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %land.lhs.true.57
  store i32 1, i32* %__r51, align 4
  br label %if.end.64

if.else.62:                                       ; preds = %land.lhs.true.57, %if.else.54
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst46, align 8
  %47 = load i64, i64* %__t48, align 8
  %call63 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %46, i64 %47) #8
  store i32 %call63, i32* %__r51, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.53
  %48 = load i32, i32* %__r51, align 4
  store i32 %48, i32* %tmp66
  %49 = load i32, i32* %tmp66
  %tobool67 = icmp ne i32 %49, 0
  br i1 %tobool67, label %if.then.68, label %if.end.111

if.then.68:                                       ; preds = %if.end.65
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %data70 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 0
  %51 = load i8*, i8** %data70, align 8
  %52 = bitcast i8* %51 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_button_get_type() #7
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call71)
  %53 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkButton*
  %54 = load i32, i32* %button_relief, align 4
  call void @gtk_button_set_relief(%struct._GtkButton* %53, i32 %54)
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %data73 = getelementptr inbounds %struct._GList, %struct._GList* %55, i32 0, i32 0
  %56 = load i8*, i8** %data73, align 8
  %57 = bitcast i8* %56 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_bin_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call74)
  %58 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBin*
  %call76 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %58)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %child, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %60, %struct._GTypeInstance** %__inst78, align 8
  %call81 = call i64 @gtk_image_get_type() #7
  store i64 %call81, i64* %__t80, align 8
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %tobool84 = icmp ne %struct._GTypeInstance* %61, null
  br i1 %tobool84, label %if.else.86, label %if.then.85

if.then.85:                                       ; preds = %if.then.68
  store i32 0, i32* %__r83, align 4
  br label %if.end.97

if.else.86:                                       ; preds = %if.then.68
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %tobool88 = icmp ne %struct._GTypeClass* %63, null
  br i1 %tobool88, label %land.lhs.true.89, label %if.else.94

land.lhs.true.89:                                 ; preds = %if.else.86
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %g_class90 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %64, i32 0, i32 0
  %65 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class90, align 8
  %g_type91 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %65, i32 0, i32 0
  %66 = load i64, i64* %g_type91, align 8
  %67 = load i64, i64* %__t80, align 8
  %cmp92 = icmp eq i64 %66, %67
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %land.lhs.true.89
  store i32 1, i32* %__r83, align 4
  br label %if.end.96

if.else.94:                                       ; preds = %land.lhs.true.89, %if.else.86
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %69 = load i64, i64* %__t80, align 8
  %call95 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %68, i64 %69) #8
  store i32 %call95, i32* %__r83, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.85
  %70 = load i32, i32* %__r83, align 4
  store i32 %70, i32* %tmp98
  %71 = load i32, i32* %tmp98
  %tobool99 = icmp ne i32 %71, 0
  br i1 %tobool99, label %if.then.100, label %if.end.110

if.then.100:                                      ; preds = %if.end.97
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_image_get_type() #7
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call103)
  %74 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkImage*
  call void @gtk_image_get_stock(%struct._GtkImage* %74, i8** %stock_id, i32* %old_size)
  %75 = load i32, i32* %button_icon_size, align 4
  %76 = load i32, i32* %old_size, align 4
  %cmp105 = icmp ne i32 %75, %76
  br i1 %cmp105, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %if.then.100
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_image_get_type() #7
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call107)
  %79 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkImage*
  %80 = load i8*, i8** %stock_id, align 8
  %81 = load i32, i32* %button_icon_size, align 4
  call void @gtk_image_set_from_stock(%struct._GtkImage* %79, i8* %80, i32 %81)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %if.then.100
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.97
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.65
  br label %for.inc

for.inc:                                          ; preds = %if.end.111
  %82 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool112 = icmp ne %struct._GList* %82, null
  br i1 %tobool112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %83 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %83, i32 0, i32 1
  %84 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %84, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %85)
  br label %return

return:                                           ; preds = %for.end, %if.else.36, %if.else.9
  ret void
}

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

declare void @gtk_image_get_stock(%struct._GtkImage*, i8**, i32*) #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_editor_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %ui_manager = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %14, i32 0, i32 2
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  store %struct._GimpUIManager* %15, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %16
}

; Function Attrs: nounwind uwtable
define %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GtkBox*, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_editor_get_button_box, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkBox* null, %struct._GtkBox** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %button_box = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %14, i32 0, i32 7
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  store %struct._GtkBox* %17, %struct._GtkBox** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GtkBox*, %struct._GtkBox** %retval
  ret %struct._GtkBox* %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpMenuFactory* @gimp_editor_get_menu_factory(%struct._GimpEditor* %editor) #3 {
entry:
  %retval = alloca %struct._GimpMenuFactory*, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_editor_get_menu_factory, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpMenuFactory* null, %struct._GimpMenuFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %menu_factory = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  store %struct._GimpMenuFactory* %15, %struct._GimpMenuFactory** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %retval
  ret %struct._GimpMenuFactory* %16
}

; Function Attrs: nounwind uwtable
define i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %editor) #3 {
entry:
  %retval = alloca i8**, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_editor_get_popup_data, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %popup_data = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %14, i32 0, i32 4
  %15 = load i8*, i8** %popup_data, align 8
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i8**, i8*** %retval
  ret i8** %17
}

; Function Attrs: nounwind uwtable
define i8* @gimp_editor_get_ui_path(%struct._GimpEditor* %editor) #3 {
entry:
  %retval = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpEditor* %editor, %struct._GimpEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_editor_get_ui_path, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %ui_path = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %14, i32 0, i32 3
  %15 = load i8*, i8** %ui_path, align 8
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i8*, i8** %retval
  ret i8* %16
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_class_init(%struct._GimpEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpEditorClass* %klass, %struct._GimpEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpEditorClass*, %struct._GimpEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpEditorClass*, %struct._GimpEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_editor_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_menu_factory_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 4, %struct._GParamSpec* %call7)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 5, %struct._GParamSpec* %call8)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, i8* null, i32 230)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 6, %struct._GParamSpec* %call9)
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 2, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %17, %struct._GParamSpec* %call10)
  %18 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 2, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %18, %struct._GParamSpec* %call11)
  %19 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call12 = call i64 @gtk_icon_size_get_type() #7
  %call13 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, i64 %call12, i32 1, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %19, %struct._GParamSpec* %call13)
  %20 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call14 = call i64 @gtk_relief_style_get_type() #7
  %call15 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, i64 %call14, i32 2, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %20, %struct._GParamSpec* %call15)
  %21 = load %struct._GimpEditorClass*, %struct._GimpEditorClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpEditorClass* %21 to i8*
  call void @g_type_class_add_private(i8* %22, i64 64)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %popup_data = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %13, i32 0, i32 4
  %14 = load i8*, i8** %popup_data, align 8
  %tobool5 = icmp ne i8* %14, null
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %15 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %16 = bitcast %struct._GimpEditor* %15 to i8*
  %17 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv7 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %17, i32 0, i32 1
  %18 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv7, align 8
  %popup_data8 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %18, i32 0, i32 4
  store i8* %16, i8** %popup_data8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %19 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv10 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %19, i32 0, i32 1
  %20 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv10, align 8
  %menu_factory = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %20, i32 0, i32 0
  %21 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %tobool11 = icmp ne %struct._GimpMenuFactory* %21, null
  br i1 %tobool11, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.9
  %22 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv12 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %22, i32 0, i32 1
  %23 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv12, align 8
  %menu_identifier = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %23, i32 0, i32 1
  %24 = load i8*, i8** %menu_identifier, align 8
  %tobool13 = icmp ne i8* %24, null
  br i1 %tobool13, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %land.lhs.true
  %25 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv15 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %25, i32 0, i32 1
  %26 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv15, align 8
  %menu_factory16 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %26, i32 0, i32 0
  %27 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory16, align 8
  %28 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv17 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %28, i32 0, i32 1
  %29 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv17, align 8
  %menu_identifier18 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %29, i32 0, i32 1
  %30 = load i8*, i8** %menu_identifier18, align 8
  %31 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv19 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %31, i32 0, i32 1
  %32 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv19, align 8
  %popup_data20 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %32, i32 0, i32 4
  %33 = load i8*, i8** %popup_data20, align 8
  %call21 = call %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %27, i8* %30, i8* %33, i32 0)
  %34 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv22 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %34, i32 0, i32 1
  %35 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv22, align 8
  %ui_manager = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %35, i32 0, i32 2
  store %struct._GimpUIManager* %call21, %struct._GimpUIManager** %ui_manager, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %menu_factory = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %4, i32 0, i32 0
  %5 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %tobool = icmp ne %struct._GimpMenuFactory* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv2 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv2, align 8
  %menu_factory3 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory3, align 8
  %9 = bitcast %struct._GimpMenuFactory* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv4 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv4, align 8
  %menu_factory5 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %11, i32 0, i32 0
  store %struct._GimpMenuFactory* null, %struct._GimpMenuFactory** %menu_factory5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv6 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv6, align 8
  %menu_identifier = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %13, i32 0, i32 1
  %14 = load i8*, i8** %menu_identifier, align 8
  %tobool7 = icmp ne i8* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv9 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %15, i32 0, i32 1
  %16 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv9, align 8
  %menu_identifier10 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %16, i32 0, i32 1
  %17 = load i8*, i8** %menu_identifier10, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv11 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv11, align 8
  %menu_identifier12 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %19, i32 0, i32 1
  store i8* null, i8** %menu_identifier12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %20 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv14 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %20, i32 0, i32 1
  %21 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv14, align 8
  %ui_manager = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %21, i32 0, i32 2
  %22 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool15 = icmp ne %struct._GimpUIManager* %22, null
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %23 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv17 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %23, i32 0, i32 1
  %24 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv17, align 8
  %ui_manager18 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %24, i32 0, i32 2
  %25 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager18, align 8
  %26 = bitcast %struct._GimpUIManager* %25 to i8*
  call void @g_object_unref(i8* %26)
  %27 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv19 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %27, i32 0, i32 1
  %28 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv19, align 8
  %ui_manager20 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %28, i32 0, i32 2
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %ui_manager20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.13
  %29 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv22 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %29, i32 0, i32 1
  %30 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv22, align 8
  %ui_path = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %30, i32 0, i32 3
  %31 = load i8*, i8** %ui_path, align 8
  %tobool23 = icmp ne i8* %31, null
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.21
  %32 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv25 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %32, i32 0, i32 1
  %33 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv25, align 8
  %ui_path26 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %33, i32 0, i32 3
  %34 = load i8*, i8** %ui_path26, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv27 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %35, i32 0, i32 1
  %36 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv27, align 8
  %ui_path28 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %36, i32 0, i32 3
  store i8* null, i8** %ui_path28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end.21
  %37 = load i8*, i8** @gimp_editor_parent_class, align 8
  %38 = bitcast i8* %37 to %struct._GTypeClass*
  %call30 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %38, i64 80)
  %39 = bitcast %struct._GTypeClass* %call30 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %39, i32 0, i32 5
  %40 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %41 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %40(%struct._GObject* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.12
    i32 6, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpMenuFactory*
  %6 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %menu_factory = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %7, i32 0, i32 0
  store %struct._GimpMenuFactory* %5, %struct._GimpMenuFactory** %menu_factory, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_string(%struct._GValue* %8)
  %9 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv5 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %9, i32 0, i32 1
  %10 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv5, align 8
  %menu_identifier = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %10, i32 0, i32 1
  store i8* %call4, i8** %menu_identifier, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i8* @g_value_dup_string(%struct._GValue* %11)
  %12 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv8 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv8, align 8
  %ui_path = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %13, i32 0, i32 3
  store i8* %call7, i8** %ui_path, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_get_pointer(%struct._GValue* %14)
  %15 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv11 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %15, i32 0, i32 1
  %16 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv11, align 8
  %popup_data = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %16, i32 0, i32 4
  store i8* %call10, i8** %popup_data, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %17 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv13 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %17, i32 0, i32 1
  %18 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv13, align 8
  %name_label = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %18, i32 0, i32 6
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %name_label, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_set_property(%struct._GObject* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct._GValue* %22)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %23 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i8* @g_value_get_string(%struct._GValue* %24)
  call void @gimp_editor_set_name(%struct._GimpEditor* %23, i8* %call16)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %25, %struct._GObject** %_glib__object, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %26, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = load i32, i32* %property_id.addr, align 4
  store i32 %27, i32* %_glib__property_id, align 4
  %28 = load i32, i32* %_glib__property_id, align 4
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = bitcast %struct._GParamSpec* %31 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %34)
  %35 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %38)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 314, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %28, i8* %30, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %sw.bb.12, %sw.bb.9, %sw.bb.6, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %menu_factory = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %8 = bitcast %struct._GimpMenuFactory* %7 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %8)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv3 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv3, align 8
  %menu_identifier = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %11, i32 0, i32 1
  %12 = load i8*, i8** %menu_identifier, align 8
  call void @g_value_set_string(%struct._GValue* %9, i8* %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv5 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %14, i32 0, i32 1
  %15 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv5, align 8
  %ui_path = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %15, i32 0, i32 3
  %16 = load i8*, i8** %ui_path, align 8
  call void @g_value_set_string(%struct._GValue* %13, i8* %16)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv7 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv7, align 8
  %popup_data = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %19, i32 0, i32 4
  %20 = load i8*, i8** %popup_data, align 8
  call void @g_value_set_pointer(%struct._GValue* %17, i8* %20)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %21 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv9 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %21, i32 0, i32 1
  %22 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv9, align 8
  %name_label = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %22, i32 0, i32 6
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %name_label, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_get_property(%struct._GObject* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), %struct._GValue* %26)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %27 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %27, %struct._GObject** %_glib__object, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %28, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = load i32, i32* %property_id.addr, align 4
  store i32 %29, i32* %_glib__property_id, align 4
  %30 = load i32, i32* %_glib__property_id, align 4
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 1
  %32 = load i8*, i8** %name, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = bitcast %struct._GParamSpec* %33 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type, align 8
  %call11 = call i8* @g_type_name(i64 %36)
  %37 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %38 = bitcast %struct._GObject* %37 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %40)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %30, i8* %32, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %content_spacing = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32* %content_spacing, i8* null)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %13 = load i32, i32* %content_spacing, align 4
  call void @gtk_box_set_spacing(%struct._GtkBox* %12, i32 %13)
  %14 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %14, i32 0, i32 1
  %15 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %button_box = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %15, i32 0, i32 7
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %tobool = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %18 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv6 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv6, align 8
  %button_box7 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %19, i32 0, i32 7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box7, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call8)
  %22 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  call void @gimp_editor_set_box_style(%struct._GimpEditor* %17, %struct._GtkBox* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_size_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_relief_style_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_value_get_pointer(%struct._GValue*) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpUIManager* @gimp_editor_get_menu(%struct._GimpDocked* %docked, i8** %ui_path, i8** %popup_data) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %ui_path.addr = alloca i8**, align 8
  %popup_data.addr = alloca i8**, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store i8** %ui_path, i8*** %ui_path.addr, align 8
  store i8** %popup_data, i8*** %popup_data.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %ui_path2 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %4, i32 0, i32 3
  %5 = load i8*, i8** %ui_path2, align 8
  %6 = load i8**, i8*** %ui_path.addr, align 8
  store i8* %5, i8** %6, align 8
  %7 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv3 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv3, align 8
  %popup_data4 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %8, i32 0, i32 4
  %9 = load i8*, i8** %popup_data4, align 8
  %10 = load i8**, i8*** %popup_data.addr, align 8
  store i8* %9, i8** %10, align 8
  %11 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv5 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %11, i32 0, i32 1
  %12 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv5, align 8
  %ui_manager = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %12, i32 0, i32 2
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  ret %struct._GimpUIManager* %13
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_editor_has_button_bar(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %button_box = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %4, i32 0, i32 7
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %cmp = icmp ne %struct._GtkWidget* %5, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @gimp_editor_set_show_button_bar(%struct._GimpDocked* %docked, i32 %show) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %show.addr = alloca i32, align 4
  %editor = alloca %struct._GimpEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load i32, i32* %show.addr, align 4
  %4 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %4, i32 0, i32 1
  %5 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %show_button_bar = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %5, i32 0, i32 5
  %6 = load i32, i32* %show_button_bar, align 4
  %cmp = icmp ne i32 %3, %6
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %show.addr, align 4
  %8 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv2 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %8, i32 0, i32 1
  %9 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv2, align 8
  %show_button_bar3 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %9, i32 0, i32 5
  store i32 %7, i32* %show_button_bar3, align 4
  %10 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv4 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv4, align 8
  %button_box = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %11, i32 0, i32 7
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %tobool = icmp ne %struct._GtkWidget* %12, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %13 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv6 = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv6, align 8
  %button_box7 = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %14, i32 0, i32 7
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box7, align 8
  %16 = load i32, i32* %show.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_editor_get_show_button_bar(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpEditor, %struct._GimpEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpEditorPrivate*, %struct._GimpEditorPrivate** %priv, align 8
  %show_button_bar = getelementptr inbounds %struct._GimpEditorPrivate, %struct._GimpEditorPrivate* %4, i32 0, i32 5
  %5 = load i32, i32* %show_button_bar, align 4
  ret i32 %5
}

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @g_slice_free1(i64, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gtk_action_get_sensitive(%struct._GtkAction*) #1

declare void @gtk_action_activate(%struct._GtkAction*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
