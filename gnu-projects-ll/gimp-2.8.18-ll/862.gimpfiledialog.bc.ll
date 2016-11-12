; ModuleID = './app/widgets/gimpfiledialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFileDialogClass = type { %struct._GtkFileChooserDialogClass }
%struct._GtkFileChooserDialogClass = type { %struct._GtkDialogClass }
%struct._GtkDialogClass = type { %struct._GtkWindowClass, void (%struct._GtkDialog*, i32)*, void (%struct._GtkDialog*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpFileDialog = type { %struct._GtkFileChooserDialog, %struct._GimpPlugInProcedure*, %struct._GimpImage*, i32, i32, i32, i32, %struct._GimpObject*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32 }
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkButtonBox = type { %struct._GtkBox, i32, i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpFileProcView = type { %struct._GtkTreeView, %struct._GList* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkFileChooser = type opaque
%struct._GtkFileFilter = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GimpFileDialogState = type { i8* }
%struct._GimpProgressBox = type { %struct._GtkBox, i32, i32, double, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpThumbBox = type { %struct._GtkFrame, %struct._GimpContext*, %struct._GimpImagefile*, %struct._GSList*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkWidget*, i32 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpImagefile = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GtkExpander = type { %struct._GtkBin, %struct._GtkExpanderPrivate* }
%struct._GtkExpanderPrivate = type opaque

@gimp_file_dialog_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpFileDialog\00", align 1
@gimp_file_dialog_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_file_dialog_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_file_dialog_new = private unnamed_addr constant [21 x i8] c"gimp_file_dialog_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"role != NULL\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Automatically Detected\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"gimp-file-open-by-extension\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"file-uri-load\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"By Extension\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"gimp-file-save-by-extension\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"file-uri-save\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"gimpfiledialog.c\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"local-only\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"do-overwrite-confirmation\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"gtk-help\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"gimp-dialog-help-id\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"gimp-dialog-help-button\00", align 1
@__func__.gimp_file_dialog_set_sensitive = private unnamed_addr constant [31 x i8] c"gimp_file_dialog_set_sensitive\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"GIMP_IS_FILE_DIALOG (dialog)\00", align 1
@__func__.gimp_file_dialog_set_file_proc = private unnamed_addr constant [31 x i8] c"gimp_file_dialog_set_file_proc\00", align 1
@__func__.gimp_file_dialog_set_open_image = private unnamed_addr constant [32 x i8] c"gimp_file_dialog_set_open_image\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_file_dialog_set_save_image = private unnamed_addr constant [32 x i8] c"gimp_file_dialog_set_save_image\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"gimp-image-source-uri\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"gimp-file-save-last-uri\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"file:///we/only/care/about/extension.xcf\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"gimp-file-export-last-uri\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"file:///we/only/care/about/extension.png\00", align 1
@__func__.gimp_file_dialog_get_state = private unnamed_addr constant [27 x i8] c"gimp_file_dialog_get_state\00", align 1
@__func__.gimp_file_dialog_set_state = private unnamed_addr constant [27 x i8] c"gimp_file_dialog_set_state\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"state != NULL\00", align 1
@__func__.gimp_file_dialog_state_destroy = private unnamed_addr constant [31 x i8] c"gimp_file_dialog_state_destroy\00", align 1
@gimp_file_dialog_parent_class = internal global i8* null, align 8
@GimpFileDialog_private_offset = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"selection-changed\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"update-preview\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"All files\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"All images\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"All XCF images\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"All export images\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"*.\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c")\00", align 1
@__func__.gimp_file_dialog_pattern_from_extension = private unnamed_addr constant [40 x i8] c"gimp_file_dialog_pattern_from_extension\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"extension != NULL\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"Select File _Type (%s)\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_file_dialog_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_file_dialog_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_file_dialog_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_file_chooser_dialog_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 952, void (i8*, i8*)* bitcast (void (i8*)* @gimp_file_dialog_class_intern_init to void (i8*, i8*)*), i32 352, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFileDialog*)* @gimp_file_dialog_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_file_dialog_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_file_dialog_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_file_dialog_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_dialog_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_file_dialog_parent_class, align 8
  %1 = load i32, i32* @GimpFileDialog_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFileDialog_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFileDialogClass*
  call void @gimp_file_dialog_class_init(%struct._GimpFileDialogClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_init(%struct._GimpFileDialog* %dialog) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_progress_iface_init(%struct._GimpProgressInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_file_dialog_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_file_dialog_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_file_dialog_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_file_dialog_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_file_dialog_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_file_dialog_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_file_dialog_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %7 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_window_id = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %7, i32 0, i32 8
  store i32 (%struct._GimpProgress*)* @gimp_file_dialog_progress_get_window_id, i32 (%struct._GimpProgress*)** %get_window_id, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_file_dialog_new(%struct._Gimp* %gimp, i32 %action, i8* %title, i8* %role, i8* %stock_id, i8* %help_id) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %action.addr = alloca i32, align 4
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  %file_procs = alloca %struct._GSList*, align 8
  %file_procs_all_images = alloca %struct._GSList*, align 8
  %automatic = alloca i8*, align 8
  %automatic_help_id = alloca i8*, align 8
  %local_only = alloca i32, align 4
  %gtk_action = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %action_area = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct._GimpFileDialog* null, %struct._GimpFileDialog** %dialog, align 8
  store %struct._GSList* null, %struct._GSList** %file_procs, align 8
  store %struct._GSList* null, %struct._GSList** %file_procs_all_images, align 8
  store i8* null, i8** %automatic, align 8
  store i8* null, i8** %automatic_help_id, align 8
  store i32 0, i32* %local_only, align 4
  store i32 0, i32* %gtk_action, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_file_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %title.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_file_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %role.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_file_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i8*, i8** %stock_id.addr, align 8
  %cmp24 = icmp ne i8* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_file_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i8*, i8** %help_id.addr, align 8
  %cmp30 = icmp ne i8* %16, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_file_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %17 = load i32, i32* %action.addr, align 4
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.38
    i32 2, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %do.end.34
  store i32 0, i32* %gtk_action, align 4
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 25
  %19 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %19, i32 0, i32 5
  %20 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  store %struct._GSList* %20, %struct._GSList** %file_procs, align 8
  store %struct._GSList* null, %struct._GSList** %file_procs_all_images, align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0)) #8
  store i8* %call35, i8** %automatic, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8** %automatic_help_id, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 44
  %22 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %call36 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  %cmp37 = icmp eq %struct._GimpProcedure* %call36, null
  %conv = zext i1 %cmp37 to i32
  store i32 %conv, i32* %local_only, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %do.end.34, %do.end.34
  store i32 1, i32* %gtk_action, align 4
  %23 = load i32, i32* %action.addr, align 4
  %cmp39 = icmp eq i32 %23, 1
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.38
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager41 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 25
  %25 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager41, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %25, i32 0, i32 6
  %26 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.38
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 25
  %28 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager42, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %28, i32 0, i32 7
  %29 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %26, %cond.true ], [ %29, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %file_procs, align 8
  %30 = load i32, i32* %action.addr, align 4
  %cmp43 = icmp eq i32 %30, 1
  br i1 %cmp43, label %cond.true.45, label %cond.false.48

cond.true.45:                                     ; preds = %cond.end
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager46 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %31, i32 0, i32 25
  %32 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager46, align 8
  %export_procs47 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %32, i32 0, i32 7
  %33 = load %struct._GSList*, %struct._GSList** %export_procs47, align 8
  br label %cond.end.51

cond.false.48:                                    ; preds = %cond.end
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager49 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 25
  %35 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager49, align 8
  %save_procs50 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %35, i32 0, i32 6
  %36 = load %struct._GSList*, %struct._GSList** %save_procs50, align 8
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.48, %cond.true.45
  %cond52 = phi %struct._GSList* [ %33, %cond.true.45 ], [ %36, %cond.false.48 ]
  store %struct._GSList* %cond52, %struct._GSList** %file_procs_all_images, align 8
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #8
  store i8* %call53, i8** %automatic, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8** %automatic_help_id, align 8
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb54 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 44
  %38 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb54, align 8
  %call55 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  %cmp56 = icmp eq %struct._GimpProcedure* %call55, null
  %conv57 = zext i1 %cmp56 to i32
  store i32 %conv57, i32* %local_only, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.34
  br label %do.body.58

do.body.58:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_file_dialog_new, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

do.end.59:                                        ; No predecessors!
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end.51, %sw.bb
  %call60 = call i64 @gimp_file_dialog_get_type() #6
  %39 = load i8*, i8** %title.addr, align 8
  %40 = load i8*, i8** %role.addr, align 8
  %41 = load i32, i32* %gtk_action, align 4
  %42 = load i32, i32* %local_only, align 4
  %call61 = call i8* (i64, i8*, ...) @g_object_new(i64 %call60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* null)
  %43 = bitcast i8* %call61 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %43, %struct._GimpFileDialog** %dialog, align 8
  %44 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %45 = bitcast %struct._GimpFileDialog* %44 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_dialog_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call62)
  %46 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkDialog*
  %47 = load i8*, i8** %stock_id.addr, align 8
  call void (%struct._GtkDialog*, i8*, ...) @gtk_dialog_add_buttons(%struct._GtkDialog* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 -6, i8* %47, i32 -5, i8* null)
  %48 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %49 = bitcast %struct._GimpFileDialog* %48 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_dialog_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call64)
  %50 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %50, i32 -5)
  %51 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %52 = bitcast %struct._GimpFileDialog* %51 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_dialog_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call66)
  %53 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %53, i32 -5, i32 -6, i32 -1)
  %54 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %55 = bitcast %struct._GimpFileDialog* %54 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_widget_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call68)
  %56 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkWidget*
  %57 = load i8*, i8** %help_id.addr, align 8
  %58 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %59 = bitcast %struct._GimpFileDialog* %58 to i8*
  call void @gimp_help_connect(%struct._GtkWidget* %56, void (i8*, i8*)* @gimp_file_dialog_help_func, i8* %57, i8* %59)
  %60 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %60, i32 0, i32 1
  %61 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %62 = bitcast %struct._GimpCoreConfig* %61 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_gui_config_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call70)
  %63 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpGuiConfig*
  %show_help_button = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %63, i32 0, i32 22
  %64 = load i32, i32* %show_help_button, align 4
  %tobool72 = icmp ne i32 %64, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.90

