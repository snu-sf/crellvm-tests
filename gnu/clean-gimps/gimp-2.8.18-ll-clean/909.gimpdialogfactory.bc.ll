; ModuleID = './app/widgets/gimpdialogfactory.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDialogFactoryPrivate = type { %struct._GimpContext*, %struct._GimpMenuFactory*, %struct._GList*, %struct._GList*, %struct._GList*, i32 }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
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
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDialogFactoryClass = type { %struct._GimpObjectClass, void (%struct._GimpDialogFactory*, %struct._GimpDockWindow*)*, void (%struct._GimpDialogFactory*, %struct._GimpDockWindow*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GtkWindowGeometryInfo = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDockWindowPrivate = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDockContainer = type opaque
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GimpDockablePrivate = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GimpDockbookPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GdkGeometry = type { i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32 }
%struct._GimpConfigWriter = type opaque
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkCursor = type { i32, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_dialog_factory_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpDialogFactory\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dialog_factory_new = private unnamed_addr constant [24 x i8] c"gimp_dialog_factory_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"! menu_factory || GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"notify::hide-docks\00", align 1
@__func__.gimp_dialog_factory_register_entry = private unnamed_addr constant [35 x i8] c"gimp_dialog_factory_register_entry\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DIALOG_FACTORY (factory)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"identifier != NULL\00", align 1
@__func__.gimp_dialog_factory_find_entry = private unnamed_addr constant [31 x i8] c"gimp_dialog_factory_find_entry\00", align 1
@__func__.gimp_dialog_factory_find_session_info = private unnamed_addr constant [38 x i8] c"gimp_dialog_factory_find_session_info\00", align 1
@__func__.gimp_dialog_factory_find_widget = private unnamed_addr constant [32 x i8] c"gimp_dialog_factory_find_widget\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"identifiers != NULL\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@__func__.gimp_dialog_factory_dialog_new = private unnamed_addr constant [31 x i8] c"gimp_dialog_factory_dialog_new\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"GDK_IS_SCREEN (screen)\00", align 1
@__func__.gimp_dialog_factory_get_context = private unnamed_addr constant [32 x i8] c"gimp_dialog_factory_get_context\00", align 1
@__func__.gimp_dialog_factory_get_menu_factory = private unnamed_addr constant [37 x i8] c"gimp_dialog_factory_get_menu_factory\00", align 1
@__func__.gimp_dialog_factory_get_open_dialogs = private unnamed_addr constant [37 x i8] c"gimp_dialog_factory_get_open_dialogs\00", align 1
@__func__.gimp_dialog_factory_get_session_infos = private unnamed_addr constant [38 x i8] c"gimp_dialog_factory_get_session_infos\00", align 1
@__func__.gimp_dialog_factory_add_session_info = private unnamed_addr constant [37 x i8] c"gimp_dialog_factory_add_session_info\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"GIMP_IS_SESSION_INFO (info)\00", align 1
@__func__.gimp_dialog_factory_dialog_raise = private unnamed_addr constant [33 x i8] c"gimp_dialog_factory_dialog_raise\00", align 1
@__func__.gimp_dialog_factory_dockable_new = private unnamed_addr constant [33 x i8] c"gimp_dialog_factory_dockable_new\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DOCK (dock)\00", align 1
@__func__.gimp_dialog_factory_add_dialog = private unnamed_addr constant [31 x i8] c"gimp_dialog_factory_add_dialog\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (dialog)\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"%s: dialog already registered\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"adding %s \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"toplevel\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"dockable\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"%s: singleton dialog \22%s\22 created twice\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"corrupt session info: %p (widget %p)\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"updating session info %p (widget %p) for %s \22%s\22\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"creating session info %p (widget %p) for %s \22%s\22\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"setting GTK_WIN_POS_MOUSE for %p (\22%s\22)\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"configure-event\00", align 1
@factory_signals = internal global [2 x i32] zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@__func__.gimp_dialog_factory_add_foreign = private unnamed_addr constant [32 x i8] c"gimp_dialog_factory_add_foreign\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"gtk_widget_is_toplevel (dialog)\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"%s: dialog was created by a GimpDialogFactory\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"%s: no entry registered for \22%s\22\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"%s: entry for \22%s\22 has a constructor (is not foreign)\00", align 1
@__func__.gimp_dialog_factory_remove_dialog = private unnamed_addr constant [34 x i8] c"gimp_dialog_factory_remove_dialog\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"%s: dialog not registered\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"removing \22%s\22 (dialog = %p)\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"clearing session info %p (widget %p) for \22%s\22\00", align 1
@__func__.gimp_dialog_factory_hide_dialog = private unnamed_addr constant [32 x i8] c"gimp_dialog_factory_hide_dialog\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"%s: dialog was not created by a GimpDialogFactory\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"gimp-dialog-visibility\00", align 1
@__func__.gimp_dialog_factory_set_state = private unnamed_addr constant [30 x i8] c"gimp_dialog_factory_set_state\00", align 1
@__func__.gimp_dialog_factory_get_state = private unnamed_addr constant [30 x i8] c"gimp_dialog_factory_get_state\00", align 1
@__func__.gimp_dialog_factory_show_with_display = private unnamed_addr constant [38 x i8] c"gimp_dialog_factory_show_with_display\00", align 1
@__func__.gimp_dialog_factory_hide_with_display = private unnamed_addr constant [38 x i8] c"gimp_dialog_factory_hide_with_display\00", align 1
@__func__.gimp_dialog_factory_from_widget = private unnamed_addr constant [32 x i8] c"gimp_dialog_factory_from_widget\00", align 1
@gimp_dialog_factory_key = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [20 x i8] c"gimp-dialog-factory\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"gimp-dialog-factory-entry\00", align 1
@gimp_dialog_factory_entry_key = internal global i32 0, align 4
@__func__.gimp_dialog_factory_set_has_min_size = private unnamed_addr constant [37 x i8] c"gimp_dialog_factory_set_has_min_size\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"GTK_IS_WINDOW (window)\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"gimp-dialog-factory-min-size\00", align 1
@__func__.gimp_dialog_factory_get_has_min_size = private unnamed_addr constant [37 x i8] c"gimp_dialog_factory_get_has_min_size\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"session-info\00", align 1
@__func__.gimp_dialog_factory_restore = private unnamed_addr constant [28 x i8] c"gimp_dialog_factory_restore\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"skipping to restore session info %p, not open\00", align 1
@gimp_toplevel_factory = internal global %struct._GimpDialogFactory* null, align 8
@__func__.gimp_dialog_factory_get_singleton = private unnamed_addr constant [34 x i8] c"gimp_dialog_factory_get_singleton\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"gimp_toplevel_factory != NULL\00", align 1
@__func__.gimp_dialog_factory_set_singleton = private unnamed_addr constant [34 x i8] c"gimp_dialog_factory_set_singleton\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"gimp_toplevel_factory == NULL || factory == NULL\00", align 1
@gimp_dialog_factory_parent_class = internal global i8* null, align 8
@GimpDialogFactory_private_offset = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [18 x i8] c"dock-window-added\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"dock-window-removed\00", align 1
@.str.44 = private unnamed_addr constant [62 x i8] c"%s: %d stale non-toplevel entries in factory->p->open_dialogs\00", align 1
@__func__.gimp_dialog_factory_dispose = private unnamed_addr constant [28 x i8] c"gimp_dialog_factory_dispose\00", align 1
@__func__.gimp_dialog_factory_dialog_new_internal = private unnamed_addr constant [40 x i8] c"gimp_dialog_factory_dialog_new_internal\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"%s: entry for \22%s\22 has no constructor\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1
@.str.48 = private unnamed_addr constant [99 x i8] c"%s: GimpDialogFactory is a dockable factory but constructor for \22%s\22 did not return a GimpDockable\00", align 1
@.str.49 = private unnamed_addr constant [97 x i8] c"%s: GimpDialogFactory is a dock factory entry but constructor for \22%s\22 did not return a GimpDock\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"%s: constructor for \22%s\22 returned NULL\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"gimp-dialog-identifier\00", align 1
@__func__.gimp_dialog_factory_dialog_sane = private unnamed_addr constant [32 x i8] c"gimp_dialog_factory_dialog_sane\00", align 1
@.str.52 = private unnamed_addr constant [56 x i8] c"%s: dialog was created by a different GimpDialogFactory\00", align 1
@__func__.gimp_dialog_factory_set_widget_data = private unnamed_addr constant [36 x i8] c"gimp_dialog_factory_set_widget_data\00", align 1
@__func__.gimp_dialog_factory_unset_widget_data = private unnamed_addr constant [38 x i8] c"gimp_dialog_factory_unset_widget_data\00", align 1
@__func__.gimp_dialog_factory_set_user_pos = private unnamed_addr constant [33 x i8] c"gimp_dialog_factory_set_user_pos\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"setting GDK_HINT_USER_POS for %p\0A\00", align 1
@__func__.gimp_dialog_factory_dialog_configure = private unnamed_addr constant [37 x i8] c"gimp_dialog_factory_dialog_configure\00", align 1
@.str.54 = private unnamed_addr constant [70 x i8] c"updated session info for \22%s\22 from window geometry (x=%d y=%d  %dx%d)\00", align 1
@__func__.gimp_dialog_factory_hide = private unnamed_addr constant [25 x i8] c"gimp_dialog_factory_hide\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Hiding '%s' [%p]\00", align 1
@__func__.gimp_dialog_factory_show = private unnamed_addr constant [25 x i8] c"gimp_dialog_factory_show\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"Showing '%s' [%p]\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dialog_factory_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dialog_factory_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dialog_factory_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 176, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dialog_factory_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDialogFactory*)* @gimp_dialog_factory_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dialog_factory_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dialog_factory_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dialog_factory_parent_class, align 8
  %1 = load i32, i32* @GimpDialogFactory_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDialogFactory_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDialogFactoryClass*
  call void @gimp_dialog_factory_class_init(%struct._GimpDialogFactoryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_init(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDialogFactory* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_factory_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDialogFactoryPrivate*
  %3 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %3, i32 0, i32 1
  store %struct._GimpDialogFactoryPrivate* %2, %struct._GimpDialogFactoryPrivate** %p, align 8
  %4 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %4, i32 0, i32 1
  %5 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p2, align 8
  %dialog_state = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %5, i32 0, i32 5
  store i32 0, i32* %dialog_state, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDialogFactory* @gimp_dialog_factory_new(i8* %name, %struct._GimpContext* %context, %struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GimpDialogFactory*, align 8
  %name.addr = alloca i8*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %factory = alloca %struct._GimpDialogFactory*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dialog_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = bitcast %struct._GimpContext* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dialog_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %tobool18 = icmp ne %struct._GimpMenuFactory* %14, null
  br i1 %tobool18, label %lor.lhs.false, label %if.then.42

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %16 = bitcast %struct._GimpMenuFactory* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_menu_factory_get_type() #6
  store i64 %call23, i64* %__t22, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type33, align 8
  %23 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %25 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #7
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %26 = load i32, i32* %__r25, align 4
  store i32 %26, i32* %tmp40
  %27 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39, %do.body.17
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dialog_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %call46 = call i64 @gimp_dialog_factory_get_type() #6
  %call47 = call i8* (i64, i8*, ...) @g_object_new(i64 %call46, i8* null)
  %28 = bitcast i8* %call47 to %struct._GimpDialogFactory*
  store %struct._GimpDialogFactory* %28, %struct._GimpDialogFactory** %factory, align 8
  %29 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %30 = bitcast %struct._GimpDialogFactory* %29 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_object_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call48)
  %31 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpObject*
  %32 = load i8*, i8** %name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %31, i8* %32)
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config50 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 1
  %35 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config50, align 8
  %36 = bitcast %struct._GimpCoreConfig* %35 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_gui_config_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call51)
  %37 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %37, %struct._GimpGuiConfig** %config, align 8
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %39, i32 0, i32 1
  %40 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %context53 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %40, i32 0, i32 0
  store %struct._GimpContext* %38, %struct._GimpContext** %context53, align 8
  %41 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %42 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p54 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %42, i32 0, i32 1
  %43 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p54, align 8
  %menu_factory55 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %43, i32 0, i32 1
  store %struct._GimpMenuFactory* %41, %struct._GimpMenuFactory** %menu_factory55, align 8
  %44 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %44, i32 0, i32 31
  %45 = load i32, i32* %hide_docks, align 4
  %tobool56 = icmp ne i32 %45, 0
  %cond = select i1 %tobool56, i32 1, i32 0
  %46 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p57 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %46, i32 0, i32 1
  %47 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p57, align 8
  %dialog_state = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %47, i32 0, i32 5
  store i32 %cond, i32* %dialog_state, align 4
  %48 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %49 = bitcast %struct._GimpGuiConfig* %48 to i8*
  %50 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %51 = bitcast %struct._GimpDialogFactory* %50 to i8*
  %call58 = call i64 @g_signal_connect_object(i8* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDialogFactory*, %struct._GParamSpec*, %struct._GimpGuiConfig*)* @gimp_dialog_factory_config_notify to void ()*), i8* %51, i32 2)
  %52 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  store %struct._GimpDialogFactory* %52, %struct._GimpDialogFactory** %retval
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.14, %if.else
  %53 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %retval
  ret %struct._GimpDialogFactory* %53
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_config_notify(%struct._GimpDialogFactory* %factory, %struct._GParamSpec* %pspec, %struct._GimpGuiConfig* %config) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  %state = alloca i32, align 4
  %new_state = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call i32 @gimp_dialog_factory_get_state(%struct._GimpDialogFactory* %0)
  store i32 %call, i32* %state, align 4
  %1 = load i32, i32* %state, align 4
  store i32 %1, i32* %new_state, align 4
  %2 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %2, i32 0, i32 31
  %3 = load i32, i32* %hide_docks, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %new_state, align 4
  br label %if.end.4

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %hide_docks1 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %5, i32 0, i32 31
  %6 = load i32, i32* %hide_docks1, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store i32 0, i32* %new_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %state, align 4
  %8 = load i32, i32* %new_state, align 4
  %cmp5 = icmp ne i32 %7, %8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %10 = load i32, i32* %new_state, align 4
  call void @gimp_dialog_factory_set_state(%struct._GimpDialogFactory* %9, i32 %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_register_entry(%struct._GimpDialogFactory* %factory, i8* %identifier, i8* %name, i8* %blurb, i8* %stock_id, i8* %help_id, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* %new_func, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* %restore_func, i32 %view_size, i32 %singleton, i32 %session_managed, i32 %remember_size, i32 %remember_if_open, i32 %hideable, i32 %image_window, i32 %dockable) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %identifier.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %new_func.addr = alloca %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, align 8
  %restore_func.addr = alloca %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, align 8
  %view_size.addr = alloca i32, align 4
  %singleton.addr = alloca i32, align 4
  %session_managed.addr = alloca i32, align 4
  %remember_size.addr = alloca i32, align 4
  %remember_if_open.addr = alloca i32, align 4
  %hideable.addr = alloca i32, align 4
  %image_window.addr = alloca i32, align 4
  %dockable.addr = alloca i32, align 4
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* %new_func, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)** %new_func.addr, align 8
  store %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* %restore_func, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)** %restore_func.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %singleton, i32* %singleton.addr, align 4
  store i32 %session_managed, i32* %session_managed.addr, align 4
  store i32 %remember_size, i32* %remember_size.addr, align 4
  store i32 %remember_if_open, i32* %remember_if_open.addr, align 4
  store i32 %hideable, i32* %hideable.addr, align 4
  store i32 %image_window, i32* %image_window.addr, align 4
  store i32 %dockable, i32* %dockable.addr, align 4
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
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_dialog_factory_register_entry, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp13 = icmp ne i8* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_dialog_factory_register_entry, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @g_slice_alloc0(i64 88)
  %14 = bitcast i8* %call18 to %struct._GimpDialogFactoryEntry*
  store %struct._GimpDialogFactoryEntry* %14, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %15 = load i8*, i8** %identifier.addr, align 8
  %call19 = call noalias i8* @g_strdup(i8* %15)
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier20 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %16, i32 0, i32 0
  store i8* %call19, i8** %identifier20, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %call21 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %name22 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %18, i32 0, i32 1
  store i8* %call21, i8** %name22, align 8
  %19 = load i8*, i8** %blurb.addr, align 8
  %call23 = call noalias i8* @g_strdup(i8* %19)
  %20 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %blurb24 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %20, i32 0, i32 2
  store i8* %call23, i8** %blurb24, align 8
  %21 = load i8*, i8** %stock_id.addr, align 8
  %call25 = call noalias i8* @g_strdup(i8* %21)
  %22 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %stock_id26 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %22, i32 0, i32 3
  store i8* %call25, i8** %stock_id26, align 8
  %23 = load i8*, i8** %help_id.addr, align 8
  %call27 = call noalias i8* @g_strdup(i8* %23)
  %24 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %help_id28 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %24, i32 0, i32 4
  store i8* %call27, i8** %help_id28, align 8
  %25 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)** %new_func.addr, align 8
  %26 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %new_func29 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %26, i32 0, i32 5
  store %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* %25, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)** %new_func29, align 8
  %27 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)** %restore_func.addr, align 8
  %28 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %restore_func30 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %28, i32 0, i32 6
  store %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* %27, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)** %restore_func30, align 8
  %29 = load i32, i32* %view_size.addr, align 4
  %30 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %view_size31 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %30, i32 0, i32 7
  store i32 %29, i32* %view_size31, align 4
  %31 = load i32, i32* %singleton.addr, align 4
  %tobool32 = icmp ne i32 %31, 0
  %cond = select i1 %tobool32, i32 1, i32 0
  %32 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %singleton33 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %32, i32 0, i32 8
  store i32 %cond, i32* %singleton33, align 4
  %33 = load i32, i32* %session_managed.addr, align 4
  %tobool34 = icmp ne i32 %33, 0
  %cond35 = select i1 %tobool34, i32 1, i32 0
  %34 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %session_managed36 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %34, i32 0, i32 9
  store i32 %cond35, i32* %session_managed36, align 4
  %35 = load i32, i32* %remember_size.addr, align 4
  %tobool37 = icmp ne i32 %35, 0
  %cond38 = select i1 %tobool37, i32 1, i32 0
  %36 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %remember_size39 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %36, i32 0, i32 10
  store i32 %cond38, i32* %remember_size39, align 4
  %37 = load i32, i32* %remember_if_open.addr, align 4
  %tobool40 = icmp ne i32 %37, 0
  %cond41 = select i1 %tobool40, i32 1, i32 0
  %38 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %remember_if_open42 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %38, i32 0, i32 11
  store i32 %cond41, i32* %remember_if_open42, align 4
  %39 = load i32, i32* %hideable.addr, align 4
  %tobool43 = icmp ne i32 %39, 0
  %cond44 = select i1 %tobool43, i32 1, i32 0
  %40 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %hideable45 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %40, i32 0, i32 12
  store i32 %cond44, i32* %hideable45, align 4
  %41 = load i32, i32* %image_window.addr, align 4
  %tobool46 = icmp ne i32 %41, 0
  %cond47 = select i1 %tobool46, i32 1, i32 0
  %42 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %image_window48 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %42, i32 0, i32 13
  store i32 %cond47, i32* %image_window48, align 4
  %43 = load i32, i32* %dockable.addr, align 4
  %tobool49 = icmp ne i32 %43, 0
  %cond50 = select i1 %tobool49, i32 1, i32 0
  %44 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %dockable51 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %44, i32 0, i32 14
  store i32 %cond50, i32* %dockable51, align 4
  %45 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %45, i32 0, i32 1
  %46 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %registered_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %46, i32 0, i32 4
  %47 = load %struct._GList*, %struct._GList** %registered_dialogs, align 8
  %48 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %49 = bitcast %struct._GimpDialogFactoryEntry* %48 to i8*
  %call52 = call %struct._GList* @g_list_prepend(%struct._GList* %47, i8* %49)
  %50 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p53 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %50, i32 0, i32 1
  %51 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p53, align 8
  %registered_dialogs54 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %51, i32 0, i32 4
  store %struct._GList* %call52, %struct._GList** %registered_dialogs54, align 8
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.10
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %factory, i8* %identifier) #3 {
entry:
  %retval = alloca %struct._GimpDialogFactoryEntry*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %identifier.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry19 = alloca %struct._GimpDialogFactoryEntry*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_find_entry, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_find_entry, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %14, i32 0, i32 1
  %15 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %registered_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %15, i32 0, i32 4
  %16 = load %struct._GList*, %struct._GList** %registered_dialogs, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %17, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpDialogFactoryEntry*
  store %struct._GimpDialogFactoryEntry* %20, %struct._GimpDialogFactoryEntry** %entry19, align 8
  %21 = load i8*, i8** %identifier.addr, align 8
  %22 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry19, align 8
  %identifier20 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %22, i32 0, i32 0
  %23 = load i8*, i8** %identifier20, align 8
  %call21 = call i32 @strcmp(i8* %21, i8* %23) #7
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %for.body
  %24 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry19, align 8
  store %struct._GimpDialogFactoryEntry* %24, %struct._GimpDialogFactoryEntry** %retval
  br label %return

