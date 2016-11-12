; ModuleID = './app/actions/plug-in-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpPlugInProcedure = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpItemTreeView = type { %struct._GimpContainerTreeView, %struct._GimpItemTreeViewPriv* }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GimpItemTreeViewPriv = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTreeViewClass = type { %struct._GimpContainerTreeViewClass, void (%struct._GimpItemTreeView*, %struct._GimpImage*)*, i64, i8*, %struct._GimpContainer* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)*, void (%struct._GimpImage*, %struct._GimpItem*)*, void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)*, void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpImage*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpContainerTreeViewClass = type { %struct._GimpContainerBoxClass, void (%struct._GimpContainerTreeView*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)* }
%struct._GimpContainerBoxClass = type { %struct._GimpEditorClass }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
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
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkTreePath = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpParamSpecItemID = type { %struct._GParamSpecInt, %struct._Gimp*, i64, i32 }
%struct._GParamSpecInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }

@.str = private unnamed_addr constant [26 x i8] c"Unhandled procedure type.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Reset all Filters\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gimp-question\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Do you really want to reset all filters to default values?\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Gimp-Actions\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Uh-oh, no active data object for the plug-in!\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Uh-oh, no active image for the plug-in!\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Uh-oh, no active item for the plug-in!\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Uh-oh, no active display for the plug-in!\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Uh-oh, no active drawable for the plug-in!\00", align 1

; Function Attrs: nounwind uwtable
define void @plug_in_run_cmd_callback(%struct._GtkAction* %action, %struct._GimpPlugInProcedure* %proc, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %data.addr = alloca i8*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %n_args = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst17 = alloca %struct._GTypeInstance*, align 8
  %__t19 = alloca i64, align 8
  %__r22 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %object = alloca %struct._GimpObject*, align 8
  %__inst79 = alloca %struct._GTypeInstance*, align 8
  %__t81 = alloca i64, align 8
  %__r84 = alloca i32, align 4
  %tmp99 = alloca i32, align 4
  %editor103 = alloca %struct._GimpImageEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst112 = alloca %struct._GTypeInstance*, align 8
  %__t114 = alloca i64, align 8
  %__r117 = alloca i32, align 4
  %tmp132 = alloca i32, align 4
  %view136 = alloca %struct._GimpItemTreeView*, align 8
  %image140 = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_procedure_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %2, %struct._GimpProcedure** %procedure, align 8
  store i32 0, i32* %n_args, align 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %call2 = call %struct._Gimp* @action_data_get_gimp(i8* %3)
  store %struct._Gimp* %call2, %struct._Gimp** %gimp, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %5)
  store %struct._GValueArray* %call3, %struct._GValueArray** %args, align 8
  %6 = load i32, i32* %n_args, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 %idxprom
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 0)
  %9 = load i32, i32* %n_args, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n_args, align 4
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %10, i32 0, i32 1
  %11 = load i32, i32* %proc_type, align 4
  switch i32 %11, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 0, label %sw.bb.158
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end, %if.end
  %12 = load i8*, i8** %data.addr, align 8
  %13 = bitcast i8* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_data_factory_view_get_type() #6
  store i64 %call5, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %sw.bb.4
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %sw.bb.4
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %19, %20
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #7
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %25 = load i8*, i8** %data.addr, align 8
  %26 = bitcast i8* %25 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %26, %struct._GTypeInstance** %__inst17, align 8
  %call20 = call i64 @gimp_font_view_get_type() #6
  store i64 %call20, i64* %__t19, align 8
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %tobool23 = icmp ne %struct._GTypeInstance* %27, null
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r22, align 4
  br label %if.end.36

if.else.25:                                       ; preds = %lor.lhs.false
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %tobool27 = icmp ne %struct._GTypeClass* %29, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.else.33

land.lhs.true.28:                                 ; preds = %if.else.25
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type30, align 8
  %33 = load i64, i64* %__t19, align 8
  %cmp31 = icmp eq i64 %32, %33
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.28
  store i32 1, i32* %__r22, align 4
  br label %if.end.35

if.else.33:                                       ; preds = %land.lhs.true.28, %if.else.25
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %35 = load i64, i64* %__t19, align 8
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %34, i64 %35) #7
  store i32 %call34, i32* %__r22, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  %36 = load i32, i32* %__r22, align 4
  store i32 %36, i32* %tmp37
  %37 = load i32, i32* %tmp37
  %tobool38 = icmp ne i32 %37, 0
  br i1 %tobool38, label %if.then.63, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.36
  %38 = load i8*, i8** %data.addr, align 8
  %39 = bitcast i8* %38 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %39, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_buffer_view_get_type() #6
  store i64 %call44, i64* %__t43, align 8
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %40, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %lor.lhs.false.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %lor.lhs.false.39
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %42, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type54, align 8
  %46 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %45, %46
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %48 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %47, i64 %48) #7
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %49 = load i32, i32* %__r46, align 4
  store i32 %49, i32* %tmp61
  %50 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %50, 0
  br i1 %tobool62, label %if.then.63, label %if.else.77