land.lhs.true.73:                                 ; preds = %sw.epilog
  %65 = load i8*, i8** %help_id.addr, align 8
  %tobool74 = icmp ne i8* %65, null
  br i1 %tobool74, label %if.then.75, label %if.end.90

if.then.75:                                       ; preds = %land.lhs.true.73
  %66 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %67 = bitcast %struct._GimpFileDialog* %66 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_dialog_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call77)
  %68 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkDialog*
  %call79 = call %struct._GtkWidget* @gtk_dialog_get_action_area(%struct._GtkDialog* %68)
  store %struct._GtkWidget* %call79, %struct._GtkWidget** %action_area, align 8
  %call81 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %button, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call82)
  %71 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 0, i32 1, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_button_box_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call84)
  %75 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkButtonBox*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_button_box_set_child_secondary(%struct._GtkButtonBox* %75, %struct._GtkWidget* %76, i32 1)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %79 = bitcast %struct._GimpFileDialog* %78 to %struct._GTypeInstance*
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 80)
  %80 = bitcast %struct._GTypeInstance* %call86 to %struct._GObject*
  %81 = load i8*, i8** %help_id.addr, align 8
  %call87 = call noalias i8* @g_strdup(i8* %81)
  call void @g_object_set_data_full(%struct._GObject* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %call87, void (i8*)* @g_free)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %84 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %85 = bitcast %struct._GimpFileDialog* %84 to i8*
  %call88 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_file_dialog_help_clicked to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 0)
  %86 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %87 = bitcast %struct._GimpFileDialog* %86 to %struct._GTypeInstance*
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 80)
  %88 = bitcast %struct._GTypeInstance* %call89 to %struct._GObject*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  call void @g_object_set_data(%struct._GObject* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* %90)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.75, %land.lhs.true.73, %sw.epilog
  %91 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  call void @gimp_file_dialog_add_user_dir(%struct._GimpFileDialog* %91, i32 4)
  %92 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  call void @gimp_file_dialog_add_user_dir(%struct._GimpFileDialog* %92, i32 1)
  %93 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_file_dialog_add_preview(%struct._GimpFileDialog* %93, %struct._Gimp* %94)
  %95 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %97 = load i32, i32* %action.addr, align 4
  %98 = load %struct._GSList*, %struct._GSList** %file_procs, align 8
  %99 = load %struct._GSList*, %struct._GSList** %file_procs_all_images, align 8
  call void @gimp_file_dialog_add_filters(%struct._GimpFileDialog* %95, %struct._Gimp* %96, i32 %97, %struct._GSList* %98, %struct._GSList* %99)
  %100 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %101 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %102 = load %struct._GSList*, %struct._GSList** %file_procs, align 8
  %103 = load i8*, i8** %automatic, align 8
  %104 = load i8*, i8** %automatic_help_id, align 8
  call void @gimp_file_dialog_add_proc_selection(%struct._GimpFileDialog* %100, %struct._Gimp* %101, %struct._GSList* %102, i8* %103, i8* %104)
  %call91 = call %struct._GtkWidget* @gimp_progress_box_new()
  %105 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %105, i32 0, i32 11
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %progress, align 8
  %106 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %107 = bitcast %struct._GimpFileDialog* %106 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_dialog_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call92)
  %108 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkDialog*
  %call94 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %108)
  %109 = bitcast %struct._GtkWidget* %call94 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call95)
  %110 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %111 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress97 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %111, i32 0, i32 11
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %progress97, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %110, %struct._GtkWidget* %112, i32 0, i32 0, i32 0)
  %113 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %114 = bitcast %struct._GimpFileDialog* %113 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_widget_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call98)
  %115 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkWidget*
  store %struct._GtkWidget* %115, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.90, %do.end.59, %do.body.58, %if.else.32, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %116
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gtk_dialog_add_buttons(%struct._GtkDialog*, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_help_func(i8* %help_id, i8* %help_data) #3 {
entry:
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  %focus = alloca %struct._GtkWidget*, align 8
  %proc_help_id = alloca i8*, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  %0 = load i8*, i8** %help_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %4 = bitcast %struct._GimpFileDialog* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* @gtk_window_get_focus(%struct._GtkWindow* %5)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %focus, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %focus, align 8
  %7 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %proc_view = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %7, i32 0, i32 10
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_view, align 8
  %cmp = icmp eq %struct._GtkWidget* %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %proc_view5 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %9, i32 0, i32 10
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_view5, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_file_proc_view_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpFileProcView*
  %call8 = call i8* @gimp_file_proc_view_get_help_id(%struct._GimpFileProcView* %12)
  store i8* %call8, i8** %proc_help_id, align 8
  %13 = load i8*, i8** %proc_help_id, align 8
  call void @gimp_standard_help_func(i8* %13, i8* null)
  %14 = load i8*, i8** %proc_help_id, align 8
  call void @g_free(i8* %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_standard_help_func(i8* %15, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare %struct._GtkWidget* @gtk_dialog_get_action_area(%struct._GtkDialog*) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_button_box_set_child_secondary(%struct._GtkButtonBox*, %struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_free(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_help_clicked(%struct._GtkWidget* %widget, i8* %dialog) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %dialog, i8** %dialog.addr, align 8
  %0 = load i8*, i8** %dialog.addr, align 8
  %1 = bitcast i8* %0 to %struct._GObject*
  %call = call i8* @g_object_get_data(%struct._GObject* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  call void @gimp_standard_help_func(i8* %call, i8* null)
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_add_user_dir(%struct._GimpFileDialog* %dialog, i32 %directory) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %directory.addr = alloca i32, align 4
  %user_dir = alloca i8*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store i32 %directory, i32* %directory.addr, align 4
  %0 = load i32, i32* %directory.addr, align 4
  %call = call i8* @g_get_user_special_dir(i32 %0)
  store i8* %call, i8** %user_dir, align 8
  %1 = load i8*, i8** %user_dir, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %3 = bitcast %struct._GimpFileDialog* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_file_chooser_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFileChooser*
  %5 = load i8*, i8** %user_dir, align 8
  %call3 = call i32 @gtk_file_chooser_add_shortcut_folder(%struct._GtkFileChooser* %4, i8* %5, %struct._GError** null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_add_preview(%struct._GimpFileDialog* %dialog, %struct._Gimp* %gimp) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %1, i32 0, i32 44
  %2 = load i32, i32* %thumbnail_size, align 4
  %cmp = icmp ule i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %4 = bitcast %struct._GimpFileDialog* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_use_preview_label(%struct._GtkFileChooser* %5, i32 0)
  %6 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %7 = bitcast %struct._GimpFileDialog* %6 to i8*
  %8 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %9 = bitcast %struct._GimpFileDialog* %8 to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, %struct._GimpFileDialog*)* @gimp_file_dialog_selection_changed to void ()*), i8* %9, void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %11 = bitcast %struct._GimpFileDialog* %10 to i8*
  %12 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %13 = bitcast %struct._GimpFileDialog* %12 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, %struct._GimpFileDialog*)* @gimp_file_dialog_update_preview to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call4 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %14)
  %call5 = call %struct._GtkWidget* @gimp_thumb_box_new(%struct._GimpContext* %call4)
  %15 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %thumb_box = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %15, i32 0, i32 8
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %thumb_box, align 8
  %16 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %thumb_box6 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %16, i32 0, i32 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %thumb_box6, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call7)
  %19 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %19, i32 0)
  %20 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %21 = bitcast %struct._GimpFileDialog* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_file_chooser_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkFileChooser*
  %23 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %thumb_box11 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %23, i32 0, i32 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %thumb_box11, align 8
  call void @gtk_file_chooser_set_preview_widget(%struct._GtkFileChooser* %22, %struct._GtkWidget* %24)
  %25 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %thumb_box12 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %25, i32 0, i32 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %thumb_box12, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_add_filters(%struct._GimpFileDialog* %dialog, %struct._Gimp* %gimp, i32 %action, %struct._GSList* %file_procs, %struct._GSList* %file_procs_all_images) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %action.addr = alloca i32, align 4
  %file_procs.addr = alloca %struct._GSList*, align 8
  %file_procs_all_images.addr = alloca %struct._GSList*, align 8
  %all = alloca %struct._GtkFileFilter*, align 8
  %all_savable = alloca %struct._GtkFileFilter*, align 8
  %list = alloca %struct._GSList*, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %filter = alloca %struct._GtkFileFilter*, align 8
  %file_proc25 = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GSList* %file_procs, %struct._GSList** %file_procs.addr, align 8
  store %struct._GSList* %file_procs_all_images, %struct._GSList** %file_procs_all_images.addr, align 8
  store %struct._GtkFileFilter* null, %struct._GtkFileFilter** %all_savable, align 8
  %call = call %struct._GtkFileFilter* @gtk_file_filter_new()
  store %struct._GtkFileFilter* %call, %struct._GtkFileFilter** %all, align 8
  %0 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #8
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %0, i8* %call1)
  %1 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %2 = bitcast %struct._GimpFileDialog* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_file_chooser_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkFileChooser*
  %4 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all, align 8
  call void @gtk_file_chooser_add_filter(%struct._GtkFileChooser* %3, %struct._GtkFileFilter* %4)
  %5 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %call4 = call %struct._GtkFileFilter* @gtk_file_filter_new()
  store %struct._GtkFileFilter* %call4, %struct._GtkFileFilter** %all, align 8
  %6 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0)) #8
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %6, i8* %call5)
  %7 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %8 = bitcast %struct._GimpFileDialog* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_file_chooser_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkFileChooser*
  %10 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all, align 8
  call void @gtk_file_chooser_add_filter(%struct._GtkFileChooser* %9, %struct._GtkFileFilter* %10)
  %11 = load %struct._GSList*, %struct._GSList** %file_procs_all_images.addr, align 8
  %tobool = icmp ne %struct._GSList* %11, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %call8 = call %struct._GtkFileFilter* @gtk_file_filter_new()
  store %struct._GtkFileFilter* %call8, %struct._GtkFileFilter** %all_savable, align 8
  %12 = load i32, i32* %action.addr, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %13 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all_savable, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0)) #8
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %13, i8* %call10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all_savable, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0)) #8
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %14, i8* %call11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %15 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %16 = bitcast %struct._GimpFileDialog* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_file_chooser_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkFileChooser*
  %18 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all_savable, align 8
  call void @gtk_file_chooser_add_filter(%struct._GtkFileChooser* %17, %struct._GtkFileFilter* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  %19 = load %struct._GSList*, %struct._GSList** %file_procs.addr, align 8
  store %struct._GSList* %19, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.14
  %20 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool15 = icmp ne %struct._GSList* %20, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %23, %struct._GimpPlugInProcedure** %file_proc, align 8
  store %struct._GtkFileFilter* null, %struct._GtkFileFilter** %filter, align 8
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %25 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all, align 8
  %26 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all_savable, align 8
  call void @gimp_file_dialog_process_procedure(%struct._GimpPlugInProcedure* %24, %struct._GtkFileFilter** %filter, %struct._GtkFileFilter* %25, %struct._GtkFileFilter* %26)
  %27 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %tobool16 = icmp ne %struct._GtkFileFilter* %27, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %for.body
  %28 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %29 = bitcast %struct._GimpFileDialog* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_file_chooser_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkFileChooser*
  %31 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_chooser_add_filter(%struct._GtkFileChooser* %30, %struct._GtkFileFilter* %31)
  %32 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %33 = bitcast %struct._GtkFileFilter* %32 to i8*
  call void @g_object_unref(i8* %33)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool21 = icmp ne %struct._GSList* %34, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %35 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1
  %36 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %36, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._GSList*, %struct._GSList** %file_procs_all_images.addr, align 8
  store %struct._GSList* %37, %struct._GSList** %list, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %cond.end.32, %for.end
  %38 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool23 = icmp ne %struct._GSList* %38, null
  br i1 %tobool23, label %for.body.24, label %for.end.34

for.body.24:                                      ; preds = %for.cond.22
  %39 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data26 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data26, align 8
  %41 = bitcast i8* %40 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %41, %struct._GimpPlugInProcedure** %file_proc25, align 8
  %42 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc25, align 8
  %43 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all, align 8
  call void @gimp_file_dialog_process_procedure(%struct._GimpPlugInProcedure* %42, %struct._GtkFileFilter** null, %struct._GtkFileFilter* %43, %struct._GtkFileFilter* null)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %44 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool28 = icmp ne %struct._GSList* %44, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %for.inc.27
  %45 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next30 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 1
  %46 = load %struct._GSList*, %struct._GSList** %next30, align 8
  br label %cond.end.32

cond.false.31:                                    ; preds = %for.inc.27
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi %struct._GSList* [ %46, %cond.true.29 ], [ null, %cond.false.31 ]
  store %struct._GSList* %cond33, %struct._GSList** %list, align 8
  br label %for.cond.22

for.end.34:                                       ; preds = %for.cond.22
  %47 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all_savable, align 8
  %tobool35 = icmp ne %struct._GtkFileFilter* %47, null
  br i1 %tobool35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %for.end.34
  %48 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %49 = bitcast %struct._GimpFileDialog* %48 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_file_chooser_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call37)
  %50 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkFileChooser*
  %51 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all_savable, align 8
  call void @gtk_file_chooser_set_filter(%struct._GtkFileChooser* %50, %struct._GtkFileFilter* %51)
  br label %if.end.42

