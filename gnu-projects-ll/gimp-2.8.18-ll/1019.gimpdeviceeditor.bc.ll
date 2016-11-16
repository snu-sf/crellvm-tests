; ModuleID = './app/widgets/gimpdeviceeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDeviceEditorClass = type { %struct._GtkPanedClass }
%struct._GtkPanedClass = type { %struct._GtkContainerClass, i32 (%struct._GtkPaned*, i32)*, i32 (%struct._GtkPaned*)*, i32 (%struct._GtkPaned*, i32)*, i32 (%struct._GtkPaned*, i32)*, i32 (%struct._GtkPaned*)*, i32 (%struct._GtkPaned*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GimpDeviceEditor = type { %struct._GtkPaned }
%struct._GimpDeviceEditorPrivate = type { %struct._Gimp*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GtkOrientable = type opaque
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDeviceManager = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpContainerView = type opaque
%struct._GimpDeviceInfo = type { %struct._GimpContext, %struct._GdkDevice*, %struct._GdkDisplay*, i32, i32, i32*, i32, %struct._GdkDeviceKey*, %struct._GimpCurve* }
%struct._GimpCurve = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.1, %struct._GdkDrawable*, i32 }
%union.anon.1 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque

@gimp_device_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpDeviceEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_device_editor_new = private unnamed_addr constant [23 x i8] c"gimp_device_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@gimp_device_editor_parent_class = internal global i8* null, align 8
@GimpDeviceEditor_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"gimpdeviceeditor.c\00", align 1
@__func__.gimp_device_editor_constructed = private unnamed_addr constant [31 x i8] c"gimp_device_editor_constructed\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"GIMP_IS_GIMP (private->gimp)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Delete the selected device\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"switch-page\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Delete Device Settings\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"gimp-question\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Delete \22%s\22?\00", align 1
@.str.20 = private unnamed_addr constant [124 x i8] c"You are about to delete this device's stored settings.\0AThe next time this device is plugged, default settings will be used.\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"info\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_device_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_device_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_device_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_paned_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 904, void (i8*, i8*)* bitcast (void (i8*)* @gimp_device_editor_class_intern_init to void (i8*, i8*)*), i32 216, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDeviceEditor*)* @gimp_device_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_device_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_device_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_device_editor_parent_class, align 8
  %1 = load i32, i32* @GimpDeviceEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDeviceEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDeviceEditorClass*
  call void @gimp_device_editor_class_init(%struct._GimpDeviceEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_init(%struct._GimpDeviceEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %ebox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %icon_width = alloca i32, align 4
  %icon_height = alloca i32, align 4
  store %struct._GimpDeviceEditor* %editor, %struct._GimpDeviceEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpDeviceEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_orientable_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %5, i32 0)
  %6 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %7 = bitcast %struct._GimpDeviceEditor* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %8)
  %call7 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %call6, i32 4, i32* %icon_width, i32* %icon_height)
  %9 = load i32, i32* %icon_height, align 4
  %call8 = call %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer* null, %struct._GimpContext* null, i32 %9, i32 0)
  %10 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %10, i32 0, i32 2
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %treeview, align 8
  %11 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview9 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %11, i32 0, i32 2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview9, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %12, i32 200, i32 -1)
  %13 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpDeviceEditor* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_paned_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkPaned*
  %16 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview12 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %16, i32 0, i32 2
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview12, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %15, %struct._GtkWidget* %17, i32 1, i32 0)
  %18 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview13 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %18, i32 0, i32 2
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview13, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview14 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview14, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %24 = bitcast %struct._GimpDeviceEditor* %23 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %26 = bitcast %struct._GObject* %25 to i8*
  %call16 = call i64 @g_signal_connect_object(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, %struct._GimpDeviceEditor*)* @gimp_device_editor_select_device to void ()*), i8* %26, i32 0)
  %27 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview17 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %27, i32 0, i32 2
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview17, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_editor_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpEditor*
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0)) #6
  %31 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %32 = bitcast %struct._GimpDeviceEditor* %31 to i8*
  %call21 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* %call20, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDeviceEditor*)* @gimp_device_editor_delete_clicked to void ()*), void ()* null, i8* %32)
  %33 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %delete_button = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %33, i32 0, i32 3
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %delete_button, align 8
  %34 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %delete_button22 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %34, i32 0, i32 3
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button22, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %35, i32 0)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %vbox, align 8
  %36 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %37 = bitcast %struct._GimpDeviceEditor* %36 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_paned_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call24)
  %38 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkPaned*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %38, %struct._GtkWidget* %39, i32 1, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call26 = call %struct._GtkWidget* @gtk_event_box_new()
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %ebox, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_set_state(%struct._GtkWidget* %41, i32 3)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call27)
  %44 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %hbox, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call30)
  %49 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %49, i32 4)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call32)
  %52 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %52, %struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %call34 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %55 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %label = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %55, i32 0, i32 4
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  %56 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %label35 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %56, i32 0, i32 4
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %label35, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_misc_get_type() #8
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call36)
  %59 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %59, float 0.000000e+00, float 5.000000e-01)
  %60 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %label38 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %60, i32 0, i32 4
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %label38, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_label_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call39)
  %63 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkLabel*
  call void @gtk_label_set_ellipsize(%struct._GtkLabel* %63, i32 3)
  %64 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %label41 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %64, i32 0, i32 4
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %label41, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_label_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call42)
  %67 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %67, i32 4, i32 700, i32 -1)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #8
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call44)
  %70 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %71 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %label46 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %71, i32 0, i32 4
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %label46, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %72, i32 1, i32 1, i32 0)
  %73 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %label47 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %73, i32 0, i32 4
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %label47, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %call48 = call %struct._GtkWidget* @gtk_image_new()
  %75 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %75, i32 0, i32 5
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %image, align 8
  %76 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %image49 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %76, i32 0, i32 5
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %image49, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %77, i32 -1, i32 24)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call50)
  %80 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %81 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %image52 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %81, i32 0, i32 5
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %image52, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %80, %struct._GtkWidget* %82, i32 0, i32 0, i32 0)
  %83 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %image53 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %83, i32 0, i32 5
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %image53, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %call54 = call %struct._GtkWidget* @gtk_notebook_new()
  %85 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %85, i32 0, i32 6
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %notebook, align 8
  %86 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook55 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %86, i32 0, i32 6
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook55, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_notebook_get_type() #8
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call56)
  %89 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %89, i32 0)
  %90 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook58 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %90, i32 0, i32 6
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook58, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_notebook_get_type() #8
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call59)
  %93 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %93, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_box_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call61)
  %96 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkBox*
  %97 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook63 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %97, i32 0, i32 6
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook63, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %96, %struct._GtkWidget* %98, i32 1, i32 1, i32 0)
  %99 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook64 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %99, i32 0, i32 6
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook64, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %101 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook65 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %101, i32 0, i32 6
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook65, align 8
  %103 = bitcast %struct._GtkWidget* %102 to i8*
  %104 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %105 = bitcast %struct._GimpDeviceEditor* %104 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkNotebook*, i8*, i32, %struct._GimpDeviceEditor*)* @gimp_device_editor_switch_page to void ()*), i8* %105, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_device_editor_new(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_device_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_device_editor_get_type() #8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._Gimp* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_class_init(%struct._GimpDeviceEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDeviceEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDeviceEditorClass* %klass, %struct._GimpDeviceEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpDeviceEditorClass*, %struct._GimpDeviceEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_device_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_device_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %9 = bitcast %struct._GObjectClass* %8 to i8*
  call void @g_type_class_add_private(i8* %9, i64 56)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %devices = alloca %struct._GimpContainer*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceEditor*
  store %struct._GimpDeviceEditor* %2, %struct._GimpDeviceEditor** %editor, align 8
  %3 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor, align 8
  %4 = bitcast %struct._GimpDeviceEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_device_editor_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %5, %struct._GimpDeviceEditorPrivate** %private, align 8
  %6 = load i8*, i8** @gimp_device_editor_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_device_editor_parent_class, align 8
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
  %15 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %15, i32 0, i32 0
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_device_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #10
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %29 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %gimp21 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %29, i32 0, i32 0
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %call22 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %30)
  %31 = bitcast %struct._GimpDeviceManager* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_container_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpContainer*
  store %struct._GimpContainer* %32, %struct._GimpContainer** %devices, align 8
  %33 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %34 = bitcast %struct._GimpContainer* %33 to i8*
  %35 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor, align 8
  %36 = bitcast %struct._GimpDeviceEditor* %35 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDeviceInfo*, %struct._GimpDeviceEditor*)* @gimp_device_editor_remove_device to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %37, i32 0, i32 2
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_container_view_interface_get_type() #8
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpContainerView*
  %41 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %40, %struct._GimpContainer* %41)
  %42 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview28 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %42, i32 0, i32 2
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview28, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_container_view_interface_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call29)
  %45 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpContainerView*
  %46 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %gimp31 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %46, i32 0, i32 0
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp31, align 8
  %call32 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %47)
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %45, %struct._GimpContext* %call32)
  %48 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %49 = bitcast %struct._GimpContainer* %48 to i8*
  %50 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor, align 8
  %51 = bitcast %struct._GimpDeviceEditor* %50 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDeviceInfo*, %struct._GimpDeviceEditor*)* @gimp_device_editor_add_device to void ()*), i8* %51, void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %53 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor, align 8
  %54 = bitcast %struct._GimpDeviceEditor* %53 to i8*
  %call34 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceInfo*, %struct._GimpDeviceEditor*)* @gimp_device_editor_device_changed to void ()*), i8* %54)
  %55 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %name_changed_handler = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %55, i32 0, i32 1
  store i32 %call34, i32* %name_changed_handler, align 4
  %56 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %57 = bitcast %struct._GimpContainer* %56 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_list_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call35)
  %58 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpList*
  %list37 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %list37, align 8
  store %struct._GList* %59, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %60 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool38 = icmp ne %struct._GList* %60, null
  br i1 %tobool38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %62 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %62, i32 0, i32 0
  %63 = load i8*, i8** %data, align 8
  %64 = bitcast i8* %63 to %struct._GimpDeviceInfo*
  %65 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor, align 8
  call void @gimp_device_editor_add_device(%struct._GimpContainer* %61, %struct._GimpDeviceInfo* %64, %struct._GimpDeviceEditor* %65)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %66, null
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %67 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %67, i32 0, i32 1
  %68 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %68, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %devices = alloca %struct._GimpContainer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %3, i32 0, i32 0
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %4)
  %5 = bitcast %struct._GimpDeviceManager* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainer*
  store %struct._GimpContainer* %6, %struct._GimpContainer** %devices, align 8
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %8 = bitcast %struct._GimpContainer* %7 to i8*
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpDeviceInfo*, %struct._GimpDeviceEditor*)* @gimp_device_editor_add_device to i8*), i8* %10)
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %12 = bitcast %struct._GimpContainer* %11 to i8*
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainer*, %struct._GimpDeviceInfo*, %struct._GimpDeviceEditor*)* @gimp_device_editor_remove_device to i8*), i8* %14)
  %15 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %name_changed_handler = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %15, i32 0, i32 1
  %16 = load i32, i32* %name_changed_handler, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %18 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %name_changed_handler7 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %18, i32 0, i32 1
  %19 = load i32, i32* %name_changed_handler7, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %17, i32 %19)
  %20 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %name_changed_handler8 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %20, i32 0, i32 1
  store i32 0, i32* %name_changed_handler8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load i8*, i8** @gimp_device_editor_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 80)
  %23 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %23, i32 0, i32 5
  %24 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %24(%struct._GObject* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %6, i32 0, i32 0
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %5, i32 0, i32 0
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 317, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_remove_device(%struct._GimpContainer* %container, %struct._GimpDeviceInfo* %info, %struct._GimpDeviceEditor* %editor) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %editor.addr = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %treeview7 = alloca %struct._GimpContainerTreeView*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GimpDeviceEditor* %editor, %struct._GimpDeviceEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %7 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %8 = bitcast %struct._GimpDeviceInfo* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %call6 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %6, %struct._GimpViewable* %9)
  %10 = bitcast i8* %call6 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %10, %struct._GtkTreeIter** %iter, align 8
  %11 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %11, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview8 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %12, i32 0, i32 2
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview8, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_container_tree_view_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %15, %struct._GimpContainerTreeView** %treeview7, align 8
  %16 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %treeview7, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %16, i32 0, i32 1
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %18 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %18, i32 4, %struct._GtkWidget** %widget, i32 -1)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  ret void
}

