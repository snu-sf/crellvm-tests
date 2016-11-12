; ModuleID = './app/widgets/gimpsettingsbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSettingsBoxClass = type { %struct._GtkBoxClass, void (%struct._GimpSettingsBox*, %struct._GtkFileChooserDialog*, i32)*, void (%struct._GimpSettingsBox*, i8*)*, void (%struct._GimpSettingsBox*, i8*)* }
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
%struct._GimpSettingsBox = type { %struct._GtkBox }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GtkOrientable = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpSettingsBoxPrivate = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._Gimp*, %struct._GObject*, %struct._GimpContainer*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpConfig = type opaque
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpContainerView = type opaque
%struct._GimpViewable = type opaque
%struct._GtkImageMenuItem = type { %struct._GtkMenuItem, %struct._GtkWidget* }
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct._GtkFileChooser = type opaque

@gimp_settings_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpSettingsBox\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_settings_box_new = private unnamed_addr constant [22 x i8] c"gimp_settings_box_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"GIMP_IS_CONFIG (config)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@__func__.gimp_settings_box_add_current = private unnamed_addr constant [30 x i8] c"gimp_settings_box_add_current\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"GIMP_IS_SETTINGS_BOX (box)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@__func__.gimp_settings_box_get_combo = private unnamed_addr constant [28 x i8] c"gimp_settings_box_get_combo\00", align 1
@gimp_settings_box_parent_class = internal global i8* null, align 8
@GimpSettingsBox_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"file-dialog-setup\00", align 1
@settings_box_signals = internal global [3 x i32] zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"gimpsettingsbox.c\00", align 1
@__func__.gimp_settings_box_constructed = private unnamed_addr constant [30 x i8] c"gimp_settings_box_constructed\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"GIMP_IS_GIMP (private->gimp)\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"GIMP_IS_CONFIG (private->config)\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"GIMP_IS_CONTAINER (private->container)\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"private->filename != NULL\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Pick a setting from the list\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"gtk-add\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Add settings to favorites\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"gimp-menu-left\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"_Import Settings from File...\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"_Export Settings to File...\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"_Manage Settings...\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Add Settings to Favorites\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Enter a name for the settings\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Saved Settings\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"gimp-import-export-settings\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Manage Saved Settings\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"gimp-settings-editor-dialog\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.49 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"end of settings\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_settings_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_settings_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_settings_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 848, void (i8*, i8*)* bitcast (void (i8*)* @gimp_settings_box_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSettingsBox*)* @gimp_settings_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_settings_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_settings_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_settings_box_parent_class, align 8
  %1 = load i32, i32* @GimpSettingsBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSettingsBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSettingsBoxClass*
  call void @gimp_settings_box_class_init(%struct._GimpSettingsBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_init(%struct._GimpSettingsBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 0)
  %3 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %4 = bitcast %struct._GimpSettingsBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 6)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_settings_box_new(%struct._Gimp* %gimp, %struct._GObject* %config, %struct._GimpContainer* %container, i8* %filename, i8* %import_dialog_title, i8* %export_dialog_title, i8* %file_dialog_help_id, i8* %default_folder, i8* %last_filename) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %filename.addr = alloca i8*, align 8
  %import_dialog_title.addr = alloca i8*, align 8
  %export_dialog_title.addr = alloca i8*, align 8
  %file_dialog_help_id.addr = alloca i8*, align 8
  %default_folder.addr = alloca i8*, align 8
  %last_filename.addr = alloca i8*, align 8
  %box = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %import_dialog_title, i8** %import_dialog_title.addr, align 8
  store i8* %export_dialog_title, i8** %export_dialog_title.addr, align 8
  store i8* %file_dialog_help_id, i8** %file_dialog_help_id.addr, align 8
  store i8* %default_folder, i8** %default_folder.addr, align 8
  store i8* %last_filename, i8** %last_filename.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_settings_box_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %14 = bitcast %struct._GObject* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_config_interface_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_settings_box_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %27 = bitcast %struct._GimpContainer* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_container_get_type() #8
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_settings_box_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %39 = load i8*, i8** %filename.addr, align 8
  %cmp68 = icmp ne i8* %39, null
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.67
  br label %if.end.71

if.else.70:                                       ; preds = %do.body.67
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_settings_box_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.71:                                        ; preds = %if.then.69
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %call73 = call i64 @gimp_settings_box_get_type() #8
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %41 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %42 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %43 = load i8*, i8** %filename.addr, align 8
  %call74 = call i8* (i64, i8*, ...) @g_object_new(i64 %call73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct._GObject* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct._GimpContainer* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %43, i8* null)
  %44 = bitcast i8* %call74 to %struct._GimpSettingsBox*
  store %struct._GimpSettingsBox* %44, %struct._GimpSettingsBox** %box, align 8
  %45 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %46 = bitcast %struct._GimpSettingsBox* %45 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_settings_box_get_type() #8
  %call76 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %46, i64 %call75)
  %47 = bitcast i8* %call76 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %47, %struct._GimpSettingsBoxPrivate** %private, align 8
  %48 = load i8*, i8** %import_dialog_title.addr, align 8
  %call77 = call noalias i8* @g_strdup(i8* %48)
  %49 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %import_dialog_title78 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %49, i32 0, i32 10
  store i8* %call77, i8** %import_dialog_title78, align 8
  %50 = load i8*, i8** %export_dialog_title.addr, align 8
  %call79 = call noalias i8* @g_strdup(i8* %50)
  %51 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %export_dialog_title80 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %51, i32 0, i32 11
  store i8* %call79, i8** %export_dialog_title80, align 8
  %52 = load i8*, i8** %file_dialog_help_id.addr, align 8
  %call81 = call noalias i8* @g_strdup(i8* %52)
  %53 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog_help_id82 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %53, i32 0, i32 12
  store i8* %call81, i8** %file_dialog_help_id82, align 8
  %54 = load i8*, i8** %default_folder.addr, align 8
  %call83 = call noalias i8* @g_strdup(i8* %54)
  %55 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %default_folder84 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %55, i32 0, i32 13
  store i8* %call83, i8** %default_folder84, align 8
  %56 = load i8*, i8** %last_filename.addr, align 8
  %call85 = call noalias i8* @g_strdup(i8* %56)
  %57 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %last_filename86 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %57, i32 0, i32 14
  store i8* %call85, i8** %last_filename86, align 8
  %58 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %59 = bitcast %struct._GimpSettingsBox* %58 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_widget_get_type() #8
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call87)
  %60 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkWidget*
  store %struct._GtkWidget* %60, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.72, %if.else.70, %if.else.64, %if.else.36, %if.else.9
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %61
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_settings_box_add_current(%struct._GimpSettingsBox* %box, i32 %max_recent) #3 {
entry:
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %max_recent.addr = alloca i32, align 4
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %config = alloca %struct._GimpConfig*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %t = alloca i32, align 4
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  store i32 %max_recent, i32* %max_recent.addr, align 4
  store %struct._GimpConfig* null, %struct._GimpConfig** %config, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_settings_box_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_settings_box_add_current, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %14 = bitcast %struct._GimpSettingsBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_settings_box_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %15, %struct._GimpSettingsBoxPrivate** %private, align 8
  %16 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %16, i32 0, i32 8
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %18 = bitcast %struct._GimpContainer* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_list_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpList*
  %list15 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %list15, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %21, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpConfig*
  store %struct._GimpConfig* %24, %struct._GimpConfig** %config, align 8
  %25 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %26 = bitcast %struct._GimpConfig* %25 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %t, i8* null)
  %27 = load i32, i32* %t, align 4
  %cmp18 = icmp ugt i32 %27, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.27