if.else.39:                                       ; preds = %for.end.34
  %52 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %53 = bitcast %struct._GimpFileDialog* %52 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_file_chooser_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call40)
  %54 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkFileChooser*
  %55 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all, align 8
  call void @gtk_file_chooser_set_filter(%struct._GtkFileChooser* %54, %struct._GtkFileFilter* %55)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.36
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_add_proc_selection(%struct._GimpFileDialog* %dialog, %struct._Gimp* %gimp, %struct._GSList* %file_procs, i8* %automatic, i8* %automatic_help_id) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %file_procs.addr = alloca %struct._GSList*, align 8
  %automatic.addr = alloca i8*, align 8
  %automatic_help_id.addr = alloca i8*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GSList* %file_procs, %struct._GSList** %file_procs.addr, align 8
  store i8* %automatic, i8** %automatic.addr, align 8
  store i8* %automatic_help_id, i8** %automatic_help_id.addr, align 8
  %call = call %struct._GtkWidget* @gtk_expander_new_with_mnemonic(i8* null)
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_expander = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %0, i32 0, i32 9
  store %struct._GtkWidget* %call, %struct._GtkWidget** %proc_expander, align 8
  %1 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %2 = bitcast %struct._GimpFileDialog* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_file_chooser_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFileChooser*
  %4 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_expander3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %4, i32 0, i32 9
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_expander3, align 8
  call void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser* %3, %struct._GtkWidget* %5)
  %6 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_expander4 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %6, i32 0, i32 9
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_expander4, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call5 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %scrolled_window, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_scrolled_window_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %10, i32 1, i32 1)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_scrolled_window_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %13, i32 1)
  %14 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_expander10 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %14, i32 0, i32 9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_expander10, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_container_add(%struct._GtkContainer* %17, %struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %20, i32 -1, i32 200)
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %22 = load %struct._GSList*, %struct._GSList** %file_procs.addr, align 8
  %23 = load i8*, i8** %automatic.addr, align 8
  %24 = load i8*, i8** %automatic_help_id.addr, align 8
  %call13 = call %struct._GtkWidget* @gimp_file_proc_view_new(%struct._Gimp* %21, %struct._GSList* %22, i8* %23, i8* %24)
  %25 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_view = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %25, i32 0, i32 10
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %proc_view, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call14)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  %29 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_view16 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %29, i32 0, i32 10
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_view16, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %30)
  %31 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_view17 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %31, i32 0, i32 10
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_view17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_view18 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %33, i32 0, i32 10
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_view18, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %37 = bitcast %struct._GimpFileDialog* %36 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GimpFileProcView*, %struct._GimpFileDialog*)* @gimp_file_dialog_proc_changed to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_view20 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %38, i32 0, i32 10
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_view20, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_file_proc_view_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call21)
  %41 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpFileProcView*
  %call23 = call i32 @gimp_file_proc_view_set_proc(%struct._GimpFileProcView* %41, %struct._GimpPlugInProcedure* null)
  ret void
}

declare %struct._GtkWidget* @gimp_progress_box_new() #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind uwtable
define void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog* %dialog, i32 %sensitive) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %sensitive.addr = alloca i32, align 4
  %content_area = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpFileDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_file_dialog_set_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %progress = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %13, i32 0, i32 11
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %progress, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %16 = bitcast %struct._GimpFileDialog* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_dialog_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkDialog*
  %call16 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %content_area, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %call19 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %20)
  store %struct._GList* %call19, %struct._GList** %children, align 8
  %21 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %21, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.13
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %22, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %23, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool22 = icmp ne %struct._GList* %25, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

cond.false:                                       ; preds = %for.body
  br i1 false, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %cond.false, %cond.true
  br label %for.end

if.end.24:                                        ; preds = %cond.false, %cond.true
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GtkWidget*
  %29 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %28, i32 %29)
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool25 = icmp ne %struct._GList* %30, null
  br i1 %tobool25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %for.inc
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next27 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next27, align 8
  br label %cond.end