if.then.63:                                       ; preds = %if.end.60, %if.end.36, %if.end.14
  %51 = load i8*, i8** %data.addr, align 8
  %52 = bitcast i8* %51 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_container_editor_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call65)
  %53 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %53, %struct._GimpContainerEditor** %editor, align 8
  %54 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %54, i32 0, i32 1
  %55 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call70 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %55)
  store %struct._GimpContainer* %call70, %struct._GimpContainer** %container, align 8
  %56 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view71 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %56, i32 0, i32 1
  %57 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view71, align 8
  %call72 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %57)
  store %struct._GimpContext* %call72, %struct._GimpContext** %context, align 8
  %58 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %59 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call73 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %59)
  %call74 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %58, i64 %call73)
  store %struct._GimpObject* %call74, %struct._GimpObject** %object, align 8
  %60 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %61 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args75 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %62, i32 0, i32 11
  %63 = load %struct._GParamSpec**, %struct._GParamSpec*** %args75, align 8
  %64 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %65 = load i32, i32* %n_args, align 4
  %call76 = call i32 @plug_in_collect_data_args(%struct._GtkAction* %60, %struct._GimpObject* %61, %struct._GParamSpec** %63, %struct._GValueArray* %64, i32 %65)
  store i32 %call76, i32* %n_args, align 4
  br label %if.end.157

if.else.77:                                       ; preds = %if.end.60
  %66 = load i8*, i8** %data.addr, align 8
  %67 = bitcast i8* %66 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %67, %struct._GTypeInstance** %__inst79, align 8
  %call82 = call i64 @gimp_image_editor_get_type() #6
  store i64 %call82, i64* %__t81, align 8
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst79, align 8
  %tobool85 = icmp ne %struct._GTypeInstance* %68, null
  br i1 %tobool85, label %if.else.87, label %if.then.86

if.then.86:                                       ; preds = %if.else.77
  store i32 0, i32* %__r84, align 4
  br label %if.end.98

if.else.87:                                       ; preds = %if.else.77
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst79, align 8
  %g_class88 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class88, align 8
  %tobool89 = icmp ne %struct._GTypeClass* %70, null
  br i1 %tobool89, label %land.lhs.true.90, label %if.else.95

land.lhs.true.90:                                 ; preds = %if.else.87
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst79, align 8
  %g_class91 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class91, align 8
  %g_type92 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %72, i32 0, i32 0
  %73 = load i64, i64* %g_type92, align 8
  %74 = load i64, i64* %__t81, align 8
  %cmp93 = icmp eq i64 %73, %74
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %land.lhs.true.90
  store i32 1, i32* %__r84, align 4
  br label %if.end.97

if.else.95:                                       ; preds = %land.lhs.true.90, %if.else.87
  %75 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst79, align 8
  %76 = load i64, i64* %__t81, align 8
  %call96 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %75, i64 %76) #7
  store i32 %call96, i32* %__r84, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.95, %if.then.94
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.86
  %77 = load i32, i32* %__r84, align 4
  store i32 %77, i32* %tmp99
  %78 = load i32, i32* %tmp99
  %tobool100 = icmp ne i32 %78, 0
  br i1 %tobool100, label %if.then.101, label %if.else.110

if.then.101:                                      ; preds = %if.end.98
  %79 = load i8*, i8** %data.addr, align 8
  %80 = bitcast i8* %79 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_image_editor_get_type() #6
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call104)
  %81 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpImageEditor*
  store %struct._GimpImageEditor* %81, %struct._GimpImageEditor** %editor103, align 8
  %82 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor103, align 8
  %call107 = call %struct._GimpImage* @gimp_image_editor_get_image(%struct._GimpImageEditor* %82)
  store %struct._GimpImage* %call107, %struct._GimpImage** %image, align 8
  %83 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args108 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %85, i32 0, i32 11
  %86 = load %struct._GParamSpec**, %struct._GParamSpec*** %args108, align 8
  %87 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %88 = load i32, i32* %n_args, align 4
  %call109 = call i32 @plug_in_collect_image_args(%struct._GtkAction* %83, %struct._GimpImage* %84, %struct._GParamSpec** %86, %struct._GValueArray* %87, i32 %88)
  store i32 %call109, i32* %n_args, align 4
  br label %if.end.156