if.end.24:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %25, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.23, %if.else.14, %if.else.9
  %28 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %retval
  ret %struct._GimpDialogFactoryEntry* %28
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfo* @gimp_dialog_factory_find_session_info(%struct._GimpDialogFactory* %factory, i8* %identifier) #3 {
entry:
  %retval = alloca %struct._GimpSessionInfo*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %identifier.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %info = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_dialog_factory_find_session_info, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpSessionInfo* null, %struct._GimpSessionInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_dialog_factory_find_session_info, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpSessionInfo* null, %struct._GimpSessionInfo** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %14, i32 0, i32 1
  %15 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %15, i32 0, i32 3
  %16 = load %struct._GList*, %struct._GList** %session_infos, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %17, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %20, %struct._GimpSessionInfo** %info, align 8
  %21 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call19 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %21)
  %tobool20 = icmp ne %struct._GimpDialogFactoryEntry* %call19, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %for.body
  %22 = load i8*, i8** %identifier.addr, align 8
  %23 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call22 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %23)
  %identifier23 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %call22, i32 0, i32 0
  %24 = load i8*, i8** %identifier23, align 8
  %call24 = call i32 @g_str_equal(i8* %22, i8* %24)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.21
  %25 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  store %struct._GimpSessionInfo* %25, %struct._GimpSessionInfo** %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool28 = icmp ne %struct._GList* %26, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpSessionInfo* null, %struct._GimpSessionInfo** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.26, %if.else.14, %if.else.9
  %29 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %retval
  ret %struct._GimpSessionInfo* %29
}

declare %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo*) #1

declare i32 @g_str_equal(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %factory, i8* %identifiers) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %identifiers.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %ids = alloca i8**, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %info = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store i8* %identifiers, i8** %identifiers.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %widget, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_find_widget, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifiers.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_find_widget, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %identifiers.addr, align 8
  %call17 = call noalias i8** @g_strsplit(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 0)
  store i8** %call17, i8*** %ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8**, i8*** %ids, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  %tobool18 = icmp ne i8* %17, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load i8**, i8*** %ids, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %20, i64 %idxprom20
  %21 = load i8*, i8** %arrayidx21, align 8
  %call22 = call %struct._GimpSessionInfo* @gimp_dialog_factory_find_session_info(%struct._GimpDialogFactory* %18, i8* %21)
  store %struct._GimpSessionInfo* %call22, %struct._GimpSessionInfo** %info, align 8
  %22 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %tobool23 = icmp ne %struct._GimpSessionInfo* %22, null
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %for.body
  %23 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call25 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %23)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %widget, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool26 = icmp ne %struct._GtkWidget* %24, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  br label %for.end

if.end.28:                                        ; preds = %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  %26 = load i8**, i8*** %ids, align 8
  call void @g_strfreev(i8** %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* %27, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %28
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo*) #1

declare void @g_strfreev(i8**) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, %struct._GimpUIManager* %ui_manager, i8* %identifier, i32 %view_size, i32 %present) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %identifier.addr = alloca i8*, align 8
  %view_size.addr = alloca i32, align 4
  %present.addr = alloca i32, align 4
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
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %present, i32* %present.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %identifier.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %28 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %29 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %29, i32 0, i32 1
  %30 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %30, i32 0, i32 0
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %32 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %33 = load i8*, i8** %identifier.addr, align 8
  %34 = load i32, i32* %view_size.addr, align 4
  %35 = load i32, i32* %present.addr, align 4
  %call45 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new_internal(%struct._GimpDialogFactory* %27, %struct._GdkScreen* %28, %struct._GimpContext* %31, %struct._GimpUIManager* %32, i8* %33, i32 %34, i32 0, i32 %35, i32 0)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %36
}

; Function Attrs: nounwind readnone
declare i64 @gdk_screen_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_dialog_factory_dialog_new_internal(%struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i8* %identifier, i32 %view_size, i32 %return_existing, i32 %present, i32 %create_containers) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %identifier.addr = alloca i8*, align 8
  %view_size.addr = alloca i32, align 4
  %return_existing.addr = alloca i32, align 4
  %present.addr = alloca i32, align 4
  %create_containers.addr = alloca i32, align 4
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock = alloca %struct._GtkWidget*, align 8
  %dock_window = alloca %struct._GtkWidget*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  %dock_container = alloca %struct._GimpDockContainer*, align 8
  %__inst86 = alloca %struct._GTypeInstance*, align 8
  %__t88 = alloca i64, align 8
  %__r91 = alloca i32, align 4
  %tmp106 = alloca i32, align 4
  %__inst119 = alloca %struct._GTypeInstance*, align 8
  %__t121 = alloca i64, align 8
  %__r124 = alloca i32, align 4
  %tmp139 = alloca i32, align 4
  %__inst169 = alloca %struct._GTypeInstance*, align 8
  %__t171 = alloca i64, align 8
  %__r174 = alloca i32, align 4
  %tmp189 = alloca i32, align 4
  %__inst195 = alloca %struct._GTypeInstance*, align 8
  %__t197 = alloca i64, align 8
  %__r200 = alloca i32, align 4
  %tmp215 = alloca i32, align 4
  %dockable219 = alloca %struct._GimpDockable*, align 8
  %notebook = alloca %struct._GtkNotebook*, align 8
  %num = alloca i32, align 4
  %__inst246 = alloca %struct._GTypeInstance*, align 8
  %__t248 = alloca i64, align 8
  %__r251 = alloca i32, align 4
  %tmp266 = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %return_existing, i32* %return_existing.addr, align 4
  store i32 %present, i32* %present.addr, align 4
  store i32 %create_containers, i32* %create_containers.addr, align 4
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %entry1, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %toplevel, align 8
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
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dialog_factory_dialog_new_internal, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp13 = icmp ne i8* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dialog_factory_dialog_new_internal, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %15 = load i8*, i8** %identifier.addr, align 8
  %call18 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %14, i8* %15)
  store %struct._GimpDialogFactoryEntry* %call18, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %tobool19 = icmp ne %struct._GimpDialogFactoryEntry* %16, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.17
  %17 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dialog_factory_dialog_new_internal, i32 0, i32 0), i8* %17)
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.17
  %18 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %new_func = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %18, i32 0, i32 5
  %19 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)** %new_func, align 8
  %tobool22 = icmp ne %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* %19, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %20 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dialog_factory_dialog_new_internal, i32 0, i32 0), i8* %20)
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.21
  %21 = load i32, i32* %return_existing.addr, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %22 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %singleton = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %22, i32 0, i32 8
  %23 = load i32, i32* %singleton, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.24
  %24 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %25 = load i8*, i8** %identifier.addr, align 8
  %call28 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %24, i8* %25)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %dialog, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %lor.lhs.false
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool30 = icmp ne %struct._GtkWidget* %26, null
  br i1 %tobool30, label %if.end.158, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  store %struct._GtkWidget* null, %struct._GtkWidget** %dock, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dock_window, align 8
  %27 = load i32, i32* %create_containers.addr, align 4
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.end.57