land.lhs.true.19:                                 ; preds = %for.body
  %28 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %29 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config20 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %29, i32 0, i32 7
  %30 = load %struct._GObject*, %struct._GObject** %config20, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %call23 = call i32 @gimp_config_is_equal_to(%struct._GimpConfig* %28, %struct._GimpConfig* %32)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true.19
  %33 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %34 = bitcast %struct._GimpConfig* %33 to i8*
  %call26 = call i64 @time(i64* null) #7
  %conv = trunc i64 %call26 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %conv, i8* null)
  br label %for.end

if.end.27:                                        ; preds = %land.lhs.true.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool28 = icmp ne %struct._GList* %35, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %37, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %38, null
  br i1 %tobool29, label %if.end.41, label %if.then.30

if.then.30:                                       ; preds = %for.end
  %39 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config31 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %39, i32 0, i32 7
  %40 = load %struct._GObject*, %struct._GObject** %config31, align 8
  %41 = bitcast %struct._GObject* %40 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_config_interface_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call32)
  %42 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpConfig*
  %call34 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %42)
  %43 = bitcast i8* %call34 to %struct._GimpConfig*
  store %struct._GimpConfig* %43, %struct._GimpConfig** %config, align 8
  %44 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %45 = bitcast %struct._GimpConfig* %44 to i8*
  %call35 = call i64 @time(i64* null) #7
  %conv36 = trunc i64 %call35 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %conv36, i8* null)
  %46 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container37 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %46, i32 0, i32 8
  %47 = load %struct._GimpContainer*, %struct._GimpContainer** %container37, align 8
  %48 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %49 = bitcast %struct._GimpConfig* %48 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_object_get_type() #8
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call38)
  %50 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpObject*
  %call40 = call i32 @gimp_container_insert(%struct._GimpContainer* %47, %struct._GimpObject* %50, i32 0)
  %51 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %52 = bitcast %struct._GimpConfig* %51 to i8*
  call void @g_object_unref(i8* %52)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.30, %for.end
  %53 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %54 = load i32, i32* %max_recent.addr, align 4
  call void @gimp_settings_box_truncate_list(%struct._GimpSettingsBox* %53, i32 %54)
  %55 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  call void @gimp_settings_box_serialize(%struct._GimpSettingsBox* %55)
  br label %return

return:                                           ; preds = %if.end.41, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare void @g_object_get(i8*, i8*, ...) #1