if.else.110:                                      ; preds = %if.end.98
  %89 = load i8*, i8** %data.addr, align 8
  %90 = bitcast i8* %89 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %90, %struct._GTypeInstance** %__inst112, align 8
  %call115 = call i64 @gimp_item_tree_view_get_type() #6
  store i64 %call115, i64* %__t114, align 8
  %91 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %tobool118 = icmp ne %struct._GTypeInstance* %91, null
  br i1 %tobool118, label %if.else.120, label %if.then.119

if.then.119:                                      ; preds = %if.else.110
  store i32 0, i32* %__r117, align 4
  br label %if.end.131

if.else.120:                                      ; preds = %if.else.110
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class121 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %92, i32 0, i32 0
  %93 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class121, align 8
  %tobool122 = icmp ne %struct._GTypeClass* %93, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.else.128

land.lhs.true.123:                                ; preds = %if.else.120
  %94 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class124 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %94, i32 0, i32 0
  %95 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class124, align 8
  %g_type125 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %95, i32 0, i32 0
  %96 = load i64, i64* %g_type125, align 8
  %97 = load i64, i64* %__t114, align 8
  %cmp126 = icmp eq i64 %96, %97
  br i1 %cmp126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %land.lhs.true.123
  store i32 1, i32* %__r117, align 4
  br label %if.end.130

if.else.128:                                      ; preds = %land.lhs.true.123, %if.else.120
  %98 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %99 = load i64, i64* %__t114, align 8
  %call129 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %98, i64 %99) #7
  store i32 %call129, i32* %__r117, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.119
  %100 = load i32, i32* %__r117, align 4
  store i32 %100, i32* %tmp132
  %101 = load i32, i32* %tmp132
  %tobool133 = icmp ne i32 %101, 0
  br i1 %tobool133, label %if.then.134, label %if.else.151

if.then.134:                                      ; preds = %if.end.131
  %102 = load i8*, i8** %data.addr, align 8
  %103 = bitcast i8* %102 to %struct._GTypeInstance*
  %call137 = call i64 @gimp_item_tree_view_get_type() #6
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call137)
  %104 = bitcast %struct._GTypeInstance* %call138 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %104, %struct._GimpItemTreeView** %view136, align 8
  %105 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view136, align 8
  %call142 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %105)
  store %struct._GimpImage* %call142, %struct._GimpImage** %image140, align 8
  %106 = load %struct._GimpImage*, %struct._GimpImage** %image140, align 8
  %tobool143 = icmp ne %struct._GimpImage* %106, null
  br i1 %tobool143, label %if.then.144, label %if.else.147

if.then.144:                                      ; preds = %if.then.134
  %107 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view136, align 8
  %108 = bitcast %struct._GimpItemTreeView* %107 to %struct._GTypeInstance*
  %g_class145 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %108, i32 0, i32 0
  %109 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class145, align 8
  %110 = bitcast %struct._GTypeClass* %109 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %110, i32 0, i32 5
  %111 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %112 = load %struct._GimpImage*, %struct._GimpImage** %image140, align 8
  %call146 = call %struct._GimpItem* %111(%struct._GimpImage* %112)
  store %struct._GimpItem* %call146, %struct._GimpItem** %item, align 8
  br label %if.end.148

if.else.147:                                      ; preds = %if.then.134
  store %struct._GimpItem* null, %struct._GimpItem** %item, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.147, %if.then.144
  %113 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %114 = load %struct._GimpImage*, %struct._GimpImage** %image140, align 8
  %115 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args149 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %116, i32 0, i32 11
  %117 = load %struct._GParamSpec**, %struct._GParamSpec*** %args149, align 8
  %118 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %119 = load i32, i32* %n_args, align 4
  %call150 = call i32 @plug_in_collect_item_args(%struct._GtkAction* %113, %struct._GimpImage* %114, %struct._GimpItem* %115, %struct._GParamSpec** %117, %struct._GValueArray* %118, i32 %119)
  store i32 %call150, i32* %n_args, align 4
  br label %if.end.155

