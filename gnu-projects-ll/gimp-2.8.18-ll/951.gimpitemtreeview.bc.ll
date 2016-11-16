; ModuleID = './app/widgets/gimpitemtreeview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpContainerViewInterface = type { %struct._GTypeInterface, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, i32)*, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)*, i32 (%struct._GimpContainerView*, %struct._GList**)*, void (i8*)*, i32 }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpContainerView = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpItemTreeViewClass = type { %struct._GimpContainerTreeViewClass, void (%struct._GimpItemTreeView*, %struct._GimpImage*)*, i64, i8*, %struct._GimpContainer* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)*, void (%struct._GimpImage*, %struct._GimpItem*)*, void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)*, void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpImage*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpContainerTreeViewClass = type { %struct._GimpContainerBoxClass, void (%struct._GimpContainerTreeView*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)* }
%struct._GimpContainerBoxClass = type { %struct._GimpEditorClass }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
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
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GtkTreePath = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpItemTreeView = type { %struct._GimpContainerTreeView, %struct._GimpItemTreeViewPriv* }
%struct._GimpItemTreeViewPriv = type { %struct._GimpImage*, %struct._GtkWidget*, %struct._GtkSizeGroup*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32, %struct._GtkCellRenderer*, %struct._GtkCellRenderer*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GimpTreeHandler = type { %struct._GimpObject, %struct._GimpContainer*, i8*, void ()*, i8* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GimpDocked = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.1, %struct._GdkDrawable*, i32 }
%union.anon.1 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque
%struct._GtkCellRendererText = type { %struct._GtkCellRenderer, i8*, %struct._PangoFontDescription*, double, %struct._PangoColor, %struct._PangoColor, %struct._PangoAttrList*, i32, i32, i32, i16 }
%struct._PangoColor = type { i16, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GimpCellRendererViewable = type opaque
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@gimp_item_tree_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpItemTreeView\00", align 1
@gimp_item_tree_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_item_tree_view_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_item_tree_view_get_type.g_implement_interface_info.1 = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_item_tree_view_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_item_tree_view_new = private unnamed_addr constant [24 x i8] c"gimp_item_tree_view_new\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"g_type_is_a (view_type, GIMP_TYPE_ITEM_TREE_VIEW)\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"menu_identifier != NULL\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"reorderable\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@__func__.gimp_item_tree_view_set_image = private unnamed_addr constant [30 x i8] c"gimp_item_tree_view_set_image\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"GIMP_IS_ITEM_TREE_VIEW (view)\00", align 1
@view_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_item_tree_view_get_image = private unnamed_addr constant [30 x i8] c"gimp_item_tree_view_get_image\00", align 1
@__func__.gimp_item_tree_view_add_options = private unnamed_addr constant [32 x i8] c"gimp_item_tree_view_add_options\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"GTK_IS_WIDGET (options)\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"content-spacing\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"button-spacing\00", align 1
@__func__.gimp_item_tree_view_get_lock_box = private unnamed_addr constant [33 x i8] c"gimp_item_tree_view_get_lock_box\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Lock:\00", align 1
@__func__.gimp_item_tree_view_get_new_button = private unnamed_addr constant [35 x i8] c"gimp_item_tree_view_get_new_button\00", align 1
@__func__.gimp_item_tree_view_get_edit_button = private unnamed_addr constant [36 x i8] c"gimp_item_tree_view_get_edit_button\00", align 1
@__func__.gimp_item_tree_view_get_drop_index = private unnamed_addr constant [35 x i8] c"gimp_item_tree_view_get_drop_index\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"dest_viewable == NULL || GIMP_IS_VIEWABLE (dest_viewable)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"parent != NULL\00", align 1
@gimp_item_tree_view_parent_class = internal global i8* null, align 8
@GimpItemTreeView_private_offset = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"set-image\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"row-expanded\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"pre-clicked\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"gimp-visible\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"xpad\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ypad\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"inconsistent\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"gimp-linked\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"button-icon-size\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"viewable\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"button-relief\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"size-changed\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8
@.str.38 = private unnamed_addr constant [19 x i8] c"visibility-changed\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"linked-changed\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"lock-content-changed\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"image-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_item_tree_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_item_tree_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_item_tree_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_container_tree_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1072, void (i8*, i8*)* bitcast (void (i8*)* @gimp_item_tree_view_class_intern_init to void (i8*, i8*)*), i32 336, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpItemTreeView*)* @gimp_item_tree_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_item_tree_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  %call9 = call i64 @gimp_docked_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %6, i64 %call9, %struct._GInterfaceInfo* @gimp_item_tree_view_get_type.g_implement_interface_info.1)
  %7 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_item_tree_view_get_type.g_define_type_id__volatile to i8*), i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %8 = load volatile i64, i64* @gimp_item_tree_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %8
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_item_tree_view_parent_class, align 8
  %1 = load i32, i32* @GimpItemTreeView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpItemTreeView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpItemTreeViewClass*
  call void @gimp_item_tree_view_class_init(%struct._GimpItemTreeViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_init(%struct._GimpItemTreeView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_tree_view_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpItemTreeViewPriv*
  %6 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %6, i32 0, i32 1
  store %struct._GimpItemTreeViewPriv* %5, %struct._GimpItemTreeViewPriv** %priv, align 8
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model_columns = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns, i32 0, i32 0
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %n_model_columns = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 2
  %call4 = call i32 @gimp_container_tree_store_columns_add(i64* %arraydecay, i32* %n_model_columns, i64 20)
  %9 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %9, i32 0, i32 1
  %10 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv5, align 8
  %model_column_visible = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %10, i32 0, i32 11
  store i32 %call4, i32* %model_column_visible, align 4
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model_columns6 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 3
  %arraydecay7 = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns6, i32 0, i32 0
  %12 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %n_model_columns8 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %12, i32 0, i32 2
  %call9 = call i32 @gimp_container_tree_store_columns_add(i64* %arraydecay7, i32* %n_model_columns8, i64 20)
  %13 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv10 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv10, align 8
  %model_column_viewable = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %14, i32 0, i32 12
  store i32 %call9, i32* %model_column_viewable, align 4
  %15 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model_columns11 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %15, i32 0, i32 3
  %arraydecay12 = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns11, i32 0, i32 0
  %16 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %n_model_columns13 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %16, i32 0, i32 2
  %call14 = call i32 @gimp_container_tree_store_columns_add(i64* %arraydecay12, i32* %n_model_columns13, i64 20)
  %17 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %17, i32 0, i32 1
  %18 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv15, align 8
  %model_column_linked = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %18, i32 0, i32 13
  store i32 %call14, i32* %model_column_linked, align 4
  %19 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  call void @gimp_container_tree_view_set_dnd_drop_to_empty(%struct._GimpContainerTreeView* %19, i32 1)
  %20 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv16 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %20, i32 0, i32 1
  %21 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv16, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %21, i32 0, i32 0
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %iface, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpContainerViewInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %2, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 4
  store void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_item_tree_view_set_container, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %4 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %4, i32 0, i32 5
  store void (%struct._GimpContainerView*, %struct._GimpContext*)* @gimp_item_tree_view_set_context, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %5, i32 0, i32 7
  store i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)* @gimp_item_tree_view_insert_item, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_item_after = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 8
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_item_tree_view_insert_item_after, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %insert_item_after, align 8
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 1
  store i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_item_tree_view_select_item, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %8 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %activate_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %8, i32 0, i32 2
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_item_tree_view_activate_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %activate_item, align 8
  %9 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %context_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %9, i32 0, i32 3
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_item_tree_view_context_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %context_item, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %iface, %struct._GimpDockedInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_preview = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %0, i32 0, i32 4
  store %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)* null, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)** %get_preview, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_item_tree_view_new(i64 %view_type, i32 %view_size, i32 %view_border_width, %struct._GimpImage* %image, %struct._GimpMenuFactory* %menu_factory, i8* %menu_identifier, i8* %ui_path) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view_type.addr = alloca i64, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %menu_identifier.addr = alloca i8*, align 8
  %ui_path.addr = alloca i8*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store i64 %view_type, i64* %view_type.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store i8* %menu_identifier, i8** %menu_identifier.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %view_type.addr, align 8
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i32, i32* %view_size.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.2
  %2 = load i32, i32* %view_size.addr, align 4
  %cmp3 = icmp sle i32 %2, 2048
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %3 = load i32, i32* %view_border_width.addr, align 4
  %cmp9 = icmp sge i32 %3, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.13

land.lhs.true.10:                                 ; preds = %do.body.8
  %4 = load i32, i32* %view_border_width.addr, align 4
  %cmp11 = icmp sle i32 %4, 16
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.10
  br label %if.end.14

if.else.13:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.12
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp17 = icmp eq %struct._GimpImage* %5, null
  br i1 %cmp17, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.16
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %7 = bitcast %struct._GimpImage* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call18 = call i64 @gimp_image_get_type() #6
  store i64 %call18, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.30

if.else.21:                                       ; preds = %lor.lhs.false
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool22 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.else.27

land.lhs.true.23:                                 ; preds = %if.else.21
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp25 = icmp eq i64 %13, %14
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %land.lhs.true.23
  store i32 1, i32* %__r, align 4
  br label %if.end.29

if.else.27:                                       ; preds = %land.lhs.true.23, %if.else.21
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call28 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call28, i32* %__r, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.20
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool31 = icmp ne i32 %18, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.30, %do.body.16
  br label %if.end.34

if.else.33:                                       ; preds = %if.end.30
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %19 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %20 = bitcast %struct._GimpMenuFactory* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_menu_factory_get_type() #6
  store i64 %call41, i64* %__t40, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %do.body.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %do.body.36
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type51, align 8
  %27 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %26, %27
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %29 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #7
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %30 = load i32, i32* %__r43, align 4
  store i32 %30, i32* %tmp58
  %31 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %31, 0
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.end.57
  br label %if.end.62

if.else.61:                                       ; preds = %if.end.57
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.62:                                        ; preds = %if.then.60
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %32 = load i8*, i8** %menu_identifier.addr, align 8
  %cmp65 = icmp ne i8* %32, null
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.64
  br label %if.end.68

if.else.67:                                       ; preds = %do.body.64
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.68:                                        ; preds = %if.then.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %do.body.70

do.body.70:                                       ; preds = %do.end.69
  %33 = load i8*, i8** %ui_path.addr, align 8
  %cmp71 = icmp ne i8* %33, null
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.70
  br label %if.end.74

if.else.73:                                       ; preds = %do.body.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %34 = load i64, i64* %view_type.addr, align 8
  %35 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %36 = load i8*, i8** %menu_identifier.addr, align 8
  %37 = load i8*, i8** %ui_path.addr, align 8
  %call76 = call i8* (i64, i8*, ...) @g_object_new(i64 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), %struct._GimpMenuFactory* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %37, i8* null)
  %38 = bitcast i8* %call76 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %38, %struct._GimpItemTreeView** %item_view, align 8
  %39 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %40 = bitcast %struct._GimpItemTreeView* %39 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_container_view_interface_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call77)
  %41 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpContainerView*
  %42 = load i32, i32* %view_size.addr, align 4
  %43 = load i32, i32* %view_border_width.addr, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %41, i32 %42, i32 %43)
  %44 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_item_tree_view_set_image(%struct._GimpItemTreeView* %44, %struct._GimpImage* %45)
  %46 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %47 = bitcast %struct._GimpItemTreeView* %46 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_widget_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call79)
  %48 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkWidget*
  store %struct._GtkWidget* %48, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.75, %if.else.73, %if.else.67, %if.else.61, %if.else.33, %if.else.13, %if.else.5, %if.else
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %49
}

declare i32 @g_type_is_a(i64, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_container_view_set_view_size(%struct._GimpContainerView*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_tree_view_set_image(%struct._GimpItemTreeView* %view, %struct._GimpImage* %image) #3 {
entry:
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_view_set_image, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_view_set_image, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %28 = bitcast %struct._GimpItemTreeView* %27 to i8*
  %29 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @view_signals, i32 0, i64 0), align 4
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %28, i32 %29, i32 0, %struct._GimpImage* %30)
  %31 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %32 = bitcast %struct._GimpItemTreeView* %31 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_editor_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call40)
  %33 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpEditor*
  %call42 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %33)
  %34 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %35 = bitcast %struct._GimpItemTreeView* %34 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call42, i8* %35)
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %view) #3 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_item_tree_view_get_image, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %14, i32 0, i32 0
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %15, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_item_tree_view_add_options(%struct._GimpItemTreeView* %view, i8* %label, %struct._GtkWidget* %options) #3 {
entry:
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %label.addr = alloca i8*, align 8
  %options.addr = alloca %struct._GtkWidget*, align 8
  %content_spacing = alloca i32, align 4
  %button_spacing = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label_widget = alloca %struct._GtkWidget*, align 8
  %group_created = alloca i32, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkWidget* %options, %struct._GtkWidget** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_item_tree_view_add_options, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.105

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %options.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_item_tree_view_add_options, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.105

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %27 = bitcast %struct._GimpItemTreeView* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_widget_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32* %content_spacing, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32* %button_spacing, i8* null)
  %29 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %29, i32 0, i32 1
  %30 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %options_box = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %30, i32 0, i32 1
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box, align 8
  %tobool41 = icmp ne %struct._GtkWidget* %31, null
  br i1 %tobool41, label %if.end.68, label %if.then.42