cond.false.28:                                    ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.26
  %cond = phi %struct._GList* [ %32, %cond.true.26 ], [ null, %cond.false.28 ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %for.cond
  %33 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %33)
  %34 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %35 = bitcast %struct._GimpFileDialog* %34 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_dialog_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call29)
  %36 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkDialog*
  %37 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %36, i32 -6, i32 %37)
  %38 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %39 = bitcast %struct._GimpFileDialog* %38 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_dialog_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call31)
  %40 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkDialog*
  %41 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %40, i32 -5, i32 %41)
  %42 = load i32, i32* %sensitive.addr, align 4
  %tobool33 = icmp ne i32 %42, 0
  %lnot = xor i1 %tobool33, true
  %lnot.ext = zext i1 %lnot to i32
  %43 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %busy = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %43, i32 0, i32 12
  store i32 %lnot.ext, i32* %busy, align 4
  %44 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %canceled = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %44, i32 0, i32 13
  store i32 0, i32* %canceled, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.else.9
  ret void
}

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_file_dialog_set_file_proc(%struct._GimpFileDialog* %dialog, %struct._GimpPlugInProcedure* %file_proc) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %file_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._GimpPlugInProcedure* %file_proc, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpFileDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_file_dialog_set_file_proc, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %14 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %file_proc11 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %14, i32 0, i32 1
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc11, align 8
  %cmp12 = icmp ne %struct._GimpPlugInProcedure* %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_view = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %16, i32 0, i32 10
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_view, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_file_proc_view_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpFileProcView*
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %call16 = call i32 @gimp_file_proc_view_set_proc(%struct._GimpFileProcView* %19, %struct._GimpPlugInProcedure* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare i32 @gimp_file_proc_view_set_proc(%struct._GimpFileProcView*, %struct._GimpPlugInProcedure*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_file_proc_view_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_file_dialog_set_open_image(%struct._GimpFileDialog* %dialog, %struct._GimpImage* %image, i32 %open_as_layers) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %open_as_layers.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %open_as_layers, i32* %open_as_layers.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpFileDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_file_dialog_set_open_image, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_file_dialog_set_open_image, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %image40 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %28, i32 0, i32 2
  store %struct._GimpImage* %27, %struct._GimpImage** %image40, align 8
  %29 = load i32, i32* %open_as_layers.addr, align 4
  %30 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %open_as_layers41 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %30, i32 0, i32 3
  store i32 %29, i32* %open_as_layers41, align 4
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_file_dialog_set_save_image(%struct._GimpFileDialog* %dialog, %struct._Gimp* %gimp, %struct._GimpImage* %image, i32 %save_a_copy, i32 %export, i32 %close_after_saving, %struct._GimpObject* %display) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %save_a_copy.addr = alloca i32, align 4
  %export.addr = alloca i32, align 4
  %close_after_saving.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpObject*, align 8
  %dir_uri = alloca i8*, align 8
  %name_uri = alloca i8*, align 8
  %ext_uri = alloca i8*, align 8
  %docs_uri = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %uri_new_ext = alloca i8*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %save_a_copy, i32* %save_a_copy.addr, align 4
  store i32 %export, i32* %export.addr, align 4
  store i32 %close_after_saving, i32* %close_after_saving.addr, align 4
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  store i8* null, i8** %dir_uri, align 8
  store i8* null, i8** %name_uri, align 8
  store i8* null, i8** %ext_uri, align 8
  store i8* null, i8** %docs_uri, align 8
  store i8* null, i8** %dirname, align 8
  store i8* null, i8** %basename, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpFileDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_file_dialog_set_save_image, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_file_dialog_set_save_image, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i8* @gimp_file_dialog_get_documents_uri()
  store i8* %call39, i8** %docs_uri, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %27 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %image40 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %27, i32 0, i32 2
  store %struct._GimpImage* %26, %struct._GimpImage** %image40, align 8
  %28 = load i32, i32* %save_a_copy.addr, align 4
  %29 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %save_a_copy41 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %29, i32 0, i32 4
  store i32 %28, i32* %save_a_copy41, align 4
  %30 = load i32, i32* %export.addr, align 4
  %31 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %export42 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %31, i32 0, i32 5
  store i32 %30, i32* %export42, align 4
  %32 = load i32, i32* %close_after_saving.addr, align 4
  %33 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %close_after_saving43 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %33, i32 0, i32 6
  store i32 %32, i32* %close_after_saving43, align 4
  %34 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %35 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %display_to_close = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %35, i32 0, i32 7
  store %struct._GimpObject* %34, %struct._GimpObject** %display_to_close, align 8
  %36 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  call void @gimp_file_dialog_set_file_proc(%struct._GimpFileDialog* %36, %struct._GimpPlugInProcedure* null)
  %37 = load i32, i32* %export.addr, align 4
  %tobool44 = icmp ne i32 %37, 0
  br i1 %tobool44, label %if.else.95, label %if.then.45

if.then.45:                                       ; preds = %do.end.38
  %38 = load i32, i32* %save_a_copy.addr, align 4
  %tobool46 = icmp ne i32 %38, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.45
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call48 = call i8* @gimp_image_get_save_a_copy_uri(%struct._GimpImage* %39)
  store i8* %call48, i8** %dir_uri, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.45
  %40 = load i8*, i8** %dir_uri, align 8
  %tobool50 = icmp ne i8* %40, null
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call52 = call i8* @gimp_image_get_uri(%struct._GimpImage* %41)
  store i8* %call52, i8** %dir_uri, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.49
  %42 = load i8*, i8** %dir_uri, align 8
  %tobool54 = icmp ne i8* %42, null
  br i1 %tobool54, label %if.end.58, label %if.then.55

if.then.55:                                       ; preds = %if.end.53
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %44 = bitcast %struct._GimpImage* %43 to %struct._GTypeInstance*
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call56 to %struct._GObject*
  %call57 = call i8* @g_object_get_data(%struct._GObject* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call57, i8** %dir_uri, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.end.53
  %46 = load i8*, i8** %dir_uri, align 8
  %tobool59 = icmp ne i8* %46, null
  br i1 %tobool59, label %if.end.62, label %if.then.60

if.then.60:                                       ; preds = %if.end.58
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call61 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %47)
  store i8* %call61, i8** %dir_uri, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.58
  %48 = load i8*, i8** %dir_uri, align 8
  %tobool63 = icmp ne i8* %48, null
  br i1 %tobool63, label %if.end.67, label %if.then.64

if.then.64:                                       ; preds = %if.end.62
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %50 = bitcast %struct._Gimp* %49 to %struct._GTypeInstance*
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call65 to %struct._GObject*
  %call66 = call i8* @g_object_get_data(%struct._GObject* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0))
  store i8* %call66, i8** %dir_uri, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.62
  %52 = load i8*, i8** %dir_uri, align 8
  %tobool68 = icmp ne i8* %52, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.end.67
  %53 = load i8*, i8** %docs_uri, align 8
  store i8* %53, i8** %dir_uri, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.67
  %54 = load i32, i32* %save_a_copy.addr, align 4
  %tobool71 = icmp ne i32 %54, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.70
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call73 = call i8* @gimp_image_get_save_a_copy_uri(%struct._GimpImage* %55)
  store i8* %call73, i8** %name_uri, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.70
  %56 = load i8*, i8** %name_uri, align 8
  %tobool75 = icmp ne i8* %56, null
  br i1 %tobool75, label %if.end.78, label %if.then.76

if.then.76:                                       ; preds = %if.end.74
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call77 = call i8* @gimp_image_get_uri(%struct._GimpImage* %57)
  store i8* %call77, i8** %name_uri, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.74
  %58 = load i8*, i8** %name_uri, align 8
  %tobool79 = icmp ne i8* %58, null
  br i1 %tobool79, label %if.end.82, label %if.then.80

if.then.80:                                       ; preds = %if.end.78
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call81 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %59)
  store i8* %call81, i8** %name_uri, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.78
  %60 = load i8*, i8** %name_uri, align 8
  %tobool83 = icmp ne i8* %60, null
  br i1 %tobool83, label %if.end.86, label %if.then.84

if.then.84:                                       ; preds = %if.end.82
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call85 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %61)
  store i8* %call85, i8** %name_uri, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.82
  %62 = load i8*, i8** %name_uri, align 8
  %tobool87 = icmp ne i8* %62, null
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %if.end.86
  %call89 = call i8* @gimp_image_get_string_untitled()
  store i8* %call89, i8** %name_uri, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.end.86
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call91 = call i8* @gimp_image_get_uri(%struct._GimpImage* %63)
  store i8* %call91, i8** %ext_uri, align 8
  %64 = load i8*, i8** %ext_uri, align 8
  %tobool92 = icmp ne i8* %64, null
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end.90
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i32 0, i32 0), i8** %ext_uri, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.90
  br label %if.end.149

if.else.95:                                       ; preds = %do.end.38
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call96 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %65)
  store i8* %call96, i8** %dir_uri, align 8
  %66 = load i8*, i8** %dir_uri, align 8
  %tobool97 = icmp ne i8* %66, null
  br i1 %tobool97, label %if.end.101, label %if.then.98

if.then.98:                                       ; preds = %if.else.95
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %68 = bitcast %struct._GimpImage* %67 to %struct._GTypeInstance*
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call99 to %struct._GObject*
  %call100 = call i8* @g_object_get_data(%struct._GObject* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call100, i8** %dir_uri, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.else.95
  %70 = load i8*, i8** %dir_uri, align 8
  %tobool102 = icmp ne i8* %70, null
  br i1 %tobool102, label %if.end.105, label %if.then.103

if.then.103:                                      ; preds = %if.end.101
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call104 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %71)
  store i8* %call104, i8** %dir_uri, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.101
  %72 = load i8*, i8** %dir_uri, align 8
  %tobool106 = icmp ne i8* %72, null
  br i1 %tobool106, label %if.end.109, label %if.then.107

if.then.107:                                      ; preds = %if.end.105
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call108 = call i8* @gimp_image_get_uri(%struct._GimpImage* %73)
  store i8* %call108, i8** %dir_uri, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.105
  %74 = load i8*, i8** %dir_uri, align 8
  %tobool110 = icmp ne i8* %74, null
  br i1 %tobool110, label %if.end.114, label %if.then.111