if.else.151:                                      ; preds = %if.end.131
  %120 = load i8*, i8** %data.addr, align 8
  %call152 = call %struct._GimpDisplay* @action_data_get_display(i8* %120)
  store %struct._GimpDisplay* %call152, %struct._GimpDisplay** %display, align 8
  %121 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %122 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args153 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %123, i32 0, i32 11
  %124 = load %struct._GParamSpec**, %struct._GParamSpec*** %args153, align 8
  %125 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %126 = load i32, i32* %n_args, align 4
  %call154 = call i32 @plug_in_collect_display_args(%struct._GtkAction* %121, %struct._GimpDisplay* %122, %struct._GParamSpec** %124, %struct._GValueArray* %125, i32 %126)
  store i32 %call154, i32* %n_args, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.151, %if.end.148
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.101
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.63
  br label %sw.epilog

sw.bb.158:                                        ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %n_args, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.158, %if.end.157, %sw.bb
  %127 = load i32, i32* %n_args, align 4
  %cmp159 = icmp sge i32 %127, 1
  br i1 %cmp159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %sw.epilog
  %128 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %129 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %130 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %131 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %132 = load i32, i32* %n_args, align 4
  call void @plug_in_procedure_execute(%struct._GimpPlugInProcedure* %128, %struct._Gimp* %129, %struct._GimpDisplay* %130, %struct._GValueArray* %131, i32 %132)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %sw.epilog
  %133 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %133)
  br label %return

return:                                           ; preds = %if.end.161, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #2

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

declare %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_factory_view_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_font_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_collect_data_args(%struct._GtkAction* %action, %struct._GimpObject* %object, %struct._GParamSpec** %pspecs, %struct._GValueArray* %args, i32 %n_args) #0 {
entry:
  %retval = alloca i32, align 4
  %action.addr = alloca %struct._GtkAction*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %n_args.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %n_args, i32* %n_args.addr, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 0
  %1 = load i32, i32* %n_values, align 4
  %2 = load i32, i32* %n_args.addr, align 4
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %n_args.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %4, i64 %idxprom
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_param_string_get_type() #6
  store i64 %call, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else.6

land.lhs.true.2:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp4 = icmp eq i64 %12, %13
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true.2
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true.2, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.8
  %18 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %tobool11 = icmp ne %struct._GimpObject* %18, null
  br i1 %tobool11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.then.10
  %19 = load i32, i32* %n_args.addr, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 %idxprom13
  %22 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %23 = bitcast %struct._GimpObject* %22 to i8*
  %call15 = call i8* @gimp_object_get_name(i8* %23)
  call void @g_value_set_string(%struct._GValue* %arrayidx14, i8* %call15)
  %24 = load i32, i32* %n_args.addr, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %n_args.addr, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.then.10
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.8, %entry
  %25 = load i32, i32* %n_args.addr, align 4
  store i32 %25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.16
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare %struct._GimpImage* @gimp_image_editor_get_image(%struct._GimpImageEditor*) #1

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_collect_image_args(%struct._GtkAction* %action, %struct._GimpImage* %image, %struct._GParamSpec** %pspecs, %struct._GValueArray* %args, i32 %n_args) #0 {
entry:
  %retval = alloca i32, align 4
  %action.addr = alloca %struct._GtkAction*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %n_args.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %n_args, i32* %n_args.addr, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 0
  %1 = load i32, i32* %n_values, align 4
  %2 = load i32, i32* %n_args.addr, align 4
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %n_args.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %4, i64 %idxprom
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else.6

land.lhs.true.2:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp4 = icmp eq i64 %12, %13
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true.2
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true.2, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool11 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.then.10
  %19 = load i32, i32* %n_args.addr, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 %idxprom13
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx14, %struct._GimpImage* %22)
  %23 = load i32, i32* %n_args.addr, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %n_args.addr, align 4
  br label %if.end.16

if.else.15:                                       ; preds = %if.then.10
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.8, %entry
  %24 = load i32, i32* %n_args.addr, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.else.15
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_tree_view_get_type() #2

declare %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView*) #1

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_collect_item_args(%struct._GtkAction* %action, %struct._GimpImage* %image, %struct._GimpItem* %item, %struct._GParamSpec** %pspecs, %struct._GValueArray* %args, i32 %n_args) #0 {
entry:
  %retval = alloca i32, align 4
  %action.addr = alloca %struct._GtkAction*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %n_args.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %n_args, i32* %n_args.addr, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 0
  %1 = load i32, i32* %n_values, align 4
  %2 = load i32, i32* %n_args.addr, align 4
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %n_args.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %4, i64 %idxprom
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else.6

land.lhs.true.2:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp4 = icmp eq i64 %12, %13
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true.2
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true.2, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.end.63

if.then.10:                                       ; preds = %if.end.8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool11 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.62