if.then.42:                                       ; preds = %do.end.38
  %32 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %33 = bitcast %struct._GimpItemTreeView* %32 to %struct._GTypeInstance*
  %g_class44 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class44, align 8
  %35 = bitcast %struct._GTypeClass* %34 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %35, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %36 = load i32, i32* %content_spacing, align 4
  %call45 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 %36)
  %37 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv46 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %37, i32 0, i32 1
  %38 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv46, align 8
  %options_box47 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %38, i32 0, i32 1
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %options_box47, align 8
  %39 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %40 = bitcast %struct._GimpItemTreeView* %39 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call48)
  %41 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %42 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv50 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %42, i32 0, i32 1
  %43 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv50, align 8
  %options_box51 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %43, i32 0, i32 1
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box51, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %44, i32 0, i32 0, i32 0)
  %45 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %46 = bitcast %struct._GimpItemTreeView* %45 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call52)
  %47 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %48 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv54 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %48, i32 0, i32 1
  %49 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv54, align 8
  %options_box55 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %49, i32 0, i32 1
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box55, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %47, %struct._GtkWidget* %50, i32 0)
  %51 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv56 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %51, i32 0, i32 1
  %52 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv56, align 8
  %options_box57 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %52, i32 0, i32 1
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box57, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv58 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %54, i32 0, i32 1
  %55 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv58, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %55, i32 0, i32 0
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool59 = icmp ne %struct._GimpImage* %56, null
  br i1 %tobool59, label %lor.lhs.false, label %if.then.64

lor.lhs.false:                                    ; preds = %if.then.42
  %57 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %57, i32 0, i32 5
  %58 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %59 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv60 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %59, i32 0, i32 1
  %60 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv60, align 8
  %image61 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %60, i32 0, i32 0
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image61, align 8
  %call62 = call %struct._GimpItem* %58(%struct._GimpImage* %61)
  %tobool63 = icmp ne %struct._GimpItem* %call62, null
  br i1 %tobool63, label %if.end.67, label %if.then.64

if.then.64:                                       ; preds = %lor.lhs.false, %if.then.42
  %62 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv65 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %62, i32 0, i32 1
  %63 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv65, align 8
  %options_box66 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %63, i32 0, i32 1
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box66, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %64, i32 0)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %lor.lhs.false
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %do.end.38
  %65 = load i8*, i8** %label.addr, align 8
  %tobool69 = icmp ne i8* %65, null
  br i1 %tobool69, label %if.then.70, label %if.else.100

if.then.70:                                       ; preds = %if.end.68
  store i32 0, i32* %group_created, align 4
  %66 = load i32, i32* %button_spacing, align 4
  %call74 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %66)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %hbox, align 8
  %67 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv75 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %67, i32 0, i32 1
  %68 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv75, align 8
  %options_box76 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %68, i32 0, i32 1
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box76, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_box_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call77)
  %71 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 0, i32 0, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %74 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv79 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %74, i32 0, i32 1
  %75 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv79, align 8
  %options_group = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %75, i32 0, i32 2
  %76 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %options_group, align 8
  %tobool80 = icmp ne %struct._GtkSizeGroup* %76, null
  br i1 %tobool80, label %if.end.85, label %if.then.81

if.then.81:                                       ; preds = %if.then.70
  %call82 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  %77 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv83 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %77, i32 0, i32 1
  %78 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv83, align 8
  %options_group84 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %78, i32 0, i32 2
  store %struct._GtkSizeGroup* %call82, %struct._GtkSizeGroup** %options_group84, align 8
  store i32 1, i32* %group_created, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.then.70
  %79 = load i8*, i8** %label.addr, align 8
  %call86 = call %struct._GtkWidget* @gtk_label_new(i8* %79)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %label_widget, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_misc_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call87)
  %82 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %82, float 0.000000e+00, float 5.000000e-01)
  %83 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv89 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %83, i32 0, i32 1
  %84 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv89, align 8
  %options_group90 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %84, i32 0, i32 2
  %85 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %options_group90, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %85, %struct._GtkWidget* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_box_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call91)
  %89 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkBox*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %89, %struct._GtkWidget* %90, i32 0, i32 0, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %92 = load i32, i32* %group_created, align 4
  %tobool93 = icmp ne i32 %92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.end.85
  %93 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv95 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %93, i32 0, i32 1
  %94 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv95, align 8
  %options_group96 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %94, i32 0, i32 2
  %95 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %options_group96, align 8
  %96 = bitcast %struct._GtkSizeGroup* %95 to i8*
  call void @g_object_unref(i8* %96)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.end.85
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_box_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call98)
  %99 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %options.addr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 1, i32 1, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %options.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  br label %if.end.105

if.else.100:                                      ; preds = %if.end.68
  %102 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv101 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %102, i32 0, i32 1
  %103 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv101, align 8
  %options_box102 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %103, i32 0, i32 1
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box102, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_box_get_type() #6
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call103)
  %106 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkBox*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %options.addr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %106, %struct._GtkWidget* %107, i32 0, i32 0, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %options.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.9, %if.else.36, %if.else.100, %if.end.97
  ret void
}

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_item_tree_view_get_lock_box(%struct._GimpItemTreeView* %view) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %button_spacing = alloca i32, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_item_tree_view_get_lock_box, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %lock_box = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_box, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool11, label %if.end.28, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %17 = bitcast %struct._GimpItemTreeView* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32* %button_spacing, i8* null)
  %19 = load i32, i32* %button_spacing, align 4
  %call16 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %19)
  %20 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv17 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %20, i32 0, i32 1
  %21 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv17, align 8
  %lock_box18 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %21, i32 0, i32 3
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %lock_box18, align 8
  %22 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #8
  %23 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv20 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %23, i32 0, i32 1
  %24 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv20, align 8
  %lock_box21 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %24, i32 0, i32 3
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_box21, align 8
  call void @gimp_item_tree_view_add_options(%struct._GimpItemTreeView* %22, i8* %call19, %struct._GtkWidget* %25)
  %26 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv22 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %26, i32 0, i32 1
  %27 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv22, align 8
  %options_box = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call23)
  %30 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %31 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv25 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %31, i32 0, i32 1
  %32 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv25, align 8
  %lock_box26 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %32, i32 0, i32 3
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_box26, align 8
  %call27 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %33)
  call void @gtk_box_set_child_packing(%struct._GtkBox* %30, %struct._GtkWidget* %call27, i32 0, i32 0, i32 0, i32 1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.12, %do.end
  %34 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv29 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %34, i32 0, i32 1
  %35 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv29, align 8
  %lock_box30 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %35, i32 0, i32 3
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_box30, align 8
  store %struct._GtkWidget* %36, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.else.9
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %37
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gtk_box_set_child_packing(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_item_tree_view_get_new_button(%struct._GimpItemTreeView* %view) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_tree_view_get_new_button, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %new_button = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %new_button, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_item_tree_view_get_edit_button(%struct._GimpItemTreeView* %view) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_item_tree_view_get_edit_button, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %edit_button = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %14, i32 0, i32 5
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %view, %struct._GimpViewable* %dest_viewable, i32 %drop_pos, %struct._GimpViewable** %parent) #3 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %parent.addr = alloca %struct._GimpViewable**, align 8
  %index = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %children = alloca %struct._GimpContainer*, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  store %struct._GimpViewable** %parent, %struct._GimpViewable*** %parent.addr, align 8
  store i32 -1, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_tree_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_tree_view_get_drop_index, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %cmp12 = icmp eq %struct._GimpViewable* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_viewable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_tree_view_get_drop_index, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpViewable**, %struct._GimpViewable*** %parent.addr, align 8
  %cmp41 = icmp ne %struct._GimpViewable** %27, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_tree_view_get_drop_index, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %28 = load %struct._GimpViewable**, %struct._GimpViewable*** %parent.addr, align 8
  store %struct._GimpViewable* null, %struct._GimpViewable** %28, align 8
  %29 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %tobool46 = icmp ne %struct._GimpViewable* %29, null
  br i1 %tobool46, label %if.then.47, label %if.end.66

if.then.47:                                       ; preds = %do.end.45
  %30 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %call48 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %30)
  %31 = load %struct._GimpViewable**, %struct._GimpViewable*** %parent.addr, align 8
  store %struct._GimpViewable* %call48, %struct._GimpViewable** %31, align 8
  %32 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %33 = bitcast %struct._GimpViewable* %32 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call49)
  %34 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  %call51 = call i32 @gimp_item_get_index(%struct._GimpItem* %34)
  store i32 %call51, i32* %index, align 4
  %35 = load i32, i32* %drop_pos.addr, align 4
  %cmp52 = icmp eq i32 %35, 3
  br i1 %cmp52, label %if.then.53, label %if.else.60

if.then.53:                                       ; preds = %if.then.47
  %36 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %call55 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %36)
  store %struct._GimpContainer* %call55, %struct._GimpContainer** %children, align 8
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool56 = icmp ne %struct._GimpContainer* %37, null
  br i1 %tobool56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.then.53
  %38 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %39 = load %struct._GimpViewable**, %struct._GimpViewable*** %parent.addr, align 8
  store %struct._GimpViewable* %38, %struct._GimpViewable** %39, align 8
  store i32 0, i32* %index, align 4
  br label %if.end.59

if.else.58:                                       ; preds = %if.then.53
  %40 = load i32, i32* %index, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %index, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.65

if.else.60:                                       ; preds = %if.then.47
  %41 = load i32, i32* %drop_pos.addr, align 4
  %cmp61 = icmp eq i32 %41, 1
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.else.60
  %42 = load i32, i32* %index, align 4
  %inc63 = add nsw i32 %42, 1
  store i32 %inc63, i32* %index, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.else.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %do.end.45
  %43 = load i32, i32* %index, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.else.43, %if.else.37, %if.else.9
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #1