declare void @gimp_container_view_set_container(%struct._GimpContainerView*, %struct._GimpContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @gimp_container_view_set_context(%struct._GimpContainerView*, %struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_add_device(%struct._GimpContainer* %container, %struct._GimpDeviceInfo* %info, %struct._GimpDeviceEditor* %editor) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %editor.addr = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %treeview11 = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GimpDeviceEditor* %editor, %struct._GimpDeviceEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_device_info_editor_new(%struct._GimpDeviceInfo* %3)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %widget, align 8
  %4 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %4, i32 0, i32 6
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_notebook_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkNotebook*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call5 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %7, %struct._GtkWidget* %8, %struct._GtkWidget* null)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %10, i32 0, i32 2
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_container_view_interface_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpContainerView*
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %15 = bitcast %struct._GimpDeviceInfo* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  %call10 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %13, %struct._GimpViewable* %16)
  %17 = bitcast i8* %call10 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %17, %struct._GtkTreeIter** %iter, align 8
  %18 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %18, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview12 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview12, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_container_tree_view_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %22, %struct._GimpContainerTreeView** %treeview11, align 8
  %23 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %treeview11, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %23, i32 0, i32 1
  %24 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %25 = bitcast %struct._GtkTreeModel* %24 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_tree_store_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call15)
  %26 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTreeStore*
  %27 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %29 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call17 = call %struct._GdkDevice* @gimp_device_info_get_device(%struct._GimpDeviceInfo* %29, %struct._GdkDisplay** null)
  %cmp = icmp ne %struct._GdkDevice* %call17, null
  %conv = zext i1 %cmp to i32
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %26, %struct._GtkTreeIter* %27, i32 4, %struct._GtkWidget* %28, i32 3, i32 %conv, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_container_add_handler(%struct._GimpContainer*, i8*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_device_changed(%struct._GimpDeviceInfo* %info, %struct._GimpDeviceEditor* %editor) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %editor.addr = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %treeview7 = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GimpDeviceEditor* %editor, %struct._GimpDeviceEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %7 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %8 = bitcast %struct._GimpDeviceInfo* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %call6 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %6, %struct._GimpViewable* %9)
  %10 = bitcast i8* %call6 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %10, %struct._GtkTreeIter** %iter, align 8
  %11 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview8 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %12, i32 0, i32 2
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview8, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_container_tree_view_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %15, %struct._GimpContainerTreeView** %treeview7, align 8
  %16 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %treeview7, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %16, i32 0, i32 1
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %18 = bitcast %struct._GtkTreeModel* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_store_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeStore*
  %20 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %21 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call13 = call %struct._GdkDevice* @gimp_device_info_get_device(%struct._GimpDeviceInfo* %21, %struct._GdkDisplay** null)
  %cmp = icmp ne %struct._GdkDevice* %call13, null
  %conv = zext i1 %cmp to i32
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %19, %struct._GtkTreeIter* %20, i32 3, i32 %conv, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i8* @gimp_container_view_lookup(%struct._GimpContainerView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_device_info_editor_new(%struct._GimpDeviceInfo*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #2

declare %struct._GdkDevice* @gimp_device_info_get_device(%struct._GimpDeviceInfo*, %struct._GdkDisplay**) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_container_remove_handler(%struct._GimpContainer*, i32) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_paned_pack1(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_select_device(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data, %struct._GimpDeviceEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %treeview = alloca %struct._GimpContainerTreeView*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %page_num = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpDeviceEditor* %editor, %struct._GimpDeviceEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %insert_data.addr, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview3 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %5, i32 0, i32 2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_container_tree_view_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %8, %struct._GimpContainerTreeView** %treeview, align 8
  %9 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %treeview, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %9, i32 0, i32 1
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %11 = load i8*, i8** %insert_data.addr, align 8
  %12 = bitcast i8* %11 to %struct._GtkTreeIter*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %12, i32 4, %struct._GtkWidget** %widget, i32 -1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %14 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_notebook_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkNotebook*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call10 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %17, %struct._GtkWidget* %18)
  store i32 %call10, i32* %page_num, align 4
  %19 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %notebook11 = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %19, i32 0, i32 6
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook11, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_notebook_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkNotebook*
  %23 = load i32, i32* %page_num, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %22, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #7

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_delete_clicked(%struct._GtkWidget* %button, %struct._GimpDeviceEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %selected = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpDeviceEditor* %editor, %struct._GimpDeviceEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %call4 = call i32 @gimp_container_view_get_selected(%struct._GimpContainerView* %6, %struct._GList** %selected)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0)) #6
  %7 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpDeviceEditor* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %9)
  %call9 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), %struct._GtkWidget* %call8, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %dialog, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %12, i32 -5, i32 -6, i32 -1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %16 = bitcast %struct._GimpDeviceEditor* %15 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpDeviceEditor*)* @gimp_device_editor_delete_response to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_message_dialog_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %19, i32 0, i32 1
  %20 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #6
  %21 = load %struct._GList*, %struct._GList** %selected, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %call16 = call i8* @gimp_object_get_name(i8* %22)
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %20, i8* %call15, i8* %call16)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_message_dialog_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpMessageDialog*
  %box19 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %25, i32 0, i32 1
  %26 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box19, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.20, i32 0, i32 0)) #6
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %26, i8* %call20)
  %27 = load %struct._GList*, %struct._GList** %selected, align 8
  call void @g_list_free(%struct._GList* %27)
  %28 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %29 = bitcast %struct._GimpDeviceEditor* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %30, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_paned_pack2(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_event_box_new() #1

declare void @gtk_widget_set_state(%struct._GtkWidget*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_label_set_ellipsize(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare %struct._GtkWidget* @gtk_image_new() #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #1

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_switch_page(%struct._GtkNotebook* %notebook, i8* %page, i32 %page_num, %struct._GimpDeviceEditor* %editor) #3 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %page.addr = alloca i8*, align 8
  %page_num.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %info = alloca %struct._GimpDeviceInfo*, align 8
  %delete_sensitive = alloca i32, align 4
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  store i32 %page_num, i32* %page_num.addr, align 4
  store %struct._GimpDeviceEditor* %editor, %struct._GimpDeviceEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  store i32 0, i32* %delete_sensitive, align 4
  %3 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %4 = bitcast %struct._GtkNotebook* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_notebook_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkNotebook*
  %6 = load i32, i32* %page_num.addr, align 4
  %call4 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %5, i32 %6)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %struct._GimpDeviceInfo** %info, i8* null)
  %9 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %label = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %9, i32 0, i32 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_label_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkLabel*
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %14 = bitcast %struct._GimpDeviceInfo* %13 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %14)
  call void @gtk_label_set_text(%struct._GtkLabel* %12, i8* %call7)
  %15 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %15, i32 0, i32 5
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_image_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkImage*
  %19 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %20 = bitcast %struct._GimpDeviceInfo* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_viewable_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpViewable*
  %call12 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %21)
  call void @gtk_image_set_from_stock(%struct._GtkImage* %18, i8* %call12, i32 4)
  %22 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %call13 = call %struct._GdkDevice* @gimp_device_info_get_device(%struct._GimpDeviceInfo* %22, %struct._GdkDisplay** null)
  %tobool = icmp ne %struct._GdkDevice* %call13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %delete_sensitive, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %delete_button = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %23, i32 0, i32 3
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button, align 8
  %25 = load i32, i32* %delete_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %24, i32 %25)
  %26 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %27 = bitcast %struct._GimpDeviceInfo* %26 to i8*
  call void @g_object_unref(i8* %27)
  ret void
}