if.then.111:                                      ; preds = %if.end.109
  %75 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %76 = bitcast %struct._Gimp* %75 to %struct._GTypeInstance*
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 80)
  %77 = bitcast %struct._GTypeInstance* %call112 to %struct._GObject*
  %call113 = call i8* @g_object_get_data(%struct._GObject* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0))
  store i8* %call113, i8** %dir_uri, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %if.end.109
  %78 = load i8*, i8** %dir_uri, align 8
  %tobool115 = icmp ne i8* %78, null
  br i1 %tobool115, label %if.end.119, label %if.then.116

if.then.116:                                      ; preds = %if.end.114
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %80 = bitcast %struct._Gimp* %79 to %struct._GTypeInstance*
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 80)
  %81 = bitcast %struct._GTypeInstance* %call117 to %struct._GObject*
  %call118 = call i8* @g_object_get_data(%struct._GObject* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0))
  store i8* %call118, i8** %dir_uri, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %if.end.114
  %82 = load i8*, i8** %dir_uri, align 8
  %tobool120 = icmp ne i8* %82, null
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.end.119
  %83 = load i8*, i8** %docs_uri, align 8
  store i8* %83, i8** %dir_uri, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.119
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call123 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %84)
  store i8* %call123, i8** %name_uri, align 8
  %85 = load i8*, i8** %name_uri, align 8
  %tobool124 = icmp ne i8* %85, null
  br i1 %tobool124, label %if.end.127, label %if.then.125

if.then.125:                                      ; preds = %if.end.122
  %86 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call126 = call i8* @gimp_image_get_uri(%struct._GimpImage* %86)
  store i8* %call126, i8** %name_uri, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.122
  %87 = load i8*, i8** %name_uri, align 8
  %tobool128 = icmp ne i8* %87, null
  br i1 %tobool128, label %if.end.131, label %if.then.129

if.then.129:                                      ; preds = %if.end.127
  %88 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call130 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %88)
  store i8* %call130, i8** %name_uri, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.end.127
  %89 = load i8*, i8** %name_uri, align 8
  %tobool132 = icmp ne i8* %89, null
  br i1 %tobool132, label %if.end.135, label %if.then.133

if.then.133:                                      ; preds = %if.end.131
  %call134 = call i8* @gimp_image_get_string_untitled()
  store i8* %call134, i8** %name_uri, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.end.131
  %90 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call136 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %90)
  store i8* %call136, i8** %ext_uri, align 8
  %91 = load i8*, i8** %ext_uri, align 8
  %tobool137 = icmp ne i8* %91, null
  br i1 %tobool137, label %if.end.140, label %if.then.138

if.then.138:                                      ; preds = %if.end.135
  %92 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call139 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %92)
  store i8* %call139, i8** %ext_uri, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.end.135
  %93 = load i8*, i8** %ext_uri, align 8
  %tobool141 = icmp ne i8* %93, null
  br i1 %tobool141, label %if.end.145, label %if.then.142

if.then.142:                                      ; preds = %if.end.140
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %95 = bitcast %struct._Gimp* %94 to %struct._GTypeInstance*
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 80)
  %96 = bitcast %struct._GTypeInstance* %call143 to %struct._GObject*
  %call144 = call i8* @g_object_get_data(%struct._GObject* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0))
  store i8* %call144, i8** %ext_uri, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %if.end.140
  %97 = load i8*, i8** %ext_uri, align 8
  %tobool146 = icmp ne i8* %97, null
  br i1 %tobool146, label %if.end.148, label %if.then.147

if.then.147:                                      ; preds = %if.end.145
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i32 0, i32 0), i8** %ext_uri, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.145
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.94
  %98 = load i8*, i8** %dir_uri, align 8
  %call150 = call i8* @gimp_file_dialog_get_dirname_from_uri(i8* %98)
  store i8* %call150, i8** %dirname, align 8
  %99 = load i8*, i8** %ext_uri, align 8
  %tobool151 = icmp ne i8* %99, null
  br i1 %tobool151, label %if.then.152, label %if.else.156

if.then.152:                                      ; preds = %if.end.149
  %100 = load i8*, i8** %name_uri, align 8
  %101 = load i8*, i8** %ext_uri, align 8
  %call154 = call i8* @file_utils_uri_with_new_ext(i8* %100, i8* %101)
  store i8* %call154, i8** %uri_new_ext, align 8
  %102 = load i8*, i8** %uri_new_ext, align 8
  %call155 = call i8* @file_utils_uri_display_basename(i8* %102)
  store i8* %call155, i8** %basename, align 8
  %103 = load i8*, i8** %uri_new_ext, align 8
  call void @g_free(i8* %103)
  br label %if.end.158

if.else.156:                                      ; preds = %if.end.149
  %104 = load i8*, i8** %name_uri, align 8
  %call157 = call i8* @file_utils_uri_display_basename(i8* %104)
  store i8* %call157, i8** %basename, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.156, %if.then.152
  %105 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %106 = bitcast %struct._GimpFileDialog* %105 to %struct._GTypeInstance*
  %call159 = call i64 @gtk_file_chooser_get_type() #6
  %call160 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call159)
  %107 = bitcast %struct._GTypeInstance* %call160 to %struct._GtkFileChooser*
  %108 = load i8*, i8** %dirname, align 8
  %call161 = call i32 @gtk_file_chooser_set_current_folder_uri(%struct._GtkFileChooser* %107, i8* %108)
  %109 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %110 = bitcast %struct._GimpFileDialog* %109 to %struct._GTypeInstance*
  %call162 = call i64 @gtk_file_chooser_get_type() #6
  %call163 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call162)
  %111 = bitcast %struct._GTypeInstance* %call163 to %struct._GtkFileChooser*
  %112 = load i8*, i8** %basename, align 8
  call void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser* %111, i8* %112)
  %113 = load i8*, i8** %docs_uri, align 8
  call void @g_free(i8* %113)
  %114 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %114)
  %115 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %115)
  br label %return

return:                                           ; preds = %if.end.158, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_file_dialog_get_documents_uri() #3 {
entry:
  %path = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %call = call i8* @g_get_user_special_dir(i32 1)
  %call1 = call noalias i8* (i8*, i8*, ...) @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* null)
  store i8* %call1, i8** %path, align 8
  %0 = load i8*, i8** %path, align 8
  %call2 = call noalias i8* @g_filename_to_uri(i8* %0, i8* null, %struct._GError** null)
  store i8* %call2, i8** %uri, align 8
  %1 = load i8*, i8** %path, align 8
  call void @g_free(i8* %1)
  %2 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i8* @g_get_home_dir()
  %call4 = call noalias i8* (i8*, i8*, ...) @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* %call3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %path, align 8
  %3 = load i8*, i8** %path, align 8
  %call5 = call noalias i8* @g_filename_to_uri(i8* %3, i8* null, %struct._GError** null)
  store i8* %call5, i8** %uri, align 8
  %4 = load i8*, i8** %path, align 8
  call void @g_free(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %uri, align 8
  ret i8* %5
}

declare i8* @gimp_image_get_save_a_copy_uri(%struct._GimpImage*) #1

declare i8* @gimp_image_get_uri(%struct._GimpImage*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i8* @gimp_image_get_imported_uri(%struct._GimpImage*) #1

declare i8* @gimp_image_get_exported_uri(%struct._GimpImage*) #1

declare i8* @gimp_image_get_string_untitled() #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_file_dialog_get_dirname_from_uri(i8* %uri) #3 {
entry:
  %uri.addr = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* null, i8** %dirname, align 8
  %0 = load i8*, i8** %uri.addr, align 8
  %call = call noalias i8* @g_path_get_dirname(i8* %0)
  store i8* %call, i8** %dirname, align 8
  %1 = load i8*, i8** %dirname, align 8
  ret i8* %1
}

declare i8* @file_utils_uri_with_new_ext(i8*, i8*) #1

declare i8* @file_utils_uri_display_basename(i8*) #1