declare i32 @gimp_item_get_index(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_class_init(%struct._GimpItemTreeViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpItemTreeViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %tree_view_class = alloca %struct._GimpContainerTreeViewClass*, align 8
  store %struct._GimpItemTreeViewClass* %klass, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %0 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpItemTreeViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpItemTreeViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpItemTreeViewClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_container_tree_view_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpContainerTreeViewClass*
  store %struct._GimpContainerTreeViewClass* %8, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %9 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpItemTreeViewClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i64 %11, i32 2, i32 888, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call5)
  store i32 %call6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @view_signals, i32 0, i64 0), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_item_tree_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_item_tree_view_dispose, void (%struct._GObject*)** %dispose, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_item_tree_view_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %15 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_possible = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %15, i32 0, i32 2
  store i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)* @gimp_item_tree_view_drop_possible, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)** %drop_possible, align 8
  %16 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_viewable = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %16, i32 0, i32 3
  store void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)* @gimp_item_tree_view_drop_viewable, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)** %drop_viewable, align 8
  %17 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %set_image = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %17, i32 0, i32 1
  store void (%struct._GimpItemTreeView*, %struct._GimpImage*)* @gimp_item_tree_view_real_set_image, void (%struct._GimpItemTreeView*, %struct._GimpImage*)** %set_image, align 8
  %18 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %18, i32 0, i32 2
  store i64 4, i64* %item_type, align 8
  %19 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %signal_name = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %19, i32 0, i32 3
  store i8* null, i8** %signal_name, align 8
  %20 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %get_container = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %20, i32 0, i32 4
  store %struct._GimpContainer* (%struct._GimpImage*)* null, %struct._GimpContainer* (%struct._GimpImage*)** %get_container, align 8
  %21 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %21, i32 0, i32 5
  store %struct._GimpItem* (%struct._GimpImage*)* null, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %22 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %set_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %22, i32 0, i32 6
  store void (%struct._GimpImage*, %struct._GimpItem*)* null, void (%struct._GimpImage*, %struct._GimpItem*)** %set_active_item, align 8
  %23 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %add_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %23, i32 0, i32 7
  store void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)* null, void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)** %add_item, align 8
  %24 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %remove_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %24, i32 0, i32 8
  store void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)* null, void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)** %remove_item, align 8
  %25 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %new_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %25, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpImage*)* null, %struct._GimpItem* (%struct._GimpImage*)** %new_item, align 8
  %26 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %action_group = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %26, i32 0, i32 10
  store i8* null, i8** %action_group, align 8
  %27 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %edit_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %27, i32 0, i32 12
  store i8* null, i8** %edit_action, align 8
  %28 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %new_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %28, i32 0, i32 13
  store i8* null, i8** %new_action, align 8
  %29 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %new_default_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %29, i32 0, i32 14
  store i8* null, i8** %new_default_action, align 8
  %30 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %raise_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %30, i32 0, i32 15
  store i8* null, i8** %raise_action, align 8
  %31 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %raise_top_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %31, i32 0, i32 16
  store i8* null, i8** %raise_top_action, align 8
  %32 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %lower_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %32, i32 0, i32 17
  store i8* null, i8** %lower_action, align 8
  %33 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %lower_bottom_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %33, i32 0, i32 18
  store i8* null, i8** %lower_bottom_action, align 8
  %34 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %duplicate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %34, i32 0, i32 19
  store i8* null, i8** %duplicate_action, align 8
  %35 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %delete_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %35, i32 0, i32 20
  store i8* null, i8** %delete_action, align 8
  %36 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %lock_content_stock_id = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %36, i32 0, i32 21
  store i8* null, i8** %lock_content_stock_id, align 8
  %37 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %lock_content_tooltip = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %37, i32 0, i32 22
  store i8* null, i8** %lock_content_tooltip, align 8
  %38 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %lock_content_help_id = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %38, i32 0, i32 23
  store i8* null, i8** %lock_content_help_id, align 8
  %39 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %klass.addr, align 8
  %40 = bitcast %struct._GimpItemTreeViewClass* %39 to i8*
  call void @g_type_class_add_private(i8* %40, i64 152)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %icon_size = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %3, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %6, %struct._GimpEditor** %editor, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %8 = bitcast %struct._GObject* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %9, %struct._GimpContainerTreeView** %tree_view, align 8
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %11 = bitcast %struct._GObject* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_tree_view_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %12, %struct._GimpItemTreeView** %item_view, align 8
  %13 = load i8*, i8** @gimp_item_tree_view_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 9
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %16, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i8*, i8** @gimp_item_tree_view_parent_class, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 80)
  %19 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %constructed8 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 9
  %20 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed8, align 8
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %20(%struct._GObject* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %23 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %24 = bitcast %struct._GimpItemTreeView* %23 to i8*
  call void @gimp_container_tree_view_connect_name_edited(%struct._GimpContainerTreeView* %22, void ()* bitcast (void (%struct._GtkCellRendererText*, i8*, i8*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_name_edited to void ()*), i8* %24)
  %25 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %25, i32 0, i32 4
  %26 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %27 = bitcast %struct._GtkTreeView* %26 to i8*
  %28 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %29 = bitcast %struct._GimpContainerTreeView* %28 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_row_expanded to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %renderer_cell = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %30, i32 0, i32 6
  %31 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell, align 8
  %32 = bitcast %struct._GtkCellRenderer* %31 to i8*
  %33 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %34 = bitcast %struct._GimpItemTreeView* %33 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpCellRendererViewable*, i8*, i32, %struct._GimpItemTreeView*)* @gimp_item_tree_view_item_pre_clicked to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %call11 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call11, %struct._GtkTreeViewColumn** %column, align 8
  %35 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view12 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %35, i32 0, i32 4
  %36 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view12, align 8
  %37 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call13 = call i32 @gtk_tree_view_insert_column(%struct._GtkTreeView* %36, %struct._GtkTreeViewColumn* %37, i32 0)
  %call14 = call %struct._GtkCellRenderer* @gimp_cell_renderer_toggle_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0))
  %38 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %38, i32 0, i32 1
  %39 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %eye_cell = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %39, i32 0, i32 14
  store %struct._GtkCellRenderer* %call14, %struct._GtkCellRenderer** %eye_cell, align 8
  %40 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv15 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %40, i32 0, i32 1
  %41 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv15, align 8
  %eye_cell16 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %41, i32 0, i32 14
  %42 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell16, align 8
  %43 = bitcast %struct._GtkCellRenderer* %42 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 0, i8* null)
  %44 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %45 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv17 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %45, i32 0, i32 1
  %46 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv17, align 8
  %eye_cell18 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %46, i32 0, i32 14
  %47 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell18, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %44, %struct._GtkCellRenderer* %47, i32 0)
  %48 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %49 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv19 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %49, i32 0, i32 1
  %50 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv19, align 8
  %eye_cell20 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %50, i32 0, i32 14
  %51 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell20, align 8
  %52 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv21 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %52, i32 0, i32 1
  %53 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv21, align 8
  %model_column_visible = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %53, i32 0, i32 11
  %54 = load i32, i32* %model_column_visible, align 4
  %55 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv22 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %55, i32 0, i32 1
  %56 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv22, align 8
  %model_column_viewable = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %56, i32 0, i32 12
  %57 = load i32, i32* %model_column_viewable, align 4
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %48, %struct._GtkCellRenderer* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 %57, i8* null)
  %58 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %59 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv23 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %59, i32 0, i32 1
  %60 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv23, align 8
  %eye_cell24 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %60, i32 0, i32 14
  %61 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell24, align 8
  call void @gimp_container_tree_view_add_toggle_cell(%struct._GimpContainerTreeView* %58, %struct._GtkCellRenderer* %61)
  %62 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv25 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %62, i32 0, i32 1
  %63 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv25, align 8
  %eye_cell26 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %63, i32 0, i32 14
  %64 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell26, align 8
  %65 = bitcast %struct._GtkCellRenderer* %64 to i8*
  %66 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %67 = bitcast %struct._GimpItemTreeView* %66 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererToggle*, i8*, i32, %struct._GimpItemTreeView*)* @gimp_item_tree_view_eye_clicked to void ()*), i8* %67, void (i8*, %struct._GClosure*)* null, i32 0)
  %call28 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call28, %struct._GtkTreeViewColumn** %column, align 8
  %68 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view29 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %68, i32 0, i32 4
  %69 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view29, align 8
  %70 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call30 = call i32 @gtk_tree_view_insert_column(%struct._GtkTreeView* %69, %struct._GtkTreeViewColumn* %70, i32 1)
  %call31 = call %struct._GtkCellRenderer* @gimp_cell_renderer_toggle_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0))
  %71 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv32 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %71, i32 0, i32 1
  %72 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv32, align 8
  %chain_cell = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %72, i32 0, i32 15
  store %struct._GtkCellRenderer* %call31, %struct._GtkCellRenderer** %chain_cell, align 8
  %73 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv33 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %73, i32 0, i32 1
  %74 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv33, align 8
  %chain_cell34 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %74, i32 0, i32 15
  %75 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %chain_cell34, align 8
  %76 = bitcast %struct._GtkCellRenderer* %75 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 0, i8* null)
  %77 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %78 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv35 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %78, i32 0, i32 1
  %79 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv35, align 8
  %chain_cell36 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %79, i32 0, i32 15
  %80 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %chain_cell36, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %77, %struct._GtkCellRenderer* %80, i32 0)
  %81 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %82 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv37 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %82, i32 0, i32 1
  %83 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv37, align 8
  %chain_cell38 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %83, i32 0, i32 15
  %84 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %chain_cell38, align 8
  %85 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv39 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %85, i32 0, i32 1
  %86 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv39, align 8
  %model_column_linked = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %86, i32 0, i32 13
  %87 = load i32, i32* %model_column_linked, align 4
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %81, %struct._GtkCellRenderer* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %87, i8* null)
  %88 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %89 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv40 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %89, i32 0, i32 1
  %90 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv40, align 8
  %chain_cell41 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %90, i32 0, i32 15
  %91 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %chain_cell41, align 8
  call void @gimp_container_tree_view_add_toggle_cell(%struct._GimpContainerTreeView* %88, %struct._GtkCellRenderer* %91)
  %92 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv42 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %92, i32 0, i32 1
  %93 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv42, align 8
  %chain_cell43 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %93, i32 0, i32 15
  %94 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %chain_cell43, align 8
  %95 = bitcast %struct._GtkCellRenderer* %94 to i8*
  %96 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %97 = bitcast %struct._GimpItemTreeView* %96 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererToggle*, i8*, i32, %struct._GimpItemTreeView*)* @gimp_item_tree_view_chain_clicked to void ()*), i8* %97, void (i8*, %struct._GClosure*)* null, i32 0)
  %98 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %99 = bitcast %struct._GimpItemTreeView* %98 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_container_view_interface_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call45)
  %100 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpContainerView*
  call void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView* %100, %struct._GtkWidget* null)
  %101 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view47 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %101, i32 0, i32 4
  %102 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view47, align 8
  %103 = bitcast %struct._GtkTreeView* %102 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_widget_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call48)
  %104 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkWidget*
  %105 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %105, i32 0, i32 2
  %106 = load i64, i64* %item_type, align 8
  %call50 = call i32 @gimp_dnd_drag_dest_set_by_type(%struct._GtkWidget* %104, i32 2, i64 %106, i32 6)
  %107 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %108 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %108, i32 0, i32 10
  %109 = load i8*, i8** %action_group, align 8
  %110 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %edit_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %110, i32 0, i32 12
  %111 = load i8*, i8** %edit_action, align 8
  %call51 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %107, i8* %109, i8* %111, i8* null)
  %112 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv52 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %112, i32 0, i32 1
  %113 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv52, align 8
  %edit_button = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %113, i32 0, i32 5
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %edit_button, align 8
  %114 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %115 = bitcast %struct._GimpItemTreeView* %114 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_container_view_interface_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call53)
  %116 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpContainerView*
  %117 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv55 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %117, i32 0, i32 1
  %118 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv55, align 8
  %edit_button56 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %118, i32 0, i32 5
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button56, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_button_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call57)
  %121 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkButton*
  %122 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type59 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %122, i32 0, i32 2
  %123 = load i64, i64* %item_type59, align 8
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %116, %struct._GtkButton* %121, i64 %123)
  %124 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %125 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group60 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %125, i32 0, i32 10
  %126 = load i8*, i8** %action_group60, align 8
  %127 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %new_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %127, i32 0, i32 13
  %128 = load i8*, i8** %new_action, align 8
  %129 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %new_default_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %129, i32 0, i32 14
  %130 = load i8*, i8** %new_default_action, align 8
  %call61 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %124, i8* %126, i8* %128, i8* %130, i32 1, i8* null)
  %131 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv62 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %131, i32 0, i32 1
  %132 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv62, align 8
  %new_button = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %132, i32 0, i32 6
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %new_button, align 8
  %133 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv63 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %133, i32 0, i32 1
  %134 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv63, align 8
  %new_button64 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %134, i32 0, i32 6
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %new_button64, align 8
  %136 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type65 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %136, i32 0, i32 2
  %137 = load i64, i64* %item_type65, align 8
  %138 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %139 = bitcast %struct._GimpItemTreeView* %138 to i8*
  %call66 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %135, i64 %137, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_item_tree_view_new_dropped, i8* %139)
  %140 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %141 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group67 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %141, i32 0, i32 10
  %142 = load i8*, i8** %action_group67, align 8
  %143 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %raise_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %143, i32 0, i32 15
  %144 = load i8*, i8** %raise_action, align 8
  %145 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %raise_top_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %145, i32 0, i32 16
  %146 = load i8*, i8** %raise_top_action, align 8
  %call68 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %140, i8* %142, i8* %144, i8* %146, i32 1, i8* null)
  %147 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv69 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %147, i32 0, i32 1
  %148 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv69, align 8
  %raise_button = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %148, i32 0, i32 7
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %raise_button, align 8
  %149 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %150 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group70 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %150, i32 0, i32 10
  %151 = load i8*, i8** %action_group70, align 8
  %152 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lower_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %152, i32 0, i32 17
  %153 = load i8*, i8** %lower_action, align 8
  %154 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lower_bottom_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %154, i32 0, i32 18
  %155 = load i8*, i8** %lower_bottom_action, align 8
  %call71 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %149, i8* %151, i8* %153, i8* %155, i32 1, i8* null)
  %156 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv72 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %156, i32 0, i32 1
  %157 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv72, align 8
  %lower_button = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %157, i32 0, i32 8
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %lower_button, align 8
  %158 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %159 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group73 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %159, i32 0, i32 10
  %160 = load i8*, i8** %action_group73, align 8
  %161 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %duplicate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %161, i32 0, i32 19
  %162 = load i8*, i8** %duplicate_action, align 8
  %call74 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %158, i8* %160, i8* %162, i8* null)
  %163 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv75 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %163, i32 0, i32 1
  %164 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv75, align 8
  %duplicate_button = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %164, i32 0, i32 9
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %duplicate_button, align 8
  %165 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %166 = bitcast %struct._GimpItemTreeView* %165 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_container_view_interface_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call76)
  %167 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpContainerView*
  %168 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv78 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %168, i32 0, i32 1
  %169 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv78, align 8
  %duplicate_button79 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %169, i32 0, i32 9
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %duplicate_button79, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_button_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call80)
  %172 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkButton*
  %173 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type82 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %173, i32 0, i32 2
  %174 = load i64, i64* %item_type82, align 8
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %167, %struct._GtkButton* %172, i64 %174)
  %175 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %176 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group83 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %176, i32 0, i32 10
  %177 = load i8*, i8** %action_group83, align 8
  %178 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %delete_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %178, i32 0, i32 20
  %179 = load i8*, i8** %delete_action, align 8
  %call84 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %175, i8* %177, i8* %179, i8* null)
  %180 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv85 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %180, i32 0, i32 1
  %181 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv85, align 8
  %delete_button = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %181, i32 0, i32 10
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %delete_button, align 8
  %182 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %183 = bitcast %struct._GimpItemTreeView* %182 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_container_view_interface_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call86)
  %184 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpContainerView*
  %185 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv88 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %185, i32 0, i32 1
  %186 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv88, align 8
  %delete_button89 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %186, i32 0, i32 10
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button89, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_button_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call90)
  %189 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkButton*
  %190 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type92 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %190, i32 0, i32 2
  %191 = load i64, i64* %item_type92, align 8
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %184, %struct._GtkButton* %189, i64 %191)
  %192 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call93 = call %struct._GtkWidget* @gimp_item_tree_view_get_lock_box(%struct._GimpItemTreeView* %192)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %hbox, align 8
  %call94 = call %struct._GtkWidget* @gtk_toggle_button_new()
  %193 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv95 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %193, i32 0, i32 1
  %194 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv95, align 8
  %lock_content_toggle = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %194, i32 0, i32 4
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %lock_content_toggle, align 8
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_box_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call96)
  %197 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkBox*
  %198 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv98 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %198, i32 0, i32 1
  %199 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv98, align 8
  %lock_content_toggle99 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %199, i32 0, i32 4
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle99, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %197, %struct._GtkWidget* %200, i32 0, i32 0, i32 0)
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %202 = bitcast %struct._GtkWidget* %201 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_box_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %202, i64 %call100)
  %203 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkBox*
  %204 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv102 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %204, i32 0, i32 1
  %205 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv102, align 8
  %lock_content_toggle103 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %205, i32 0, i32 4
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle103, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %203, %struct._GtkWidget* %206, i32 0)
  %207 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv104 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %207, i32 0, i32 1
  %208 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv104, align 8
  %lock_content_toggle105 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %208, i32 0, i32 4
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle105, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %209)
  %210 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv106 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %210, i32 0, i32 1
  %211 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv106, align 8
  %lock_content_toggle107 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %211, i32 0, i32 4
  %212 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle107, align 8
  %213 = bitcast %struct._GtkWidget* %212 to i8*
  %214 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %215 = bitcast %struct._GimpItemTreeView* %214 to i8*
  %call108 = call i64 @g_signal_connect_data(i8* %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_lock_content_toggled to void ()*), i8* %215, void (i8*, %struct._GClosure*)* null, i32 0)
  %216 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv109 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %216, i32 0, i32 1
  %217 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv109, align 8
  %lock_content_toggle110 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %217, i32 0, i32 4
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle110, align 8
  %219 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lock_content_tooltip = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %219, i32 0, i32 22
  %220 = load i8*, i8** %lock_content_tooltip, align 8
  %221 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lock_content_help_id = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %221, i32 0, i32 23
  %222 = load i8*, i8** %lock_content_help_id, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %218, i8* %220, i8* %222)
  %223 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %224 = bitcast %struct._GimpItemTreeView* %223 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_widget_get_type() #6
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call111)
  %225 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32* %icon_size, i8* null)
  %226 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lock_content_stock_id = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %226, i32 0, i32 21
  %227 = load i8*, i8** %lock_content_stock_id, align 8
  %228 = load i32, i32* %icon_size, align 4
  %call113 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %227, i32 %228)
  store %struct._GtkWidget* %call113, %struct._GtkWidget** %image, align 8
  %229 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv114 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %229, i32 0, i32 1
  %230 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv114, align 8
  %lock_content_toggle115 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %230, i32 0, i32 4
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle115, align 8
  %232 = bitcast %struct._GtkWidget* %231 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_container_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call116)
  %233 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkContainer*
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %233, %struct._GtkWidget* %234)
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %235)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpItemTreeView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %3, i32 0, i32 1
  %4 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %4, i32 0, i32 0
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  call void @gimp_item_tree_view_set_image(%struct._GimpItemTreeView* %6, %struct._GimpImage* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** @gimp_item_tree_view_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 5
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %view = alloca %struct._GimpItemTreeView*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %button_relief = alloca i32, align 4
  %button_icon_size = alloca i32, align 4
  %content_spacing = alloca i32, align 4
  %button_spacing = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child44 = alloca %struct._GtkWidget*, align 8
  %__inst47 = alloca %struct._GTypeInstance*, align 8
  %__t49 = alloca i64, align 8
  %__r52 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %image = alloca %struct._GtkWidget*, align 8
  %__inst77 = alloca %struct._GTypeInstance*, align 8
  %__t79 = alloca i64, align 8
  %__r82 = alloca i32, align 4
  %tmp97 = alloca i32, align 4
  %old_size = alloca i32, align 4
  %stock_id = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32* %button_relief, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32* %button_icon_size, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32* %content_spacing, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32* %button_spacing, i8* null)
  %4 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %4, i32 0, i32 1
  %5 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %options_box = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %priv2 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %7, i32 0, i32 1
  %8 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv2, align 8
  %options_box3 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %8, i32 0, i32 1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box3, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %12 = load i32, i32* %content_spacing, align 4
  call void @gtk_box_set_spacing(%struct._GtkBox* %11, i32 %12)
  %13 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %priv6 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv6, align 8
  %options_box7 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box7, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %call10 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %17)
  store %struct._GList* %call10, %struct._GList** %children, align 8
  %18 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %19, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GtkWidget*
  store %struct._GtkWidget* %22, %struct._GtkWidget** %child, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %24, %struct._GTypeInstance** %__inst, align 8
  %call12 = call i64 @gtk_box_get_type() #6
  store i64 %call12, i64* %__t, align 8
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool13 = icmp ne %struct._GTypeInstance* %25, null
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.20