if.then.35:                                       ; preds = %if.then.31
  %28 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %dockable = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %28, i32 0, i32 14
  %29 = load i32, i32* %dockable, align 4
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then.37, label %if.else.45

if.then.37:                                       ; preds = %if.then.35
  %30 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %31 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call39 = call %struct._GtkWidget* @gimp_dock_with_window_new(%struct._GimpDialogFactory* %30, %struct._GdkScreen* %31, i32 0)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %dock, align 8
  %32 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %32, i32 0, i32 1
  %33 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %menu_factory = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %33, i32 0, i32 1
  %34 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %call40 = call %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory* %34)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %dockbook, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_dock_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call41)
  %37 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpDock*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_dockbook_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call43)
  %40 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDockbook*
  call void @gimp_dock_add_book(%struct._GimpDock* %37, %struct._GimpDockbook* %40, i32 0)
  br label %if.end.56

if.else.45:                                       ; preds = %if.then.35
  %41 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier46 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %41, i32 0, i32 0
  %42 = load i8*, i8** %identifier46, align 8
  %call47 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* %42) #7
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.else.45
  %43 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %44 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call51 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %43, %struct._GdkScreen* %44, %struct._GimpUIManager* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i32 -1, i32 0)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %dock_window, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_dock_container_interface_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call52)
  %47 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpDockContainer*
  store %struct._GimpDockContainer* %47, %struct._GimpDockContainer** %dock_container, align 8
  %48 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container, align 8
  %call54 = call %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer* %48)
  store %struct._GimpUIManager* %call54, %struct._GimpUIManager** %ui_manager.addr, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.49, %if.else.45
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.37
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.31
  %49 = load i32, i32* %view_size.addr, align 4
  %cmp58 = icmp slt i32 %49, 12
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.57
  %50 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %view_size60 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %50, i32 0, i32 7
  %51 = load i32, i32* %view_size60, align 4
  store i32 %51, i32* %view_size.addr, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.57
  %52 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool62 = icmp ne %struct._GimpContext* %52, null
  br i1 %tobool62, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.end.61
  %53 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %54 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %56 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %57 = load i32, i32* %view_size.addr, align 4
  %call64 = call %struct._GtkWidget* @gimp_dialog_factory_constructor(%struct._GimpDialogFactory* %53, %struct._GimpDialogFactoryEntry* %54, %struct._GimpContext* %55, %struct._GimpUIManager* %56, i32 %57)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %dialog, align 8
  br label %if.end.80

if.else.65:                                       ; preds = %if.end.61
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %tobool66 = icmp ne %struct._GtkWidget* %58, null
  br i1 %tobool66, label %if.then.67, label %if.else.75

if.then.67:                                       ; preds = %if.else.65
  %59 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %60 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_dock_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call68)
  %63 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpDock*
  %call70 = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_dock_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call71)
  %66 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpDock*
  %call73 = call %struct._GimpUIManager* @gimp_dock_get_ui_manager(%struct._GimpDock* %66)
  %67 = load i32, i32* %view_size.addr, align 4
  %call74 = call %struct._GtkWidget* @gimp_dialog_factory_constructor(%struct._GimpDialogFactory* %59, %struct._GimpDialogFactoryEntry* %60, %struct._GimpContext* %call70, %struct._GimpUIManager* %call73, i32 %67)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %dialog, align 8
  br label %if.end.79

if.else.75:                                       ; preds = %if.else.65
  %68 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %69 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %70 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p76 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %70, i32 0, i32 1
  %71 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p76, align 8
  %context77 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %71, i32 0, i32 0
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context77, align 8
  %73 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %74 = load i32, i32* %view_size.addr, align 4
  %call78 = call %struct._GtkWidget* @gimp_dialog_factory_constructor(%struct._GimpDialogFactory* %68, %struct._GimpDialogFactoryEntry* %69, %struct._GimpContext* %72, %struct._GimpUIManager* %73, i32 %74)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %dialog, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.75, %if.then.67
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.63
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool81 = icmp ne %struct._GtkWidget* %75, null
  br i1 %tobool81, label %if.then.82, label %if.else.150

if.then.82:                                       ; preds = %if.end.80
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %77 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %78 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  call void @gimp_dialog_factory_set_widget_data(%struct._GtkWidget* %76, %struct._GimpDialogFactory* %77, %struct._GimpDialogFactoryEntry* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %tobool83 = icmp ne %struct._GtkWidget* %79, null
  br i1 %tobool83, label %if.then.84, label %if.else.115

if.then.84:                                       ; preds = %if.then.82
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %81, %struct._GTypeInstance** %__inst86, align 8
  %call89 = call i64 @gimp_dockable_get_type() #6
  store i64 %call89, i64* %__t88, align 8
  %82 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %tobool92 = icmp ne %struct._GTypeInstance* %82, null
  br i1 %tobool92, label %if.else.94, label %if.then.93

if.then.93:                                       ; preds = %if.then.84
  store i32 0, i32* %__r91, align 4
  br label %if.end.105

if.else.94:                                       ; preds = %if.then.84
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %g_class95 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %83, i32 0, i32 0
  %84 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class95, align 8
  %tobool96 = icmp ne %struct._GTypeClass* %84, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.else.102

land.lhs.true.97:                                 ; preds = %if.else.94
  %85 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %g_class98 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %85, i32 0, i32 0
  %86 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class98, align 8
  %g_type99 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %86, i32 0, i32 0
  %87 = load i64, i64* %g_type99, align 8
  %88 = load i64, i64* %__t88, align 8
  %cmp100 = icmp eq i64 %87, %88
  br i1 %cmp100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %land.lhs.true.97
  store i32 1, i32* %__r91, align 4
  br label %if.end.104

if.else.102:                                      ; preds = %land.lhs.true.97, %if.else.94
  %89 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %90 = load i64, i64* %__t88, align 8
  %call103 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %89, i64 %90) #7
  store i32 %call103, i32* %__r91, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.102, %if.then.101
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.93
  %91 = load i32, i32* %__r91, align 4
  store i32 %91, i32* %tmp106
  %92 = load i32, i32* %tmp106
  %tobool107 = icmp ne i32 %92, 0
  br i1 %tobool107, label %if.then.108, label %if.else.113

if.then.108:                                      ; preds = %if.end.105
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_dock_get_type() #6
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call109)
  %95 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpDock*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_dockable_get_type() #6
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call111)
  %98 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpDockable*
  call void @gimp_dock_add(%struct._GimpDock* %95, %struct._GimpDockable* %98, i32 0, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  br label %if.end.114

if.else.113:                                      ; preds = %if.end.105
  %100 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dialog_factory_dialog_new_internal, i32 0, i32 0), i8* %100)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %101)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %102)
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dock, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.113, %if.then.108
  br label %if.end.149

if.else.115:                                      ; preds = %if.then.82
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %tobool116 = icmp ne %struct._GtkWidget* %103, null
  br i1 %tobool116, label %if.then.117, label %if.end.148

if.then.117:                                      ; preds = %if.else.115
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %105, %struct._GTypeInstance** %__inst119, align 8
  %call122 = call i64 @gimp_dock_get_type() #6
  store i64 %call122, i64* %__t121, align 8
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst119, align 8
  %tobool125 = icmp ne %struct._GTypeInstance* %106, null
  br i1 %tobool125, label %if.else.127, label %if.then.126

if.then.126:                                      ; preds = %if.then.117
  store i32 0, i32* %__r124, align 4
  br label %if.end.138

if.else.127:                                      ; preds = %if.then.117
  %107 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst119, align 8
  %g_class128 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %107, i32 0, i32 0
  %108 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class128, align 8
  %tobool129 = icmp ne %struct._GTypeClass* %108, null
  br i1 %tobool129, label %land.lhs.true.130, label %if.else.135

land.lhs.true.130:                                ; preds = %if.else.127
  %109 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst119, align 8
  %g_class131 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %109, i32 0, i32 0
  %110 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class131, align 8
  %g_type132 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %110, i32 0, i32 0
  %111 = load i64, i64* %g_type132, align 8
  %112 = load i64, i64* %__t121, align 8
  %cmp133 = icmp eq i64 %111, %112
  br i1 %cmp133, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %land.lhs.true.130
  store i32 1, i32* %__r124, align 4
  br label %if.end.137

if.else.135:                                      ; preds = %land.lhs.true.130, %if.else.127
  %113 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst119, align 8
  %114 = load i64, i64* %__t121, align 8
  %call136 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %113, i64 %114) #7
  store i32 %call136, i32* %__r124, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.135, %if.then.134
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.126
  %115 = load i32, i32* %__r124, align 4
  store i32 %115, i32* %tmp139
  %116 = load i32, i32* %tmp139
  %tobool140 = icmp ne i32 %116, 0
  br i1 %tobool140, label %if.then.141, label %if.else.146

if.then.141:                                      ; preds = %if.end.138
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call142 = call i64 @gimp_dock_window_get_type() #6
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call142)
  %119 = bitcast %struct._GTypeInstance* %call143 to %struct._GimpDockWindow*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call144 = call i64 @gimp_dock_get_type() #6
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call144)
  %122 = bitcast %struct._GTypeInstance* %call145 to %struct._GimpDock*
  call void @gimp_dock_window_add_dock(%struct._GimpDockWindow* %119, %struct._GimpDock* %122, i32 -1)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %124 = load i32, i32* %present.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %123, i32 %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %126 = load i32, i32* %present.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %125, i32 %126)
  br label %if.end.147

if.else.146:                                      ; preds = %if.end.138
  %127 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dialog_factory_dialog_new_internal, i32 0, i32 0), i8* %127)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %128)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %129)
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dock_window, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.146, %if.then.141
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.else.115
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.114
  br label %if.end.154

if.else.150:                                      ; preds = %if.end.80
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %tobool151 = icmp ne %struct._GtkWidget* %130, null
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.else.150
  %131 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dialog_factory_dialog_new_internal, i32 0, i32 0), i8* %131)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %132)
  store %struct._GtkWidget* null, %struct._GtkWidget** %dock, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.else.150
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.149
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool155 = icmp ne %struct._GtkWidget* %133, null
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.154
  %134 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gimp_dialog_factory_add_dialog(%struct._GimpDialogFactory* %134, %struct._GtkWidget* %135)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.154
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.29
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool159 = icmp ne %struct._GtkWidget* %136, null
  br i1 %tobool159, label %if.end.161, label %if.then.160

if.then.160:                                      ; preds = %if.end.158
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.161:                                       ; preds = %if.end.158
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call162 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %137)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.then.164, label %if.else.167

if.then.164:                                      ; preds = %if.end.161
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call165 = call i64 @gtk_window_get_type() #6
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call165)
  %140 = bitcast %struct._GTypeInstance* %call166 to %struct._GtkWindow*
  %141 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  call void @gtk_window_set_screen(%struct._GtkWindow* %140, %struct._GdkScreen* %141)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %142, %struct._GtkWidget** %toplevel, align 8
  br label %if.end.242

if.else.167:                                      ; preds = %if.end.161
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %144, %struct._GTypeInstance** %__inst169, align 8
  %call172 = call i64 @gimp_dock_get_type() #6
  store i64 %call172, i64* %__t171, align 8
  %145 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst169, align 8
  %tobool175 = icmp ne %struct._GTypeInstance* %145, null
  br i1 %tobool175, label %if.else.177, label %if.then.176

if.then.176:                                      ; preds = %if.else.167
  store i32 0, i32* %__r174, align 4
  br label %if.end.188

if.else.177:                                      ; preds = %if.else.167
  %146 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst169, align 8
  %g_class178 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %146, i32 0, i32 0
  %147 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class178, align 8
  %tobool179 = icmp ne %struct._GTypeClass* %147, null
  br i1 %tobool179, label %land.lhs.true.180, label %if.else.185