if.then.12:                                       ; preds = %if.then.10
  %19 = load i32, i32* %n_args.addr, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 %idxprom13
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx14, %struct._GimpImage* %22)
  %23 = load i32, i32* %n_args.addr, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %n_args.addr, align 4
  %24 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %24, i32 0, i32 0
  %25 = load i32, i32* %n_values15, align 4
  %26 = load i32, i32* %n_args.addr, align 4
  %cmp16 = icmp ugt i32 %25, %26
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.61

land.lhs.true.17:                                 ; preds = %if.then.12
  %27 = load i32, i32* %n_args.addr, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %28, i64 %idxprom20
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx21, align 8
  %30 = bitcast %struct._GParamSpec* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst19, align 8
  %call24 = call i64 @gimp_param_item_id_get_type() #6
  store i64 %call24, i64* %__t23, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.17
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %land.lhs.true.17
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type34, align 8
  %37 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %36, %37
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %39 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %40 = load i32, i32* %__r26, align 4
  store i32 %40, i32* %tmp41
  %41 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.61

if.then.43:                                       ; preds = %if.end.40
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %tobool44 = icmp ne %struct._GimpItem* %42, null
  br i1 %tobool44, label %land.lhs.true.45, label %if.else.59

land.lhs.true.45:                                 ; preds = %if.then.43
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %44 = bitcast %struct._GimpItem* %43 to %struct._GTypeInstance*
  %g_class46 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class46, align 8
  %g_type47 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type47, align 8
  %47 = load i32, i32* %n_args.addr, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %48, i64 %idxprom48
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx49, align 8
  %50 = bitcast %struct._GParamSpec* %49 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_param_item_id_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call50)
  %51 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpParamSpecItemID*
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %51, i32 0, i32 2
  %52 = load i64, i64* %item_type, align 8
  %call52 = call i32 @g_type_is_a(i64 %46, i64 %52)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.59

if.then.54:                                       ; preds = %land.lhs.true.45
  %53 = load i32, i32* %n_args.addr, align 4
  %idxprom55 = sext i32 %53 to i64
  %54 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values56 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %54, i32 0, i32 1
  %55 = load %struct._GValue*, %struct._GValue** %values56, align 8
  %arrayidx57 = getelementptr inbounds %struct._GValue, %struct._GValue* %55, i64 %idxprom55
  %56 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_value_set_item(%struct._GValue* %arrayidx57, %struct._GimpItem* %56)
  %57 = load i32, i32* %n_args.addr, align 4
  %inc58 = add nsw i32 %57, 1
  store i32 %inc58, i32* %n_args.addr, align 4
  br label %if.end.60

if.else.59:                                       ; preds = %land.lhs.true.45, %if.then.43
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.40, %if.then.12
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.10
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.8, %entry
  %58 = load i32, i32* %n_args.addr, align 4
  store i32 %58, i32* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.else.59
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_collect_display_args(%struct._GtkAction* %action, %struct._GimpDisplay* %display, %struct._GParamSpec** %pspecs, %struct._GValueArray* %args, i32 %n_args) #0 {
entry:
  %retval = alloca i32, align 4
  %action.addr = alloca %struct._GtkAction*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %n_args.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst24 = alloca %struct._GTypeInstance*, align 8
  %__t28 = alloca i64, align 8
  %__r31 = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %__inst62 = alloca %struct._GTypeInstance*, align 8
  %__t66 = alloca i64, align 8
  %__r69 = alloca i32, align 4
  %tmp84 = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %n_args, i32* %n_args.addr, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 0
  %1 = load i32, i32* %n_values, align 4
  %2 = load i32, i32* %n_args.addr, align 4
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %n_args.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %4, i64 %idxprom
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_param_display_id_get_type() #6
  store i64 %call, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else.6

land.lhs.true.2:                                  ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp4 = icmp eq i64 %12, %13
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true.2
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true.2, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %if.end.8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %tobool11 = icmp ne %struct._GimpDisplay* %18, null
  br i1 %tobool11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.then.10
  %19 = load i32, i32* %n_args.addr, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %20, i32 0, i32 1
  %21 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i64 %idxprom13
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %23 = bitcast %struct._GimpDisplay* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  call void @gimp_value_set_display(%struct._GValue* %arrayidx14, %struct._GimpObject* %24)
  %25 = load i32, i32* %n_args.addr, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %n_args.addr, align 4
  br label %if.end.18

if.else.17:                                       ; preds = %if.then.10
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.8, %entry
  %26 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %26, i32 0, i32 0
  %27 = load i32, i32* %n_values20, align 4
  %28 = load i32, i32* %n_args.addr, align 4
  %cmp21 = icmp ugt i32 %27, %28
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.99