if.else:                                          ; preds = %for.body
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool15 = icmp ne %struct._GTypeClass* %27, null
  br i1 %tobool15, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.else
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %31 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %30, %31
  br i1 %cmp, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.18:                                       ; preds = %land.lhs.true, %if.else
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %33 = load i64, i64* %__t, align 8
  %call19 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %32, i64 %33) #7
  store i32 %call19, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.14
  %34 = load i32, i32* %__r, align 4
  store i32 %34, i32* %tmp
  %35 = load i32, i32* %tmp
  %tobool21 = icmp ne i32 %35, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.20
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call23)
  %38 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %39 = load i32, i32* %button_spacing, align 4
  call void @gtk_box_set_spacing(%struct._GtkBox* %38, i32 %39)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %40, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %42, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %43)
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %entry
  %44 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %priv28 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %44, i32 0, i32 1
  %45 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv28, align 8
  %lock_box = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %45, i32 0, i32 3
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_box, align 8
  %tobool29 = icmp ne %struct._GtkWidget* %46, null
  br i1 %tobool29, label %if.then.30, label %if.end.119

if.then.30:                                       ; preds = %if.end.27
  %47 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %priv31 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %47, i32 0, i32 1
  %48 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv31, align 8
  %lock_box32 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %48, i32 0, i32 3
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_box32, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call33)
  %51 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %52 = load i32, i32* %button_spacing, align 4
  call void @gtk_box_set_spacing(%struct._GtkBox* %51, i32 %52)
  %53 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %priv35 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %53, i32 0, i32 1
  %54 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv35, align 8
  %lock_box36 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %54, i32 0, i32 3
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_box36, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_container_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call37)
  %57 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkContainer*
  %call39 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %57)
  store %struct._GList* %call39, %struct._GList** %children, align 8
  %58 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %58, %struct._GList** %list, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %cond.end.116, %if.then.30
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool41 = icmp ne %struct._GList* %59, null
  br i1 %tobool41, label %for.body.42, label %for.end.118

for.body.42:                                      ; preds = %for.cond.40
  %60 = load %struct._GList*, %struct._GList** %list, align 8
  %data45 = getelementptr inbounds %struct._GList, %struct._GList* %60, i32 0, i32 0
  %61 = load i8*, i8** %data45, align 8
  %62 = bitcast i8* %61 to %struct._GtkWidget*
  store %struct._GtkWidget* %62, %struct._GtkWidget** %child44, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %child44, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %64, %struct._GTypeInstance** %__inst47, align 8
  %call50 = call i64 @gtk_button_get_type() #6
  store i64 %call50, i64* %__t49, align 8
  %65 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %tobool53 = icmp ne %struct._GTypeInstance* %65, null
  br i1 %tobool53, label %if.else.55, label %if.then.54

if.then.54:                                       ; preds = %for.body.42
  store i32 0, i32* %__r52, align 4
  br label %if.end.66

if.else.55:                                       ; preds = %for.body.42
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %66, i32 0, i32 0
  %67 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %tobool57 = icmp ne %struct._GTypeClass* %67, null
  br i1 %tobool57, label %land.lhs.true.58, label %if.else.63

land.lhs.true.58:                                 ; preds = %if.else.55
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %68, i32 0, i32 0
  %69 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %g_type60 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %69, i32 0, i32 0
  %70 = load i64, i64* %g_type60, align 8
  %71 = load i64, i64* %__t49, align 8
  %cmp61 = icmp eq i64 %70, %71
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %land.lhs.true.58
  store i32 1, i32* %__r52, align 4
  br label %if.end.65

if.else.63:                                       ; preds = %land.lhs.true.58, %if.else.55
  %72 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %73 = load i64, i64* %__t49, align 8
  %call64 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %72, i64 %73) #7
  store i32 %call64, i32* %__r52, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.62
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.54
  %74 = load i32, i32* %__r52, align 4
  store i32 %74, i32* %tmp67
  %75 = load i32, i32* %tmp67
  %tobool68 = icmp ne i32 %75, 0
  br i1 %tobool68, label %if.then.69, label %if.end.110

if.then.69:                                       ; preds = %if.end.66
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %child44, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_button_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call71)
  %78 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkButton*
  %79 = load i32, i32* %button_relief, align 4
  call void @gtk_button_set_relief(%struct._GtkButton* %78, i32 %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %child44, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_bin_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call73)
  %82 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBin*
  %call75 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %82)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %image, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %84, %struct._GTypeInstance** %__inst77, align 8
  %call80 = call i64 @gtk_image_get_type() #6
  store i64 %call80, i64* %__t79, align 8
  %85 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %tobool83 = icmp ne %struct._GTypeInstance* %85, null
  br i1 %tobool83, label %if.else.85, label %if.then.84

if.then.84:                                       ; preds = %if.then.69
  store i32 0, i32* %__r82, align 4
  br label %if.end.96

if.else.85:                                       ; preds = %if.then.69
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %g_class86 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %86, i32 0, i32 0
  %87 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class86, align 8
  %tobool87 = icmp ne %struct._GTypeClass* %87, null
  br i1 %tobool87, label %land.lhs.true.88, label %if.else.93

land.lhs.true.88:                                 ; preds = %if.else.85
  %88 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %g_class89 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %88, i32 0, i32 0
  %89 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class89, align 8
  %g_type90 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %89, i32 0, i32 0
  %90 = load i64, i64* %g_type90, align 8
  %91 = load i64, i64* %__t79, align 8
  %cmp91 = icmp eq i64 %90, %91
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %land.lhs.true.88
  store i32 1, i32* %__r82, align 4
  br label %if.end.95