declare i32 @gimp_config_is_equal_to(%struct._GimpConfig*, %struct._GimpConfig*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #5

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

declare i32 @gimp_container_insert(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_truncate_list(%struct._GimpSettingsBox* %box, i32 %max_recent) #3 {
entry:
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %max_recent.addr = alloca i32, align 4
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %list = alloca %struct._GList*, align 8
  %n_recent = alloca i32, align 4
  %config = alloca %struct._GimpConfig*, align 8
  %t = alloca i32, align 4
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  store i32 %max_recent, i32* %max_recent.addr, align 4
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  store i32 0, i32* %n_recent, align 4
  %3 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %3, i32 0, i32 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_list_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpList*
  %list4 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %list4, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpConfig*
  store %struct._GimpConfig* %11, %struct._GimpConfig** %config, align 8
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %12, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %15 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %16 = bitcast %struct._GimpConfig* %15 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32* %t, i8* null)
  %17 = load i32, i32* %t, align 4
  %cmp = icmp ugt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* %n_recent, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %n_recent, align 4
  %19 = load i32, i32* %n_recent, align 4
  %20 = load i32, i32* %max_recent.addr, align 4
  %cmp6 = icmp sgt i32 %19, %20
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %21 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container8 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %21, i32 0, i32 8
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container8, align 8
  %23 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %24 = bitcast %struct._GimpConfig* %23 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_object_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call9)
  %25 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpObject*
  %call11 = call i32 @gimp_container_remove(%struct._GimpContainer* %22, %struct._GimpObject* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.12

if.else:                                          ; preds = %cond.end
  br label %while.end

if.end.12:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_serialize(%struct._GimpSettingsBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %3 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %3, i32 0, i32 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  call void @gimp_settings_box_separator_remove(%struct._GimpContainer* %4)
  %5 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %5, i32 0, i32 6
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 4
  %7 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %8, i32 0, i32 9
  %9 = load i8*, i8** %filename, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %9)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), i8* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container3 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %10, i32 0, i32 8
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container3, align 8
  %12 = bitcast %struct._GimpContainer* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_config_interface_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConfig*
  %14 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename6 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %14, i32 0, i32 9
  %15 = load i8*, i8** %filename6, align 8
  %call7 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %13, i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* null, %struct._GError** %error)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %16 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp10 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %16, i32 0, i32 6
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %18, i32 0, i32 2
  %19 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %17, %struct._GObject* null, i32 2, i8* %19)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %20 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container12 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %20, i32 0, i32 8
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container12, align 8
  call void @gimp_settings_box_separator_add(%struct._GimpContainer* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_settings_box_get_combo(%struct._GimpSettingsBox* %box) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_settings_box_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_settings_box_get_combo, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %14 = bitcast %struct._GimpSettingsBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_settings_box_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpSettingsBoxPrivate*
  %combo = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %17
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_class_init(%struct._GimpSettingsBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSettingsBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpSettingsBoxClass* %klass, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpSettingsBoxClass*, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSettingsBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSettingsBoxClass*, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSettingsBoxClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i64 @gtk_file_chooser_dialog_get_type() #8
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i64 %5, i32 2, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__OBJECT_BOOLEAN, i64 4, i32 2, i64 %call1, i64 20)
  store i32 %call2, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @settings_box_signals, i32 0, i64 0), align 4
  %6 = load %struct._GimpSettingsBoxClass*, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpSettingsBoxClass* %6 to %struct._GTypeClass*
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type3, align 8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 %8, i32 2, i32 832, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_BOOLEAN__STRING, i64 20, i32 1, i64 64)
  store i32 %call4, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @settings_box_signals, i32 0, i64 1), align 4
  %9 = load %struct._GimpSettingsBoxClass*, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpSettingsBoxClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 %11, i32 2, i32 840, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_BOOLEAN__STRING, i64 20, i32 1, i64 64)
  store i32 %call6, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @settings_box_signals, i32 0, i64 2), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_settings_box_constructed, void (%struct._GObject*)** %constructed, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_settings_box_finalize, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_settings_box_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_settings_box_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %16 = load %struct._GimpSettingsBoxClass*, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %file_dialog_setup = getelementptr inbounds %struct._GimpSettingsBoxClass, %struct._GimpSettingsBoxClass* %16, i32 0, i32 1
  store void (%struct._GimpSettingsBox*, %struct._GtkFileChooserDialog*, i32)* null, void (%struct._GimpSettingsBox*, %struct._GtkFileChooserDialog*, i32)** %file_dialog_setup, align 8
  %17 = load %struct._GimpSettingsBoxClass*, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %import = getelementptr inbounds %struct._GimpSettingsBoxClass, %struct._GimpSettingsBoxClass* %17, i32 0, i32 2
  store void (%struct._GimpSettingsBox*, i8*)* null, void (%struct._GimpSettingsBox*, i8*)** %import, align 8
  %18 = load %struct._GimpSettingsBoxClass*, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %export = getelementptr inbounds %struct._GimpSettingsBoxClass, %struct._GimpSettingsBoxClass* %18, i32 0, i32 3
  store void (%struct._GimpSettingsBox*, i8*)* null, void (%struct._GimpSettingsBox*, i8*)** %export, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_get_type() #8
  %call8 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 1, %struct._GParamSpec* %call8)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i64 @gimp_config_interface_get_type() #8
  %call10 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 2, %struct._GParamSpec* %call10)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call i64 @gimp_container_get_type() #8
  %call12 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call11, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 3, %struct._GParamSpec* %call12)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 4, %struct._GParamSpec* %call13)
  %23 = load %struct._GimpSettingsBoxClass*, %struct._GimpSettingsBoxClass** %klass.addr, align 8
  %24 = bitcast %struct._GimpSettingsBoxClass* %23 to i8*
  call void @g_type_class_add_private(i8* %24, i64 120)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__OBJECT_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_dialog_get_type() #2

declare void @gimp_marshal_BOOLEAN__STRING(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %hbox2 = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %arrow = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSettingsBox*
  store %struct._GimpSettingsBox* %2, %struct._GimpSettingsBox** %box, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_settings_box_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %5, %struct._GimpSettingsBoxPrivate** %private, align 8
  %6 = load i8*, i8** @gimp_settings_box_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_settings_box_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %15, i32 0, i32 6
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %17 = bitcast %struct._Gimp* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_get_type() #8
  store i64 %call7, i64* %__t, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %24 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %23, %24
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #9
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %27 = load i32, i32* %__r, align 4
  store i32 %27, i32* %tmp
  %28 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.16
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 252, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_settings_box_constructed, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0)) #10
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %29 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %29, i32 0, i32 7
  %30 = load %struct._GObject*, %struct._GObject** %config, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gimp_config_interface_get_type() #8
  store i64 %call26, i64* %__t25, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %do.body.21
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %do.body.21
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type36, align 8
  %38 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %37, %38
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %40 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #9
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %41 = load i32, i32* %__r28, align 4
  store i32 %41, i32* %tmp43
  %42 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %42, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 253, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_settings_box_constructed, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0)) #10
  unreachable

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %43 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %43, i32 0, i32 8
  %44 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %45 = bitcast %struct._GimpContainer* %44 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %45, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gimp_container_get_type() #8
  store i64 %call54, i64* %__t53, align 8
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %46, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %do.body.49
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %do.body.49
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %48, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %50, i32 0, i32 0
  %51 = load i64, i64* %g_type64, align 8
  %52 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %51, %52
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %54 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %53, i64 %54) #9
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %55 = load i32, i32* %__r56, align 4
  store i32 %55, i32* %tmp71
  %56 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %56, 0
  br i1 %tobool72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.70
  br label %if.end.75

if.else.74:                                       ; preds = %if.end.70
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_settings_box_constructed, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0)) #10
  unreachable

if.end.75:                                        ; preds = %if.then.73
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %do.body.77

do.body.77:                                       ; preds = %do.end.76
  %57 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %57, i32 0, i32 9
  %58 = load i8*, i8** %filename, align 8
  %cmp78 = icmp ne i8* %58, null
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.77
  br label %if.end.81