land.lhs.true.22:                                 ; preds = %if.end.19
  %29 = load i32, i32* %n_args.addr, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %30, i64 %idxprom25
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx26, align 8
  %32 = bitcast %struct._GParamSpec* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst24, align 8
  %call29 = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call29, i64* %__t28, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %tobool32 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool32, label %if.else.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %__r31, align 4
  br label %if.end.45

if.else.34:                                       ; preds = %land.lhs.true.22
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %tobool36 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.else.42

land.lhs.true.37:                                 ; preds = %if.else.34
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %g_type39 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type39, align 8
  %39 = load i64, i64* %__t28, align 8
  %cmp40 = icmp eq i64 %38, %39
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %__r31, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true.37, %if.else.34
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %41 = load i64, i64* %__t28, align 8
  %call43 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #7
  store i32 %call43, i32* %__r31, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.33
  %42 = load i32, i32* %__r31, align 4
  store i32 %42, i32* %tmp46
  %43 = load i32, i32* %tmp46
  %tobool47 = icmp ne i32 %43, 0
  br i1 %tobool47, label %if.then.48, label %if.end.99

if.then.48:                                       ; preds = %if.end.45
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %tobool50 = icmp ne %struct._GimpDisplay* %44, null
  br i1 %tobool50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.48
  %45 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call51 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %45)
  br label %cond.end

cond.false:                                       ; preds = %if.then.48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpImage* [ %call51, %cond.true ], [ null, %cond.false ]
  store %struct._GimpImage* %cond, %struct._GimpImage** %image, align 8
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool52 = icmp ne %struct._GimpImage* %46, null
  br i1 %tobool52, label %if.then.53, label %if.end.98

if.then.53:                                       ; preds = %cond.end
  %47 = load i32, i32* %n_args.addr, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values55 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %48, i32 0, i32 1
  %49 = load %struct._GValue*, %struct._GValue** %values55, align 8
  %arrayidx56 = getelementptr inbounds %struct._GValue, %struct._GValue* %49, i64 %idxprom54
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx56, %struct._GimpImage* %50)
  %51 = load i32, i32* %n_args.addr, align 4
  %inc57 = add nsw i32 %51, 1
  store i32 %inc57, i32* %n_args.addr, align 4
  %52 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values58 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %52, i32 0, i32 0
  %53 = load i32, i32* %n_values58, align 4
  %54 = load i32, i32* %n_args.addr, align 4
  %cmp59 = icmp ugt i32 %53, %54
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.97

land.lhs.true.60:                                 ; preds = %if.then.53
  %55 = load i32, i32* %n_args.addr, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %56, i64 %idxprom63
  %57 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx64, align 8
  %58 = bitcast %struct._GParamSpec* %57 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %58, %struct._GTypeInstance** %__inst62, align 8
  %call67 = call i64 @gimp_param_drawable_id_get_type() #6
  store i64 %call67, i64* %__t66, align 8
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst62, align 8
  %tobool70 = icmp ne %struct._GTypeInstance* %59, null
  br i1 %tobool70, label %if.else.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.60
  store i32 0, i32* %__r69, align 4
  br label %if.end.83

if.else.72:                                       ; preds = %land.lhs.true.60
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst62, align 8
  %g_class73 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class73, align 8
  %tobool74 = icmp ne %struct._GTypeClass* %61, null
  br i1 %tobool74, label %land.lhs.true.75, label %if.else.80

land.lhs.true.75:                                 ; preds = %if.else.72
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst62, align 8
  %g_class76 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class76, align 8
  %g_type77 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %63, i32 0, i32 0
  %64 = load i64, i64* %g_type77, align 8
  %65 = load i64, i64* %__t66, align 8
  %cmp78 = icmp eq i64 %64, %65
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %land.lhs.true.75
  store i32 1, i32* %__r69, align 4
  br label %if.end.82

if.else.80:                                       ; preds = %land.lhs.true.75, %if.else.72
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst62, align 8
  %67 = load i64, i64* %__t66, align 8
  %call81 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %66, i64 %67) #7
  store i32 %call81, i32* %__r69, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.79
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.71
  %68 = load i32, i32* %__r69, align 4
  store i32 %68, i32* %tmp84
  %69 = load i32, i32* %tmp84
  %tobool85 = icmp ne i32 %69, 0
  br i1 %tobool85, label %if.then.86, label %if.end.97