if.else.93:                                       ; preds = %land.lhs.true.88, %if.else.85
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst77, align 8
  %93 = load i64, i64* %__t79, align 8
  %call94 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %92, i64 %93) #7
  store i32 %call94, i32* %__r82, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.92
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.84
  %94 = load i32, i32* %__r82, align 4
  store i32 %94, i32* %tmp97
  %95 = load i32, i32* %tmp97
  %tobool98 = icmp ne i32 %95, 0
  br i1 %tobool98, label %if.then.99, label %if.end.109

if.then.99:                                       ; preds = %if.end.96
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_image_get_type() #6
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call102)
  %98 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkImage*
  call void @gtk_image_get_stock(%struct._GtkImage* %98, i8** %stock_id, i32* %old_size)
  %99 = load i32, i32* %button_icon_size, align 4
  %100 = load i32, i32* %old_size, align 4
  %cmp104 = icmp ne i32 %99, %100
  br i1 %cmp104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.then.99
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_image_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call106)
  %103 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkImage*
  %104 = load i8*, i8** %stock_id, align 8
  %105 = load i32, i32* %button_icon_size, align 4
  call void @gtk_image_set_from_stock(%struct._GtkImage* %103, i8* %104, i32 %105)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.then.99
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.96
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.66
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %106 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool112 = icmp ne %struct._GList* %106, null
  br i1 %tobool112, label %cond.true.113, label %cond.false.115

cond.true.113:                                    ; preds = %for.inc.111
  %107 = load %struct._GList*, %struct._GList** %list, align 8
  %next114 = getelementptr inbounds %struct._GList, %struct._GList* %107, i32 0, i32 1
  %108 = load %struct._GList*, %struct._GList** %next114, align 8
  br label %cond.end.116

cond.false.115:                                   ; preds = %for.inc.111
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.113
  %cond117 = phi %struct._GList* [ %108, %cond.true.113 ], [ null, %cond.false.115 ]
  store %struct._GList* %cond117, %struct._GList** %list, align 8
  br label %for.cond.40

for.end.118:                                      ; preds = %for.cond.40
  %109 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %109)
  br label %if.end.119

if.end.119:                                       ; preds = %for.end.118, %if.end.27
  %110 = load i8*, i8** @gimp_item_tree_view_parent_class, align 8
  %111 = bitcast i8* %110 to %struct._GTypeClass*
  %call120 = call i64 @gtk_widget_get_type() #6
  %call121 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %111, i64 %call120)
  %112 = bitcast %struct._GTypeClass* %call121 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %112, i32 0, i32 17
  %113 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %115 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %113(%struct._GtkWidget* %114, %struct._GtkStyle* %115)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_item_tree_view_drop_possible(%struct._GimpContainerTreeView* %tree_view, i32 %src_type, %struct._GimpViewable* %src_viewable, %struct._GimpViewable* %dest_viewable, %struct._GtkTreePath* %drop_path, i32 %drop_pos, i32* %return_drop_pos, i32* %return_drag_action) #3 {
entry:
  %retval = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_type.addr = alloca i32, align 4
  %src_viewable.addr = alloca %struct._GimpViewable*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_path.addr = alloca %struct._GtkTreePath*, align 8
  %drop_pos.addr = alloca i32, align 4
  %return_drop_pos.addr = alloca i32*, align 8
  %return_drag_action.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i32 %src_type, i32* %src_type.addr, align 4
  store %struct._GimpViewable* %src_viewable, %struct._GimpViewable** %src_viewable.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store %struct._GtkTreePath* %drop_path, %struct._GtkTreePath** %drop_path.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  store i32* %return_drop_pos, i32** %return_drop_pos.addr, align 8
  store i32* %return_drag_action, i32** %return_drag_action.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.24

land.lhs.true.8:                                  ; preds = %if.end.6
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %cmp9 = icmp eq %struct._GimpViewable* %13, null
  br i1 %cmp9, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %16)
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %18 = bitcast %struct._GimpViewable* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  %cmp16 = icmp ne %struct._GimpImage* %call12, %call15
  br i1 %cmp16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %lor.lhs.false, %land.lhs.true.8
  %20 = load i32*, i32** %return_drop_pos.addr, align 8
  %tobool18 = icmp ne i32* %20, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %21 = load i32, i32* %drop_pos.addr, align 4
  %22 = load i32*, i32** %return_drop_pos.addr, align 8
  store i32 %21, i32* %22, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  %23 = load i32*, i32** %return_drag_action.addr, align 8
  %tobool21 = icmp ne i32* %23, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %24 = load i32*, i32** %return_drag_action.addr, align 8
  store i32 2, i32* %24, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false, %if.end.6
  %25 = load i8*, i8** @gimp_item_tree_view_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call25 = call i64 @gimp_container_tree_view_get_type() #6
  %call26 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 %call25)
  %27 = bitcast %struct._GTypeClass* %call26 to %struct._GimpContainerTreeViewClass*
  %drop_possible = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %27, i32 0, i32 2
  %28 = load i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)** %drop_possible, align 8
  %29 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %30 = load i32, i32* %src_type.addr, align 4
  %31 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %32 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %33 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path.addr, align 8
  %34 = load i32, i32* %drop_pos.addr, align 4
  %35 = load i32*, i32** %return_drop_pos.addr, align 8
  %36 = load i32*, i32** %return_drag_action.addr, align 8
  %call27 = call i32 %28(%struct._GimpContainerTreeView* %29, i32 %30, %struct._GimpViewable* %31, %struct._GimpViewable* %32, %struct._GtkTreePath* %33, i32 %34, i32* %35, i32* %36)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.end.23
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_drop_viewable(%struct._GimpContainerTreeView* %tree_view, %struct._GimpViewable* %src_viewable, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_viewable.addr = alloca %struct._GimpViewable*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %dest_index = alloca i32, align 4
  %item_type7 = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  %src_parent = alloca %struct._GimpItem*, align 8
  %dest_parent = alloca %struct._GimpItem*, align 8
  %src_index = alloca i32, align 4
  %dest_index26 = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GimpViewable* %src_viewable, %struct._GimpViewable** %src_viewable.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  store i32 -1, i32* %dest_index, align 4
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %6, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %7 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %7, i32 0, i32 1
  %8 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %8, i32 0, i32 0
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %11 = bitcast %struct._GimpViewable* %10 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call2)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %12)
  %cmp = icmp ne %struct._GimpImage* %9, %call4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %17 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %17, i32 0, i32 2
  %18 = load i64, i64* %item_type, align 8
  %call6 = call i32 @g_type_is_a(i64 %16, i64 %18)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %19 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type8 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %19, i32 0, i32 2
  %20 = load i64, i64* %item_type8, align 8
  store i64 %20, i64* %item_type7, align 8
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %22 = bitcast %struct._GimpViewable* %21 to %struct._GTypeInstance*
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type10, align 8
  %25 = load i64, i64* %item_type7, align 8
  %call11 = call i32 @g_type_is_a(i64 %24, i64 %25)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %26 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %27 = bitcast %struct._GimpViewable* %26 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type15, align 8
  store i64 %29, i64* %item_type7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %30 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %31 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %32 = load i32, i32* %drop_pos.addr, align 4
  %33 = bitcast %struct._GimpItem** %parent to %struct._GimpViewable**
  %call16 = call i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %30, %struct._GimpViewable* %31, i32 %32, %struct._GimpViewable** %33)
  store i32 %call16, i32* %dest_index, align 4
  %34 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %35 = bitcast %struct._GimpViewable* %34 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call17)
  %36 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %37 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv19 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %37, i32 0, i32 1
  %38 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv19, align 8
  %image20 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %38, i32 0, i32 0
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image20, align 8
  %40 = load i64, i64* %item_type7, align 8
  %call21 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %36, %struct._GimpImage* %39, i64 %40)
  store %struct._GimpItem* %call21, %struct._GimpItem** %new_item, align 8
  %41 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  call void @gimp_item_set_linked(%struct._GimpItem* %41, i32 0, i32 0)
  %42 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %add_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %42, i32 0, i32 7
  %43 = load void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)*, void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)** %add_item, align 8
  %44 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv22 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %44, i32 0, i32 1
  %45 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv22, align 8
  %image23 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %45, i32 0, i32 0
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image23, align 8
  %47 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %48 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %49 = load i32, i32* %dest_index, align 4
  call void %43(%struct._GimpImage* %46, %struct._GimpItem* %47, %struct._GimpItem* %48, i32 %49, i32 1)
  br label %if.end.46

if.else:                                          ; preds = %lor.lhs.false
  %50 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %tobool24 = icmp ne %struct._GimpViewable* %50, null
  br i1 %tobool24, label %if.then.25, label %if.end.45

if.then.25:                                       ; preds = %if.else
  %51 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %call27 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %51)
  %52 = bitcast %struct._GimpViewable* %call27 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call28)
  %53 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  store %struct._GimpItem* %53, %struct._GimpItem** %src_parent, align 8
  %54 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %55 = bitcast %struct._GimpViewable* %54 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call30)
  %56 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_index(%struct._GimpItem* %56)
  store i32 %call32, i32* %src_index, align 4
  %57 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %58 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %59 = load i32, i32* %drop_pos.addr, align 4
  %60 = bitcast %struct._GimpItem** %dest_parent to %struct._GimpViewable**
  %call33 = call i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %57, %struct._GimpViewable* %58, i32 %59, %struct._GimpViewable** %60)
  store i32 %call33, i32* %dest_index26, align 4
  %61 = load %struct._GimpItem*, %struct._GimpItem** %src_parent, align 8
  %62 = load %struct._GimpItem*, %struct._GimpItem** %dest_parent, align 8
  %cmp34 = icmp eq %struct._GimpItem* %61, %62
  br i1 %cmp34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.then.25
  %63 = load i32, i32* %src_index, align 4
  %64 = load i32, i32* %dest_index26, align 4
  %cmp36 = icmp slt i32 %63, %64
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.35
  %65 = load i32, i32* %dest_index26, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %dest_index26, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.25
  %66 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv40 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %66, i32 0, i32 1
  %67 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv40, align 8
  %image41 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %67, i32 0, i32 0
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image41, align 8
  %69 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %70 = bitcast %struct._GimpViewable* %69 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call42)
  %71 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  %72 = load %struct._GimpItem*, %struct._GimpItem** %dest_parent, align 8
  %73 = load i32, i32* %dest_index26, align 4
  %call44 = call i32 @gimp_image_reorder_item(%struct._GimpImage* %68, %struct._GimpItem* %71, %struct._GimpItem* %72, i32 %73, i32 1, i8* null)
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.39, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end
  %74 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv47 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %74, i32 0, i32 1
  %75 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv47, align 8
  %image48 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %75, i32 0, i32 0
  %76 = load %struct._GimpImage*, %struct._GimpImage** %image48, align 8
  call void @gimp_image_flush(%struct._GimpImage* %76)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_real_set_image(%struct._GimpItemTreeView* %view, %struct._GimpImage* %image) #3 {
entry:
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %0, i32 0, i32 1
  %1 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image1 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %1, i32 0, i32 0
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.39

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %4, i32 0, i32 1
  %5 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv2, align 8
  %image3 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %5, i32 0, i32 0
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  %tobool = icmp ne %struct._GimpImage* %6, null
  br i1 %tobool, label %if.then.4, label %if.end.15

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %7, i32 0, i32 1
  %8 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv5, align 8
  %image6 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %8, i32 0, i32 0
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image6, align 8
  %10 = bitcast %struct._GimpImage* %9 to i8*
  %11 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %12 = bitcast %struct._GimpItemTreeView* %11 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_item_changed to i8*), i8* %12)
  %13 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv7 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv7, align 8
  %image8 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %14, i32 0, i32 0
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image8, align 8
  %16 = bitcast %struct._GimpImage* %15 to i8*
  %17 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %18 = bitcast %struct._GimpItemTreeView* %17 to i8*
  %call9 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_size_changed to i8*), i8* %18)
  %19 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %20 = bitcast %struct._GimpItemTreeView* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_container_view_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContainerView*
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %21, %struct._GimpContainer* null)
  %22 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %22, i32 0, i32 1
  %23 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv12, align 8
  %image13 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %23, i32 0, i32 0
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image13, align 8
  %25 = bitcast %struct._GimpImage* %24 to i8*
  %26 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %27 = bitcast %struct._GimpItemTreeView* %26 to i8*
  %call14 = call i32 @g_signal_handlers_disconnect_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, %struct._GimpItemTreeView*)* @gimp_item_tree_view_image_flush to i8*), i8* %27)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.4, %if.end
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %29 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv16 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %29, i32 0, i32 1
  %30 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv16, align 8
  %image17 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %30, i32 0, i32 0
  store %struct._GimpImage* %28, %struct._GimpImage** %image17, align 8
  %31 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv18 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %31, i32 0, i32 1
  %32 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv18, align 8
  %image19 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %32, i32 0, i32 0
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image19, align 8
  %tobool20 = icmp ne %struct._GimpImage* %33, null
  br i1 %tobool20, label %if.then.21, label %if.end.39