declare i32 @gtk_file_chooser_set_current_folder_uri(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpFileDialogState* @gimp_file_dialog_get_state(%struct._GimpFileDialog* %dialog) #3 {
entry:
  %retval = alloca %struct._GimpFileDialogState*, align 8
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %state = alloca %struct._GimpFileDialogState*, align 8
  %filter = alloca %struct._GtkFileFilter*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpFileDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_file_dialog_get_state, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpFileDialogState* null, %struct._GimpFileDialogState** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @g_slice_alloc0(i64 8)
  %13 = bitcast i8* %call11 to %struct._GimpFileDialogState*
  store %struct._GimpFileDialogState* %13, %struct._GimpFileDialogState** %state, align 8
  %14 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %15 = bitcast %struct._GimpFileDialog* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_file_chooser_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkFileChooser*
  %call14 = call %struct._GtkFileFilter* @gtk_file_chooser_get_filter(%struct._GtkFileChooser* %16)
  store %struct._GtkFileFilter* %call14, %struct._GtkFileFilter** %filter, align 8
  %17 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %tobool15 = icmp ne %struct._GtkFileFilter* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %do.end
  %18 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %call17 = call i8* @gtk_file_filter_get_name(%struct._GtkFileFilter* %18)
  %call18 = call noalias i8* @g_strdup(i8* %call17)
  %19 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state, align 8
  %filter_name = getelementptr inbounds %struct._GimpFileDialogState, %struct._GimpFileDialogState* %19, i32 0, i32 0
  store i8* %call18, i8** %filter_name, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %do.end
  %20 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state, align 8
  store %struct._GimpFileDialogState* %20, %struct._GimpFileDialogState** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.else.9
  %21 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %retval
  ret %struct._GimpFileDialogState* %21
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GtkFileFilter* @gtk_file_chooser_get_filter(%struct._GtkFileChooser*) #1

declare i8* @gtk_file_filter_get_name(%struct._GtkFileFilter*) #1

; Function Attrs: nounwind uwtable
define void @gimp_file_dialog_set_state(%struct._GimpFileDialog* %dialog, %struct._GimpFileDialogState* %state) #3 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %state.addr = alloca %struct._GimpFileDialogState*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %filters = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %filter = alloca %struct._GtkFileFilter*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._GimpFileDialogState* %state, %struct._GimpFileDialogState** %state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpFileDialog* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_file_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_file_dialog_set_state, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.39

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state.addr, align 8
  %cmp12 = icmp ne %struct._GimpFileDialogState* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_file_dialog_set_state, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.39

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state.addr, align 8
  %filter_name = getelementptr inbounds %struct._GimpFileDialogState, %struct._GimpFileDialogState* %14, i32 0, i32 0
  %15 = load i8*, i8** %filter_name, align 8
  %tobool17 = icmp ne i8* %15, null
  br i1 %tobool17, label %if.then.18, label %if.end.39

if.then.18:                                       ; preds = %do.end.16
  %16 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %17 = bitcast %struct._GimpFileDialog* %16 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_file_chooser_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call21)
  %18 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFileChooser*
  %call23 = call %struct._GSList* @gtk_file_chooser_list_filters(%struct._GtkFileChooser* %18)
  store %struct._GSList* %call23, %struct._GSList** %filters, align 8
  %19 = load %struct._GSList*, %struct._GSList** %filters, align 8
  store %struct._GSList* %19, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %20 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool24 = icmp ne %struct._GSList* %20, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_file_filter_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call26)
  %24 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkFileFilter*
  store %struct._GtkFileFilter* %24, %struct._GtkFileFilter** %filter, align 8
  %25 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %call29 = call i8* @gtk_file_filter_get_name(%struct._GtkFileFilter* %25)
  store i8* %call29, i8** %name, align 8
  %26 = load i8*, i8** %name, align 8
  %tobool30 = icmp ne i8* %26, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.38

land.lhs.true.31:                                 ; preds = %for.body
  %27 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state.addr, align 8
  %filter_name32 = getelementptr inbounds %struct._GimpFileDialogState, %struct._GimpFileDialogState* %27, i32 0, i32 0
  %28 = load i8*, i8** %filter_name32, align 8
  %29 = load i8*, i8** %name, align 8
  %call33 = call i32 @strcmp(i8* %28, i8* %29) #7
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %land.lhs.true.31
  %30 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %31 = bitcast %struct._GimpFileDialog* %30 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_file_chooser_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call36)
  %32 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkFileChooser*
  %33 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_chooser_set_filter(%struct._GtkFileChooser* %32, %struct._GtkFileFilter* %33)
  br label %for.end

if.end.38:                                        ; preds = %land.lhs.true.31, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1
  %35 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %35, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.35, %for.cond
  %36 = load %struct._GSList*, %struct._GSList** %filters, align 8
  call void @g_slist_free(%struct._GSList* %36)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.9, %if.else.14, %for.end, %do.end.16
  ret void
}