if.then.86:                                       ; preds = %if.end.83
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call88 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %70)
  store %struct._GimpDrawable* %call88, %struct._GimpDrawable** %drawable, align 8
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool89 = icmp ne %struct._GimpDrawable* %71, null
  br i1 %tobool89, label %if.then.90, label %if.else.95

if.then.90:                                       ; preds = %if.then.86
  %72 = load i32, i32* %n_args.addr, align 4
  %idxprom91 = sext i32 %72 to i64
  %73 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values92 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %73, i32 0, i32 1
  %74 = load %struct._GValue*, %struct._GValue** %values92, align 8
  %arrayidx93 = getelementptr inbounds %struct._GValue, %struct._GValue* %74, i64 %idxprom91
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_value_set_drawable(%struct._GValue* %arrayidx93, %struct._GimpDrawable* %75)
  %76 = load i32, i32* %n_args.addr, align 4
  %inc94 = add nsw i32 %76, 1
  store i32 %inc94, i32* %n_args.addr, align 4
  br label %if.end.96

if.else.95:                                       ; preds = %if.then.86
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.then.90
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.83, %if.then.53
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %cond.end
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.45, %if.end.19
  %77 = load i32, i32* %n_args.addr, align 4
  store i32 %77, i32* %retval
  br label %return

return:                                           ; preds = %if.end.99, %if.else.95, %if.else.17
  %78 = load i32, i32* %retval
  ret i32 %78
}

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plug_in_procedure_execute(%struct._GimpPlugInProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpDisplay* %display, %struct._GValueArray* %args, i32 %n_args) #0 {
entry:
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %n_args.addr = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %n_args, i32* %n_args.addr, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %1 = load i32, i32* %n_args.addr, align 4
  call void @gimp_value_array_truncate(%struct._GValueArray* %0, i32 %1)
  %2 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %3 = bitcast %struct._GimpPlugInProcedure* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_procedure_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProcedure*
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call2 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %6)
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %8 = bitcast %struct._GimpDisplay* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %12 = bitcast %struct._GimpDisplay* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  call void @gimp_procedure_execute_async(%struct._GimpProcedure* %4, %struct._Gimp* %5, %struct._GimpContext* %call2, %struct._GimpProgress* %9, %struct._GValueArray* %10, %struct._GimpObject* %13, %struct._GError** %error)
  %14 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %14, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %17 = bitcast %struct._GimpDisplay* %16 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %19 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %19, i32 0, i32 2
  %20 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %15, %struct._GObject* %18, i32 2, i8* %20)
  %21 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %21)
  br label %if.end.28

if.else:                                          ; preds = %entry
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %23 = bitcast %struct._GimpPlugInProcedure* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_procedure_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpProcedure*
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 10
  %25 = load i32, i32* %num_args, align 4
  %cmp = icmp sge i32 %25, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.else
  %26 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %27 = bitcast %struct._GimpPlugInProcedure* %26 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_procedure_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call10)
  %28 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpProcedure*
  %args12 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %28, i32 0, i32 11
  %29 = load %struct._GParamSpec**, %struct._GParamSpec*** %args12, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %29, i64 1
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %31 = bitcast %struct._GParamSpec* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_param_image_id_get_type() #6
  store i64 %call13, i64* %__t, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool14 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool14, label %if.else.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.24

if.else.16:                                       ; preds = %land.lhs.true
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool17 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.else.22

land.lhs.true.18:                                 ; preds = %if.else.16
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type, align 8
  %38 = load i64, i64* %__t, align 8
  %cmp20 = icmp eq i64 %37, %38
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.22:                                       ; preds = %land.lhs.true.18, %if.else.16
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %40 = load i64, i64* %__t, align 8
  %call23 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #7
  store i32 %call23, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.15
  %41 = load i32, i32* %__r, align 4
  store i32 %41, i32* %tmp
  %42 = load i32, i32* %tmp
  %tobool25 = icmp ne i32 %42, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %43, i32 0, i32 25
  %44 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %45 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  call void @gimp_plug_in_manager_history_add(%struct._GimpPlugInManager* %44, %struct._GimpPlugInProcedure* %45)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  ret void
}

declare void @g_value_array_free(%struct._GValueArray*) #1