if.else.80:                                       ; preds = %do.body.77
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 255, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_settings_box_constructed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)) #10
  unreachable

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %59 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container83 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %59, i32 0, i32 8
  %60 = load %struct._GimpContainer*, %struct._GimpContainer** %container83, align 8
  %call84 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %60)
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %do.end.82
  %61 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  call void @gimp_settings_box_deserialize(%struct._GimpSettingsBox* %61)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %do.end.82
  %62 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container88 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %62, i32 0, i32 8
  %63 = load %struct._GimpContainer*, %struct._GimpContainer** %container88, align 8
  %64 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp89 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %64, i32 0, i32 6
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp89, align 8
  %call90 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %65)
  %call91 = call %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer* %63, %struct._GimpContext* %call90, i32 16, i32 0)
  %66 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %combo = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %66, i32 0, i32 0
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %combo, align 8
  %67 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %combo92 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %67, i32 0, i32 0
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %combo92, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_combo_box_get_type() #8
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call93)
  %70 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_row_separator_func(%struct._GtkComboBox* %70, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @gimp_settings_box_row_separator_func, i8* null, void (i8*)* null)
  %71 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %72 = bitcast %struct._GimpSettingsBox* %71 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #8
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call95)
  %73 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %74 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %combo97 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %74, i32 0, i32 0
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %combo97, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %75, i32 1, i32 1, i32 0)
  %76 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %combo98 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %76, i32 0, i32 0
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %combo98, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %combo99 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %78, i32 0, i32 0
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %combo99, align 8
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %79, i8* %call100, i8* null)
  %80 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %combo101 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %80, i32 0, i32 0
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %combo101, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %83 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %84 = bitcast %struct._GimpSettingsBox* %83 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, %struct._GimpSettingsBox*)* @gimp_settings_box_setting_selected to void ()*), i8* %84, void (i8*, %struct._GClosure*)* null, i32 1)
  %call103 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %hbox2, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #8
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call104)
  %87 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %87, i32 1)
  %88 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %89 = bitcast %struct._GimpSettingsBox* %88 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_box_get_type() #8
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call106)
  %90 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkBox*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %90, %struct._GtkWidget* %91, i32 0, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %call108 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call108, %struct._GtkWidget** %button, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %93, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_button_get_type() #8
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call109)
  %96 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %96, i32 2)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_box_get_type() #8
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call111)
  %99 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 0, i32 0, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %call113 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call113, %struct._GtkWidget** %image, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_container_get_type() #8
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call114)
  %104 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkContainer*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %104, %struct._GtkWidget* %105)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %107, i8* %call116, i8* null)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %110 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %111 = bitcast %struct._GimpSettingsBox* %110 to i8*
  %call117 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSettingsBox*)* @gimp_settings_box_favorite_activate to void ()*), i8* %111, void (i8*, %struct._GClosure*)* null, i32 0)
  %call118 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call118, %struct._GtkWidget** %button, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %112, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_button_get_type() #8
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call119)
  %115 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %115, i32 2)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_box_get_type() #8
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call121)
  %118 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkBox*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %119, i32 0, i32 0, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  %call123 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call123, %struct._GtkWidget** %arrow, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_container_get_type() #8
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call124)
  %123 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkContainer*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %arrow, align 8
  call void @gtk_container_add(%struct._GtkContainer* %123, %struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %arrow, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %127 = bitcast %struct._GtkWidget* %126 to i8*
  %128 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %129 = bitcast %struct._GimpSettingsBox* %128 to i8*
  %call126 = call i64 @g_signal_connect_data(i8* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpSettingsBox*)* @gimp_settings_box_menu_press to void ()*), i8* %129, void (i8*, %struct._GClosure*)* null, i32 0)
  %call127 = call %struct._GtkWidget* @gtk_menu_new()
  %130 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %menu = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %130, i32 0, i32 1
  store %struct._GtkWidget* %call127, %struct._GtkWidget** %menu, align 8
  %131 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %menu128 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %131, i32 0, i32 1
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %menu128, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_menu_get_type() #8
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call129)
  %134 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkMenu*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_menu_attach_to_widget(%struct._GtkMenu* %134, %struct._GtkWidget* %135, void (%struct._GtkWidget*, %struct._GtkMenu*)* null)
  %136 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %call131 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0)) #7
  %call132 = call %struct._GtkWidget* @gimp_settings_box_menu_item_add(%struct._GimpSettingsBox* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* %call131, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSettingsBox*)* @gimp_settings_box_import_activate to void ()*))
  %137 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %import_item = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %137, i32 0, i32 2
  store %struct._GtkWidget* %call132, %struct._GtkWidget** %import_item, align 8
  %138 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %call133 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0)) #7
  %call134 = call %struct._GtkWidget* @gimp_settings_box_menu_item_add(%struct._GimpSettingsBox* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* %call133, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSettingsBox*)* @gimp_settings_box_export_activate to void ()*))
  %139 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %export_item = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %139, i32 0, i32 3
  store %struct._GtkWidget* %call134, %struct._GtkWidget** %export_item, align 8
  %140 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %call135 = call %struct._GtkWidget* @gimp_settings_box_menu_item_add(%struct._GimpSettingsBox* %140, i8* null, i8* null, void ()* null)
  %141 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %call136 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)) #7
  %call137 = call %struct._GtkWidget* @gimp_settings_box_menu_item_add(%struct._GimpSettingsBox* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* %call136, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpSettingsBox*)* @gimp_settings_box_manage_activate to void ()*))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %toplevel28 = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %3, i32 0, i32 7
  %4 = load %struct._GObject*, %struct._GObject** %config, align 8
  %tobool = icmp ne %struct._GObject* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config2 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %5, i32 0, i32 7
  %6 = load %struct._GObject*, %struct._GObject** %config2, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config3 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %8, i32 0, i32 7
  store %struct._GObject* null, %struct._GObject** %config3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %9, i32 0, i32 8
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool4 = icmp ne %struct._GimpContainer* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container6 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %11, i32 0, i32 8
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container6, align 8
  %13 = bitcast %struct._GimpContainer* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container7 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %14, i32 0, i32 8
  store %struct._GimpContainer* null, %struct._GimpContainer** %container7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %15, i32 0, i32 9
  %16 = load i8*, i8** %filename, align 8
  %tobool9 = icmp ne i8* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename11 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %17, i32 0, i32 9
  %18 = load i8*, i8** %filename11, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename12 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %19, i32 0, i32 9
  store i8* null, i8** %filename12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %20 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %20, i32 0, i32 10
  %21 = load i8*, i8** %import_dialog_title, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %22, i32 0, i32 11
  %23 = load i8*, i8** %export_dialog_title, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog_help_id = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %24, i32 0, i32 12
  %25 = load i8*, i8** %file_dialog_help_id, align 8
  call void @g_free(i8* %25)
  %26 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %default_folder = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %26, i32 0, i32 13
  %27 = load i8*, i8** %default_folder, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %last_filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %28, i32 0, i32 14
  %29 = load i8*, i8** %last_filename, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %30, i32 0, i32 5
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %31, null
  br i1 %tobool14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %if.end.13
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %33 = bitcast %struct._GObject* %32 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call16)
  %34 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %call18 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %34)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %toplevel, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %tobool19 = icmp ne %struct._GtkWidget* %35, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.15
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog21 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %38, i32 0, i32 5
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog21, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %call22 = call i32 @g_signal_handlers_disconnect_matched(i8* %37, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @gimp_settings_box_toplevel_unmap to i8*), i8* %40)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.then.15
  %41 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog24 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %41, i32 0, i32 5
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog24, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %42)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.23, %if.end.13
  %43 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %43, i32 0, i32 4
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog, align 8
  %tobool26 = icmp ne %struct._GtkWidget* %44, null
  br i1 %tobool26, label %if.then.27, label %if.end.38