land.lhs.true.180:                                ; preds = %if.else.177
  %148 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst169, align 8
  %g_class181 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %148, i32 0, i32 0
  %149 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class181, align 8
  %g_type182 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %149, i32 0, i32 0
  %150 = load i64, i64* %g_type182, align 8
  %151 = load i64, i64* %__t171, align 8
  %cmp183 = icmp eq i64 %150, %151
  br i1 %cmp183, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %land.lhs.true.180
  store i32 1, i32* %__r174, align 4
  br label %if.end.187

if.else.185:                                      ; preds = %land.lhs.true.180, %if.else.177
  %152 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst169, align 8
  %153 = load i64, i64* %__t171, align 8
  %call186 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %152, i64 %153) #7
  store i32 %call186, i32* %__r174, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.185, %if.then.184
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.176
  %154 = load i32, i32* %__r174, align 4
  store i32 %154, i32* %tmp189
  %155 = load i32, i32* %tmp189
  %tobool190 = icmp ne i32 %155, 0
  br i1 %tobool190, label %if.then.191, label %if.else.193

if.then.191:                                      ; preds = %if.end.188
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call192 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %156)
  store %struct._GtkWidget* %call192, %struct._GtkWidget** %toplevel, align 8
  br label %if.end.241

if.else.193:                                      ; preds = %if.end.188
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %158, %struct._GTypeInstance** %__inst195, align 8
  %call198 = call i64 @gimp_dockable_get_type() #6
  store i64 %call198, i64* %__t197, align 8
  %159 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst195, align 8
  %tobool201 = icmp ne %struct._GTypeInstance* %159, null
  br i1 %tobool201, label %if.else.203, label %if.then.202

if.then.202:                                      ; preds = %if.else.193
  store i32 0, i32* %__r200, align 4
  br label %if.end.214

if.else.203:                                      ; preds = %if.else.193
  %160 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst195, align 8
  %g_class204 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %160, i32 0, i32 0
  %161 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class204, align 8
  %tobool205 = icmp ne %struct._GTypeClass* %161, null
  br i1 %tobool205, label %land.lhs.true.206, label %if.else.211

land.lhs.true.206:                                ; preds = %if.else.203
  %162 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst195, align 8
  %g_class207 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %162, i32 0, i32 0
  %163 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class207, align 8
  %g_type208 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %163, i32 0, i32 0
  %164 = load i64, i64* %g_type208, align 8
  %165 = load i64, i64* %__t197, align 8
  %cmp209 = icmp eq i64 %164, %165
  br i1 %cmp209, label %if.then.210, label %if.else.211

if.then.210:                                      ; preds = %land.lhs.true.206
  store i32 1, i32* %__r200, align 4
  br label %if.end.213

if.else.211:                                      ; preds = %land.lhs.true.206, %if.else.203
  %166 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst195, align 8
  %167 = load i64, i64* %__t197, align 8
  %call212 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %166, i64 %167) #7
  store i32 %call212, i32* %__r200, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.211, %if.then.210
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.202
  %168 = load i32, i32* %__r200, align 4
  store i32 %168, i32* %tmp215
  %169 = load i32, i32* %tmp215
  %tobool216 = icmp ne i32 %169, 0
  br i1 %tobool216, label %if.then.217, label %if.end.240

if.then.217:                                      ; preds = %if.end.214
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call220 = call i64 @gimp_dockable_get_type() #6
  %call221 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call220)
  %172 = bitcast %struct._GTypeInstance* %call221 to %struct._GimpDockable*
  store %struct._GimpDockable* %172, %struct._GimpDockable** %dockable219, align 8
  %173 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable219, align 8
  %call222 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %173)
  %tobool223 = icmp ne %struct._GimpDockbook* %call222, null
  br i1 %tobool223, label %land.lhs.true.224, label %if.end.238

land.lhs.true.224:                                ; preds = %if.then.217
  %174 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable219, align 8
  %call225 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %174)
  %call226 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %call225)
  %tobool227 = icmp ne %struct._GimpDock* %call226, null
  br i1 %tobool227, label %if.then.228, label %if.end.238

if.then.228:                                      ; preds = %land.lhs.true.224
  %175 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable219, align 8
  %call230 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %175)
  %176 = bitcast %struct._GimpDockbook* %call230 to %struct._GTypeInstance*
  %call231 = call i64 @gtk_notebook_get_type() #6
  %call232 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call231)
  %177 = bitcast %struct._GTypeInstance* %call232 to %struct._GtkNotebook*
  store %struct._GtkNotebook* %177, %struct._GtkNotebook** %notebook, align 8
  %178 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook, align 8
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call234 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %178, %struct._GtkWidget* %179)
  store i32 %call234, i32* %num, align 4
  %180 = load i32, i32* %num, align 4
  %cmp235 = icmp ne i32 %180, -1
  br i1 %cmp235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.then.228
  %181 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook, align 8
  %182 = load i32, i32* %num, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %181, i32 %182)
  %183 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable219, align 8
  call void @gimp_dockable_blink(%struct._GimpDockable* %183)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.then.228
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %land.lhs.true.224, %if.then.217
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call239 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %184)
  store %struct._GtkWidget* %call239, %struct._GtkWidget** %toplevel, align 8
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.238, %if.end.214
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.191
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.164
  %185 = load i32, i32* %present.addr, align 4
  %tobool243 = icmp ne i32 %185, 0
  br i1 %tobool243, label %land.lhs.true.244, label %if.end.270

land.lhs.true.244:                                ; preds = %if.end.242
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %187, %struct._GTypeInstance** %__inst246, align 8
  %call249 = call i64 @gtk_window_get_type() #6
  store i64 %call249, i64* %__t248, align 8
  %188 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst246, align 8
  %tobool252 = icmp ne %struct._GTypeInstance* %188, null
  br i1 %tobool252, label %if.else.254, label %if.then.253

if.then.253:                                      ; preds = %land.lhs.true.244
  store i32 0, i32* %__r251, align 4
  br label %if.end.265

if.else.254:                                      ; preds = %land.lhs.true.244
  %189 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst246, align 8
  %g_class255 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %189, i32 0, i32 0
  %190 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class255, align 8
  %tobool256 = icmp ne %struct._GTypeClass* %190, null
  br i1 %tobool256, label %land.lhs.true.257, label %if.else.262

land.lhs.true.257:                                ; preds = %if.else.254
  %191 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst246, align 8
  %g_class258 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %191, i32 0, i32 0
  %192 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class258, align 8
  %g_type259 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %192, i32 0, i32 0
  %193 = load i64, i64* %g_type259, align 8
  %194 = load i64, i64* %__t248, align 8
  %cmp260 = icmp eq i64 %193, %194
  br i1 %cmp260, label %if.then.261, label %if.else.262

if.then.261:                                      ; preds = %land.lhs.true.257
  store i32 1, i32* %__r251, align 4
  br label %if.end.264

if.else.262:                                      ; preds = %land.lhs.true.257, %if.else.254
  %195 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst246, align 8
  %196 = load i64, i64* %__t248, align 8
  %call263 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %195, i64 %196) #7
  store i32 %call263, i32* %__r251, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.262, %if.then.261
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.253
  %197 = load i32, i32* %__r251, align 4
  store i32 %197, i32* %tmp266
  %198 = load i32, i32* %tmp266
  %tobool267 = icmp ne i32 %198, 0
  br i1 %tobool267, label %if.then.268, label %if.end.270

if.then.268:                                      ; preds = %if.end.265
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  call void @gtk_widget_show_now(%struct._GtkWidget* %199)
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %call269 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %200)
  call void @gdk_window_raise(%struct._GdkDrawable* %call269)
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.268, %if.end.265, %if.end.242
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %201, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.270, %if.then.160, %if.then.23, %if.then.20, %if.else.15, %if.else.10
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %202
}

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_get_context, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  store %struct._GimpContext* %15, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %retval = alloca %struct._GimpMenuFactory*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dialog_factory_get_menu_factory, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpMenuFactory* null, %struct._GimpMenuFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %menu_factory = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %14, i32 0, i32 1
  %15 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  store %struct._GimpMenuFactory* %15, %struct._GimpMenuFactory** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %retval
  ret %struct._GimpMenuFactory* %16
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dialog_factory_get_open_dialogs, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  store %struct._GList* %15, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %16
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_dialog_factory_get_session_infos(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_dialog_factory_get_session_infos, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %14, i32 0, i32 3
  %15 = load %struct._GList*, %struct._GList** %session_infos, align 8
  store %struct._GList* %15, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_add_session_info(%struct._GimpDialogFactory* %factory, %struct._GimpSessionInfo* %info) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dialog_factory_add_session_info, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %14 = bitcast %struct._GimpSessionInfo* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_session_info_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dialog_factory_add_session_info, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %26, i32 0, i32 1
  %27 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %27, i32 0, i32 3
  %28 = load %struct._GList*, %struct._GList** %session_infos, align 8
  %29 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %30 = bitcast %struct._GimpSessionInfo* %29 to i8*
  %call39 = call i8* @g_object_ref(i8* %30)
  %call40 = call %struct._GList* @g_list_append(%struct._GList* %28, i8* %call39)
  %31 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p41 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %31, i32 0, i32 1
  %32 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p41, align 8
  %session_infos42 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %32, i32 0, i32 3
  store %struct._GList* %call40, %struct._GList** %session_infos42, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_session_info_get_type() #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, i8* %identifiers, i32 %view_size) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %identifiers.addr = alloca i8*, align 8
  %view_size.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %ids = alloca i8**, align 8
  %i = alloca i32, align 4
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
  store i8* %identifiers, i8** %identifiers.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dialog_factory_dialog_raise, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dialog_factory_dialog_raise, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %identifiers.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dialog_factory_dialog_raise, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load i8*, i8** %identifiers.addr, align 8
  %call45 = call noalias i8** @g_strsplit(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 0)
  store i8** %call45, i8*** %ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.44
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i8**, i8*** %ids, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %29, i64 %idxprom
  %30 = load i8*, i8** %arrayidx, align 8
  %tobool46 = icmp ne i8* %30, null
  br i1 %tobool46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %32 to i64
  %33 = load i8**, i8*** %ids, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %33, i64 %idxprom47
  %34 = load i8*, i8** %arrayidx48, align 8
  %call49 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %31, i8* %34)
  %tobool50 = icmp ne %struct._GtkWidget* %call49, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body
  br label %for.end

if.end.52:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.51, %for.cond
  %36 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %37 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %38 to i64
  %39 = load i8**, i8*** %ids, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %39, i64 %idxprom53
  %40 = load i8*, i8** %arrayidx54, align 8
  %tobool55 = icmp ne i8* %40, null
  br i1 %tobool55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %41 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %41 to i64
  %42 = load i8**, i8*** %ids, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %42, i64 %idxprom56
  %43 = load i8*, i8** %arrayidx57, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %44 = load i8**, i8*** %ids, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %44, i64 0
  %45 = load i8*, i8** %arrayidx58, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %43, %cond.true ], [ %45, %cond.false ]
  %46 = load i32, i32* %view_size.addr, align 4
  %call59 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new_internal(%struct._GimpDialogFactory* %36, %struct._GdkScreen* %37, %struct._GimpContext* null, %struct._GimpUIManager* null, i8* %cond, i32 %46, i32 1, i32 1, i32 1)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %dialog, align 8
  %47 = load i8**, i8*** %ids, align 8
  call void @g_strfreev(i8** %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %48, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.42, %if.else.36, %if.else.9
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %49
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dialog_factory_dockable_new(%struct._GimpDialogFactory* %factory, %struct._GimpDock* %dock, i8* %identifier, i32 %view_size) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %identifier.addr = alloca i8*, align 8
  %view_size.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dialog_factory_dockable_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dock_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dialog_factory_dockable_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %identifier.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dialog_factory_dockable_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %28 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %29 = bitcast %struct._GimpDock* %28 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_widget_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call45)
  %30 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkWidget*
  %call47 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %30)
  %31 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call48 = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %31)
  %32 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call49 = call %struct._GimpUIManager* @gimp_dock_get_ui_manager(%struct._GimpDock* %32)
  %33 = load i8*, i8** %identifier.addr, align 8
  %34 = load i32, i32* %view_size.addr, align 4
  %call50 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new_internal(%struct._GimpDialogFactory* %27, %struct._GdkScreen* %call47, %struct._GimpContext* %call48, %struct._GimpUIManager* %call49, i8* %33, i32 %34, i32 0, i32 0, i32 0)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %35
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock*) #1

declare %struct._GimpUIManager* @gimp_dock_get_ui_manager(%struct._GimpDock*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_add_dialog(%struct._GimpDialogFactory* %factory, %struct._GtkWidget* %dialog) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %dialog_factory = alloca %struct._GimpDialogFactory*, align 8
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  %list = alloca %struct._GList*, align 8
  %toplevel = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %current_info = alloca %struct._GimpSessionInfo*, align 8
  %__inst132 = alloca %struct._GTypeInstance*, align 8
  %__t134 = alloca i64, align 8
  %__r137 = alloca i32, align 4
  %tmp152 = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %dialog_factory, align 8
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %entry1, align 8
  store %struct._GimpSessionInfo* null, %struct._GimpSessionInfo** %info, align 8
  store %struct._GList* null, %struct._GList** %list, align 8
  store i32 0, i32* %toplevel, align 4
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
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.166

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_widget_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type27, align 8
  %21 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %20, %21
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %23 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %24 = load i32, i32* %__r19, align 4
  store i32 %24, i32* %tmp34
  %25 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.166

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %26 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %26, i32 0, i32 1
  %27 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %27, i32 0, i32 2
  %28 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call40 = call %struct._GList* @g_list_find(%struct._GList* %28, i8* %30)
  %tobool41 = icmp ne %struct._GList* %call40, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.39
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0))
  br label %if.end.166