declare %struct._GSList* @gtk_file_chooser_list_filters(%struct._GtkFileChooser*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_filter_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @gtk_file_chooser_set_filter(%struct._GtkFileChooser*, %struct._GtkFileFilter*) #1

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_file_dialog_state_destroy(%struct._GimpFileDialogState* %state) #3 {
entry:
  %state.addr = alloca %struct._GimpFileDialogState*, align 8
  store %struct._GimpFileDialogState* %state, %struct._GimpFileDialogState** %state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state.addr, align 8
  %cmp = icmp ne %struct._GimpFileDialogState* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_file_dialog_state_destroy, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state.addr, align 8
  %filter_name = getelementptr inbounds %struct._GimpFileDialogState, %struct._GimpFileDialogState* %1, i32 0, i32 0
  %2 = load i8*, i8** %filter_name, align 8
  call void @g_free(i8* %2)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state.addr, align 8
  %4 = bitcast %struct._GimpFileDialogState* %3 to i8*
  call void @g_slice_free1(i64 8, i8* %4)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_class_init(%struct._GimpFileDialogClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFileDialogClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %dialog_class = alloca %struct._GtkDialogClass*, align 8
  store %struct._GimpFileDialogClass* %klass, %struct._GimpFileDialogClass** %klass.addr, align 8
  %0 = load %struct._GimpFileDialogClass*, %struct._GimpFileDialogClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFileDialogClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpFileDialogClass*, %struct._GimpFileDialogClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpFileDialogClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpFileDialogClass*, %struct._GimpFileDialogClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpFileDialogClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkDialogClass*
  store %struct._GtkDialogClass* %8, %struct._GtkDialogClass** %dialog_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_file_dialog_dispose, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %delete_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 29
  store i32 (%struct._GtkWidget*, %struct._GdkEventAny*)* @gimp_file_dialog_delete_event, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)** %delete_event, align 8
  %11 = load %struct._GtkDialogClass*, %struct._GtkDialogClass** %dialog_class, align 8
  %response = getelementptr inbounds %struct._GtkDialogClass, %struct._GtkDialogClass* %11, i32 0, i32 1
  store void (%struct._GtkDialog*, i32)* @gimp_file_dialog_response, void (%struct._GtkDialog*, i32)** %response, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load i8*, i8** @gimp_file_dialog_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 5
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %6(%struct._GObject* %7)
  %8 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %8, i32 0, i32 11
  store %struct._GtkWidget* null, %struct._GtkWidget** %progress, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_file_dialog_delete_event(%struct._GtkWidget* %widget, %struct._GdkEventAny* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventAny*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventAny* %event, %struct._GdkEventAny** %event.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_response(%struct._GtkDialog* %dialog, i32 %response_id) #3 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %response_id.addr = alloca i32, align 4
  %file_dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  %0 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GtkDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %file_dialog, align 8
  %3 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %3, -5
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %busy = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %4, i32 0, i32 12
  %5 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %canceled = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %6, i32 0, i32 13
  store i32 1, i32* %canceled, align 4
  %7 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %progress = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %7, i32 0, i32 11
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %progress, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %if.then
  %9 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %progress4 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %9, i32 0, i32 11
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %progress4, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgressBox*
  %active = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %12, i32 0, i32 1
  %13 = load i32, i32* %active, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.3
  %14 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %progress9 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %14, i32 0, i32 11
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %progress9, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_progress_box_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpProgressBox*
  %cancelable = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %17, i32 0, i32 2
  %18 = load i32, i32* %cancelable, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true.8
  %19 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %20 = bitcast %struct._GtkDialog* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_progress_interface_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpProgress*
  call void @gimp_progress_cancel(%struct._GimpProgress* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true.8, %land.lhs.true.3, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_box_get_type() #2

declare void @gimp_progress_cancel(%struct._GimpProgress*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_file_dialog_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %dialog = alloca %struct._GimpFileDialog*, align 8
  %retval2 = alloca %struct._GimpProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval2, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 11
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress4 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %5, i32 0, i32 11
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progress4, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %9 = load i8*, i8** %message.addr, align 8
  %10 = load i32, i32* %cancelable.addr, align 4
  %call7 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %8, i8* %9, i32 %10)
  store %struct._GimpProgress* %call7, %struct._GimpProgress** %retval2, align 8
  %11 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress8 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %11, i32 0, i32 11
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %progress8, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %14 = bitcast %struct._GimpFileDialog* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %16 = load i32, i32* %cancelable.addr, align 4
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %15, i32 -6, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %retval2, align 8
  ret %struct._GimpProgress* %17
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_progress_end(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress2 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 11
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %5, i32 0, i32 11
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_progress_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpProgress*
  call void @gimp_progress_end(%struct._GimpProgress* %8)
  %9 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress6 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %9, i32 0, i32 11
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %progress6, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_file_dialog_progress_is_active(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress2 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 11
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %5, i32 0, i32 11
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_progress_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpProgress*
  %call6 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %8)
  store i32 %call6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress2 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 11
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %5, i32 0, i32 11
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_progress_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpProgress*
  %9 = load i8*, i8** %message.addr, align 8
  call void @gimp_progress_set_text(%struct._GimpProgress* %8, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress2 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 11
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %5, i32 0, i32 11
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_progress_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpProgress*
  %9 = load double, double* %percentage.addr, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %8, double %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_file_dialog_progress_get_value(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress2 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 11
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %5, i32 0, i32 11
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_progress_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpProgress*
  %call6 = call double @gimp_progress_get_value(%struct._GimpProgress* %8)
  store double %call6, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load double, double* %retval
  ret double %9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_progress_pulse(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress2 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 11
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %progress2, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %progress3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %5, i32 0, i32 11
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progress3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_progress_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpProgress*
  call void @gimp_progress_pulse(%struct._GimpProgress* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_file_dialog_progress_get_window_id(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %4 = bitcast %struct._GimpFileDialog* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call i32 @gimp_window_get_native_id(%struct._GtkWindow* %5)
  ret i32 %call4
}

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare i32 @gimp_progress_is_active(%struct._GimpProgress*) #1

declare void @gimp_progress_set_text(%struct._GimpProgress*, i8*) #1

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare double @gimp_progress_get_value(%struct._GimpProgress*) #1

declare void @gimp_progress_pulse(%struct._GimpProgress*) #1

declare i32 @gimp_window_get_native_id(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i8* @g_get_user_special_dir(i32) #1

declare i32 @gtk_file_chooser_add_shortcut_folder(%struct._GtkFileChooser*, i8*, %struct._GError**) #1

declare void @gtk_file_chooser_set_use_preview_label(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_selection_changed(%struct._GtkFileChooser* %chooser, %struct._GimpFileDialog* %dialog) #3 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %thumb_box = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %0, i32 0, i32 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %thumb_box, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumb_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbBox*
  %4 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call2 = call %struct._GSList* @gtk_file_chooser_get_uris(%struct._GtkFileChooser* %4)
  call void @gimp_thumb_box_take_uris(%struct._GimpThumbBox* %3, %struct._GSList* %call2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_update_preview(%struct._GtkFileChooser* %chooser, %struct._GimpFileDialog* %dialog) #3 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %thumb_box = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %0, i32 0, i32 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %thumb_box, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumb_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbBox*
  %4 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call2 = call i8* @gtk_file_chooser_get_preview_uri(%struct._GtkFileChooser* %4)
  call void @gimp_thumb_box_take_uri(%struct._GimpThumbBox* %3, i8* %call2)
  ret void
}

declare %struct._GtkWidget* @gimp_thumb_box_new(%struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gtk_file_chooser_set_preview_widget(%struct._GtkFileChooser*, %struct._GtkWidget*) #1

declare void @gimp_thumb_box_take_uris(%struct._GimpThumbBox*, %struct._GSList*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_thumb_box_get_type() #2

declare %struct._GSList* @gtk_file_chooser_get_uris(%struct._GtkFileChooser*) #1

declare void @gimp_thumb_box_take_uri(%struct._GimpThumbBox*, i8*) #1

declare i8* @gtk_file_chooser_get_preview_uri(%struct._GtkFileChooser*) #1

declare %struct._GtkFileFilter* @gtk_file_filter_new() #1

declare void @gtk_file_filter_set_name(%struct._GtkFileFilter*, i8*) #1

declare void @gtk_file_chooser_add_filter(%struct._GtkFileChooser*, %struct._GtkFileFilter*) #1

declare void @gtk_file_filter_add_pattern(%struct._GtkFileFilter*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_process_procedure(%struct._GimpPlugInProcedure* %file_proc, %struct._GtkFileFilter** %filter_out, %struct._GtkFileFilter* %all, %struct._GtkFileFilter* %all_savable) #3 {
entry:
  %file_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %filter_out.addr = alloca %struct._GtkFileFilter**, align 8
  %all.addr = alloca %struct._GtkFileFilter*, align 8
  %all_savable.addr = alloca %struct._GtkFileFilter*, align 8
  %filter = alloca %struct._GtkFileFilter*, align 8
  %str = alloca %struct._GString*, align 8
  %ext = alloca %struct._GSList*, align 8
  %i = alloca i32, align 4
  %extension = alloca i8*, align 8
  %pattern = alloca i8*, align 8
  store %struct._GimpPlugInProcedure* %file_proc, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  store %struct._GtkFileFilter** %filter_out, %struct._GtkFileFilter*** %filter_out.addr, align 8
  store %struct._GtkFileFilter* %all, %struct._GtkFileFilter** %all.addr, align 8
  store %struct._GtkFileFilter* %all_savable, %struct._GtkFileFilter** %all_savable.addr, align 8
  store %struct._GtkFileFilter* null, %struct._GtkFileFilter** %filter, align 8
  store %struct._GString* null, %struct._GString** %str, align 8
  store %struct._GSList* null, %struct._GSList** %ext, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %0, i32 0, i32 19
  %1 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._GtkFileFilter* @gtk_file_filter_new()
  store %struct._GtkFileFilter* %call, %struct._GtkFileFilter** %filter, align 8
  %2 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %call1 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %2)
  %call2 = call %struct._GString* @g_string_new(i8* %call1)
  store %struct._GString* %call2, %struct._GString** %str, align 8
  %3 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %4 = bitcast %struct._GtkFileFilter* %3 to i8*
  %call3 = call i8* @g_object_ref_sink(i8* %4)
  %5 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc.addr, align 8
  %extensions_list4 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %5, i32 0, i32 19
  %6 = load %struct._GSList*, %struct._GSList** %extensions_list4, align 8
  store %struct._GSList* %6, %struct._GSList** %ext, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %7 = load %struct._GSList*, %struct._GSList** %ext, align 8
  %tobool5 = icmp ne %struct._GSList* %7, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GSList*, %struct._GSList** %ext, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  store i8* %9, i8** %extension, align 8
  %10 = load i8*, i8** %extension, align 8
  %call6 = call i8* @gimp_file_dialog_pattern_from_extension(i8* %10)
  store i8* %call6, i8** %pattern, align 8
  %11 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %12 = load i8*, i8** %pattern, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %11, i8* %12)
  %13 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all.addr, align 8
  %14 = load i8*, i8** %pattern, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %13, i8* %14)
  %15 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all_savable.addr, align 8
  %tobool7 = icmp ne %struct._GtkFileFilter* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  %16 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %all_savable.addr, align 8
  %17 = load i8*, i8** %pattern, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %16, i8* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.body
  %18 = load i8*, i8** %pattern, align 8
  call void @g_free(i8* %18)
  %19 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.9
  %20 = load %struct._GString*, %struct._GString** %str, align 8
  %call11 = call %struct._GString* @g_string_append(%struct._GString* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.16

if.else:                                          ; preds = %if.end.9
  %21 = load i32, i32* %i, align 4
  %cmp12 = icmp sle i32 %21, 4
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else
  %22 = load %struct._GString*, %struct._GString** %str, align 8
  %call14 = call %struct._GString* @g_string_append(%struct._GString* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.10
  %23 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %23, 4
  br i1 %cmp17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.end.16
  %24 = load %struct._GString*, %struct._GString** %str, align 8
  %call19 = call %struct._GString* @g_string_append(%struct._GString* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  %25 = load %struct._GString*, %struct._GString** %str, align 8
  %26 = load i8*, i8** %extension, align 8
  %call20 = call %struct._GString* @g_string_append(%struct._GString* %25, i8* %26)
  br label %if.end.26

if.else.21:                                       ; preds = %if.end.16
  %27 = load i32, i32* %i, align 4
  %cmp22 = icmp eq i32 %27, 4
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.else.21
  %28 = load %struct._GString*, %struct._GString** %str, align 8
  %call24 = call %struct._GString* @g_string_append(%struct._GString* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.else.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.18
  %29 = load %struct._GSList*, %struct._GSList** %ext, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1
  %30 = load %struct._GSList*, %struct._GSList** %next, align 8
  %tobool27 = icmp ne %struct._GSList* %30, null
  br i1 %tobool27, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  %31 = load %struct._GString*, %struct._GString** %str, align 8
  %call29 = call %struct._GString* @g_string_append(%struct._GString* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %32 = load %struct._GSList*, %struct._GSList** %ext, align 8
  %tobool31 = icmp ne %struct._GSList* %32, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %33 = load %struct._GSList*, %struct._GSList** %ext, align 8
  %next32 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1
  %34 = load %struct._GSList*, %struct._GSList** %next32, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %ext, align 8
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %37 = load %struct._GString*, %struct._GString** %str, align 8
  %str33 = getelementptr inbounds %struct._GString, %struct._GString* %37, i32 0, i32 0
  %38 = load i8*, i8** %str33, align 8
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %36, i8* %38)
  %39 = load %struct._GString*, %struct._GString** %str, align 8
  %call34 = call i8* @g_string_free(%struct._GString* %39, i32 1)
  %40 = load %struct._GtkFileFilter**, %struct._GtkFileFilter*** %filter_out.addr, align 8
  %tobool35 = icmp ne %struct._GtkFileFilter** %40, null
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.end
  %41 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %42 = bitcast %struct._GtkFileFilter* %41 to i8*
  %call37 = call i8* @g_object_ref(i8* %42)
  %43 = bitcast i8* %call37 to %struct._GtkFileFilter*
  %44 = load %struct._GtkFileFilter**, %struct._GtkFileFilter*** %filter_out.addr, align 8
  store %struct._GtkFileFilter* %43, %struct._GtkFileFilter** %44, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.end
  %45 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %46 = bitcast %struct._GtkFileFilter* %45 to i8*
  call void @g_object_unref(i8* %46)
  br label %return

return:                                           ; preds = %if.end.38, %if.then
  ret void
}

declare void @g_object_unref(i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #1

declare i8* @g_object_ref_sink(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_file_dialog_pattern_from_extension(i8* %extension) #3 {
entry:
  %retval = alloca i8*, align 8
  %extension.addr = alloca i8*, align 8
  %pattern = alloca i8*, align 8
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %extension, i8** %extension.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %extension.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_file_dialog_pattern_from_extension, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %extension.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i32, i32* %len, align 4
  %mul = mul nsw i32 4, %2
  %add = add nsw i32 4, %mul
  %conv1 = sext i32 %add to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv1, i64 1)
  store i8* %call2, i8** %pattern, align 8
  %3 = load i8*, i8** %pattern, align 8
  %call3 = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0)) #8
  store i32 0, i32* %i, align 4
  %4 = load i8*, i8** %pattern, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 91, i8* %arrayidx, align 1
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %extension.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx6, align 1
  %call7 = call signext i8 @g_ascii_tolower(i8 signext %10) #6
  %11 = load i8*, i8** %p, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %call7, i8* %arrayidx8, align 1
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i8*, i8** %extension.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %call11 = call signext i8 @g_ascii_toupper(i8 signext %14) #6
  %15 = load i8*, i8** %p, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 %call11, i8* %arrayidx12, align 1
  %16 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 3
  store i8 93, i8* %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load i8*, i8** %p, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %add.ptr14, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %p, align 8
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %pattern, align 8
  store i8* %20, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %21 = load i8*, i8** %retval
  ret i8* %21
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_tolower(i8 signext) #2

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_toupper(i8 signext) #2

declare %struct._GtkWidget* @gtk_expander_new_with_mnemonic(i8*) #1

declare void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_file_proc_view_new(%struct._Gimp*, %struct._GSList*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_file_dialog_proc_changed(%struct._GimpFileProcView* %view, %struct._GimpFileDialog* %dialog) #3 {
entry:
  %view.addr = alloca %struct._GimpFileProcView*, align 8
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  %name = alloca i8*, align 8
  %label = alloca i8*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %uri = alloca i8*, align 8
  %last_dot = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %ext = alloca i8*, align 8
  %p = alloca i8*, align 8
  %s = alloca %struct._GString*, align 8
  %basename = alloca i8*, align 8
  store %struct._GimpFileProcView* %view, %struct._GimpFileProcView** %view.addr, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpFileDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %2, %struct._GtkFileChooser** %chooser, align 8
  %3 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %call2 = call %struct._GimpPlugInProcedure* @gimp_file_proc_view_get_proc(%struct._GimpFileProcView* %3, i8** %name)
  %4 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %file_proc = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %4, i32 0, i32 1
  store %struct._GimpPlugInProcedure* %call2, %struct._GimpPlugInProcedure** %file_proc, align 8
  %5 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0)) #8
  %6 = load i8*, i8** %name, align 8
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call3, i8* %6)
  store i8* %call4, i8** %label, align 8
  %7 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %proc_expander = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %7, i32 0, i32 9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_expander, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_expander_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkExpander*
  %11 = load i8*, i8** %label, align 8
  call void @gtk_expander_set_label(%struct._GtkExpander* %10, i8* %11)
  %12 = load i8*, i8** %label, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %name, align 8
  call void @g_free(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %call7 = call i32 @gtk_file_chooser_get_action(%struct._GtkFileChooser* %14)
  %cmp = icmp eq i32 %call7, 1
  br i1 %cmp, label %if.then.8, label %if.end.68

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %file_proc9 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %15, i32 0, i32 1
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc9, align 8
  store %struct._GimpPlugInProcedure* %16, %struct._GimpPlugInProcedure** %proc, align 8
  %17 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool10 = icmp ne %struct._GimpPlugInProcedure* %17, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.then.8
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 19
  %19 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  %tobool11 = icmp ne %struct._GSList* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end.67

if.then.12:                                       ; preds = %land.lhs.true
  %20 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %call13 = call i8* @gtk_file_chooser_get_uri(%struct._GtkFileChooser* %20)
  store i8* %call13, i8** %uri, align 8
  %21 = load i8*, i8** %uri, align 8
  %tobool14 = icmp ne i8* %21, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.66

land.lhs.true.15:                                 ; preds = %if.then.12
  %22 = load i8*, i8** %uri, align 8
  %call16 = call i64 @strlen(i8* %22) #7
  %tobool17 = icmp ne i64 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.66

if.then.18:                                       ; preds = %land.lhs.true.15
  %23 = load i8*, i8** %uri, align 8
  %call19 = call i8* @strrchr(i8* %23, i32 46) #7
  store i8* %call19, i8** %last_dot, align 8
  %24 = load i8*, i8** %last_dot, align 8
  %tobool20 = icmp ne i8* %24, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %if.then.18
  %25 = load i8*, i8** %uri, align 8
  %call22 = call i8* @strrchr(i8* %25, i32 47) #7
  %26 = load i8*, i8** %last_dot, align 8
  %cmp23 = icmp ugt i8* %call22, %26
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  store i8* null, i8** %last_dot, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.21, %if.then.18
  %27 = load i8*, i8** %last_dot, align 8
  %tobool26 = icmp ne i8* %27, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.48

land.lhs.true.27:                                 ; preds = %if.end.25
  %28 = load i8*, i8** %last_dot, align 8
  %29 = load i8*, i8** %uri, align 8
  %cmp28 = icmp ne i8* %28, %29
  br i1 %cmp28, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %land.lhs.true.27
  %30 = load %struct._GimpFileProcView*, %struct._GimpFileProcView** %view.addr, align 8
  %meta_extensions = getelementptr inbounds %struct._GimpFileProcView, %struct._GimpFileProcView* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %meta_extensions, align 8
  store %struct._GList* %31, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.29
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool30 = icmp ne %struct._GList* %32, null
  br i1 %tobool30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data, align 8
  store i8* %34, i8** %ext, align 8
  %35 = load i8*, i8** %ext, align 8
  %36 = load i8*, i8** %last_dot, align 8
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 1
  %call31 = call i32 @strcmp(i8* %35, i8* %add.ptr) #7
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.46, label %if.then.33

if.then.33:                                       ; preds = %for.body
  %37 = load i8*, i8** %last_dot, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %37, i64 -1
  store i8* %add.ptr34, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.33
  %38 = load i8*, i8** %p, align 8
  %39 = load i8*, i8** %uri, align 8
  %cmp35 = icmp ugt i8* %38, %39
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %40 = load i8*, i8** %p, align 8
  %41 = load i8, i8* %40, align 1
  %conv = sext i8 %41 to i32
  %cmp36 = icmp ne i32 %conv, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %42 = phi i1 [ false, %while.cond ], [ %cmp36, %land.rhs ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %43 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %44 = load i8*, i8** %p, align 8
  %45 = load i8*, i8** %uri, align 8
  %cmp38 = icmp ne i8* %44, %45
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %while.end
  %46 = load i8*, i8** %p, align 8
  %47 = load i8, i8* %46, align 1
  %conv41 = sext i8 %47 to i32
  %cmp42 = icmp eq i32 %conv41, 46
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.40
  %48 = load i8*, i8** %p, align 8
  store i8* %48, i8** %last_dot, align 8
  br label %for.end

if.end.45:                                        ; preds = %land.lhs.true.40, %while.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool47 = icmp ne %struct._GList* %49, null
  br i1 %tobool47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %51, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.44, %for.cond
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %land.lhs.true.27, %if.end.25
  %52 = load i8*, i8** %last_dot, align 8
  %53 = load i8*, i8** %uri, align 8
  %cmp49 = icmp ne i8* %52, %53
  br i1 %cmp49, label %if.then.51, label %if.end.65

if.then.51:                                       ; preds = %if.end.48
  %54 = load i8*, i8** %uri, align 8
  %call52 = call %struct._GString* @g_string_new(i8* %54)
  store %struct._GString* %call52, %struct._GString** %s, align 8
  %55 = load i8*, i8** %last_dot, align 8
  %tobool53 = icmp ne i8* %55, null
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.then.51
  %56 = load %struct._GString*, %struct._GString** %s, align 8
  %57 = load i8*, i8** %last_dot, align 8
  %58 = load i8*, i8** %uri, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %58 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call55 = call %struct._GString* @g_string_truncate(%struct._GString* %56, i64 %sub.ptr.sub)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.then.51
  %59 = load %struct._GString*, %struct._GString** %s, align 8
  %call57 = call %struct._GString* @g_string_append(%struct._GString* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0))
  %60 = load %struct._GString*, %struct._GString** %s, align 8
  %61 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions_list58 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %61, i32 0, i32 19
  %62 = load %struct._GSList*, %struct._GSList** %extensions_list58, align 8
  %data59 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 0
  %63 = load i8*, i8** %data59, align 8
  %call60 = call %struct._GString* @g_string_append(%struct._GString* %60, i8* %63)
  %64 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %65 = load %struct._GString*, %struct._GString** %s, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %65, i32 0, i32 0
  %66 = load i8*, i8** %str, align 8
  %call61 = call i32 @gtk_file_chooser_set_uri(%struct._GtkFileChooser* %64, i8* %66)
  %67 = load %struct._GString*, %struct._GString** %s, align 8
  %str62 = getelementptr inbounds %struct._GString, %struct._GString* %67, i32 0, i32 0
  %68 = load i8*, i8** %str62, align 8
  %call63 = call i8* @file_utils_uri_display_basename(i8* %68)
  store i8* %call63, i8** %basename, align 8
  %69 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %70 = load i8*, i8** %basename, align 8
  call void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser* %69, i8* %70)
  %71 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %71)
  %72 = load %struct._GString*, %struct._GString** %s, align 8
  %call64 = call i8* @g_string_free(%struct._GString* %72, i32 1)
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.56, %if.end.48
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %land.lhs.true.15, %if.then.12
  %73 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %73)
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true, %if.then.8
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end
  ret void
}

declare %struct._GimpPlugInProcedure* @gimp_file_proc_view_get_proc(%struct._GimpFileProcView*, i8**) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gtk_expander_set_label(%struct._GtkExpander*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_expander_get_type() #2

declare i32 @gtk_file_chooser_get_action(%struct._GtkFileChooser*) #1

declare i8* @gtk_file_chooser_get_uri(%struct._GtkFileChooser*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare i32 @gtk_file_chooser_set_uri(%struct._GtkFileChooser*, i8*) #1

declare %struct._GtkWidget* @gtk_window_get_focus(%struct._GtkWindow*) #1

declare i8* @gimp_file_proc_view_get_help_id(%struct._GimpFileProcView*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare noalias i8* @g_build_path(i8*, i8*, ...) #1

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #1

declare i8* @g_get_home_dir() #1

declare noalias i8* @g_path_get_dirname(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