if.then.27:                                       ; preds = %if.end.25
  %45 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %46 = bitcast %struct._GObject* %45 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_widget_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call29)
  %47 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWidget*
  %call31 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %47)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %toplevel28, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel28, align 8
  %tobool32 = icmp ne %struct._GtkWidget* %48, null
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.then.27
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel28, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %51 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog34 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %51, i32 0, i32 4
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog34, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %call35 = call i32 @g_signal_handlers_disconnect_matched(i8* %50, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @gimp_settings_box_toplevel_unmap to i8*), i8* %53)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.then.27
  %54 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog37 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %54, i32 0, i32 4
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog37, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %55)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %if.end.25
  %56 = load i8*, i8** @gimp_settings_box_parent_class, align 8
  %57 = bitcast i8* %56 to %struct._GTypeClass*
  %call39 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %57, i64 80)
  %58 = bitcast %struct._GTypeClass* %call39 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %58, i32 0, i32 6
  %59 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %60 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %59(%struct._GObject* %60)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %6, i32 0, i32 6
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GObject*
  %9 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %9, i32 0, i32 7
  store %struct._GObject* %8, %struct._GObject** %config, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_dup_object(%struct._GValue* %10)
  %11 = bitcast i8* %call6 to %struct._GimpContainer*
  %12 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %12, i32 0, i32 8
  store %struct._GimpContainer* %11, %struct._GimpContainer** %container, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_dup_string(%struct._GValue* %13)
  %14 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %14, i32 0, i32 9
  store i8* %call8, i8** %filename, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %15, %struct._GObject** %_glib__object, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %16, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = load i32, i32* %property_id.addr, align 4
  store i32 %17, i32* %_glib__property_id, align 4
  %18 = load i32, i32* %_glib__property_id, align 4
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 1
  %20 = load i8*, i8** %name, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = bitcast %struct._GParamSpec* %21 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %24)
  %25 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %28)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 419, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %18, i8* %20, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %5, i32 0, i32 6
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %9, i32 0, i32 7
  %10 = load %struct._GObject*, %struct._GObject** %config, align 8
  %11 = bitcast %struct._GObject* %10 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %13, i32 0, i32 8
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %15 = bitcast %struct._GimpContainer* %14 to i8*
  call void @g_value_set_object(%struct._GValue* %12, i8* %15)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %17, i32 0, i32 9
  %18 = load i8*, i8** %filename, align 8
  call void @g_value_set_string(%struct._GValue* %16, i8* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %19, %struct._GObject** %_glib__object, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %20, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = load i32, i32* %property_id.addr, align 4
  store i32 %21, i32* %_glib__property_id, align 4
  %22 = load i32, i32* %_glib__property_id, align 4
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %32)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %22, i8* %24, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_deserialize(%struct._GimpSettingsBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %3 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %3, i32 0, i32 6
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 4
  %5 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %6, i32 0, i32 9
  %7 = load i8*, i8** %filename, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %7)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %8, i32 0, i32 8
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = bitcast %struct._GimpContainer* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  %12 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %filename5 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %12, i32 0, i32 9
  %13 = load i8*, i8** %filename5, align 8
  %call6 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %11, i8* %13, i8* null, %struct._GError** %error)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.12, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %14, i32 0, i32 1
  %15 = load i32, i32* %code, align 4
  %cmp = icmp ne i32 %15, 1
  br i1 %cmp, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.8
  %16 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp10 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %16, i32 0, i32 6
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %18, i32 0, i32 2
  %19 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %17, %struct._GObject* null, i32 2, i8* %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.8
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %20 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container13 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %20, i32 0, i32 8
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container13, align 8
  call void @gimp_settings_box_separator_add(%struct._GimpContainer* %21)
  ret void
}