if.end.43:                                        ; preds = %do.end.39
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call44 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %31, %struct._GimpDialogFactoryEntry** %entry1)
  store %struct._GimpDialogFactory* %call44, %struct._GimpDialogFactory** %dialog_factory, align 8
  %32 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %33 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %34 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call45 = call i32 @gimp_dialog_factory_dialog_sane(%struct._GimpDialogFactory* %32, %struct._GimpDialogFactory* %33, %struct._GimpDialogFactoryEntry* %34, %struct._GtkWidget* %35)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.43
  br label %if.end.166

if.end.48:                                        ; preds = %if.end.43
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call49 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %36)
  store i32 %call49, i32* %toplevel, align 4
  %37 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %tobool50 = icmp ne %struct._GimpDialogFactoryEntry* %37, null
  br i1 %tobool50, label %if.then.51, label %if.end.130

if.then.51:                                       ; preds = %if.end.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %38 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %38, 16
  %tobool53 = icmp ne i32 %and, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %do.body.52
  %39 = load i32, i32* %toplevel, align 4
  %tobool55 = icmp ne i32 %39, 0
  %cond = select i1 %tobool55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)
  %40 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %40, i32 0, i32 0
  %41 = load i8*, i8** %identifier, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0), i32 888, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %cond, i8* %41)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %do.body.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %42 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p58 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %42, i32 0, i32 1
  %43 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p58, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %43, i32 0, i32 3
  %44 = load %struct._GList*, %struct._GList** %session_infos, align 8
  store %struct._GList* %44, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.57
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool59 = icmp ne %struct._GList* %45, null
  br i1 %tobool59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data, align 8
  %48 = bitcast i8* %47 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %48, %struct._GimpSessionInfo** %current_info, align 8
  %49 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %call61 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %49)
  %50 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %cmp62 = icmp eq %struct._GimpDialogFactoryEntry* %call61, %50
  br i1 %cmp62, label %if.then.63, label %if.end.99

if.then.63:                                       ; preds = %for.body
  %51 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %call64 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %51)
  %tobool65 = icmp ne %struct._GtkWidget* %call64, null
  br i1 %tobool65, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %if.then.63
  %52 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %call67 = call i32 @gimp_session_info_is_singleton(%struct._GimpSessionInfo* %52)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.78

if.then.69:                                       ; preds = %if.then.66
  %53 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier70 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %53, i32 0, i32 0
  %54 = load i8*, i8** %identifier70, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0), i8* %54)
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.69
  %55 = load i32, i32* @gimp_log_flags, align 4
  %and72 = and i32 %55, 16
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %do.body.71
  %56 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %57 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %call75 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %57)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0), i32 906, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0), %struct._GimpSessionInfo* %56, %struct._GtkWidget* %call75)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %do.body.71
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %if.end.166

if.end.78:                                        ; preds = %if.then.66
  br label %for.inc

if.end.79:                                        ; preds = %if.then.63
  %58 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gimp_session_info_set_widget(%struct._GimpSessionInfo* %58, %struct._GtkWidget* %59)
  br label %do.body.80

do.body.80:                                       ; preds = %if.end.79
  %60 = load i32, i32* @gimp_log_flags, align 4
  %and81 = and i32 %60, 16
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %do.body.80
  %61 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %62 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %call84 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %62)
  %63 = load i32, i32* %toplevel, align 4
  %tobool85 = icmp ne i32 %63, 0
  %cond86 = select i1 %tobool85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)
  %64 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier87 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %64, i32 0, i32 0
  %65 = load i8*, i8** %identifier87, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0), i32 921, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0), %struct._GimpSessionInfo* %61, %struct._GtkWidget* %call84, i8* %cond86, i8* %65)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %do.body.80
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  %66 = load i32, i32* %toplevel, align 4
  %tobool90 = icmp ne i32 %66, 0
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.98

land.lhs.true.91:                                 ; preds = %do.end.89
  %67 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  %call92 = call i32 @gimp_session_info_is_session_managed(%struct._GimpSessionInfo* %67)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.98

land.lhs.true.94:                                 ; preds = %land.lhs.true.91
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call95 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %68)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %land.lhs.true.94
  %69 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  call void @gimp_session_info_apply_geometry(%struct._GimpSessionInfo* %69)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %land.lhs.true.94, %land.lhs.true.91, %do.end.89
  %70 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %current_info, align 8
  store %struct._GimpSessionInfo* %70, %struct._GimpSessionInfo** %info, align 8
  br label %for.end

if.end.99:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.99, %if.end.78
  %71 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool100 = icmp ne %struct._GList* %71, null
  br i1 %tobool100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %72 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 1
  %73 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond101 = phi %struct._GList* [ %73, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond101, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.98, %for.cond
  %74 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %tobool102 = icmp ne %struct._GimpSessionInfo* %74, null
  br i1 %tobool102, label %if.end.129, label %if.then.103

if.then.103:                                      ; preds = %for.end
  %call104 = call %struct._GimpSessionInfo* @gimp_session_info_new()
  store %struct._GimpSessionInfo* %call104, %struct._GimpSessionInfo** %info, align 8
  %75 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gimp_session_info_set_widget(%struct._GimpSessionInfo* %75, %struct._GtkWidget* %76)
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.103
  %77 = load i32, i32* @gimp_log_flags, align 4
  %and106 = and i32 %77, 16
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.113

if.then.108:                                      ; preds = %do.body.105
  %78 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %79 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call109 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %79)
  %80 = load i32, i32* %toplevel, align 4
  %tobool110 = icmp ne i32 %80, 0
  %cond111 = select i1 %tobool110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)
  %81 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier112 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %81, i32 0, i32 0
  %82 = load i8*, i8** %identifier112, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0), i32 946, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0), %struct._GimpSessionInfo* %78, %struct._GtkWidget* %call109, i8* %cond111, i8* %82)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.108, %do.body.105
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  %83 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %84 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  call void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo* %83, %struct._GimpDialogFactoryEntry* %84)
  %85 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call115 = call i32 @gimp_session_info_is_session_managed(%struct._GimpSessionInfo* %85)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.128

if.then.117:                                      ; preds = %do.end.114
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  %86 = load i32, i32* @gimp_log_flags, align 4
  %and119 = and i32 %86, 1024
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %do.body.118
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %88 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier122 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %88, i32 0, i32 0
  %89 = load i8*, i8** %identifier122, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dialog_factory_add_dialog, i32 0, i32 0), i32 959, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), %struct._GtkWidget* %87, i8* %89)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %do.body.118
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_window_get_type() #6
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call125)
  %92 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %92, i32 2)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %94 = bitcast %struct._GtkWidget* %93 to i8*
  %call127 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*, i8*)* @gimp_dialog_factory_set_user_pos to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.124, %do.end.114
  %95 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %96 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void @gimp_dialog_factory_add_session_info(%struct._GimpDialogFactory* %95, %struct._GimpSessionInfo* %96)
  %97 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %98 = bitcast %struct._GimpSessionInfo* %97 to i8*
  call void @g_object_unref(i8* %98)
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %for.end
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.48
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %100, %struct._GTypeInstance** %__inst132, align 8
  %call135 = call i64 @gimp_dock_window_get_type() #6
  store i64 %call135, i64* %__t134, align 8
  %101 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst132, align 8
  %tobool138 = icmp ne %struct._GTypeInstance* %101, null
  br i1 %tobool138, label %if.else.140, label %if.then.139

if.then.139:                                      ; preds = %if.end.130
  store i32 0, i32* %__r137, align 4
  br label %if.end.151

if.else.140:                                      ; preds = %if.end.130
  %102 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst132, align 8
  %g_class141 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %102, i32 0, i32 0
  %103 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class141, align 8
  %tobool142 = icmp ne %struct._GTypeClass* %103, null
  br i1 %tobool142, label %land.lhs.true.143, label %if.else.148

land.lhs.true.143:                                ; preds = %if.else.140
  %104 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst132, align 8
  %g_class144 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %104, i32 0, i32 0
  %105 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class144, align 8
  %g_type145 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %105, i32 0, i32 0
  %106 = load i64, i64* %g_type145, align 8
  %107 = load i64, i64* %__t134, align 8
  %cmp146 = icmp eq i64 %106, %107
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %land.lhs.true.143
  store i32 1, i32* %__r137, align 4
  br label %if.end.150

if.else.148:                                      ; preds = %land.lhs.true.143, %if.else.140
  %108 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst132, align 8
  %109 = load i64, i64* %__t134, align 8
  %call149 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %108, i64 %109) #7
  store i32 %call149, i32* %__r137, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.148, %if.then.147
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.139
  %110 = load i32, i32* %__r137, align 4
  store i32 %110, i32* %tmp152
  %111 = load i32, i32* %tmp152
  %tobool153 = icmp ne i32 %111, 0
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.151
  %112 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %113 = bitcast %struct._GimpDialogFactory* %112 to i8*
  %114 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @factory_signals, i32 0, i64 0), align 4
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %113, i32 %114, i32 0, %struct._GtkWidget* %115)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.end.151
  %116 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p156 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %116, i32 0, i32 1
  %117 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p156, align 8
  %open_dialogs157 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %117, i32 0, i32 2
  %118 = load %struct._GList*, %struct._GList** %open_dialogs157, align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  %call158 = call %struct._GList* @g_list_prepend(%struct._GList* %118, i8* %120)
  %121 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p159 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %121, i32 0, i32 1
  %122 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p159, align 8
  %open_dialogs160 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %122, i32 0, i32 2
  store %struct._GList* %call158, %struct._GList** %open_dialogs160, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %124 = bitcast %struct._GtkWidget* %123 to i8*
  %125 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %126 = bitcast %struct._GimpDialogFactory* %125 to i8*
  %call161 = call i64 @g_signal_connect_object(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDialogFactory*, %struct._GtkWidget*)* @gimp_dialog_factory_remove_dialog to void ()*), i8* %126, i32 2)
  %127 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call162 = call i32 @gimp_session_info_is_session_managed(%struct._GimpSessionInfo* %127)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %if.end.155
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %129 = bitcast %struct._GtkWidget* %128 to i8*
  %130 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %131 = bitcast %struct._GimpDialogFactory* %130 to i8*
  %call165 = call i64 @g_signal_connect_object(i8* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*, %struct._GimpDialogFactory*)* @gimp_dialog_factory_dialog_configure to void ()*), i8* %131, i32 0)
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.10, %if.else.37, %if.then.42, %if.then.47, %do.end.77, %if.then.164, %if.end.155
  ret void
}

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

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

; Function Attrs: nounwind uwtable
define %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %dialog, %struct._GimpDialogFactoryEntry** %entry1) #3 {
entry:
  %retval = alloca %struct._GimpDialogFactory*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %entry.addr = alloca %struct._GimpDialogFactoryEntry**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpDialogFactoryEntry** %entry1, %struct._GimpDialogFactoryEntry*** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_from_widget, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load i32, i32* @gimp_dialog_factory_key, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %do.end
  %call14 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0))
  store i32 %call14, i32* @gimp_dialog_factory_key, align 4
  %call15 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0))
  store i32 %call15, i32* @gimp_dialog_factory_entry_key, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %do.end
  %14 = load %struct._GimpDialogFactoryEntry**, %struct._GimpDialogFactoryEntry*** %entry.addr, align 8
  %tobool17 = icmp ne %struct._GimpDialogFactoryEntry** %14, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %18 = load i32, i32* @gimp_dialog_factory_entry_key, align 4
  %call20 = call i8* @g_object_get_qdata(%struct._GObject* %17, i32 %18)
  %19 = bitcast i8* %call20 to %struct._GimpDialogFactoryEntry*
  %20 = load %struct._GimpDialogFactoryEntry**, %struct._GimpDialogFactoryEntry*** %entry.addr, align 8
  store %struct._GimpDialogFactoryEntry* %19, %struct._GimpDialogFactoryEntry** %20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %24 = load i32, i32* @gimp_dialog_factory_key, align 4
  %call23 = call i8* @g_object_get_qdata(%struct._GObject* %23, i32 %24)
  %25 = bitcast i8* %call23 to %struct._GimpDialogFactory*
  store %struct._GimpDialogFactory* %25, %struct._GimpDialogFactory** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.else.10
  %26 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %retval
  ret %struct._GimpDialogFactory* %26
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dialog_factory_dialog_sane(%struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory* %widget_factory, %struct._GimpDialogFactoryEntry* %widget_entry, %struct._GtkWidget* %widget) #3 {
entry:
  %retval = alloca i32, align 4
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %widget_factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %widget_entry.addr = alloca %struct._GimpDialogFactoryEntry*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDialogFactory* %widget_factory, %struct._GimpDialogFactory** %widget_factory.addr, align 8
  store %struct._GimpDialogFactoryEntry* %widget_entry, %struct._GimpDialogFactoryEntry** %widget_entry.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %widget_factory.addr, align 8
  %tobool = icmp ne %struct._GimpDialogFactory* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %widget_entry.addr, align 8
  %tobool1 = icmp ne %struct._GimpDialogFactoryEntry* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_dialog_sane, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %widget_factory.addr, align 8
  %3 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %cmp = icmp ne %struct._GimpDialogFactory* %2, %3
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_dialog_sane, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @gtk_widget_is_toplevel(%struct._GtkWidget*) #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare i32 @gimp_session_info_is_singleton(%struct._GimpSessionInfo*) #1