if.then.21:                                       ; preds = %if.end.15
  %34 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %35 = bitcast %struct._GimpItemTreeView* %34 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %37 = bitcast %struct._GTypeClass* %36 to %struct._GimpItemTreeViewClass*
  %get_container = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %37, i32 0, i32 4
  %38 = load %struct._GimpContainer* (%struct._GimpImage*)*, %struct._GimpContainer* (%struct._GimpImage*)** %get_container, align 8
  %39 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv22 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %39, i32 0, i32 1
  %40 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv22, align 8
  %image23 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %40, i32 0, i32 0
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image23, align 8
  %call24 = call %struct._GimpContainer* %38(%struct._GimpImage* %41)
  store %struct._GimpContainer* %call24, %struct._GimpContainer** %container, align 8
  %42 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %43 = bitcast %struct._GimpItemTreeView* %42 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_container_view_interface_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call25)
  %44 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpContainerView*
  %45 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %44, %struct._GimpContainer* %45)
  %46 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv27 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %46, i32 0, i32 1
  %47 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv27, align 8
  %image28 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %47, i32 0, i32 0
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image28, align 8
  %49 = bitcast %struct._GimpImage* %48 to i8*
  %50 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %51 = bitcast %struct._GimpItemTreeView* %50 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %51, i32 0, i32 0
  %52 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %53 = bitcast %struct._GTypeClass* %52 to %struct._GimpItemTreeViewClass*
  %signal_name = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %53, i32 0, i32 3
  %54 = load i8*, i8** %signal_name, align 8
  %55 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %56 = bitcast %struct._GimpItemTreeView* %55 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %49, i8* %54, void ()* bitcast (void (%struct._GimpImage*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_item_changed to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv31 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %57, i32 0, i32 1
  %58 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv31, align 8
  %image32 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %58, i32 0, i32 0
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image32, align 8
  %60 = bitcast %struct._GimpImage* %59 to i8*
  %61 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %62 = bitcast %struct._GimpItemTreeView* %61 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_size_changed to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv34 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %63, i32 0, i32 1
  %64 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv34, align 8
  %image35 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %64, i32 0, i32 0
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image35, align 8
  %66 = bitcast %struct._GimpImage* %65 to i8*
  %67 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %68 = bitcast %struct._GimpItemTreeView* %67 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpItemTreeView*)* @gimp_item_tree_view_image_flush to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  %69 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv37 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %69, i32 0, i32 1
  %70 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv37, align 8
  %image38 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %70, i32 0, i32 0
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image38, align 8
  %72 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  call void @gimp_item_tree_view_item_changed(%struct._GimpImage* %71, %struct._GimpItemTreeView* %72)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then, %if.then.21, %if.end.15
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gimp_container_tree_view_connect_name_edited(%struct._GimpContainerTreeView*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_name_edited(%struct._GtkCellRendererText* %cell, i8* %path_str, i8* %new_name, %struct._GimpItemTreeView* %view) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRendererText*, align 8
  %path_str.addr = alloca i8*, align 8
  %new_name.addr = alloca i8*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %old_name = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkCellRendererText* %cell, %struct._GtkCellRendererText** %cell.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load i8*, i8** %path_str.addr, align 8
  %call2 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %3)
  store %struct._GtkTreePath* %call2, %struct._GtkTreePath** %path, align 8
  %4 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %4, i32 0, i32 1
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %6)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model4 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 1
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model4, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 3
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %11 = bitcast %struct._GimpViewable* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  store %struct._GimpItem* %12, %struct._GimpItem** %item, align 8
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %14 = bitcast %struct._GimpItem* %13 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %14)
  store i8* %call7, i8** %old_name, align 8
  %15 = load i8*, i8** %old_name, align 8
  %tobool8 = icmp ne i8* %15, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8** %old_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %16 = load i8*, i8** %new_name.addr, align 8
  %tobool10 = icmp ne i8* %16, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8** %new_name.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %17 = load i8*, i8** %old_name, align 8
  %18 = load i8*, i8** %new_name.addr, align 8
  %call13 = call i32 @strcmp(i8* %17, i8* %18) #7
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.12
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %20 = load i8*, i8** %new_name.addr, align 8
  %call15 = call i32 @gimp_item_rename(%struct._GimpItem* %19, i8* %20, %struct._GError** %error)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call18 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %21)
  call void @gimp_image_flush(%struct._GimpImage* %call18)
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %if.end.12
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable19 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %22, i32 0, i32 3
  %23 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable19, align 8
  %call20 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %23, i8** null)
  store i8* %call20, i8** %name, align 8
  %24 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model21 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %24, i32 0, i32 1
  %25 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model21, align 8
  %26 = bitcast %struct._GtkTreeModel* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_tree_store_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTreeStore*
  %28 = load i8*, i8** %name, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %27, %struct._GtkTreeIter* %iter, i32 1, i8* %28, i32 -1)
  %29 = load i8*, i8** %name, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool24 = icmp ne %struct._GError* %30, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.else
  %31 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %31, i32 0, i32 1
  %32 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %32, i32 0, i32 0
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %35 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %36 = bitcast %struct._GimpItemTreeView* %35 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %38 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %38, i32 0, i32 2
  %39 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %34, %struct._GObject* %37, i32 1, i8* %39)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.17
  %40 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %41 = bitcast %struct._GimpViewRenderer* %40 to i8*
  call void @g_object_unref(i8* %41)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  %42 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %42)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_row_expanded(%struct._GtkTreeView* %tree_view, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %path, %struct._GimpItemTreeView* %item_view) #3 {
entry:
  %tree_view.addr = alloca %struct._GtkTreeView*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %item_view.addr = alloca %struct._GimpItemTreeView*, align 8
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %expanded_item = alloca %struct._GimpItem*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  store %struct._GtkTreeView* %tree_view, %struct._GtkTreeView** %tree_view.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GimpItemTreeView* %item_view, %struct._GimpItemTreeView** %item_view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %0, i32 0, i32 1
  %1 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %inserting_item = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %1, i32 0, i32 19
  %2 = load i32, i32* %inserting_item, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.14, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %7 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %7, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 3
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %10 = bitcast %struct._GimpViewable* %9 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call2)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %11, %struct._GimpItem** %expanded_item, align 8
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %13 = bitcast %struct._GimpViewRenderer* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %15 = bitcast %struct._GimpItemTreeView* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %17, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %18 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %18, i32 0, i32 5
  %19 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %20 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %20, i32 0, i32 1
  %21 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv4, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %21, i32 0, i32 0
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpItem* %19(%struct._GimpImage* %22)
  store %struct._GimpItem* %call5, %struct._GimpItem** %active_item, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %tobool6 = icmp ne %struct._GimpItem* %23, null
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %24 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %call7 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %24)
  %25 = load %struct._GimpItem*, %struct._GimpItem** %expanded_item, align 8
  %cmp = icmp eq %struct._GimpItem* %call7, %25
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %26 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %27 = bitcast %struct._GimpItemTreeView* %26 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_container_view_interface_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call9)
  %28 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpContainerView*
  %29 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %30 = bitcast %struct._GimpItem* %29 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call11)
  %31 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %call13 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %28, %struct._GimpViewable* %31)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_item_tree_view_item_pre_clicked(%struct._GimpCellRendererViewable* %cell, i8* %path_str, i32 %state, %struct._GimpItemTreeView* %item_view) #3 {
entry:
  %cell.addr = alloca %struct._GimpCellRendererViewable*, align 8
  %path_str.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %item_view.addr = alloca %struct._GimpItemTreeView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %handled = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %op = alloca i32, align 4
  store %struct._GimpCellRendererViewable* %cell, %struct._GimpCellRendererViewable** %cell.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpItemTreeView* %item_view, %struct._GimpItemTreeView** %item_view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  store i32 0, i32* %handled, align 4
  %3 = load i8*, i8** %path_str.addr, align 8
  %call2 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %3)
  store %struct._GtkTreePath* %call2, %struct._GtkTreePath** %path, align 8
  %4 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %4, i32 0, i32 1
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %6)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %state.addr, align 4
  %and = and i32 %7, 8
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %8)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %renderer, align 8
  %9 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model6 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %9, i32 0, i32 1
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model6, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool7 = icmp ne %struct._GimpViewRenderer* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 3
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  store %struct._GimpItem* %15, %struct._GimpItem** %item, align 8
  %16 = load i32, i32* %state.addr, align 4
  %call11 = call i32 @gimp_modifiers_to_channel_op(i32 %16)
  store i32 %call11, i32* %op, align 4
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %18 = load i32, i32* %op, align 4
  call void @gimp_item_to_selection(%struct._GimpItem* %17, i32 %18, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %19)
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %21 = bitcast %struct._GimpViewRenderer* %20 to i8*
  call void @g_object_unref(i8* %21)
  store i32 1, i32* %handled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %entry
  %22 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %22)
  %23 = load i32, i32* %handled, align 4
  ret i32 %23
}

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare i32 @gtk_tree_view_insert_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*, i32) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_toggle_new(i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

declare void @gimp_container_tree_view_add_toggle_cell(%struct._GimpContainerTreeView*, %struct._GtkCellRenderer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_eye_clicked(%struct._GtkCellRendererToggle* %toggle, i8* %path_str, i32 %state, %struct._GimpItemTreeView* %view) #3 {
entry:
  %toggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_str.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  store %struct._GtkCellRendererToggle* %toggle, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GtkCellRendererToggle*, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  %1 = load i8*, i8** %path_str.addr, align 8
  %2 = load i32, i32* %state.addr, align 4
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  call void @gimp_item_tree_view_toggle_clicked(%struct._GtkCellRendererToggle* %0, i8* %1, i32 %2, %struct._GimpItemTreeView* %3, i32 51)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_chain_clicked(%struct._GtkCellRendererToggle* %toggle, i8* %path_str, i32 %state, %struct._GimpItemTreeView* %view) #3 {
entry:
  %toggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_str.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  store %struct._GtkCellRendererToggle* %toggle, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GtkCellRendererToggle*, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  %1 = load i8*, i8** %path_str.addr, align 8
  %2 = load i32, i32* %state.addr, align 4
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  call void @gimp_item_tree_view_toggle_clicked(%struct._GtkCellRendererToggle* %0, i8* %1, i32 %2, %struct._GimpItemTreeView* %3, i32 52)
  ret void
}

declare void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView*, %struct._GtkWidget*) #1

declare i32 @gimp_dnd_drag_dest_set_by_type(%struct._GtkWidget*, i32, i64, i32) #1

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

declare void @gimp_container_view_enable_dnd(%struct._GimpContainerView*, %struct._GtkButton*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_new_dropped(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %3, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %6, %struct._GimpContainerView** %view, align 8
  %7 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %new_default_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %7, i32 0, i32 14
  %8 = load i8*, i8** %new_default_action, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool2 = icmp ne %struct._GimpViewable* %9, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.13

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %10 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call4 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %10, %struct._GimpViewable* %11)
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true.3
  %12 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %13 = bitcast %struct._GimpContainerView* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_editor_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpEditor*
  %call8 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %14)
  %15 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %15, i32 0, i32 10
  %16 = load i8*, i8** %action_group, align 8
  %17 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %new_default_action9 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %17, i32 0, i32 14
  %18 = load i8*, i8** %new_default_action9, align 8
  %call10 = call %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %call8, i8* %16, i8* %18)
  store %struct._GtkAction* %call10, %struct._GtkAction** %action, align 8
  %19 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool11 = icmp ne %struct._GtkAction* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = bitcast %struct._GtkAction* %20 to i8*
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), %struct._GimpViewable* %22, i8* null)
  %23 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gtk_action_activate(%struct._GtkAction* %23)
  %24 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %25 = bitcast %struct._GtkAction* %24 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true.3, %land.lhs.true, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_toggle_button_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_lock_content_toggled(%struct._GtkWidget* %widget, %struct._GimpItemTreeView* %view) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %lock_content = alloca i32, align 4
  %push_undo = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %0, i32 0, i32 1
  %1 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image1 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %1, i32 0, i32 0
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %6, i32 0, i32 5
  %7 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call %struct._GimpItem* %7(%struct._GimpImage* %8)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool = icmp ne %struct._GimpItem* %9, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call2)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %call4 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %12)
  store i32 %call4, i32* %lock_content, align 4
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %13)
  %14 = load i32, i32* %lock_content, align 4
  %cmp = icmp ne i32 %call5, %14
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 1, i32* %push_undo, align 4
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %16 = bitcast %struct._GimpItem* %15 to i8*
  %17 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %18 = bitcast %struct._GimpItemTreeView* %17 to i8*
  %call7 = call i32 @g_signal_handlers_block_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpItem*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_lock_content_changed to i8*), i8* %18)
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %20 = load i32, i32* %lock_content, align 4
  %21 = load i32, i32* %push_undo, align 4
  call void @gimp_item_set_lock_content(%struct._GimpItem* %19, i32 %20, i32 %21)
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %23 = bitcast %struct._GimpItem* %22 to i8*
  %24 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %25 = bitcast %struct._GimpItemTreeView* %24 to i8*
  %call8 = call i32 @g_signal_handlers_unblock_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpItem*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_lock_content_changed to i8*), i8* %25)
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_item_rename(%struct._GimpItem*, i8*, %struct._GError**) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #2