declare %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gtk_combo_box_set_row_separator_func(%struct._GtkComboBox*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_settings_box_row_separator_func(%struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* null, i8** %name, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 1, i8** %name, i32 -1)
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  %3 = load i8*, i8** %name, align 8
  %cmp = icmp eq i8* %3, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_setting_selected(%struct._GimpContainerView* %view, %struct._GimpViewable* %object, i8* %insert_data, %struct._GimpSettingsBox* %box) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %object.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %object, %struct._GimpViewable** %object.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %object.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %3, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %object.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_config_interface_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpConfig*
  %7 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %7, i32 0, i32 7
  %8 = load %struct._GObject*, %struct._GObject** %config, align 8
  %9 = bitcast %struct._GObject* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_config_interface_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConfig*
  %call6 = call i32 @gimp_config_copy(%struct._GimpConfig* %6, %struct._GimpConfig* %10, i32 0)
  %11 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config7 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %11, i32 0, i32 7
  %12 = load %struct._GObject*, %struct._GObject** %config7, align 8
  %13 = bitcast %struct._GObject* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %15 = bitcast %struct._GTypeClass* %14 to %struct._GObjectClass*
  %call8 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %tobool9 = icmp ne %struct._GParamSpec* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %16 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config11 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %16, i32 0, i32 7
  %17 = load %struct._GObject*, %struct._GObject** %config11, align 8
  %18 = bitcast %struct._GObject* %17 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 0, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %19 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call12 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %19, %struct._GimpViewable* null)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_favorite_activate(%struct._GtkWidget* %widget, %struct._GimpSettingsBox* %box) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %toplevel, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0)) #7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0)) #7
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0)) #7
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %5 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %6 = bitcast %struct._GimpSettingsBox* %5 to i8*
  %call5 = call %struct._GtkWidget* @gimp_query_string_box(i8* %call1, %struct._GtkWidget* %1, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* %call2, i8* %call3, %struct._GObject* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), void (%struct._GtkWidget*, i8*, i8*)* @gimp_settings_box_favorite_callback, i8* %6)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dialog, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_settings_box_menu_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpSettingsBox* %box) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %menu = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_menu_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkMenu*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 8
  %12 = load i32, i32* %button, align 4
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 3
  %14 = load i32, i32* %time, align 4
  call void @gtk_menu_popup(%struct._GtkMenu* %8, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* @gimp_settings_box_menu_position, i8* %10, i32 %12, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare %struct._GtkWidget* @gtk_menu_new() #1

declare void @gtk_menu_attach_to_widget(%struct._GtkMenu*, %struct._GtkWidget*, void (%struct._GtkWidget*, %struct._GtkMenu*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_settings_box_menu_item_add(%struct._GimpSettingsBox* %box, i8* %stock_id, i8* %label, void ()* %callback) #3 {
entry:
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %stock_id.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %callback.addr = alloca void ()*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %item = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load i8*, i8** %label.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %label.addr, align 8
  %call2 = call %struct._GtkWidget* @gtk_image_menu_item_new_with_mnemonic(i8* %4)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %item, align 8
  %5 = load i8*, i8** %stock_id.addr, align 8
  %call3 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %5, i32 1)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %image, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_image_menu_item_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkImageMenuItem*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem* %8, %struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load void ()*, void ()** %callback.addr, align 8
  %13 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %14 = bitcast %struct._GimpSettingsBox* %13 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), void ()* %12, i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %call7 = call %struct._GtkWidget* @gtk_separator_menu_item_new()
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %item, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %menu = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_menu_shell_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkMenuShell*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %item, align 8
  ret %struct._GtkWidget* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_import_activate(%struct._GtkWidget* %widget, %struct._GimpSettingsBox* %box) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %4 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %4, i32 0, i32 10
  %5 = load i8*, i8** %import_dialog_title, align 8
  call void @gimp_settings_box_file_dialog(%struct._GimpSettingsBox* %3, i8* %5, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_export_activate(%struct._GtkWidget* %widget, %struct._GimpSettingsBox* %box) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %4 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %4, i32 0, i32 11
  %5 = load i8*, i8** %export_dialog_title, align 8
  call void @gimp_settings_box_file_dialog(%struct._GimpSettingsBox* %3, i8* %5, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_manage_activate(%struct._GtkWidget* %widget, %struct._GimpSettingsBox* %box) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GtkWidget*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %3, i32 0, i32 5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog2 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %5, i32 0, i32 5
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %8)
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %10 = bitcast %struct._GimpSettingsBox* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  %call7 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %11)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %toplevel, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0)) #7
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %call9 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), %struct._GtkWidget* %12, i32 0, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 -7, i8* null)
  %13 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog10 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %13, i32 0, i32 5
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %editor_dialog10, align 8
  %14 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog11 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %14, i32 0, i32 5
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog11, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %18 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog13 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %18, i32 0, i32 5
  %19 = bitcast %struct._GtkWidget** %editor_dialog13 to i8*
  %20 = bitcast i8* %19 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %17, i8** %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog14 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %23, i32 0, i32 5
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog14, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @gimp_settings_box_toplevel_unmap to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog16 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %26, i32 0, i32 5
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog16, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %30 = bitcast %struct._GimpSettingsBox* %29 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpSettingsBox*)* @gimp_settings_box_manage_response to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  %31 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %31, i32 0, i32 6
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %33 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %33, i32 0, i32 7
  %34 = load %struct._GObject*, %struct._GObject** %config, align 8
  %35 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %35, i32 0, i32 8
  %36 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call18 = call %struct._GtkWidget* @gimp_settings_editor_new(%struct._Gimp* %32, %struct._GObject* %34, %struct._GimpContainer* %36)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %editor, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call19)
  %39 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %39, i32 12)
  %40 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog21 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %40, i32 0, i32 5
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog21, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_dialog_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call22)
  %43 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkDialog*
  %call24 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %43)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %content_area, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call25)
  %46 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 1, i32 1, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %49 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %editor_dialog27 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %49, i32 0, i32 5
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog27, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @g_print(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_separator_add(%struct._GimpContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %sep = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %0)
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpObject*
  store %struct._GimpObject* %1, %struct._GimpObject** %sep, align 8
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %3 = load %struct._GimpObject*, %struct._GimpObject** %sep, align 8
  %call2 = call i32 @gimp_container_add(%struct._GimpContainer* %2, %struct._GimpObject* %3)
  %4 = load %struct._GimpObject*, %struct._GimpObject** %sep, align 8
  %5 = bitcast %struct._GimpObject* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %7 = bitcast %struct._GimpContainer* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %9 = load %struct._GimpObject*, %struct._GimpObject** %sep, align 8
  %10 = bitcast %struct._GimpObject* %9 to i8*
  call void @g_object_set_data(%struct._GObject* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* %10)
  ret void
}

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @g_free(i8*) #1

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_query_string_box(i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*, i8*, %struct._GObject*, i8*, void (%struct._GtkWidget*, i8*, i8*)*, i8*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_favorite_callback(%struct._GtkWidget* %query_box, i8* %string, i8* %data) #3 {
entry:
  %query_box.addr = alloca %struct._GtkWidget*, align 8
  %string.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %box = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %config = alloca %struct._GimpConfig*, align 8
  store %struct._GtkWidget* %query_box, %struct._GtkWidget** %query_box.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSettingsBox*
  store %struct._GimpSettingsBox* %2, %struct._GimpSettingsBox** %box, align 8
  %3 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  %4 = bitcast %struct._GimpSettingsBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_settings_box_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %5, %struct._GimpSettingsBoxPrivate** %private, align 8
  %6 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %config4 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %6, i32 0, i32 7
  %7 = load %struct._GObject*, %struct._GObject** %config4, align 8
  %8 = bitcast %struct._GObject* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_config_interface_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpConfig*
  %call7 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %9)
  %10 = bitcast i8* %call7 to %struct._GimpConfig*
  store %struct._GimpConfig* %10, %struct._GimpConfig** %config, align 8
  %11 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %12 = bitcast %struct._GimpConfig* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  %14 = load i8*, i8** %string.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %13, i8* %14)
  %15 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %15, i32 0, i32 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %17 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %18 = bitcast %struct._GimpConfig* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %call12 = call i32 @gimp_container_add(%struct._GimpContainer* %16, %struct._GimpObject* %19)
  %20 = load %struct._GimpConfig*, %struct._GimpConfig** %config, align 8
  %21 = bitcast %struct._GimpConfig* %20 to i8*
  call void @g_object_unref(i8* %21)
  %22 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box, align 8
  call void @gimp_settings_box_serialize(%struct._GimpSettingsBox* %22)
  ret void
}

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_menu_position(%struct._GtkMenu* %menu, i32* %x, i32* %y, i32* %push_in, i8* %user_data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %push_in.addr = alloca i32*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %push_in, i32** %push_in.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GtkWidget*
  %2 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %3 = load i32*, i32** %x.addr, align 8
  %4 = load i32*, i32** %y.addr, align 8
  call void @gimp_button_menu_position(%struct._GtkWidget* %1, %struct._GtkMenu* %2, i32 0, i32* %3, i32* %4)
  ret void
}