declare void @gimp_session_info_set_widget(%struct._GimpSessionInfo*, %struct._GtkWidget*) #1

declare i32 @gimp_session_info_is_session_managed(%struct._GimpSessionInfo*) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gimp_session_info_apply_geometry(%struct._GimpSessionInfo*) #1

declare %struct._GimpSessionInfo* @gimp_session_info_new() #1

declare void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo*, %struct._GimpDialogFactoryEntry*) #1

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dialog_factory_set_user_pos(%struct._GtkWidget* %dialog, %struct._GdkEventConfigure* %cevent, i8* %data) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %cevent.addr = alloca %struct._GdkEventConfigure*, align 8
  %data.addr = alloca i8*, align 8
  %geometry_mask = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GdkEventConfigure* %cevent, %struct._GdkEventConfigure** %cevent.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %2, i32 0)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*, i8*)* @gimp_dialog_factory_set_user_pos to i8*), i8* %5)
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %6, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dialog_factory_set_user_pos, i32 0, i32 0), i32 1329, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0), %struct._GtkWidget* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 128, i32* %geometry_mask, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  %call5 = call i32 @gimp_dialog_factory_get_has_min_size(%struct._GtkWindow* %10)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  %11 = load i32, i32* %geometry_mask, align 4
  %or = or i32 %11, 2
  store i32 %or, i32* %geometry_mask, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_window_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWindow*
  %15 = load i32, i32* %geometry_mask, align 4
  call void @gtk_window_set_geometry_hints(%struct._GtkWindow* %14, %struct._GtkWidget* null, %struct._GdkGeometry* null, i32 %15)
  ret i32 0
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_remove_dialog(%struct._GimpDialogFactory* %factory, %struct._GtkWidget* %dialog) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %dialog_factory = alloca %struct._GimpDialogFactory*, align 8
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %session_info = alloca %struct._GimpSessionInfo*, align 8
  %__inst81 = alloca %struct._GTypeInstance*, align 8
  %__t83 = alloca i64, align 8
  %__r86 = alloca i32, align 4
  %tmp101 = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
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
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dialog_factory_remove_dialog, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_widget_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type27, align 8
  %21 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %20, %21
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %23 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %24 = load i32, i32* %__r19, align 4
  store i32 %24, i32* %tmp34
  %25 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dialog_factory_remove_dialog, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  br label %for.end

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %26 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %26, i32 0, i32 1
  %27 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %27, i32 0, i32 2
  %28 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call40 = call %struct._GList* @g_list_find(%struct._GList* %28, i8* %30)
  %tobool41 = icmp ne %struct._GList* %call40, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %do.end.39
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dialog_factory_remove_dialog, i32 0, i32 0))
  br label %for.end

if.end.43:                                        ; preds = %do.end.39
  %31 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p44 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %31, i32 0, i32 1
  %32 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p44, align 8
  %open_dialogs45 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %32, i32 0, i32 2
  %33 = load %struct._GList*, %struct._GList** %open_dialogs45, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call46 = call %struct._GList* @g_list_remove(%struct._GList* %33, i8* %35)
  %36 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p47 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %36, i32 0, i32 1
  %37 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p47, align 8
  %open_dialogs48 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %37, i32 0, i32 2
  store %struct._GList* %call46, %struct._GList** %open_dialogs48, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call49 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %38, %struct._GimpDialogFactoryEntry** %entry1)
  store %struct._GimpDialogFactory* %call49, %struct._GimpDialogFactory** %dialog_factory, align 8
  %39 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %40 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %41 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call50 = call i32 @gimp_dialog_factory_dialog_sane(%struct._GimpDialogFactory* %39, %struct._GimpDialogFactory* %40, %struct._GimpDialogFactoryEntry* %41, %struct._GtkWidget* %42)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.43
  br label %for.end

if.end.53:                                        ; preds = %if.end.43
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.53
  %43 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %43, 16
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %do.body.54
  %44 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %44, i32 0, i32 0
  %45 = load i8*, i8** %identifier, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dialog_factory_remove_dialog, i32 0, i32 0), i32 1064, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* %45, %struct._GtkWidget* %46)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %do.body.54
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %47 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p59 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %47, i32 0, i32 1
  %48 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p59, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %48, i32 0, i32 3
  %49 = load %struct._GList*, %struct._GList** %session_infos, align 8
  store %struct._GList* %49, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.58
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool60 = icmp ne %struct._GList* %50, null
  br i1 %tobool60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 0
  %52 = load i8*, i8** %data, align 8
  %53 = bitcast i8* %52 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %53, %struct._GimpSessionInfo** %session_info, align 8
  %54 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call62 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %cmp63 = icmp eq %struct._GtkWidget* %call62, %55
  br i1 %cmp63, label %if.then.64, label %if.end.110

if.then.64:                                       ; preds = %for.body
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %56 = load i32, i32* @gimp_log_flags, align 4
  %and66 = and i32 %56, 16
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %do.body.65
  %57 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %58 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call69 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %58)
  %59 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier70 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %59, i32 0, i32 0
  %60 = load i8*, i8** %identifier70, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dialog_factory_remove_dialog, i32 0, i32 0), i32 1075, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i32 0, i32 0), %struct._GimpSessionInfo* %57, %struct._GtkWidget* %call69, i8* %60)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %do.body.65
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %61 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  call void @gimp_session_info_set_widget(%struct._GimpSessionInfo* %61, %struct._GtkWidget* null)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gimp_dialog_factory_unset_widget_data(%struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call73 = call i32 @g_signal_handlers_disconnect_matched(i8* %64, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*, i8*)* @gimp_dialog_factory_set_user_pos to i8*), i8* null)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %68 = bitcast %struct._GimpDialogFactory* %67 to i8*
  %call74 = call i32 @g_signal_handlers_disconnect_matched(i8* %66, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDialogFactory*, %struct._GtkWidget*)* @gimp_dialog_factory_remove_dialog to i8*), i8* %68)
  %69 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call75 = call i32 @gimp_session_info_is_session_managed(%struct._GimpSessionInfo* %69)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %do.end.72
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %72 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %73 = bitcast %struct._GimpDialogFactory* %72 to i8*
  %call78 = call i32 @g_signal_handlers_disconnect_matched(i8* %71, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*, %struct._GimpDialogFactory*)* @gimp_dialog_factory_dialog_configure to i8*), i8* %73)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %do.end.72
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %75, %struct._GTypeInstance** %__inst81, align 8
  %call84 = call i64 @gimp_dock_window_get_type() #6
  store i64 %call84, i64* %__t83, align 8
  %76 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %tobool87 = icmp ne %struct._GTypeInstance* %76, null
  br i1 %tobool87, label %if.else.89, label %if.then.88

if.then.88:                                       ; preds = %if.end.79
  store i32 0, i32* %__r86, align 4
  br label %if.end.100

if.else.89:                                       ; preds = %if.end.79
  %77 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %g_class90 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %77, i32 0, i32 0
  %78 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class90, align 8
  %tobool91 = icmp ne %struct._GTypeClass* %78, null
  br i1 %tobool91, label %land.lhs.true.92, label %if.else.97

land.lhs.true.92:                                 ; preds = %if.else.89
  %79 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %g_class93 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %79, i32 0, i32 0
  %80 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class93, align 8
  %g_type94 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %80, i32 0, i32 0
  %81 = load i64, i64* %g_type94, align 8
  %82 = load i64, i64* %__t83, align 8
  %cmp95 = icmp eq i64 %81, %82
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %land.lhs.true.92
  store i32 1, i32* %__r86, align 4
  br label %if.end.99

if.else.97:                                       ; preds = %land.lhs.true.92, %if.else.89
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %84 = load i64, i64* %__t83, align 8
  %call98 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %83, i64 %84) #7
  store i32 %call98, i32* %__r86, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.88
  %85 = load i32, i32* %__r86, align 4
  store i32 %85, i32* %tmp101
  %86 = load i32, i32* %tmp101
  %tobool102 = icmp ne i32 %86, 0
  br i1 %tobool102, label %if.then.103, label %if.end.109

if.then.103:                                      ; preds = %if.end.100
  %87 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p104 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %87, i32 0, i32 1
  %88 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p104, align 8
  %session_infos105 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %88, i32 0, i32 3
  %89 = load %struct._GList*, %struct._GList** %session_infos105, align 8
  %90 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %91 = bitcast %struct._GimpSessionInfo* %90 to i8*
  %call106 = call %struct._GList* @g_list_remove(%struct._GList* %89, i8* %91)
  %92 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p107 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %92, i32 0, i32 1
  %93 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p107, align 8
  %session_infos108 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %93, i32 0, i32 3
  store %struct._GList* %call106, %struct._GList** %session_infos108, align 8
  %94 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %95 = bitcast %struct._GimpSessionInfo* %94 to i8*
  call void @g_object_unref(i8* %95)
  %96 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %97 = bitcast %struct._GimpDialogFactory* %96 to i8*
  %98 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @factory_signals, i32 0, i64 1), align 4
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %97, i32 %98, i32 0, %struct._GtkWidget* %99)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.103, %if.end.100
  br label %for.end

if.end.110:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.110
  %100 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool111 = icmp ne %struct._GList* %100, null
  br i1 %tobool111, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %101 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %101, i32 0, i32 1
  %102 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %102, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.10, %if.else.37, %if.then.42, %if.then.52, %if.end.109, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dialog_factory_dialog_configure(%struct._GtkWidget* %dialog, %struct._GdkEventConfigure* %cevent, %struct._GimpDialogFactory* %factory) #3 {
entry:
  %retval = alloca i32, align 4
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %cevent.addr = alloca %struct._GdkEventConfigure*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %dialog_factory = alloca %struct._GimpDialogFactory*, align 8
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %list = alloca %struct._GList*, align 8
  %session_info = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GdkEventConfigure* %cevent, %struct._GdkEventConfigure** %cevent.addr, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %1, i32 0, i32 2
  %2 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %2, i8* %4)
  %tobool = icmp ne %struct._GList* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dialog_factory_dialog_configure, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call2 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %5, %struct._GimpDialogFactoryEntry** %entry1)
  store %struct._GimpDialogFactory* %call2, %struct._GimpDialogFactory** %dialog_factory, align 8
  %6 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %7 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %8 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call3 = call i32 @gimp_dialog_factory_dialog_sane(%struct._GimpDialogFactory* %6, %struct._GimpDialogFactory* %7, %struct._GimpDialogFactoryEntry* %8, %struct._GtkWidget* %9)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p7 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %10, i32 0, i32 1
  %11 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p7, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %11, i32 0, i32 3
  %12 = load %struct._GList*, %struct._GList** %session_infos, align 8
  store %struct._GList* %12, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.6
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %13, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %16, %struct._GimpSessionInfo** %session_info, align 8
  %17 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call9 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %call9, %18
  br i1 %cmp, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %for.body
  %19 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %20 = load %struct._GdkEventConfigure*, %struct._GdkEventConfigure** %cevent.addr, align 8
  call void @gimp_session_info_read_geometry(%struct._GimpSessionInfo* %19, %struct._GdkEventConfigure* %20)
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %21 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %21, 16
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %do.body
  %22 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %22, i32 0, i32 0
  %23 = load i8*, i8** %identifier, align 8
  %24 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call13 = call i32 @gimp_session_info_get_x(%struct._GimpSessionInfo* %24)
  %25 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call14 = call i32 @gimp_session_info_get_y(%struct._GimpSessionInfo* %25)
  %26 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call15 = call i32 @gimp_session_info_get_width(%struct._GimpSessionInfo* %26)
  %27 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call16 = call i32 @gimp_session_info_get_height(%struct._GimpSessionInfo* %27)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dialog_factory_dialog_configure, i32 0, i32 0), i32 1379, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.54, i32 0, i32 0), i8* %23, i32 %call13, i32 %call14, i32 %call15, i32 %call16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %for.end

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %28, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %do.end, %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory* %factory, i8* %identifier, %struct._GtkWidget* %dialog) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %identifier.addr = alloca i8*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %dialog_factory = alloca %struct._GimpDialogFactory*, align 8
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
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
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_add_foreign, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp13 = icmp ne i8* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_add_foreign, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gtk_widget_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_add_foreign, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call47 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %27)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.46
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_add_foreign, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call53 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %28, %struct._GimpDialogFactoryEntry** %entry1)
  store %struct._GimpDialogFactory* %call53, %struct._GimpDialogFactory** %dialog_factory, align 8
  %29 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %tobool54 = icmp ne %struct._GimpDialogFactory* %29, null
  br i1 %tobool54, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.52
  %30 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %tobool55 = icmp ne %struct._GimpDialogFactoryEntry* %30, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false, %do.end.52
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_add_foreign, i32 0, i32 0))
  br label %return