declare i32 @gtk_notebook_page_num(%struct._GtkNotebook*, %struct._GtkWidget*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

declare i32 @gimp_container_view_get_selected(%struct._GimpContainerView*, %struct._GList**) #1

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_device_editor_delete_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpDeviceEditor* %editor) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpDeviceEditor*, align 8
  %private = alloca %struct._GimpDeviceEditorPrivate*, align 8
  %selected = alloca %struct._GList*, align 8
  %devices = alloca %struct._GimpContainer*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpDeviceEditor* %editor, %struct._GimpDeviceEditor** %editor.addr, align 8
  %0 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpDeviceEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_editor_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceEditorPrivate*
  store %struct._GimpDeviceEditorPrivate* %2, %struct._GimpDeviceEditorPrivate** %private, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %3)
  %4 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %4, -5
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %treeview = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %5, i32 0, i32 2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %treeview, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %call4 = call i32 @gimp_container_view_get_selected(%struct._GimpContainerView* %8, %struct._GList** %selected)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct._GimpDeviceEditorPrivate*, %struct._GimpDeviceEditorPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceEditorPrivate, %struct._GimpDeviceEditorPrivate* %9, i32 0, i32 0
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call6 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %10)
  %11 = bitcast %struct._GimpDeviceManager* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_container_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpContainer*
  store %struct._GimpContainer* %12, %struct._GimpContainer** %devices, align 8
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %devices, align 8
  %14 = load %struct._GList*, %struct._GList** %selected, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpObject*
  %call9 = call i32 @gimp_container_remove(%struct._GimpContainer* %13, %struct._GimpObject* %16)
  %17 = load %struct._GList*, %struct._GList** %selected, align 8
  call void @g_list_free(%struct._GList* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %18 = load %struct._GimpDeviceEditor*, %struct._GimpDeviceEditor** %editor.addr, align 8
  %19 = bitcast %struct._GimpDeviceEditor* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %20, i32 1)
  ret void
}

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare void @g_list_free(%struct._GList*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook*, i32) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare void @g_object_unref(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