declare void @gimp_button_menu_position(%struct._GtkWidget*, %struct._GtkMenu*, i32, i32*, i32*) #1

declare %struct._GtkWidget* @gtk_image_menu_item_new_with_mnemonic(i8*) #1

declare void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_menu_item_get_type() #2

declare %struct._GtkWidget* @gtk_separator_menu_item_new() #1

declare void @gtk_menu_shell_append(%struct._GtkMenuShell*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_shell_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_file_dialog(%struct._GimpSettingsBox* %box, i8* %title, i32 %save) #3 {
entry:
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %title.addr = alloca i8*, align 8
  %save.addr = alloca i32, align 4
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %save, i32* %save.addr, align 4
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog2 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %8)
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %save.addr, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %import_item = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %10, i32 0, i32 2
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %import_item, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %11, i32 0)
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %12 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %export_item = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %12, i32 0, i32 3
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %export_item, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %13, i32 0)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %14 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %15 = bitcast %struct._GimpSettingsBox* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  %call10 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %16)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %toplevel, align 8
  %17 = load i8*, i8** %title.addr, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_window_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWindow*
  %21 = load i32, i32* %save.addr, align 4
  %tobool13 = icmp ne i32 %21, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  %22 = load i32, i32* %save.addr, align 4
  %tobool14 = icmp ne i32 %22, 0
  %cond15 = select i1 %tobool14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)
  %call16 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %17, %struct._GtkWindow* %20, i32 %cond, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 -6, i8* %cond15, i32 -5, i8* null)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %dialog, align 8
  %23 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog17 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %23, i32 0, i32 4
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %file_dialog17, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_dialog_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %26, i32 -5, i32 -6, i32 -1)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %30 = load i32, i32* %save.addr, align 4
  %conv = sext i32 %30 to i64
  %31 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_window_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call21)
  %34 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0))
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_window_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call23)
  %37 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %37, i32 2)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %41 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog26 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %41, i32 0, i32 4
  %42 = bitcast %struct._GtkWidget** %file_dialog26 to i8*
  %43 = bitcast i8* %42 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %40, i8** %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @gimp_settings_box_toplevel_unmap to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_window_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call28)
  %50 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkWindow*
  call void @gtk_window_set_destroy_with_parent(%struct._GtkWindow* %50, i32 1)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_dialog_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call30)
  %53 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %53, i32 -5)
  %54 = load i32, i32* %save.addr, align 4
  %tobool32 = icmp ne i32 %54, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.7
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_file_chooser_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call34)
  %57 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %57, i32 1)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.7
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %60 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %61 = bitcast %struct._GimpSettingsBox* %60 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpSettingsBox*)* @gimp_settings_box_file_response to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %default_folder = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %64, i32 0, i32 13
  %65 = load i8*, i8** %default_folder, align 8
  %tobool39 = icmp ne i8* %65, null
  br i1 %tobool39, label %land.lhs.true, label %if.else.55

land.lhs.true:                                    ; preds = %if.end.36
  %66 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %default_folder40 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %66, i32 0, i32 13
  %67 = load i8*, i8** %default_folder40, align 8
  %call41 = call i32 @g_file_test(i8* %67, i32 4)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.55

if.then.43:                                       ; preds = %land.lhs.true
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_file_chooser_get_type() #8
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call44)
  %70 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkFileChooser*
  %71 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %default_folder46 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %71, i32 0, i32 13
  %72 = load i8*, i8** %default_folder46, align 8
  %call47 = call i32 @gtk_file_chooser_add_shortcut_folder(%struct._GtkFileChooser* %70, i8* %72, %struct._GError** null)
  %73 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %last_filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %73, i32 0, i32 14
  %74 = load i8*, i8** %last_filename, align 8
  %tobool48 = icmp ne i8* %74, null
  br i1 %tobool48, label %if.end.54, label %if.then.49

if.then.49:                                       ; preds = %if.then.43
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_file_chooser_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call50)
  %77 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkFileChooser*
  %78 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %default_folder52 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %78, i32 0, i32 13
  %79 = load i8*, i8** %default_folder52, align 8
  %call53 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %77, i8* %79)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.then.43
  br label %if.end.64