if.end.57:                                        ; preds = %lor.lhs.false
  %31 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %32 = load i8*, i8** %identifier.addr, align 8
  %call58 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %31, i8* %32)
  store %struct._GimpDialogFactoryEntry* %call58, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %33 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %tobool59 = icmp ne %struct._GimpDialogFactoryEntry* %33, null
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  %34 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_add_foreign, i32 0, i32 0), i8* %34)
  br label %return

if.end.61:                                        ; preds = %if.end.57
  %35 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %new_func = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %35, i32 0, i32 5
  %36 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)** %new_func, align 8
  %tobool62 = icmp ne %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* %36, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  %37 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_add_foreign, i32 0, i32 0), i8* %37)
  br label %return

if.end.64:                                        ; preds = %if.end.61
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %39 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %40 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  call void @gimp_dialog_factory_set_widget_data(%struct._GtkWidget* %38, %struct._GimpDialogFactory* %39, %struct._GimpDialogFactoryEntry* %40)
  %41 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gimp_dialog_factory_add_dialog(%struct._GimpDialogFactory* %41, %struct._GtkWidget* %42)
  br label %return

return:                                           ; preds = %if.end.64, %if.then.63, %if.then.60, %if.then.56, %if.else.50, %if.else.43, %if.else.15, %if.else.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_set_widget_data(%struct._GtkWidget* %dialog, %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactoryEntry* %entry1) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %entry.addr = alloca %struct._GimpDialogFactoryEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDialogFactoryEntry* %entry1, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_dialog_factory_set_widget_data, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.49

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %14 = bitcast %struct._GimpDialogFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_dialog_factory_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type27, align 8
  %21 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %20, %21
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %23 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %24 = load i32, i32* %__r19, align 4
  store i32 %24, i32* %tmp34
  %25 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_dialog_factory_set_widget_data, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.49

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %26 = load i32, i32* @gimp_dialog_factory_key, align 4
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.end.44, label %if.then.41

if.then.41:                                       ; preds = %do.end.39
  %call42 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0))
  store i32 %call42, i32* @gimp_dialog_factory_key, align 4
  %call43 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0))
  store i32 %call43, i32* @gimp_dialog_factory_entry_key, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %do.end.39
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %30 = load i32, i32* @gimp_dialog_factory_key, align 4
  %31 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %32 = bitcast %struct._GimpDialogFactory* %31 to i8*
  call void @g_object_set_qdata(%struct._GObject* %29, i32 %30, i8* %32)
  %33 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %tobool46 = icmp ne %struct._GimpDialogFactoryEntry* %33, null
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.44
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call48 to %struct._GObject*
  %37 = load i32, i32* @gimp_dialog_factory_entry_key, align 4
  %38 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %39 = bitcast %struct._GimpDialogFactoryEntry* %38 to i8*
  call void @g_object_set_qdata(%struct._GObject* %36, i32 %37, i8* %39)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.10, %if.else.37, %if.then.47, %if.end.44
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_unset_widget_data(%struct._GtkWidget* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_dialog_factory_unset_widget_data, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* @gimp_dialog_factory_key, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %17 = load i32, i32* @gimp_dialog_factory_key, align 4
  call void @g_object_set_qdata(%struct._GObject* %16, i32 %17, i8* null)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %21 = load i32, i32* @gimp_dialog_factory_entry_key, align 4
  call void @g_object_set_qdata(%struct._GObject* %20, i32 %21, i8* null)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_hide_dialog(%struct._GtkWidget* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %factory = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %factory, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_hide_dialog, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call12 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_hide_dialog, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.25

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call18 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %14, %struct._GimpDialogFactoryEntry** null)
  store %struct._GimpDialogFactory* %call18, %struct._GimpDialogFactory** %factory, align 8
  %tobool19 = icmp ne %struct._GimpDialogFactory* %call18, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.17
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dialog_factory_hide_dialog, i32 0, i32 0))
  br label %if.end.25

if.end.21:                                        ; preds = %do.end.17
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %16, i32 0, i32 1
  %17 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %dialog_state = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %17, i32 0, i32 5
  %18 = load i32, i32* %dialog_state, align 4
  %cmp22 = icmp ne i32 %18, 0
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.9, %if.else.15, %if.then.20, %if.then.23, %if.end.21
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_set_state(%struct._GimpDialogFactory* %factory, i32 %state) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %state.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store i32 %state, i32* %state.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dialog_factory_set_state, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %state.addr, align 4
  %14 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %14, i32 0, i32 1
  %15 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %dialog_state = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %15, i32 0, i32 5
  store i32 %13, i32* %dialog_state, align 4
  %16 = load i32, i32* %state.addr, align 4
  %cmp11 = icmp eq i32 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.end
  %17 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  call void @gimp_dialog_factory_show(%struct._GimpDialogFactory* %17)
  br label %if.end.14

if.else.13:                                       ; preds = %do.end
  %18 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  call void @gimp_dialog_factory_hide(%struct._GimpDialogFactory* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.else.13, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_show(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %list = alloca %struct._GList*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %visibility = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %1, i32 0, i32 2
  %2 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  store %struct._GList* %2, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.35

land.lhs.true.9:                                  ; preds = %if.end.7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call10 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %20)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.35

if.then.12:                                       ; preds = %land.lhs.true.9
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %call15 = call i8* @g_object_get_data(%struct._GObject* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0))
  %24 = ptrtoint i8* %call15 to i64
  %conv = trunc i64 %24 to i32
  store i32 %conv, i32* %visibility, align 4
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call16 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %25)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.34, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %if.then.12
  %26 = load i32, i32* %visibility, align 4
  %cmp19 = icmp eq i32 %26, 3
  br i1 %cmp19, label %if.then.21, label %if.end.34

if.then.21:                                       ; preds = %land.lhs.true.18
  br label %do.body

do.body:                                          ; preds = %if.then.21
  %27 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %27, 1024
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %do.body
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_window_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call24)
  %30 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWindow*
  %call26 = call i8* @gtk_window_get_title(%struct._GtkWindow* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dialog_factory_show, i32 0, i32 0), i32 1507, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), i8* %call26, %struct._GtkWidget* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call29 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %36)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %do.end
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call32 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %37)
  call void @gdk_window_raise(%struct._GdkDrawable* %call32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %do.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.18, %if.then.12
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.9, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool36 = icmp ne %struct._GList* %38, null
  br i1 %tobool36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %40, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_hide(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %list = alloca %struct._GList*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry14 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %visibility = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %1, i32 0, i32 2
  %2 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  store %struct._GList* %2, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.32

land.lhs.true.9:                                  ; preds = %if.end.7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call10 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %20)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.32

if.then.12:                                       ; preds = %land.lhs.true.9
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %entry14, align 8
  store i32 0, i32* %visibility, align 4
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call16 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %21, %struct._GimpDialogFactoryEntry** %entry14)
  %22 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry14, align 8
  %hideable = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %22, i32 0, i32 12
  %23 = load i32, i32* %hideable, align 4
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.12
  br label %for.inc

if.end.19:                                        ; preds = %if.then.12
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call20 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %24)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %if.end.19
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %25)
  store i32 3, i32* %visibility, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.22
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 1024
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %do.body
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_window_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call25)
  %29 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkWindow*
  %call27 = call i8* @gtk_window_get_title(%struct._GtkWindow* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dialog_factory_hide, i32 0, i32 0), i32 1471, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8* %call27, %struct._GtkWidget* %30)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.28
  br label %if.end.30

if.else.29:                                       ; preds = %if.end.19
  store i32 1, i32* %visibility, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %do.end
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %34 = load i32, i32* %visibility, align 4
  %conv = zext i32 %34 to i64
  %35 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* %35)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %land.lhs.true.9, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.32, %if.then.18
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool33 = icmp ne %struct._GList* %36, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %38, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dialog_factory_get_state(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %retval = alloca i32, align 4
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dialog_factory_get_state, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %dialog_state = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %14, i32 0, i32 5
  %15 = load i32, i32* %dialog_state, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_show_with_display(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_dialog_factory_show_with_display, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.13

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %dialog_state = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %14, i32 0, i32 5
  %15 = load i32, i32* %dialog_state, align 4
  %cmp11 = icmp eq i32 %15, 2
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  call void @gimp_dialog_factory_set_state(%struct._GimpDialogFactory* %16, i32 0)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_hide_with_display(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_dialog_factory_hide_with_display, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.13

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %dialog_state = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %14, i32 0, i32 5
  %15 = load i32, i32* %dialog_state, align 4
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  call void @gimp_dialog_factory_set_state(%struct._GimpDialogFactory* %16, i32 2)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare i32 @g_quark_from_static_string(i8*) #1

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_set_has_min_size(%struct._GtkWindow* %window, i32 %has_min_size) #3 {
entry:
  %window.addr = alloca %struct._GtkWindow*, align 8
  %has_min_size.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  store i32 %has_min_size, i32* %has_min_size.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dialog_factory_set_has_min_size, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %14 = bitcast %struct._GtkWindow* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %16 = load i32, i32* %has_min_size.addr, align 4
  %tobool12 = icmp ne i32 %16, 0
  %cond = select i1 %tobool12, i32 1, i32 0
  %conv = sext i32 %cond to i64
  %17 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i8* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dialog_factory_get_has_min_size(%struct._GtkWindow* %window) #3 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dialog_factory_get_has_min_size, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %14 = bitcast %struct._GtkWindow* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0))
  %16 = ptrtoint i8* %call12 to i64
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_save(%struct._GimpDialogFactory* %factory, %struct._GimpConfigWriter* %writer) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %infos = alloca %struct._GList*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %1, i32 0, i32 3
  %2 = load %struct._GList*, %struct._GList** %session_infos, align 8
  store %struct._GList* %2, %struct._GList** %infos, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GList*, %struct._GList** %infos, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %infos, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %6, %struct._GimpSessionInfo** %info, align 8
  %7 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call = call i32 @gimp_session_info_is_session_managed(%struct._GimpSessionInfo* %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call2 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %8)
  %cmp = icmp eq %struct._GimpDialogFactoryEntry* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call3 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %9)
  %tobool4 = icmp ne %struct._GtkWidget* %call3, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void @gimp_session_info_get_info(%struct._GimpSessionInfo* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0))
  %12 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %14 = bitcast %struct._GimpDialogFactory* %13 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %14)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %12, i8* %call7)
  %15 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %16 = bitcast %struct._GimpSessionInfo* %15 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %18 = bitcast %struct._GTypeClass* %17 to i8*
  %call8 = call i64 @gimp_config_interface_get_type() #6
  %call9 = call i8* @g_type_interface_peek(i8* %18, i64 %call8)
  %19 = bitcast i8* %call9 to %struct._GimpConfigInterface*
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %19, i32 0, i32 1
  %20 = load i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %21 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %22 = bitcast %struct._GimpSessionInfo* %21 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call10)
  %23 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  %24 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call12 = call i32 %20(%struct._GimpConfig* %23, %struct._GimpConfigWriter* %24, i8* null)
  %25 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %25)
  %26 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call13 = call %struct._GtkWidget* @gimp_session_info_get_widget(%struct._GimpSessionInfo* %26)
  %tobool14 = icmp ne %struct._GtkWidget* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.6
  %27 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void @gimp_session_info_clear_info(%struct._GimpSessionInfo* %27)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.16, %if.then
  %28 = load %struct._GList*, %struct._GList** %infos, align 8
  %tobool17 = icmp ne %struct._GList* %28, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %infos, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %infos, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_session_info_get_info(%struct._GimpSessionInfo*) #1

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i8* @g_type_interface_peek(i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare void @gimp_session_info_clear_info(%struct._GimpSessionInfo*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_restore(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %infos = alloca %struct._GList*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %1, i32 0, i32 3
  %2 = load %struct._GList*, %struct._GList** %session_infos, align 8
  store %struct._GList* %2, %struct._GList** %infos, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GList*, %struct._GList** %infos, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %infos, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpSessionInfo*
  store %struct._GimpSessionInfo* %6, %struct._GimpSessionInfo** %info, align 8
  %7 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call = call i32 @gimp_session_info_get_open(%struct._GimpSessionInfo* %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %9 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  call void @gimp_session_info_restore(%struct._GimpSessionInfo* %8, %struct._GimpDialogFactory* %9)
  br label %if.end.4

if.else:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.else
  %10 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %10, 16
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  %11 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dialog_factory_restore, i32 0, i32 0), i32 1441, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i32 0, i32 0), %struct._GimpSessionInfo* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %12 = load %struct._GList*, %struct._GList** %infos, align 8
  %tobool5 = icmp ne %struct._GList* %12, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %infos, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %infos, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_session_info_get_open(%struct._GimpSessionInfo*) #1

declare void @gimp_session_info_restore(%struct._GimpSessionInfo*, %struct._GimpDialogFactory*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_set_busy(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  %list = alloca %struct._GList*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GdkDisplay* null, %struct._GdkDisplay** %display, align 8
  store %struct._GdkCursor* null, %struct._GdkCursor** %cursor, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %tobool = icmp ne %struct._GimpDialogFactory* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.35

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %1, i32 0, i32 1
  %2 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %2, i32 0, i32 2
  %3 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  store %struct._GList* %3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %4, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GtkWidget*
  store %struct._GtkWidget* %7, %struct._GtkWidget** %widget, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.9

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #7
  store i32 %call8, i32* %__r, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.31

land.lhs.true.12:                                 ; preds = %if.end.10
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call13 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %21)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.31

if.then.15:                                       ; preds = %land.lhs.true.12
  %22 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %tobool16 = icmp ne %struct._GdkDisplay* %22, null
  br i1 %tobool16, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %if.then.15
  %23 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call17 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %24)
  %cmp18 = icmp ne %struct._GdkDisplay* %23, %call17
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %lor.lhs.false, %if.then.15
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call20 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %25)
  store %struct._GdkDisplay* %call20, %struct._GdkDisplay** %display, align 8
  %26 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %tobool21 = icmp ne %struct._GdkCursor* %26, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  %27 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %27)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.19
  %28 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call24 = call %struct._GdkCursor* @gimp_cursor_new(%struct._GdkDisplay* %28, i32 0, i32 1, i32 150, i32 0, i32 0)
  store %struct._GdkCursor* %call24, %struct._GdkCursor** %cursor, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.23, %lor.lhs.false
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call26 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %29)
  %tobool27 = icmp ne %struct._GdkDrawable* %call26, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.25
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call29 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %30)
  %31 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call29, %struct._GdkCursor* %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true.12, %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %32, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %tobool33 = icmp ne %struct._GdkCursor* %35, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end
  %36 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %36)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then, %if.then.34, %for.end
  ret void
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare %struct._GdkCursor* @gimp_cursor_new(%struct._GdkDisplay*, i32, i32, i32, i32, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_unset_busy(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %list = alloca %struct._GList*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %tobool = icmp ne %struct._GimpDialogFactory* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %1, i32 0, i32 1
  %2 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %2, i32 0, i32 2
  %3 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  store %struct._GList* %3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %4, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GtkWidget*
  store %struct._GtkWidget* %7, %struct._GtkWidget** %widget, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #6
  store i64 %call, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.9

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #7
  store i32 %call8, i32* %__r, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.21

land.lhs.true.12:                                 ; preds = %if.end.10
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call13 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %21)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %land.lhs.true.12
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call16 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %22)
  %tobool17 = icmp ne %struct._GdkDrawable* %call16, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.15
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call19 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %23)
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call19, %struct._GdkCursor* null)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true.12, %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %24, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3 {
entry:
  %retval = alloca %struct._GimpDialogFactory*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** @gimp_toplevel_factory, align 8
  %cmp = icmp ne %struct._GimpDialogFactory* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dialog_factory_get_singleton, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0))
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** @gimp_toplevel_factory, align 8
  store %struct._GimpDialogFactory* %1, %struct._GimpDialogFactory** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %2 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %retval
  ret %struct._GimpDialogFactory* %2
}