declare void @g_free(i8*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem*) #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i32 @gimp_modifiers_to_channel_op(i32) #1

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_toggle_clicked(%struct._GtkCellRendererToggle* %toggle, i8* %path_str, i32 %state, %struct._GimpItemTreeView* %view, i32 %undo_type) #3 {
entry:
  %toggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_str.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %undo_type.addr = alloca i32, align 4
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %setter = alloca void (%struct._GimpItem*, i32, i32)*, align 8
  %exclusive = alloca void (%struct._GimpItem*, %struct._GimpContext*)*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkCellRendererToggle* %toggle, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store i32 %undo_type, i32* %undo_type.addr, align 4
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load i32, i32* %undo_type.addr, align 4
  switch i32 %3, label %sw.default [
    i32 51, label %sw.bb
    i32 52, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct._GimpItem*, i32, i32)* @gimp_item_set_visible, void (%struct._GimpItem*, i32, i32)** %setter, align 8
  store void (%struct._GimpItem*, %struct._GimpContext*)* @gimp_item_toggle_exclusive_visible, void (%struct._GimpItem*, %struct._GimpContext*)** %exclusive, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store void (%struct._GimpItem*, i32, i32)* @gimp_item_set_linked, void (%struct._GimpItem*, i32, i32)** %setter, align 8
  store void (%struct._GimpItem*, %struct._GimpContext*)* @gimp_item_toggle_exclusive_linked, void (%struct._GimpItem*, %struct._GimpContext*)** %exclusive, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %4 = load i8*, i8** %path_str.addr, align 8
  %call3 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %4)
  store %struct._GtkTreePath* %call3, %struct._GtkTreePath** %path, align 8
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %7 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call4 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %sw.epilog
  %8 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %9 = bitcast %struct._GimpItemTreeView* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_container_view_interface_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpContainerView*
  %call7 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %10)
  store %struct._GimpContext* %call7, %struct._GimpContext** %context, align 8
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model8 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 1
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model8, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %13 = load %struct._GtkCellRendererToggle*, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  %14 = bitcast %struct._GtkCellRendererToggle* %13 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32* %active, i8* null)
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %15, i32 0, i32 3
  %16 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %17 = bitcast %struct._GimpViewable* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  store %struct._GimpItem* %18, %struct._GimpItem** %item, align 8
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %20 = bitcast %struct._GimpViewRenderer* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call11 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %21)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %22 = load i32, i32* %state.addr, align 4
  %and = and i32 %22, 1
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %23 = load void (%struct._GimpItem*, %struct._GimpContext*)*, void (%struct._GimpItem*, %struct._GimpContext*)** %exclusive, align 8
  %tobool13 = icmp ne void (%struct._GimpItem*, %struct._GimpContext*)* %23, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  %24 = load void (%struct._GimpItem*, %struct._GimpContext*)*, void (%struct._GimpItem*, %struct._GimpContext*)** %exclusive, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void %24(%struct._GimpItem* %25, %struct._GimpContext* %26)
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 1, i32* %push_undo, align 4
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i64 @gimp_item_undo_get_type() #6
  %28 = load i32, i32* %undo_type.addr, align 4
  %call16 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %27, i64 %call15, i32 %28)
  store %struct._GimpUndo* %call16, %struct._GimpUndo** %undo, align 8
  %29 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool17 = icmp ne %struct._GimpUndo* %29, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %if.else
  %30 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %31 = bitcast %struct._GimpUndo* %30 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_undo_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call19)
  %32 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItemUndo*
  %item21 = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %32, i32 0, i32 1
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item21, align 8
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %cmp = icmp eq %struct._GimpItem* %33, %34
  br i1 %cmp, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %land.lhs.true.18
  store i32 0, i32* %push_undo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %land.lhs.true.18, %if.else
  %35 = load void (%struct._GimpItem*, i32, i32)*, void (%struct._GimpItem*, i32, i32)** %setter, align 8
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %37 = load i32, i32* %active, align 4
  %tobool23 = icmp ne i32 %37, 0
  %lnot = xor i1 %tobool23, true
  %lnot.ext = zext i1 %lnot to i32
  %38 = load i32, i32* %push_undo, align 4
  call void %35(%struct._GimpItem* %36, i32 %lnot.ext, i32 %38)
  %39 = load i32, i32* %push_undo, align 4
  %tobool24 = icmp ne i32 %39, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end
  %40 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_undo_refresh_preview(%struct._GimpUndo* %40, %struct._GimpContext* %41)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.14
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %42)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %sw.epilog
  %43 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %43)
  br label %return

return:                                           ; preds = %if.end.28, %sw.default
  ret void
}

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_toggle_exclusive_visible(%struct._GimpItem*, %struct._GimpContext*) #1

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_toggle_exclusive_linked(%struct._GimpItem*, %struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare void @gimp_undo_refresh_preview(%struct._GimpUndo*, %struct._GimpContext*) #1

declare i8* @gimp_container_view_lookup(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager*, i8*, i8*) #1

declare void @gtk_action_activate(%struct._GtkAction*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare i32 @gimp_item_get_lock_content(%struct._GimpItem*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_lock_content_changed(%struct._GimpItem* %item, %struct._GimpItemTreeView* %view) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %0, i32 0, i32 1
  %1 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image1 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %1, i32 0, i32 0
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %6, i32 0, i32 5
  %7 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call %struct._GimpItem* %7(%struct._GimpImage* %8)
  store %struct._GimpItem* %call, %struct._GimpItem** %active_item, align 8
  %9 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp = icmp eq %struct._GimpItem* %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_tree_view_update_options(%struct._GimpItemTreeView* %11, %struct._GimpItem* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_item_set_lock_content(%struct._GimpItem*, i32, i32) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_update_options(%struct._GimpItemTreeView* %view, %struct._GimpItem* %item) #3 {
entry:
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %0)
  %1 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %1, i32 0, i32 1
  %2 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %lock_content_toggle = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %2, i32 0, i32 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_button_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleButton*
  %call3 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %5)
  %cmp = icmp ne i32 %call, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %6, i32 0, i32 1
  %7 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv4, align 8
  %lock_content_toggle5 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %7, i32 0, i32 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle5, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %11 = bitcast %struct._GimpItemTreeView* %10 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_lock_content_toggled to i8*), i8* %11)
  %12 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv7 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %12, i32 0, i32 1
  %13 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv7, align 8
  %lock_content_toggle8 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %13, i32 0, i32 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle8, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_toggle_button_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkToggleButton*
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %17)
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %16, i32 %call11)
  %18 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %18, i32 0, i32 1
  %19 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv12, align 8
  %lock_content_toggle13 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %19, i32 0, i32 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle13, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %23 = bitcast %struct._GimpItemTreeView* %22 to i8*
  %call14 = call i32 @g_signal_handlers_unblock_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_lock_content_toggled to i8*), i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %24, i32 0, i32 1
  %25 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv15, align 8
  %lock_content_toggle16 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %25, i32 0, i32 4
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_content_toggle16, align 8
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call17 = call i32 @gimp_item_can_lock_content(%struct._GimpItem* %27)
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %26, i32 %call17)
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare i32 @gimp_item_can_lock_content(%struct._GimpItem*) #1

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #2

declare void @gtk_image_get_stock(%struct._GtkImage*, i8**, i32*) #1

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #1

declare %struct._GimpItem* @gimp_item_convert(%struct._GimpItem*, %struct._GimpImage*, i64) #1

declare i32 @gimp_image_reorder_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_item_changed(%struct._GimpImage* %image, %struct._GimpItemTreeView* %view) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %3, i32 0, i32 5
  %4 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %5 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %5, i32 0, i32 1
  %6 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image1 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %6, i32 0, i32 0
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  %call = call %struct._GimpItem* %4(%struct._GimpImage* %7)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %9 = bitcast %struct._GimpItemTreeView* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %12 = bitcast %struct._GimpItem* %11 to %struct._GimpViewable*
  %call4 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %10, %struct._GimpViewable* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_size_changed(%struct._GimpImage* %image, %struct._GimpItemTreeView* %tree_view) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %tree_view.addr = alloca %struct._GimpItemTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %view_size = alloca i32, align 4
  %border_width = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpItemTreeView* %tree_view, %struct._GimpItemTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %3, i32* %border_width)
  store i32 %call2, i32* %view_size, align 4
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = load i32, i32* %view_size, align 4
  %6 = load i32, i32* %border_width, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %4, i32 %5, i32 %6)
  ret void
}