; Function Attrs: nounwind uwtable
define void @plug_in_repeat_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %procedure = alloca %struct._GimpPlugInProcedure*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %run_mode = alloca i32, align 4
  %args = alloca %struct._GValueArray*, align 8
  %n_args = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.15

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpDisplay* @action_data_get_display(i8* %2)
  store %struct._GimpDisplay* %call1, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool2 = icmp ne %struct._GimpDisplay* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.15

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %value.addr, align 4
  store i32 %4, i32* %run_mode, align 4
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 25
  %6 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %call5 = call %struct._GimpPlugInProcedure* @gimp_plug_in_manager_history_nth(%struct._GimpPlugInManager* %6, i32 0)
  store %struct._GimpPlugInProcedure* %call5, %struct._GimpPlugInProcedure** %procedure, align 8
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %tobool6 = icmp ne %struct._GimpPlugInProcedure* %7, null
  br i1 %tobool6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.end.4
  %8 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %9 = bitcast %struct._GimpPlugInProcedure* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_procedure_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpProcedure*
  %call10 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %10)
  store %struct._GValueArray* %call10, %struct._GValueArray** %args, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 0
  %13 = load i32, i32* %run_mode, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %13)
  %14 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %17 = bitcast %struct._GimpPlugInProcedure* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_procedure_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpProcedure*
  %args13 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %18, i32 0, i32 11
  %19 = load %struct._GParamSpec**, %struct._GParamSpec*** %args13, align 8
  %20 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call14 = call i32 @plug_in_collect_display_args(%struct._GtkAction* %14, %struct._GimpDisplay* %15, %struct._GParamSpec** %19, %struct._GValueArray* %20, i32 1)
  store i32 %call14, i32* %n_args, align 4
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %24 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %25 = load i32, i32* %n_args, align 4
  call void @plug_in_procedure_execute(%struct._GimpPlugInProcedure* %21, %struct._Gimp* %22, %struct._GimpDisplay* %23, %struct._GValueArray* %24, i32 %25)
  %26 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %26)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare %struct._GimpPlugInProcedure* @gimp_plug_in_manager_history_nth(%struct._GimpPlugInManager*, i32) #1

; Function Attrs: nounwind uwtable
define void @plug_in_history_cmd_callback(%struct._GtkAction* %action, %struct._GimpPlugInProcedure* %procedure, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %n_args = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpDisplay* @action_data_get_display(i8* %2)
  store %struct._GimpDisplay* %call1, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool2 = icmp ne %struct._GimpDisplay* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %5 = bitcast %struct._GimpPlugInProcedure* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_procedure_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProcedure*
  %call7 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %6)
  store %struct._GValueArray* %call7, %struct._GValueArray** %args, align 8
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %7, i32 0, i32 1
  %8 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i64 0
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 0)
  %9 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %11 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %12 = bitcast %struct._GimpPlugInProcedure* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_procedure_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpProcedure*
  %args10 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %13, i32 0, i32 11
  %14 = load %struct._GParamSpec**, %struct._GParamSpec*** %args10, align 8
  %15 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call11 = call i32 @plug_in_collect_display_args(%struct._GtkAction* %9, %struct._GimpDisplay* %10, %struct._GParamSpec** %14, %struct._GValueArray* %15, i32 1)
  store i32 %call11, i32* %n_args, align 4
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %19 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %20 = load i32, i32* %n_args, align 4
  call void @plug_in_procedure_execute(%struct._GimpPlugInProcedure* %16, %struct._Gimp* %17, %struct._GimpDisplay* %18, %struct._GValueArray* %19, i32 %20)
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %21)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @plug_in_reset_all_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %4, i32 -5, i32 -6, i32 -1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = bitcast %struct._Gimp* %7 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._Gimp*)* @plug_in_reset_all_response to void ()*), i8* %8, void (i8*, %struct._GClosure*)* null, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_message_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %11, i32 0, i32 1
  %12 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0)) #5
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %12, i8* %call8)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @plug_in_reset_all_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._Gimp* %gimp) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %1, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 25
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  call void @gimp_plug_in_manager_data_free(%struct._GimpPlugInManager* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gimp_value_array_truncate(%struct._GValueArray*, i32) #1

declare void @gimp_procedure_execute_async(%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*, %struct._GError**) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_image_id_get_type() #2

declare void @gimp_plug_in_manager_history_add(%struct._GimpPlugInManager*, %struct._GimpPlugInProcedure*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_string_get_type() #2

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_value_set_image(%struct._GValue*, %struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_item_id_get_type() #2

declare i32 @g_type_is_a(i64, i64) #1

declare void @gimp_value_set_item(%struct._GValue*, %struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_display_id_get_type() #2

declare void @gimp_value_set_display(%struct._GValue*, %struct._GimpObject*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_drawable_id_get_type() #2

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare void @gimp_value_set_drawable(%struct._GValue*, %struct._GimpDrawable*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_plug_in_manager_data_free(%struct._GimpPlugInManager*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