if.else.55:                                       ; preds = %land.lhs.true, %if.end.36
  %80 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %last_filename56 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %80, i32 0, i32 14
  %81 = load i8*, i8** %last_filename56, align 8
  %tobool57 = icmp ne i8* %81, null
  br i1 %tobool57, label %if.end.63, label %if.then.58

if.then.58:                                       ; preds = %if.else.55
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_file_chooser_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call59)
  %84 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkFileChooser*
  %call61 = call i8* @g_get_home_dir()
  %call62 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %84, i8* %call61)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.else.55
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.54
  %85 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %last_filename65 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %85, i32 0, i32 14
  %86 = load i8*, i8** %last_filename65, align 8
  %tobool66 = icmp ne i8* %86, null
  br i1 %tobool66, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.64
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_file_chooser_get_type() #8
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call68)
  %89 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkFileChooser*
  %90 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %last_filename70 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %90, i32 0, i32 14
  %91 = load i8*, i8** %last_filename70, align 8
  %call71 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %89, i8* %91)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %if.end.64
  %92 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog73 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %92, i32 0, i32 4
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog73, align 8
  %94 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog_help_id = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %94, i32 0, i32 12
  %95 = load i8*, i8** %file_dialog_help_id, align 8
  call void @gimp_help_connect(%struct._GtkWidget* %93, void (i8*, i8*)* @gimp_standard_help_func, i8* %95, i8* null)
  %96 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %97 = bitcast %struct._GimpSettingsBox* %96 to i8*
  %98 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @settings_box_signals, i32 0, i64 0), align 4
  %99 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog74 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %99, i32 0, i32 4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog74, align 8
  %101 = load i32, i32* %save.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %97, i32 %98, i32 0, %struct._GtkWidget* %100, i32 %101)
  %102 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %file_dialog75 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %102, i32 0, i32 4
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog75, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  br label %return

return:                                           ; preds = %if.end.72, %if.then
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_toplevel_unmap(%struct._GtkWidget* %toplevel, %struct._GtkWidget* %dialog) #3 {
entry:
  %toplevel.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %toplevel, %struct._GtkWidget** %toplevel.addr, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %2, i32 -4)
  ret void
}

declare void @gtk_window_set_destroy_with_parent(%struct._GtkWindow*, i32) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_file_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpSettingsBox* %box) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %private = alloca %struct._GimpSettingsBoxPrivate*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %save = alloca i32, align 4
  %filename = alloca i8*, align 8
  %success = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_settings_box_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpSettingsBoxPrivate*
  store %struct._GimpSettingsBoxPrivate* %2, %struct._GimpSettingsBoxPrivate** %private, align 8
  %3 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %4 = bitcast %struct._GimpSettingsBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %call4 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %5)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %toplevel, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @gimp_settings_box_toplevel_unmap to i8*), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @g_object_get_data(%struct._GObject* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  %14 = ptrtoint i8* %call7 to i64
  %conv = trunc i64 %14 to i32
  store i32 %conv, i32* %save, align 4
  %15 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %15, -5
  br i1 %cmp, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %success, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_file_chooser_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkFileChooser*
  %call12 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %18)
  store i8* %call12, i8** %filename, align 8
  %19 = load i32, i32* %save, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.9
  %20 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %21 = bitcast %struct._GimpSettingsBox* %20 to i8*
  %22 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @settings_box_signals, i32 0, i64 2), align 4
  %23 = load i8*, i8** %filename, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %21, i32 %22, i32 0, i8* %23, i32* %success)
  br label %if.end.15

if.else:                                          ; preds = %if.then.9
  %24 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %25 = bitcast %struct._GimpSettingsBox* %24 to i8*
  %26 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @settings_box_signals, i32 0, i64 1), align 4
  %27 = load i8*, i8** %filename, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %25, i32 %26, i32 0, i8* %27, i32* %success)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  %28 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %28, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %29 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %last_filename = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %29, i32 0, i32 14
  %30 = load i8*, i8** %last_filename, align 8
  call void @g_free(i8* %30)
  %31 = load i8*, i8** %filename, align 8
  %call18 = call noalias i8* @g_strdup(i8* %31)
  %32 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %last_filename19 = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %32, i32 0, i32 14
  store i8* %call18, i8** %last_filename19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.15
  %33 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %33)
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %34 = load i32, i32* %save, align 4
  %tobool22 = icmp ne i32 %34, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.end.21
  %35 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %import_item = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %35, i32 0, i32 2
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %import_item, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %36, i32 1)
  br label %if.end.25

if.else.24:                                       ; preds = %if.end.21
  %37 = load %struct._GimpSettingsBoxPrivate*, %struct._GimpSettingsBoxPrivate** %private, align 8
  %export_item = getelementptr inbounds %struct._GimpSettingsBoxPrivate, %struct._GimpSettingsBoxPrivate* %37, i32 0, i32 3
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %export_item, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %38, i32 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %39)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #2

declare i32 @g_file_test(i8*, i32) #1

declare i32 @gtk_file_chooser_add_shortcut_folder(%struct._GtkFileChooser*, i8*, %struct._GError**) #1

declare i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser*, i8*) #1

declare i8* @g_get_home_dir() #1

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_manage_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpSettingsBox* %box) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  %0 = load %struct._GimpSettingsBox*, %struct._GimpSettingsBox** %box.addr, align 8
  %1 = bitcast %struct._GimpSettingsBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %toplevel, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %tobool = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @gimp_settings_box_toplevel_unmap to i8*), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %8)
  ret void
}

declare %struct._GtkWidget* @gimp_settings_editor_new(%struct._Gimp*, %struct._GObject*, %struct._GimpContainer*) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_settings_box_separator_remove(%struct._GimpContainer* %container) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %sep = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpObject*
  store %struct._GimpObject* %3, %struct._GimpObject** %sep, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %sep, align 8
  %call2 = call i32 @gimp_container_remove(%struct._GimpContainer* %4, %struct._GimpObject* %5)
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %7 = bitcast %struct._GimpContainer* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* null)
  ret void
}

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