declare void @gimp_container_view_set_container(%struct._GimpContainerView*, %struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_image_flush(%struct._GimpImage* %image, i32 %invalidate_preview, %struct._GimpItemTreeView* %view) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %invalidate_preview.addr = alloca i32, align 4
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %invalidate_preview, i32* %invalidate_preview.addr, align 4
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %2)
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call2, i8* %4)
  ret void
}

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_set_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %old_container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %3)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %old_container, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %5, i32 0, i32 1
  %6 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %visible_changed_handler = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %6, i32 0, i32 16
  %7 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %visible_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %7)
  %8 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv3 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %8, i32 0, i32 1
  %9 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv3, align 8
  %visible_changed_handler4 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %9, i32 0, i32 16
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %visible_changed_handler4, align 8
  %10 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv5 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %10, i32 0, i32 1
  %11 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv5, align 8
  %linked_changed_handler = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %11, i32 0, i32 17
  %12 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %linked_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %12)
  %13 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv6 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv6, align 8
  %linked_changed_handler7 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %14, i32 0, i32 17
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %linked_changed_handler7, align 8
  %15 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv8 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %15, i32 0, i32 1
  %16 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv8, align 8
  %lock_content_changed_handler = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %16, i32 0, i32 18
  %17 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %lock_content_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %17)
  %18 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv9 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %18, i32 0, i32 1
  %19 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv9, align 8
  %lock_content_changed_handler10 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %19, i32 0, i32 18
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %lock_content_changed_handler10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %20, i32 0, i32 4
  %21 = load void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %22 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void %21(%struct._GimpContainerView* %22, %struct._GimpContainer* %23)
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool11 = icmp ne %struct._GimpContainer* %24, null
  br i1 %tobool11, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.end
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %26 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %27 = bitcast %struct._GimpContainerView* %26 to i8*
  %call13 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpItem*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_visible_changed to void ()*), i8* %27)
  %28 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv14 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %28, i32 0, i32 1
  %29 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv14, align 8
  %visible_changed_handler15 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %29, i32 0, i32 16
  store %struct._GimpTreeHandler* %call13, %struct._GimpTreeHandler** %visible_changed_handler15, align 8
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %32 = bitcast %struct._GimpContainerView* %31 to i8*
  %call16 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpItem*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_linked_changed to void ()*), i8* %32)
  %33 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv17 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %33, i32 0, i32 1
  %34 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv17, align 8
  %linked_changed_handler18 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %34, i32 0, i32 17
  store %struct._GimpTreeHandler* %call16, %struct._GimpTreeHandler** %linked_changed_handler18, align 8
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %36 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %37 = bitcast %struct._GimpContainerView* %36 to i8*
  %call19 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpItem*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_lock_content_changed to void ()*), i8* %37)
  %38 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv20 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %38, i32 0, i32 1
  %39 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv20, align 8
  %lock_content_changed_handler21 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %39, i32 0, i32 18
  store %struct._GimpTreeHandler* %call19, %struct._GimpTreeHandler** %lock_content_changed_handler21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.12, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %old_context = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %4 = bitcast %struct._GimpContainerView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %5, %struct._GimpItemTreeView** %item_view, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call4 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call4, %struct._GimpContext** %old_context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %old_context, align 8
  %tobool = icmp ne %struct._GimpContext* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %old_context, align 8
  %9 = bitcast %struct._GimpContext* %8 to i8*
  %10 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %11 = bitcast %struct._GimpItemTreeView* %10 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpItemTreeView*, %struct._GimpImage*)* @gimp_item_tree_view_set_image to i8*), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %12, i32 0, i32 5
  %13 = load void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %13(%struct._GimpContainerView* %14, %struct._GimpContext* %15)
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool6 = icmp ne %struct._GimpContext* %16, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %17 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %dnd_gimp = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %17, i32 0, i32 7
  %18 = load %struct._Gimp*, %struct._Gimp** %dnd_gimp, align 8
  %tobool8 = icmp ne %struct._Gimp* %18, null
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.then.7
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %21 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %dnd_gimp10 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %21, i32 0, i32 7
  store %struct._Gimp* %20, %struct._Gimp** %dnd_gimp10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.7
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %23 = bitcast %struct._GimpContext* %22 to i8*
  %24 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %25 = bitcast %struct._GimpItemTreeView* %24 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GimpItemTreeView*, %struct._GimpImage*)* @gimp_item_tree_view_set_image to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call13 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %26)
  store %struct._GimpImage* %call13, %struct._GimpImage** %image, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.11, %if.end
  %27 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_item_tree_view_set_image(%struct._GimpItemTreeView* %27, %struct._GimpImage* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_item_tree_view_insert_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %parent_insert_data, i32 %index) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %parent_insert_data.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %parent_insert_data, i8** %parent_insert_data.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %4 = bitcast %struct._GimpContainerView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %5, %struct._GimpItemTreeView** %item_view, align 8
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %7 = bitcast %struct._GimpViewable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  store %struct._GimpItem* %8, %struct._GimpItem** %item, align 8
  %9 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %9, i32 0, i32 1
  %10 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %inserting_item = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %10, i32 0, i32 19
  store i32 1, i32* %inserting_item, align 4
  %11 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %11, i32 0, i32 7
  %12 = load i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)*, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = load i8*, i8** %parent_insert_data.addr, align 8
  %16 = load i32, i32* %index.addr, align 4
  %call6 = call i8* %12(%struct._GimpContainerView* %13, %struct._GimpViewable* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call6 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %17, %struct._GtkTreeIter** %iter, align 8
  %18 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv7 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %18, i32 0, i32 1
  %19 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv7, align 8
  %inserting_item8 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %19, i32 0, i32 19
  store i32 0, i32* %inserting_item8, align 4
  %20 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %20, i32 0, i32 1
  %21 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %22 = bitcast %struct._GtkTreeModel* %21 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_store_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call9)
  %23 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeStore*
  %24 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %25 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv11 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %25, i32 0, i32 1
  %26 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv11, align 8
  %model_column_visible = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %26, i32 0, i32 11
  %27 = load i32, i32* %model_column_visible, align 4
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_get_visible(%struct._GimpItem* %28)
  %29 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv13 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %29, i32 0, i32 1
  %30 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv13, align 8
  %model_column_viewable = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %30, i32 0, i32 12
  %31 = load i32, i32* %model_column_viewable, align 4
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call14 = call i32 @gimp_item_get_visible(%struct._GimpItem* %32)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call15 = call i32 @gimp_item_is_visible(%struct._GimpItem* %33)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %34 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  %35 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv17 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %35, i32 0, i32 1
  %36 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv17, align 8
  %model_column_linked = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %36, i32 0, i32 13
  %37 = load i32, i32* %model_column_linked, align 4
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call18 = call i32 @gimp_item_get_linked(%struct._GimpItem* %38)
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %23, %struct._GtkTreeIter* %24, i32 %27, i32 %call12, i32 %31, i32 %land.ext, i32 %37, i32 %call18, i32 -1)
  %39 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %40 = bitcast %struct._GtkTreeIter* %39 to i8*
  ret i8* %40
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_insert_item_after(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %6, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %7 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %7, i32 0, i32 5
  %8 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %9 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %9, i32 0, i32 1
  %10 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %10, i32 0, i32 0
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpItem* %8(%struct._GimpImage* %11)
  store %struct._GimpItem* %call2, %struct._GimpItem** %active_item, align 8
  %12 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GimpItem*
  %cmp = icmp eq %struct._GimpItem* %12, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %16 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call3 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %15, %struct._GimpViewable* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_item_tree_view_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %item, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %item.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpItemTreeView*, align 8
  %options_sensitive = alloca i32, align 4
  %success = alloca i32, align 4
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  %active_item = alloca %struct._GimpItem*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %item, %struct._GimpViewable** %item.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %tree_view, align 8
  store i32 0, i32* %options_sensitive, align 4
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 1
  %4 = load i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %7 = load i8*, i8** %insert_data.addr, align 8
  %call2 = call i32 %4(%struct._GimpContainerView* %5, %struct._GimpViewable* %6, i8* %7)
  store i32 %call2, i32* %success, align 4
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %8, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %10 = bitcast %struct._GimpItemTreeView* %9 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %12 = bitcast %struct._GTypeClass* %11 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %12, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %13 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %13, i32 0, i32 5
  %14 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %15 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %15, i32 0, i32 1
  %16 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %image = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %16, i32 0, i32 0
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpItem* %14(%struct._GimpImage* %17)
  store %struct._GimpItem* %call3, %struct._GimpItem** %active_item, align 8
  %18 = load %struct._GimpItem*, %struct._GimpItem** %active_item, align 8
  %19 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %20 = bitcast %struct._GimpViewable* %19 to %struct._GimpItem*
  %cmp = icmp ne %struct._GimpItem* %18, %20
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %21 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %set_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %21, i32 0, i32 6
  %22 = load void (%struct._GimpImage*, %struct._GimpItem*)*, void (%struct._GimpImage*, %struct._GimpItem*)** %set_active_item, align 8
  %23 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %priv5 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %23, i32 0, i32 1
  %24 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv5, align 8
  %image6 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %24, i32 0, i32 0
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image6, align 8
  %26 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %27 = bitcast %struct._GimpViewable* %26 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call7)
  %28 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  call void %22(%struct._GimpImage* %25, %struct._GimpItem* %28)
  %29 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %priv9 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %29, i32 0, i32 1
  %30 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv9, align 8
  %image10 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %30, i32 0, i32 0
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image10, align 8
  call void @gimp_image_flush(%struct._GimpImage* %31)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  store i32 1, i32* %options_sensitive, align 4
  %32 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %33 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %34 = bitcast %struct._GimpViewable* %33 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call11)
  %35 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  call void @gimp_item_tree_view_update_options(%struct._GimpItemTreeView* %32, %struct._GimpItem* %35)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %36 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %37 = bitcast %struct._GimpItemTreeView* %36 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_editor_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call14)
  %38 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpEditor*
  %call16 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %38)
  %39 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %40 = bitcast %struct._GimpItemTreeView* %39 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call16, i8* %40)
  %41 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %priv17 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %41, i32 0, i32 1
  %42 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv17, align 8
  %options_box = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %42, i32 0, i32 1
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box, align 8
  %tobool18 = icmp ne %struct._GtkWidget* %43, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.13
  %44 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %tree_view, align 8
  %priv20 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %44, i32 0, i32 1
  %45 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv20, align 8
  %options_box21 = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %45, i32 0, i32 1
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %options_box21, align 8
  %47 = load i32, i32* %options_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %46, i32 %47)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.13
  %48 = load i32, i32* %success, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_activate_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %item, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %item.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %item, %struct._GimpViewable** %item.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %3, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %4 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %activate_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %4, i32 0, i32 2
  %5 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %activate_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %activate_item1 = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 2
  %7 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %activate_item1, align 8
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %10 = load i8*, i8** %insert_data.addr, align 8
  call void %7(%struct._GimpContainerView* %8, %struct._GimpViewable* %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %activate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %11, i32 0, i32 11
  %12 = load i8*, i8** %activate_action, align 8
  %tobool2 = icmp ne i8* %12, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %14 = bitcast %struct._GimpContainerView* %13 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call)
  %15 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpEditor*
  %call5 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %15)
  %16 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %16, i32 0, i32 10
  %17 = load i8*, i8** %action_group, align 8
  %18 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %activate_action6 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %18, i32 0, i32 11
  %19 = load i8*, i8** %activate_action6, align 8
  %call7 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %call5, i8* %17, i8* %19)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_context_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %item, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %item.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %item, %struct._GimpViewable** %item.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %context_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %0, i32 0, i32 3
  %1 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %context_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %context_item1 = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %2, i32 0, i32 3
  %3 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %context_item1, align 8
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %6 = load i8*, i8** %insert_data.addr, align 8
  call void %3(%struct._GimpContainerView* %4, %struct._GimpViewable* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %8 = bitcast %struct._GimpContainerView* %7 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpEditor*
  %call3 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %9, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  ret void
}

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler*) #1

declare %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer*, i8*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_visible_changed(%struct._GimpItem* %item, %struct._GimpItemTreeView* %view) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %container_view = alloca %struct._GimpContainerView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %container_view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %5, %struct._GimpContainerTreeView** %tree_view, align 8
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %8 = bitcast %struct._GimpItem* %7 to %struct._GimpViewable*
  %call4 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %6, %struct._GimpViewable* %8)
  %9 = bitcast i8* %call4 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %9, %struct._GtkTreeIter** %iter, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %10, null
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 1
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %13 = bitcast %struct._GtkTreeModel* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tree_store_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeStore*
  %15 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %16 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %16, i32 0, i32 1
  %17 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %model_column_visible = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %17, i32 0, i32 11
  %18 = load i32, i32* %model_column_visible, align 4
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call7 = call i32 @gimp_item_get_visible(%struct._GimpItem* %19)
  %20 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv8 = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %20, i32 0, i32 1
  %21 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv8, align 8
  %model_column_viewable = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %21, i32 0, i32 12
  %22 = load i32, i32* %model_column_viewable, align 4
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call9 = call i32 @gimp_item_get_visible(%struct._GimpItem* %23)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call i32 @gimp_item_is_visible(%struct._GimpItem* %24)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %25 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %14, %struct._GtkTreeIter* %15, i32 %18, i32 %call7, i32 %22, i32 %land.ext, i32 -1)
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_viewable_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call13)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpViewable*
  %call15 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %28)
  store %struct._GimpContainer* %call15, %struct._GimpContainer** %children, align 8
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool16 = icmp ne %struct._GimpContainer* %29, null
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %land.end
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %31 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %32 = bitcast %struct._GimpItemTreeView* %31 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %30, void (i8*, i8*)* bitcast (void (%struct._GimpItem*, %struct._GimpItemTreeView*)* @gimp_item_tree_view_visible_changed to void (i8*, i8*)*), i8* %32)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %land.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_tree_view_linked_changed(%struct._GimpItem* %item, %struct._GimpItemTreeView* %view) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %container_view = alloca %struct._GimpContainerView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %container_view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %5, %struct._GimpContainerTreeView** %tree_view, align 8
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %8 = bitcast %struct._GimpItem* %7 to %struct._GimpViewable*
  %call4 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %6, %struct._GimpViewable* %8)
  %9 = bitcast i8* %call4 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %9, %struct._GtkTreeIter** %iter, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 1
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %13 = bitcast %struct._GtkTreeModel* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tree_store_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeStore*
  %15 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %16 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpItemTreeView, %struct._GimpItemTreeView* %16, i32 0, i32 1
  %17 = load %struct._GimpItemTreeViewPriv*, %struct._GimpItemTreeViewPriv** %priv, align 8
  %model_column_linked = getelementptr inbounds %struct._GimpItemTreeViewPriv, %struct._GimpItemTreeViewPriv* %17, i32 0, i32 13
  %18 = load i32, i32* %model_column_linked, align 4
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call7 = call i32 @gimp_item_get_linked(%struct._GimpItem* %19)
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %14, %struct._GtkTreeIter* %15, i32 %18, i32 %call7, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare i32 @gimp_item_is_visible(%struct._GimpItem*) #1

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

declare i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager*, i8*, i8*) #1

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_container_tree_store_columns_add(i64*, i32*, i64) #1

declare void @gimp_container_tree_view_set_dnd_drop_to_empty(%struct._GimpContainerTreeView*, i32) #1

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