; Function Attrs: nounwind uwtable
define void @gimp_dialog_factory_set_singleton(%struct._GimpDialogFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** @gimp_toplevel_factory, align 8
  %cmp = icmp eq %struct._GimpDialogFactory* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %cmp1 = icmp eq %struct._GimpDialogFactory* %1, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dialog_factory_set_singleton, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDialogFactory* %2, %struct._GimpDialogFactory** @gimp_toplevel_factory, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_class_init(%struct._GimpDialogFactoryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDialogFactoryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDialogFactoryClass* %klass, %struct._GimpDialogFactoryClass** %klass.addr, align 8
  %0 = load %struct._GimpDialogFactoryClass*, %struct._GimpDialogFactoryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDialogFactoryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_dialog_factory_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dialog_factory_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GimpDialogFactoryClass*, %struct._GimpDialogFactoryClass** %klass.addr, align 8
  %6 = bitcast %struct._GimpDialogFactoryClass* %5 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %call1 = call i64 @gimp_dock_window_get_type() #6
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i64 %7, i32 2, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call1)
  store i32 %call2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @factory_signals, i32 0, i64 0), align 4
  %8 = load %struct._GimpDialogFactoryClass*, %struct._GimpDialogFactoryClass** %klass.addr, align 8
  %9 = bitcast %struct._GimpDialogFactoryClass* %8 to %struct._GTypeClass*
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type3, align 8
  %call4 = call i64 @gimp_dock_window_get_type() #6
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i64 %10, i32 2, i32 168, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call4)
  store i32 %call5, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @factory_signals, i32 0, i64 1), align 4
  %11 = load %struct._GimpDialogFactoryClass*, %struct._GimpDialogFactoryClass** %klass.addr, align 8
  %12 = bitcast %struct._GimpDialogFactoryClass* %11 to i8*
  call void @g_type_class_add_private(i8* %12, i64 48)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %factory = alloca %struct._GimpDialogFactory*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_factory_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDialogFactory*
  store %struct._GimpDialogFactory* %2, %struct._GimpDialogFactory** %factory, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %entry
  %3 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %3, i32 0, i32 1
  %4 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %open_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %4, i32 0, i32 2
  %5 = load %struct._GList*, %struct._GList** %open_dialogs, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p2 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %6, i32 0, i32 1
  %7 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p2, align 8
  %open_dialogs3 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %7, i32 0, i32 2
  %8 = load %struct._GList*, %struct._GList** %open_dialogs3, align 8
  store %struct._GList* %8, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %while.body
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %9, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct._GtkWidget*
  %call5 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %12)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data7 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data7, align 8
  %15 = bitcast i8* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %16)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %17, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %20, null
  br i1 %tobool11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %for.end
  %21 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p13 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %21, i32 0, i32 1
  %22 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p13, align 8
  %open_dialogs14 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %22, i32 0, i32 2
  %23 = load %struct._GList*, %struct._GList** %open_dialogs14, align 8
  %call15 = call i32 @g_list_length(%struct._GList* %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dialog_factory_dispose, i32 0, i32 0), i32 %call15)
  br label %while.end

if.end.16:                                        ; preds = %for.end
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  %24 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p17 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %24, i32 0, i32 1
  %25 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p17, align 8
  %open_dialogs18 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %25, i32 0, i32 2
  %26 = load %struct._GList*, %struct._GList** %open_dialogs18, align 8
  %tobool19 = icmp ne %struct._GList* %26, null
  br i1 %tobool19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %while.end
  %27 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p21 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %27, i32 0, i32 1
  %28 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p21, align 8
  %open_dialogs22 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %28, i32 0, i32 2
  %29 = load %struct._GList*, %struct._GList** %open_dialogs22, align 8
  call void @g_list_free(%struct._GList* %29)
  %30 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p23 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %30, i32 0, i32 1
  %31 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p23, align 8
  %open_dialogs24 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %31, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %open_dialogs24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %while.end
  %32 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p26 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %32, i32 0, i32 1
  %33 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p26, align 8
  %session_infos = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %33, i32 0, i32 3
  %34 = load %struct._GList*, %struct._GList** %session_infos, align 8
  %tobool27 = icmp ne %struct._GList* %34, null
  br i1 %tobool27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end.25
  %35 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p29 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %35, i32 0, i32 1
  %36 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p29, align 8
  %session_infos30 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %36, i32 0, i32 3
  %37 = load %struct._GList*, %struct._GList** %session_infos30, align 8
  call void @g_list_free_full(%struct._GList* %37, void (i8*)* @g_object_unref)
  %38 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p31 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %38, i32 0, i32 1
  %39 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p31, align 8
  %session_infos32 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %39, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %session_infos32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %if.end.25
  %40 = load i8*, i8** @gimp_dialog_factory_parent_class, align 8
  %41 = bitcast i8* %40 to %struct._GTypeClass*
  %call34 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %41, i64 80)
  %42 = bitcast %struct._GTypeClass* %call34 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %42, i32 0, i32 5
  %43 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %44 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %43(%struct._GObject* %44)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dialog_factory_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %factory = alloca %struct._GimpDialogFactory*, align 8
  %list = alloca %struct._GList*, align 8
  %entry2 = alloca %struct._GimpDialogFactoryEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dialog_factory_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDialogFactory*
  store %struct._GimpDialogFactory* %2, %struct._GimpDialogFactory** %factory, align 8
  %3 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %3, i32 0, i32 1
  %4 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p, align 8
  %registered_dialogs = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %4, i32 0, i32 4
  %5 = load %struct._GList*, %struct._GList** %registered_dialogs, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpDialogFactoryEntry*
  store %struct._GimpDialogFactoryEntry* %9, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %10 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %10, i32 0, i32 0
  %11 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %name = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %blurb = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %14, i32 0, i32 2
  %15 = load i8*, i8** %blurb, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %stock_id = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %16, i32 0, i32 3
  %17 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %help_id = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %18, i32 0, i32 4
  %19 = load i8*, i8** %help_id, align 8
  call void @g_free(i8* %19)
  br label %do.body

do.body:                                          ; preds = %for.body
  %20 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %21 = bitcast %struct._GimpDialogFactoryEntry* %20 to i8*
  call void @g_slice_free1(i64 88, i8* %21)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %22, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %24, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p4 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %25, i32 0, i32 1
  %26 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p4, align 8
  %registered_dialogs5 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %26, i32 0, i32 4
  %27 = load %struct._GList*, %struct._GList** %registered_dialogs5, align 8
  %tobool6 = icmp ne %struct._GList* %27, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %28 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p7 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %28, i32 0, i32 1
  %29 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p7, align 8
  %registered_dialogs8 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %29, i32 0, i32 4
  %30 = load %struct._GList*, %struct._GList** %registered_dialogs8, align 8
  call void @g_list_free(%struct._GList* %30)
  %31 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %p9 = getelementptr inbounds %struct._GimpDialogFactory, %struct._GimpDialogFactory* %31, i32 0, i32 1
  %32 = load %struct._GimpDialogFactoryPrivate*, %struct._GimpDialogFactoryPrivate** %p9, align 8
  %registered_dialogs10 = getelementptr inbounds %struct._GimpDialogFactoryPrivate, %struct._GimpDialogFactoryPrivate* %32, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %registered_dialogs10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %33 = load i8*, i8** @gimp_dialog_factory_parent_class, align 8
  %34 = bitcast i8* %33 to %struct._GTypeClass*
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %34, i64 80)
  %35 = bitcast %struct._GTypeClass* %call11 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %35, i32 0, i32 6
  %36 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %37 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %36(%struct._GObject* %37)
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_dock_with_window_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, i32) #1

declare %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory*) #1

declare void @gimp_dock_add_book(%struct._GimpDock*, %struct._GimpDockbook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #2

declare %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_dialog_factory_constructor(%struct._GimpDialogFactory* %factory, %struct._GimpDialogFactoryEntry* %entry1, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #3 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %entry.addr = alloca %struct._GimpDialogFactoryEntry*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %dockable3 = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpDialogFactoryEntry* %entry1, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %new_func = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %0, i32 0, i32 5
  %1 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)** %new_func, align 8
  %2 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %5 = load i32, i32* %view_size.addr, align 4
  %call = call %struct._GtkWidget* %1(%struct._GimpDialogFactory* %2, %struct._GimpContext* %3, %struct._GimpUIManager* %4, i32 %5)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %dockable = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %7, i32 0, i32 14
  %8 = load i32, i32* %dockable, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._GtkWidget* null, %struct._GtkWidget** %dockable3, align 8
  %9 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %name = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %blurb = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %11, i32 0, i32 2
  %12 = load i8*, i8** %blurb, align 8
  %13 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %stock_id = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %13, i32 0, i32 3
  %14 = load i8*, i8** %stock_id, align 8
  %15 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %15, i32 0, i32 4
  %16 = load i8*, i8** %help_id, align 8
  %call4 = call %struct._GtkWidget* @gimp_dockable_new(i8* %10, i8* %12, i8* %14, i8* %16)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dockable3, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable3, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call5)
  %19 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_container_add(%struct._GtkContainer* %19, %struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable3, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %25 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry.addr, align 8
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %25, i32 0, i32 0
  %26 = load i8*, i8** %identifier, align 8
  call void @g_object_set_data(%struct._GObject* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0), i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable3, align 8
  store %struct._GtkWidget* %27, %struct._GtkWidget** %widget, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  ret %struct._GtkWidget* %28
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #2

declare void @gimp_dock_add(%struct._GimpDock*, %struct._GimpDockable*, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_dock_window_add_dock(%struct._GimpDockWindow*, %struct._GimpDock*, i32) #1

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable*) #1

declare %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare i32 @gtk_notebook_page_num(%struct._GtkNotebook*, %struct._GtkWidget*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

declare void @gimp_dockable_blink(%struct._GimpDockable*) #1

declare void @gtk_widget_show_now(%struct._GtkWidget*) #1

declare void @gdk_window_raise(%struct._GdkDrawable*) #1

declare %struct._GtkWidget* @gimp_dockable_new(i8*, i8*, i8*, i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_object_set_qdata(%struct._GObject*, i32, i8*) #1

declare void @gtk_window_set_geometry_hints(%struct._GtkWindow*, %struct._GtkWidget*, %struct._GdkGeometry*, i32) #1

declare void @gimp_session_info_read_geometry(%struct._GimpSessionInfo*, %struct._GdkEventConfigure*) #1

declare i32 @gimp_session_info_get_x(%struct._GimpSessionInfo*) #1

declare i32 @gimp_session_info_get_y(%struct._GimpSessionInfo*) #1

declare i32 @gimp_session_info_get_width(%struct._GimpSessionInfo*) #1

declare i32 @gimp_session_info_get_height(%struct._GimpSessionInfo*) #1

declare i8* @gtk_window_get_title(%struct._GtkWindow*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
