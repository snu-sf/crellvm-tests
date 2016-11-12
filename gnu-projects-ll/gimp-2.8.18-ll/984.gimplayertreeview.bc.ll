; ModuleID = './app/widgets/gimplayertreeview.bc'
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
%struct._GimpContext = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpLayerTreeViewClass = type { %struct._GimpDrawableTreeViewClass }
%struct._GimpDrawableTreeViewClass = type { %struct._GimpItemTreeViewClass }
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GtkTreePath = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GdkPixbuf = type opaque
%struct._GimpItemTreeView = type { %struct._GimpContainerTreeView, %struct._GimpItemTreeViewPriv* }
%struct._GimpItemTreeViewPriv = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpLayerTreeView = type { %struct._GimpDrawableTreeView, %struct._GimpLayerTreeViewPriv* }
%struct._GimpDrawableTreeView = type { %struct._GimpItemTreeView }
%struct._GimpLayerTreeViewPriv = type { %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, i32, i32, %struct._GtkCellRenderer*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._PangoAttrList = type opaque
%struct._GimpTreeHandler = type { %struct._GimpObject, %struct._GimpContainer*, i8*, void ()*, i8* }
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpText = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpCellRendererViewable = type { %struct._GtkCellRenderer, %struct._GimpViewRenderer* }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct.SetContextForeachData = type { i32, %struct._GimpContext* }
%struct.SetSizeForeachData = type { i32, i32, i32 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }

@gimp_layer_tree_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpLayerTreeView\00", align 1
@gimp_layer_tree_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_layer_tree_view_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_layer_tree_view_parent_class = internal global i8* null, align 8
@GimpLayerTreeView_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"active-layer-changed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"layers-text-tool\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"layers-edit-attributes\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"layers-new\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"layers-new-last-values\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"layers-raise\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"layers-raise-to-top\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"layers-lower\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"layers-lower-to-bottom\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"layers-duplicate\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"layers-delete\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"layers-new-group\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"layers-anchor\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"layers-mask-edit\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"layers-mask-show\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"layers-mask-disable\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Drop layers\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"%s Channel Copy\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Dropped Buffer\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"floating-selection-changed\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"New Layer\00", align 1
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8
@.str.28 = private unnamed_addr constant [13 x i8] c"mode-changed\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"opacity-changed\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"lock-alpha-changed\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"mask-changed\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"alpha-changed\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"apply-changed\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"edit-changed\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"show-changed\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Mode:\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"gimp-layer-dialog-paint-mode-menu\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"gimp-layer-dialog-opacity-scale\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Lock alpha channel\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"gimp-layer-dialog-lock-alpha-button\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"button-icon-size\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"gimp-transparency\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_tree_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_layer_tree_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_layer_tree_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_drawable_tree_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1072, void (i8*, i8*)* bitcast (void (i8*)* @gimp_layer_tree_view_class_intern_init to void (i8*, i8*)*), i32 344, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLayerTreeView*)* @gimp_layer_tree_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_layer_tree_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_layer_tree_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_layer_tree_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_tree_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_layer_tree_view_parent_class, align 8
  %1 = load i32, i32* @GimpLayerTreeView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLayerTreeView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLayerTreeViewClass*
  call void @gimp_layer_tree_view_class_init(%struct._GimpLayerTreeViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_init(%struct._GimpLayerTreeView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %icon_size = alloca i32, align 4
  %attr = alloca %struct._PangoAttribute*, align 8
  store %struct._GimpLayerTreeView* %view, %struct._GimpLayerTreeView** %view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpLayerTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_layer_tree_view_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpLayerTreeViewPriv*
  %6 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %6, i32 0, i32 1
  store %struct._GimpLayerTreeViewPriv* %5, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model_columns = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns, i32 0, i32 0
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %n_model_columns = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 2
  %call4 = call i64 @gimp_view_renderer_get_type() #6
  %call5 = call i32 @gimp_container_tree_store_columns_add(i64* %arraydecay, i32* %n_model_columns, i64 %call4)
  %9 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv6 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %9, i32 0, i32 1
  %10 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv6, align 8
  %model_column_mask = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %10, i32 0, i32 3
  store i32 %call5, i32* %model_column_mask, align 4
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model_columns7 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns7, i32 0, i32 0
  %12 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %n_model_columns9 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %12, i32 0, i32 2
  %call10 = call i32 @gimp_container_tree_store_columns_add(i64* %arraydecay8, i32* %n_model_columns9, i64 20)
  %13 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv11, align 8
  %model_column_mask_visible = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %14, i32 0, i32 4
  store i32 %call10, i32* %model_column_mask_visible, align 4
  %call12 = call %struct._GtkWidget* @gimp_paint_mode_menu_new(i32 0, i32 0)
  %15 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv13 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %15, i32 0, i32 1
  %16 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv13, align 8
  %paint_mode_menu = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %16, i32 0, i32 0
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %paint_mode_menu, align 8
  %17 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %18 = bitcast %struct._GimpLayerTreeView* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_tree_view_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItemTreeView*
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #7
  %20 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv17 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %20, i32 0, i32 1
  %21 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv17, align 8
  %paint_mode_menu18 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %21, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu18, align 8
  call void @gimp_item_tree_view_add_options(%struct._GimpItemTreeView* %19, i8* %call16, %struct._GtkWidget* %22)
  %23 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv19 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %23, i32 0, i32 1
  %24 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv19, align 8
  %paint_mode_menu20 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %24, i32 0, i32 0
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu20, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_int_combo_box_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpIntComboBox*
  %28 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %29 = bitcast %struct._GimpLayerTreeView* %28 to i8*
  %call23 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %27, i32 0, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_paint_mode_menu_callback to void ()*), i8* %29)
  %30 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv24 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %30, i32 0, i32 1
  %31 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv24, align 8
  %paint_mode_menu25 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %31, i32 0, i32 0
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu25, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %32, i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  %call26 = call %struct._GtkObject* @gtk_adjustment_new(double 1.000000e+02, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  %33 = bitcast %struct._GtkObject* %call26 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_adjustment_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call27)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkAdjustment*
  %35 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv29 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %35, i32 0, i32 1
  %36 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv29, align 8
  %opacity_adjustment = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %36, i32 0, i32 1
  store %struct._GtkAdjustment* %34, %struct._GtkAdjustment** %opacity_adjustment, align 8
  %37 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv30 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %37, i32 0, i32 1
  %38 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv30, align 8
  %opacity_adjustment31 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %38, i32 0, i32 1
  %39 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_adjustment31, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0)) #7
  %call33 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %39, i8* %call32, i32 1)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %scale, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %40, i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0))
  %41 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %42 = bitcast %struct._GimpLayerTreeView* %41 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_tree_view_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call34)
  %43 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItemTreeView*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gimp_item_tree_view_add_options(%struct._GimpItemTreeView* %43, i8* null, %struct._GtkWidget* %44)
  %45 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv36 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %45, i32 0, i32 1
  %46 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv36, align 8
  %opacity_adjustment37 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %46, i32 0, i32 1
  %47 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_adjustment37, align 8
  %48 = bitcast %struct._GtkAdjustment* %47 to i8*
  %49 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %50 = bitcast %struct._GimpLayerTreeView* %49 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_opacity_scale_changed to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %52 = bitcast %struct._GimpLayerTreeView* %51 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_tree_view_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call39)
  %53 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItemTreeView*
  %call41 = call %struct._GtkWidget* @gimp_item_tree_view_get_lock_box(%struct._GimpItemTreeView* %53)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %hbox, align 8
  %call42 = call %struct._GtkWidget* @gtk_toggle_button_new()
  %54 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv43 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %54, i32 0, i32 1
  %55 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv43, align 8
  %lock_alpha_toggle = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %55, i32 0, i32 2
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %lock_alpha_toggle, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call44)
  %58 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %59 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv46 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %59, i32 0, i32 1
  %60 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv46, align 8
  %lock_alpha_toggle47 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %60, i32 0, i32 2
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle47, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %61, i32 0, i32 0, i32 0)
  %62 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv48 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %62, i32 0, i32 1
  %63 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv48, align 8
  %lock_alpha_toggle49 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %63, i32 0, i32 2
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle49, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv50 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %65, i32 0, i32 1
  %66 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv50, align 8
  %lock_alpha_toggle51 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %66, i32 0, i32 2
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle51, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %70 = bitcast %struct._GimpLayerTreeView* %69 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_lock_alpha_button_toggled to void ()*), i8* %70, void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv53 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %71, i32 0, i32 1
  %72 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv53, align 8
  %lock_alpha_toggle54 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %72, i32 0, i32 2
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle54, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %73, i8* %call55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i32 0, i32 0))
  %74 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %75 = bitcast %struct._GimpLayerTreeView* %74 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_widget_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call56)
  %76 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i32* %icon_size, i8* null)
  %77 = load i32, i32* %icon_size, align 4
  %call58 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i32 %77)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %image, align 8
  %78 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv59 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %78, i32 0, i32 1
  %79 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv59, align 8
  %lock_alpha_toggle60 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %79, i32 0, i32 2
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle60, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_container_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call61)
  %82 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkContainer*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %82, %struct._GtkWidget* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %call63 = call %struct._PangoAttrList* @pango_attr_list_new()
  %85 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv64 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %85, i32 0, i32 1
  %86 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv64, align 8
  %italic_attrs = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %86, i32 0, i32 6
  store %struct._PangoAttrList* %call63, %struct._PangoAttrList** %italic_attrs, align 8
  %call65 = call %struct._PangoAttribute* @pango_attr_style_new(i32 2)
  store %struct._PangoAttribute* %call65, %struct._PangoAttribute** %attr, align 8
  %87 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %87, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %88 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %88, i32 0, i32 2
  store i32 -1, i32* %end_index, align 4
  %89 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv66 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %89, i32 0, i32 1
  %90 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv66, align 8
  %italic_attrs67 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %90, i32 0, i32 6
  %91 = load %struct._PangoAttrList*, %struct._PangoAttrList** %italic_attrs67, align 8
  %92 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %91, %struct._PangoAttribute* %92)
  %call68 = call %struct._PangoAttrList* @pango_attr_list_new()
  %93 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv69 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %93, i32 0, i32 1
  %94 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv69, align 8
  %bold_attrs = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %94, i32 0, i32 7
  store %struct._PangoAttrList* %call68, %struct._PangoAttrList** %bold_attrs, align 8
  %call70 = call %struct._PangoAttribute* @pango_attr_weight_new(i32 700)
  store %struct._PangoAttribute* %call70, %struct._PangoAttribute** %attr, align 8
  %95 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index71 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %95, i32 0, i32 1
  store i32 0, i32* %start_index71, align 4
  %96 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index72 = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %96, i32 0, i32 2
  store i32 -1, i32* %end_index72, align 4
  %97 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv73 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %97, i32 0, i32 1
  %98 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv73, align 8
  %bold_attrs74 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %98, i32 0, i32 7
  %99 = load %struct._PangoAttrList*, %struct._PangoAttrList** %bold_attrs74, align 8
  %100 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %99, %struct._PangoAttribute* %100)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
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
  store void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_layer_tree_view_set_container, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %4 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %4, i32 0, i32 5
  store void (%struct._GimpContainerView*, %struct._GimpContext*)* @gimp_layer_tree_view_set_context, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %5, i32 0, i32 7
  store i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)* @gimp_layer_tree_view_insert_item, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 1
  store i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_layer_tree_view_select_item, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 13
  store void (%struct._GimpContainerView*)* @gimp_layer_tree_view_set_view_size, void (%struct._GimpContainerView*)** %set_view_size, align 8
  %8 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %model_is_tree = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %8, i32 0, i32 16
  store i32 1, i32* %model_is_tree, align 4
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_class_init(%struct._GimpLayerTreeViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLayerTreeViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tree_view_class = alloca %struct._GimpContainerTreeViewClass*, align 8
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  store %struct._GimpLayerTreeViewClass* %klass, %struct._GimpLayerTreeViewClass** %klass.addr, align 8
  %0 = load %struct._GimpLayerTreeViewClass*, %struct._GimpLayerTreeViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpLayerTreeViewClass*, %struct._GimpLayerTreeViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpLayerTreeViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_container_tree_view_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpContainerTreeViewClass*
  store %struct._GimpContainerTreeViewClass* %5, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %6 = load %struct._GimpLayerTreeViewClass*, %struct._GimpLayerTreeViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpLayerTreeViewClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_item_tree_view_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %8, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_layer_tree_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_layer_tree_view_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_possible = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %11, i32 0, i32 2
  store i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)* @gimp_layer_tree_view_drop_possible, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)** %drop_possible, align 8
  %12 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_color = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %12, i32 0, i32 4
  store void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)* @gimp_layer_tree_view_drop_color, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)** %drop_color, align 8
  %13 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_uri_list = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %13, i32 0, i32 5
  store void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)* @gimp_layer_tree_view_drop_uri_list, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)** %drop_uri_list, align 8
  %14 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_component = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %14, i32 0, i32 7
  store void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)* @gimp_layer_tree_view_drop_component, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)** %drop_component, align 8
  %15 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_pixbuf = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %15, i32 0, i32 8
  store void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)* @gimp_layer_tree_view_drop_pixbuf, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)** %drop_pixbuf, align 8
  %call5 = call i64 @gimp_layer_get_type() #6
  %16 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %16, i32 0, i32 2
  store i64 %call5, i64* %item_type, align 8
  %17 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %signal_name = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %17, i32 0, i32 3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8** %signal_name, align 8
  %18 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %set_image = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %18, i32 0, i32 1
  store void (%struct._GimpItemTreeView*, %struct._GimpImage*)* @gimp_layer_tree_view_set_image, void (%struct._GimpItemTreeView*, %struct._GimpImage*)** %set_image, align 8
  %19 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %get_container = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %19, i32 0, i32 4
  store %struct._GimpContainer* (%struct._GimpImage*)* @gimp_image_get_layers, %struct._GimpContainer* (%struct._GimpImage*)** %get_container, align 8
  %20 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %20, i32 0, i32 5
  store %struct._GimpItem* (%struct._GimpImage*)* bitcast (%struct._GimpLayer* (%struct._GimpImage*)* @gimp_image_get_active_layer to %struct._GimpItem* (%struct._GimpImage*)*), %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %21 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %set_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %21, i32 0, i32 6
  store void (%struct._GimpImage*, %struct._GimpItem*)* bitcast (%struct._GimpLayer* (%struct._GimpImage*, %struct._GimpLayer*)* @gimp_image_set_active_layer to void (%struct._GimpImage*, %struct._GimpItem*)*), void (%struct._GimpImage*, %struct._GimpItem*)** %set_active_item, align 8
  %22 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %add_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %22, i32 0, i32 7
  store void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)* bitcast (i32 (%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32)* @gimp_image_add_layer to void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)*), void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)** %add_item, align 8
  %23 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %remove_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %23, i32 0, i32 8
  store void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)* bitcast (void (%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*)* @gimp_image_remove_layer to void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)*), void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)** %remove_item, align 8
  %24 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %new_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %24, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpImage*)* @gimp_layer_tree_view_item_new, %struct._GimpItem* (%struct._GimpImage*)** %new_item, align 8
  %25 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %action_group = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %25, i32 0, i32 10
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %action_group, align 8
  %26 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %activate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %26, i32 0, i32 11
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8** %activate_action, align 8
  %27 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %edit_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %27, i32 0, i32 12
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8** %edit_action, align 8
  %28 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %new_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %28, i32 0, i32 13
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8** %new_action, align 8
  %29 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %new_default_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %29, i32 0, i32 14
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8** %new_default_action, align 8
  %30 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %raise_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %30, i32 0, i32 15
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8** %raise_action, align 8
  %31 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %raise_top_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %31, i32 0, i32 16
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8** %raise_top_action, align 8
  %32 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lower_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %32, i32 0, i32 17
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8** %lower_action, align 8
  %33 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lower_bottom_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %33, i32 0, i32 18
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8** %lower_bottom_action, align 8
  %34 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %duplicate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %34, i32 0, i32 19
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8** %duplicate_action, align 8
  %35 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %delete_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %35, i32 0, i32 20
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8** %delete_action, align 8
  %36 = load %struct._GimpLayerTreeViewClass*, %struct._GimpLayerTreeViewClass** %klass.addr, align 8
  %37 = bitcast %struct._GimpLayerTreeViewClass* %36 to i8*
  call void @g_type_class_add_private(i8* %37, i64 96)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_tree_view_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %layer_view = alloca %struct._GimpLayerTreeView*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_layer_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLayerTreeView*
  store %struct._GimpLayerTreeView* %5, %struct._GimpLayerTreeView** %layer_view, align 8
  %6 = load i8*, i8** @gimp_layer_tree_view_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_layer_tree_view_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call7 = call %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new()
  %15 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %15, i32 0, i32 1
  %16 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %mask_cell = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %16, i32 0, i32 5
  store %struct._GtkCellRenderer* %call7, %struct._GtkCellRenderer** %mask_cell, align 8
  %17 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %17, i32 0, i32 5
  %18 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column, align 8
  %19 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv8 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %19, i32 0, i32 1
  %20 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv8, align 8
  %mask_cell9 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %20, i32 0, i32 5
  %21 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %mask_cell9, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %18, %struct._GtkCellRenderer* %21, i32 0)
  %22 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column10 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %22, i32 0, i32 5
  %23 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column10, align 8
  %24 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv11 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %24, i32 0, i32 1
  %25 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv11, align 8
  %mask_cell12 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %25, i32 0, i32 5
  %26 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %mask_cell12, align 8
  %27 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv13 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %27, i32 0, i32 1
  %28 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv13, align 8
  %model_column_mask = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %28, i32 0, i32 3
  %29 = load i32, i32* %model_column_mask, align 4
  %30 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv14 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %30, i32 0, i32 1
  %31 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv14, align 8
  %model_column_mask_visible = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %31, i32 0, i32 4
  %32 = load i32, i32* %model_column_mask_visible, align 4
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %23, %struct._GtkCellRenderer* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %32, i8* null)
  %33 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %34 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv15 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %34, i32 0, i32 1
  %35 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv15, align 8
  %mask_cell16 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %35, i32 0, i32 5
  %36 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %mask_cell16, align 8
  call void @gimp_container_tree_view_add_renderer_cell(%struct._GimpContainerTreeView* %33, %struct._GtkCellRenderer* %36)
  %37 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %renderer_cell = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %37, i32 0, i32 6
  %38 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell, align 8
  %39 = bitcast %struct._GtkCellRenderer* %38 to i8*
  %40 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %41 = bitcast %struct._GimpLayerTreeView* %40 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCellRendererViewable*, i8*, i32, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_clicked to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv18 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %42, i32 0, i32 1
  %43 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv18, align 8
  %mask_cell19 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %43, i32 0, i32 5
  %44 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %mask_cell19, align 8
  %45 = bitcast %struct._GtkCellRenderer* %44 to i8*
  %46 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %47 = bitcast %struct._GimpLayerTreeView* %46 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCellRendererViewable*, i8*, i32, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_mask_clicked to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  %48 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %48, i32 0, i32 4
  %49 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %50 = bitcast %struct._GtkTreeView* %49 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call21)
  %51 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  %52 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %53 = bitcast %struct._GimpContainerTreeView* %52 to i8*
  call void @gimp_dnd_component_dest_add(%struct._GtkWidget* %51, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)* null, i8* %53)
  %54 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view23 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %54, i32 0, i32 4
  %55 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view23, align 8
  %56 = bitcast %struct._GtkTreeView* %55 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_widget_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call24)
  %57 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWidget*
  %call26 = call i64 @gimp_channel_get_type() #6
  %58 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %59 = bitcast %struct._GimpContainerTreeView* %58 to i8*
  %call27 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %57, i64 %call26, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* null, i8* %59)
  %60 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view28 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %60, i32 0, i32 4
  %61 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view28, align 8
  %62 = bitcast %struct._GtkTreeView* %61 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_widget_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call29)
  %63 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWidget*
  %call31 = call i64 @gimp_layer_mask_get_type() #6
  %64 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %65 = bitcast %struct._GimpContainerTreeView* %64 to i8*
  %call32 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %63, i64 %call31, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* null, i8* %65)
  %66 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view33 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %66, i32 0, i32 4
  %67 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view33, align 8
  %68 = bitcast %struct._GtkTreeView* %67 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_widget_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call34)
  %69 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkWidget*
  %70 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %71 = bitcast %struct._GimpContainerTreeView* %70 to i8*
  call void @gimp_dnd_uri_list_dest_add(%struct._GtkWidget* %69, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)* null, i8* %71)
  %72 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view36 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %72, i32 0, i32 4
  %73 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view36, align 8
  %74 = bitcast %struct._GtkTreeView* %73 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_widget_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call37)
  %75 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkWidget*
  %76 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %77 = bitcast %struct._GimpContainerTreeView* %76 to i8*
  call void @gimp_dnd_pixbuf_dest_add(%struct._GtkWidget* %75, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)* null, i8* %77)
  %78 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %79 = bitcast %struct._GimpLayerTreeView* %78 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_tree_view_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call39)
  %80 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItemTreeView*
  %call41 = call %struct._GtkWidget* @gimp_item_tree_view_get_edit_button(%struct._GimpItemTreeView* %80)
  call void @gtk_widget_hide(%struct._GtkWidget* %call41)
  %81 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %82 = bitcast %struct._GimpLayerTreeView* %81 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_editor_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call42)
  %83 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpEditor*
  %call44 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* null)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %button, align 8
  %84 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %85 = bitcast %struct._GimpLayerTreeView* %84 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_editor_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call45)
  %86 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpEditor*
  %call47 = call %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %call47, %struct._GtkWidget* %87, i32 2)
  %88 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %89 = bitcast %struct._GimpLayerTreeView* %88 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_editor_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call48)
  %90 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpEditor*
  %call50 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* null)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %button, align 8
  %91 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %92 = bitcast %struct._GimpLayerTreeView* %91 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_container_view_interface_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call51)
  %93 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpContainerView*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_button_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call53)
  %96 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkButton*
  %call55 = call i64 @gimp_layer_get_type() #6
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %93, %struct._GtkButton* %96, i64 %call55)
  %97 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %98 = bitcast %struct._GimpLayerTreeView* %97 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_editor_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call56)
  %99 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpEditor*
  %call58 = call %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor* %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %call58, %struct._GtkWidget* %100, i32 6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %layer_view = alloca %struct._GimpLayerTreeView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerTreeView*
  store %struct._GimpLayerTreeView* %2, %struct._GimpLayerTreeView** %layer_view, align 8
  %3 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %3, i32 0, i32 1
  %4 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %italic_attrs = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %4, i32 0, i32 6
  %5 = load %struct._PangoAttrList*, %struct._PangoAttrList** %italic_attrs, align 8
  %tobool = icmp ne %struct._PangoAttrList* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv2 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %6, i32 0, i32 1
  %7 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv2, align 8
  %italic_attrs3 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %7, i32 0, i32 6
  %8 = load %struct._PangoAttrList*, %struct._PangoAttrList** %italic_attrs3, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %8)
  %9 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv4 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %9, i32 0, i32 1
  %10 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv4, align 8
  %italic_attrs5 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %10, i32 0, i32 6
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %italic_attrs5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv6 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %11, i32 0, i32 1
  %12 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv6, align 8
  %bold_attrs = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %12, i32 0, i32 7
  %13 = load %struct._PangoAttrList*, %struct._PangoAttrList** %bold_attrs, align 8
  %tobool7 = icmp ne %struct._PangoAttrList* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %14 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv9 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %14, i32 0, i32 1
  %15 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv9, align 8
  %bold_attrs10 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %15, i32 0, i32 7
  %16 = load %struct._PangoAttrList*, %struct._PangoAttrList** %bold_attrs10, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %16)
  %17 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv11 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %17, i32 0, i32 1
  %18 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv11, align 8
  %bold_attrs12 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %18, i32 0, i32 7
  store %struct._PangoAttrList* null, %struct._PangoAttrList** %bold_attrs12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %19 = load i8*, i8** @gimp_layer_tree_view_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 80)
  %21 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %21, i32 0, i32 6
  %22 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %22(%struct._GObject* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_tree_view_drop_possible(%struct._GimpContainerTreeView* %tree_view, i32 %src_type, %struct._GimpViewable* %src_viewable, %struct._GimpViewable* %dest_viewable, %struct._GtkTreePath* %drop_path, i32 %drop_pos, i32* %return_drop_pos, i32* %return_drag_action) #3 {
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
  %dest_image = alloca %struct._GimpImage*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i32 %src_type, i32* %src_type.addr, align 4
  store %struct._GimpViewable* %src_viewable, %struct._GimpViewable** %src_viewable.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store %struct._GtkTreePath* %drop_path, %struct._GtkTreePath** %drop_path.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  store i32* %return_drop_pos, i32** %return_drop_pos.addr, align 8
  store i32* %return_drag_action, i32** %return_drag_action.addr, align 8
  %0 = load i32, i32* %src_type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %src_type.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then.17, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %src_type.addr, align 4
  %cmp3 = icmp eq i32 %2, 3
  br i1 %cmp3, label %if.then.17, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %src_type.addr, align 4
  %cmp5 = icmp eq i32 %3, 10
  br i1 %cmp5, label %if.then.17, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %src_type.addr, align 4
  %cmp7 = icmp eq i32 %4, 8
  br i1 %cmp7, label %if.then.17, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %6 = bitcast %struct._GimpViewable* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
  store i64 %call, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.8
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %lor.lhs.false.8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp11 = icmp eq i64 %12, %13
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #8
  store i32 %call14, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %if.end.15, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %18 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %19 = bitcast %struct._GimpContainerTreeView* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_tree_view_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItemTreeView*
  %call21 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %20)
  store %struct._GimpImage* %call21, %struct._GimpImage** %dest_image, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %call22 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %21)
  %tobool23 = icmp ne %struct._GimpLayer* %call22, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.15
  %22 = load i8*, i8** @gimp_layer_tree_view_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call27 = call i64 @gimp_container_tree_view_get_type() #6
  %call28 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 %call27)
  %24 = bitcast %struct._GTypeClass* %call28 to %struct._GimpContainerTreeViewClass*
  %drop_possible = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %24, i32 0, i32 2
  %25 = load i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)** %drop_possible, align 8
  %26 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %27 = load i32, i32* %src_type.addr, align 4
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %29 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %30 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path.addr, align 8
  %31 = load i32, i32* %drop_pos.addr, align 4
  %32 = load i32*, i32** %return_drop_pos.addr, align 8
  %33 = load i32*, i32** %return_drag_action.addr, align 8
  %call29 = call i32 %25(%struct._GimpContainerTreeView* %26, i32 %27, %struct._GimpViewable* %28, %struct._GimpViewable* %29, %struct._GtkTreePath* %30, i32 %31, i32* %32, i32* %33)
  store i32 %call29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.24
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_drop_color(%struct._GimpContainerTreeView* %view, %struct._GimpRGB* %color, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  store %struct._GimpContainerTreeView* %view, %struct._GimpContainerTreeView** %view.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %4 = bitcast %struct._GimpViewable* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_text_layer_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTextLayer*
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %5, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct._GimpRGB* %6, i8* null)
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %8 = bitcast %struct._GimpContainerTreeView* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_tree_view_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItemTreeView*
  %call7 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %9)
  call void @gimp_image_flush(%struct._GimpImage* %call7)
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** @gimp_layer_tree_view_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call8 = call i64 @gimp_container_tree_view_get_type() #6
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call8)
  %12 = bitcast %struct._GTypeClass* %call9 to %struct._GimpContainerTreeViewClass*
  %drop_color = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %12, i32 0, i32 4
  %13 = load void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)** %drop_color, align 8
  %14 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %16 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %17 = load i32, i32* %drop_pos.addr, align 4
  call void %13(%struct._GimpContainerTreeView* %14, %struct._GimpRGB* %15, %struct._GimpViewable* %16, i32 %17)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_drop_uri_list(%struct._GimpContainerTreeView* %view, %struct._GList* %uri_list, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %uri_list.addr = alloca %struct._GList*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %cont_view = alloca %struct._GimpContainerView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %parent = alloca %struct._GimpLayer*, align 8
  %index = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %uri = alloca i8*, align 8
  %new_layers = alloca %struct._GList*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpContainerTreeView* %view, %struct._GimpContainerTreeView** %view.addr, align 8
  store %struct._GList* %uri_list, %struct._GList** %uri_list.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpContainerTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %5, %struct._GimpContainerView** %cont_view, align 8
  %6 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call4 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %6)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %9 = load i32, i32* %drop_pos.addr, align 4
  %10 = bitcast %struct._GimpLayer** %parent to %struct._GimpViewable**
  %call5 = call i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %7, %struct._GimpViewable* %8, i32 %9, %struct._GimpViewable** %10)
  store i32 %call5, i32* %index, align 4
  %11 = load %struct._GList*, %struct._GList** %uri_list.addr, align 8
  store %struct._GList* %11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  store i8* %14, i8** %uri, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %17 = load %struct._GimpContainerView*, %struct._GimpContainerView** %cont_view, align 8
  %call6 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = load i8*, i8** %uri, align 8
  %call7 = call %struct._GList* @file_open_layers(%struct._Gimp* %16, %struct._GimpContext* %call6, %struct._GimpProgress* null, %struct._GimpImage* %18, i32 0, i8* %19, i32 0, %struct._GimpPlugInProcedure* null, i32* %status, %struct._GError** %error)
  store %struct._GList* %call7, %struct._GList** %new_layers, align 8
  %20 = load %struct._GList*, %struct._GList** %new_layers, align 8
  %tobool8 = icmp ne %struct._GList* %20, null
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load %struct._GList*, %struct._GList** %new_layers, align 8
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %24 = load i32, i32* %index, align 4
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_image_get_width(%struct._GimpImage* %25)
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i32 @gimp_image_get_height(%struct._GimpImage* %26)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #7
  call void @gimp_image_add_layers(%struct._GimpImage* %21, %struct._GList* %22, %struct._GimpLayer* %23, i32 %24, i32 0, i32 0, i32 %call9, i32 %call10, i8* %call11)
  %27 = load %struct._GList*, %struct._GList** %new_layers, align 8
  %call12 = call i32 @g_list_length(%struct._GList* %27)
  %28 = load i32, i32* %index, align 4
  %add = add i32 %28, %call12
  store i32 %add, i32* %index, align 4
  %29 = load %struct._GList*, %struct._GList** %new_layers, align 8
  call void @g_list_free(%struct._GList* %29)
  br label %if.end.18

if.else:                                          ; preds = %for.body
  %30 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %30, 4
  br i1 %cmp, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %31 = load i8*, i8** %uri, align 8
  %call14 = call i8* @file_utils_uri_display_name(i8* %31)
  store i8* %call14, i8** %filename, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp15 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %34 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %35 = bitcast %struct._GimpContainerTreeView* %34 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0)) #7
  %37 = load i8*, i8** %filename, align 8
  %38 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %38, i32 0, i32 2
  %39 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %33, %struct._GObject* %36, i32 2, i8* %call17, i8* %37, i8* %39)
  call void @g_clear_error(%struct._GError** %error)
  %40 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %40)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %41, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %43, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %44)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_drop_component(%struct._GimpContainerTreeView* %tree_view, %struct._GimpImage* %src_image, i32 %component, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_image.addr = alloca %struct._GimpImage*, align 8
  %component.addr = alloca i32, align 4
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpLayer*, align 8
  %index = alloca i32, align 4
  %desc = alloca i8*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GimpImage* %src_image, %struct._GimpImage** %src_image.addr, align 8
  store i32 %component, i32* %component.addr, align 4
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %6 = load i32, i32* %drop_pos.addr, align 4
  %7 = bitcast %struct._GimpLayer** %parent to %struct._GimpViewable**
  %call3 = call i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %4, %struct._GimpViewable* %5, i32 %6, %struct._GimpViewable** %7)
  store i32 %call3, i32* %index, align 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %src_image.addr, align 8
  %9 = load i32, i32* %component.addr, align 4
  %call4 = call %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage* %8, i32 %9, i8* null, %struct._GimpRGB* null)
  store %struct._GimpChannel* %call4, %struct._GimpChannel** %channel, align 8
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %11 = bitcast %struct._GimpChannel* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call i64 @gimp_layer_get_type() #6
  %call8 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %12, %struct._GimpImage* %13, i64 %call7)
  store %struct._GimpItem* %call8, %struct._GimpItem** %new_item, align 8
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %15 = bitcast %struct._GimpChannel* %14 to i8*
  call void @g_object_unref(i8* %15)
  %call9 = call i64 @gimp_channel_type_get_type() #6
  %16 = load i32, i32* %component.addr, align 4
  %call10 = call i32 @gimp_enum_get_value(i64 %call9, i32 %16, i8** null, i8** null, i8** %desc, i8** null)
  %17 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %18 = bitcast %struct._GimpItem* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)) #7
  %20 = load i8*, i8** %desc, align 8
  %call14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call13, i8* %20)
  call void @gimp_object_take_name(%struct._GimpObject* %19, i8* %call14)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %23 = bitcast %struct._GimpItem* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_layer_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpLayer*
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %26 = load i32, i32* %index, align 4
  %call17 = call i32 @gimp_image_add_layer(%struct._GimpImage* %21, %struct._GimpLayer* %24, %struct._GimpLayer* %25, i32 %26, i32 1)
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_drop_pixbuf(%struct._GimpContainerTreeView* %tree_view, %struct._GdkPixbuf* %pixbuf, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  %parent = alloca %struct._GimpLayer*, align 8
  %index = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %6 = load i32, i32* %drop_pos.addr, align 4
  %7 = bitcast %struct._GimpLayer** %parent to %struct._GimpViewable**
  %call3 = call i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %4, %struct._GimpViewable* %5, i32 %6, %struct._GimpViewable** %7)
  store i32 %call3, i32* %index, align 4
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %10)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #7
  %call6 = call %struct._GimpLayer* @gimp_layer_new_from_pixbuf(%struct._GdkPixbuf* %8, %struct._GimpImage* %9, i32 %call4, i8* %call5, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call6, %struct._GimpLayer** %new_layer, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %14 = load i32, i32* %index, align 4
  %call7 = call i32 @gimp_image_add_layer(%struct._GimpImage* %11, %struct._GimpLayer* %12, %struct._GimpLayer* %13, i32 %14, i32 1)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %15)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_set_image(%struct._GimpItemTreeView* %view, %struct._GimpImage* %image) #3 {
entry:
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %0)
  %tobool = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %1)
  %2 = bitcast %struct._GimpImage* %call1 to i8*
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to i8*
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_floating_selection_changed to i8*), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @gimp_layer_tree_view_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call3 = call i64 @gimp_item_tree_view_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call3)
  %7 = bitcast %struct._GTypeClass* %call4 to %struct._GimpItemTreeViewClass*
  %set_image = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %7, i32 0, i32 1
  %8 = load void (%struct._GimpItemTreeView*, %struct._GimpImage*)*, void (%struct._GimpItemTreeView*, %struct._GimpImage*)** %set_image, align 8
  %9 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %8(%struct._GimpItemTreeView* %9, %struct._GimpImage* %10)
  %11 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %11)
  %tobool6 = icmp ne %struct._GimpImage* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call8 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %12)
  %13 = bitcast %struct._GimpImage* %call8 to i8*
  %14 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %15 = bitcast %struct._GimpItemTreeView* %14 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_floating_selection_changed to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  ret void
}

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #1

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #1

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_layer_tree_view_item_new(%struct._GimpImage* %image) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0)) #7
  %call1 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %0, i32 29, i8* %call)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_get_width(%struct._GimpImage* %2)
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i32 @gimp_image_get_height(%struct._GimpImage* %3)
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %4)
  %call5 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %1, i32 %call2, i32 %call3, i32 %call4, i8* null, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call5, %struct._GimpLayer** %new_layer, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %call6 = call i32 @gimp_image_add_layer(%struct._GimpImage* %5, %struct._GimpLayer* %6, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call7 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %7)
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  ret %struct._GimpItem* %10
}

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

declare void @gimp_container_tree_view_add_renderer_cell(%struct._GimpContainerTreeView*, %struct._GtkCellRenderer*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_layer_clicked(%struct._GimpCellRendererViewable* %cell, i8* %path_str, i32 %state, %struct._GimpLayerTreeView* %layer_view) #3 {
entry:
  %cell.addr = alloca %struct._GimpCellRendererViewable*, align 8
  %path_str.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpCellRendererViewable* %cell, %struct._GimpCellRendererViewable** %cell.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
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
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %8 = bitcast %struct._GimpContainerTreeView* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_editor_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpEditor*
  %call6 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %9)
  store %struct._GimpUIManager* %call6, %struct._GimpUIManager** %ui_manager, align 8
  %10 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %call7 = call %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpActionGroup* %call7, %struct._GimpActionGroup** %group, align 8
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model8 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 1
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model8, align 8
  %13 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %model_column_mask = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %14, i32 0, i32 3
  %15 = load i32, i32* %model_column_mask, align 4
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter, i32 %15, %struct._GimpViewRenderer** %renderer, i32 -1)
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool9 = icmp ne %struct._GimpViewRenderer* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.then
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 3
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %19 = bitcast %struct._GimpViewable* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_layer_mask_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %20, %struct._GimpLayerMask** %mask, align 8
  %21 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call13 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %21)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.10
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.10
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %24 = bitcast %struct._GimpViewRenderer* %23 to i8*
  call void @g_object_unref(i8* %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %25 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_mask_clicked(%struct._GimpCellRendererViewable* %cell, i8* %path_str, i32 %state, %struct._GimpLayerTreeView* %layer_view) #3 {
entry:
  %cell.addr = alloca %struct._GimpCellRendererViewable*, align 8
  %path_str.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpCellRendererViewable* %cell, %struct._GimpCellRendererViewable** %cell.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
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
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %8 = bitcast %struct._GimpContainerTreeView* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_editor_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpEditor*
  %call6 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %9)
  store %struct._GimpUIManager* %call6, %struct._GimpUIManager** %ui_manager, align 8
  %10 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %call7 = call %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpActionGroup* %call7, %struct._GimpActionGroup** %group, align 8
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model8 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 1
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model8, align 8
  %13 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %model_column_mask = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %14, i32 0, i32 3
  %15 = load i32, i32* %model_column_mask, align 4
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter, i32 %15, %struct._GimpViewRenderer** %renderer, i32 -1)
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool9 = icmp ne %struct._GimpViewRenderer* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.28

if.then.10:                                       ; preds = %if.then
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 3
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %19 = bitcast %struct._GimpViewable* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_layer_mask_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %20, %struct._GimpLayerMask** %mask, align 8
  %21 = load i32, i32* %state.addr, align 4
  %and = and i32 %21, 8
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.10
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %23 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call15 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %23)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 %lnot.ext)
  br label %if.end.27

if.else:                                          ; preds = %if.then.10
  %24 = load i32, i32* %state.addr, align 4
  %call17 = call i32 @gimp_get_toggle_behavior_mask()
  %and18 = and i32 %24, %call17
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %26 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call21 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %26)
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %call21)
  br label %if.end.26

if.else.22:                                       ; preds = %if.else
  %27 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call23 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %27)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %if.else.22
  %28 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.else.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.14
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %30 = bitcast %struct._GimpViewRenderer* %29 to i8*
  call void @g_object_unref(i8* %30)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  %31 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %31)
  ret void
}

declare void @gimp_dnd_component_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #2

declare void @gimp_dnd_uri_list_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)*, i8*) #1

declare void @gimp_dnd_pixbuf_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)*, i8*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_item_tree_view_get_edit_button(%struct._GimpItemTreeView*) #1

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor*) #1

declare void @gimp_container_view_enable_dnd(%struct._GimpContainerView*, %struct._GtkButton*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager*, i8*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask*) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask*) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_text_layer_set(%struct._GimpTextLayer*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView*, %struct._GimpViewable*, i32, %struct._GimpViewable**) #1

declare %struct._GList* @file_open_layers(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpImage*, i32, i8*, i32, %struct._GimpPlugInProcedure*, i32*, %struct._GError**) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare void @gimp_image_add_layers(%struct._GimpImage*, %struct._GList*, %struct._GimpLayer*, i32, i32, i32, i32, i32, i8*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i32 @g_list_length(%struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_free(i8*) #1

declare %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage*, i32, i8*, %struct._GimpRGB*) #1

declare %struct._GimpItem* @gimp_item_convert(%struct._GimpItem*, %struct._GimpImage*, i64) #1

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #2

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GimpLayer* @gimp_layer_new_from_pixbuf(%struct._GdkPixbuf*, %struct._GimpImage*, i32, i8*, double, i32) #1

declare i32 @gimp_image_base_type_with_alpha(%struct._GimpImage*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_floating_selection_changed(%struct._GimpImage* %image, %struct._GimpLayerTreeView* %layer_view) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %all_layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %4 = bitcast %struct._GimpLayerTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %5, %struct._GimpContainerView** %view, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %6)
  store %struct._GimpLayer* %call4, %struct._GimpLayer** %floating_sel, align 8
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %tobool = icmp ne %struct._GimpLayer* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GimpViewable*
  %call5 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %8, %struct._GimpViewable* %10)
  %11 = bitcast i8* %call5 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %11, %struct._GtkTreeIter** %iter, align 8
  %12 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool6 = icmp ne %struct._GtkTreeIter* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %13 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %13, i32 0, i32 1
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %15 = bitcast %struct._GtkTreeModel* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_tree_store_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTreeStore*
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %18 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %18, i32 0, i32 1
  %19 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %italic_attrs = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %19, i32 0, i32 6
  %20 = load %struct._PangoAttrList*, %struct._PangoAttrList** %italic_attrs, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %16, %struct._GtkTreeIter* %17, i32 2, %struct._PangoAttrList* %20, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.27

if.else:                                          ; preds = %entry
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call10 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %21)
  store %struct._GList* %call10, %struct._GList** %all_layers, align 8
  %22 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %22, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.25, %if.else
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %23, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  %26 = bitcast i8* %25 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %26, %struct._GimpDrawable** %drawable, align 8
  %27 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GimpViewable*
  %call12 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %27, %struct._GimpViewable* %29)
  %30 = bitcast i8* %call12 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %30, %struct._GtkTreeIter** %iter, align 8
  %31 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool13 = icmp ne %struct._GtkTreeIter* %31, null
  br i1 %tobool13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %for.body
  %32 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model15 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %32, i32 0, i32 1
  %33 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model15, align 8
  %34 = bitcast %struct._GtkTreeModel* %33 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_tree_store_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call16)
  %35 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTreeStore*
  %36 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call18 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %37)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %38 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %priv20 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %38, i32 0, i32 1
  %39 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv20, align 8
  %bold_attrs = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %39, i32 0, i32 7
  %40 = load %struct._PangoAttrList*, %struct._PangoAttrList** %bold_attrs, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PangoAttrList* [ null, %cond.true ], [ %40, %cond.false ]
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %35, %struct._GtkTreeIter* %36, i32 2, %struct._PangoAttrList* %cond, i32 -1)
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %41, null
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %for.inc
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %for.inc
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi %struct._GList* [ %43, %cond.true.23 ], [ null, %cond.false.24 ]
  store %struct._GList* %cond26, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %44)
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.end
  ret void
}

declare i8* @gimp_container_view_lookup(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #2

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage*, i32, i32, i32, i8*, double, i32) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_set_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %layer_view = alloca %struct._GimpLayerTreeView*, align 8
  %old_container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerTreeView*
  store %struct._GimpLayerTreeView* %2, %struct._GimpLayerTreeView** %layer_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %3)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %old_container, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %5, i32 0, i32 1
  %6 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %mode_changed_handler = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %6, i32 0, i32 8
  %7 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %mode_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %7)
  %8 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv3 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %8, i32 0, i32 1
  %9 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv3, align 8
  %mode_changed_handler4 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %9, i32 0, i32 8
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %mode_changed_handler4, align 8
  %10 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv5 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %10, i32 0, i32 1
  %11 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv5, align 8
  %opacity_changed_handler = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %11, i32 0, i32 9
  %12 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %opacity_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %12)
  %13 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv6 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %13, i32 0, i32 1
  %14 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv6, align 8
  %opacity_changed_handler7 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %14, i32 0, i32 9
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %opacity_changed_handler7, align 8
  %15 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv8 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %15, i32 0, i32 1
  %16 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv8, align 8
  %lock_alpha_changed_handler = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %16, i32 0, i32 10
  %17 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %lock_alpha_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %17)
  %18 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv9 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %18, i32 0, i32 1
  %19 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv9, align 8
  %lock_alpha_changed_handler10 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %19, i32 0, i32 10
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %lock_alpha_changed_handler10, align 8
  %20 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv11 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %20, i32 0, i32 1
  %21 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv11, align 8
  %mask_changed_handler = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %21, i32 0, i32 11
  %22 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %mask_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %22)
  %23 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv12 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %23, i32 0, i32 1
  %24 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv12, align 8
  %mask_changed_handler13 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %24, i32 0, i32 11
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %mask_changed_handler13, align 8
  %25 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv14 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %25, i32 0, i32 1
  %26 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv14, align 8
  %alpha_changed_handler = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %26, i32 0, i32 12
  %27 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %alpha_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %27)
  %28 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv15 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %28, i32 0, i32 1
  %29 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv15, align 8
  %alpha_changed_handler16 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %29, i32 0, i32 12
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %alpha_changed_handler16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %30, i32 0, i32 4
  %31 = load void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %32 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %33 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void %31(%struct._GimpContainerView* %32, %struct._GimpContainer* %33)
  %34 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool17 = icmp ne %struct._GimpContainer* %34, null
  br i1 %tobool17, label %if.then.18, label %if.end.34

if.then.18:                                       ; preds = %if.end
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %36 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %37 = bitcast %struct._GimpContainerView* %36 to i8*
  %call19 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to void ()*), i8* %37)
  %38 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv20 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %38, i32 0, i32 1
  %39 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv20, align 8
  %mode_changed_handler21 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %39, i32 0, i32 8
  store %struct._GimpTreeHandler* %call19, %struct._GimpTreeHandler** %mode_changed_handler21, align 8
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %41 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %42 = bitcast %struct._GimpContainerView* %41 to i8*
  %call22 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to void ()*), i8* %42)
  %43 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv23 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %43, i32 0, i32 1
  %44 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv23, align 8
  %opacity_changed_handler24 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %44, i32 0, i32 9
  store %struct._GimpTreeHandler* %call22, %struct._GimpTreeHandler** %opacity_changed_handler24, align 8
  %45 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %46 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %47 = bitcast %struct._GimpContainerView* %46 to i8*
  %call25 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to void ()*), i8* %47)
  %48 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv26 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %48, i32 0, i32 1
  %49 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv26, align 8
  %lock_alpha_changed_handler27 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %49, i32 0, i32 10
  store %struct._GimpTreeHandler* %call25, %struct._GimpTreeHandler** %lock_alpha_changed_handler27, align 8
  %50 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %51 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %52 = bitcast %struct._GimpContainerView* %51 to i8*
  %call28 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_mask_changed to void ()*), i8* %52)
  %53 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv29 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %53, i32 0, i32 1
  %54 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv29, align 8
  %mask_changed_handler30 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %54, i32 0, i32 11
  store %struct._GimpTreeHandler* %call28, %struct._GimpTreeHandler** %mask_changed_handler30, align 8
  %55 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %56 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %57 = bitcast %struct._GimpContainerView* %56 to i8*
  %call31 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_alpha_changed to void ()*), i8* %57)
  %58 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv32 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %58, i32 0, i32 1
  %59 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv32, align 8
  %alpha_changed_handler33 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %59, i32 0, i32 12
  store %struct._GimpTreeHandler* %call31, %struct._GimpTreeHandler** %alpha_changed_handler33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.18, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %layer_view = alloca %struct._GimpLayerTreeView*, align 8
  %context_data = alloca %struct.SetContextForeachData, align 8
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
  %call2 = call i64 @gimp_layer_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLayerTreeView*
  store %struct._GimpLayerTreeView* %5, %struct._GimpLayerTreeView** %layer_view, align 8
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 5
  %7 = load void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %7(%struct._GimpContainerView* %8, %struct._GimpContext* %9)
  %10 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %10, i32 0, i32 1
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mask_column = getelementptr inbounds %struct.SetContextForeachData, %struct.SetContextForeachData* %context_data, i32 0, i32 0
  %12 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %12, i32 0, i32 1
  %13 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %model_column_mask = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %13, i32 0, i32 3
  %14 = load i32, i32* %model_column_mask, align 4
  store i32 %14, i32* %mask_column, align 4
  %context4 = getelementptr inbounds %struct.SetContextForeachData, %struct.SetContextForeachData* %context_data, i32 0, i32 1
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpContext* %15, %struct._GimpContext** %context4, align 8
  %16 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model5 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %16, i32 0, i32 1
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model5, align 8
  %18 = bitcast %struct.SetContextForeachData* %context_data to i8*
  call void @gtk_tree_model_foreach(%struct._GtkTreeModel* %17, i32 (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i8*)* @gimp_layer_tree_view_set_context_foreach, i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_layer_tree_view_insert_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %parent_insert_data, i32 %index) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %parent_insert_data.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %layer_view = alloca %struct._GimpLayerTreeView*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %parent_insert_data, i8** %parent_insert_data.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerTreeView*
  store %struct._GimpLayerTreeView* %2, %struct._GimpLayerTreeView** %layer_view, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 7
  %4 = load i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)*, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %7 = load i8*, i8** %parent_insert_data.addr, align 8
  %8 = load i32, i32* %index.addr, align 4
  %call2 = call i8* %4(%struct._GimpContainerView* %5, %struct._GimpViewable* %6, i8* %7, i32 %8)
  %9 = bitcast i8* %call2 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %9, %struct._GtkTreeIter** %iter, align 8
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %11 = bitcast %struct._GimpViewable* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_layer_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpLayer*
  store %struct._GimpLayer* %12, %struct._GimpLayer** %layer, align 8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %call7 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %15)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_layer_tree_view_alpha_update(%struct._GimpLayerTreeView* %16, %struct._GtkTreeIter* %17, %struct._GimpLayer* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %20 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_layer_tree_view_mask_update(%struct._GimpLayerTreeView* %19, %struct._GtkTreeIter* %20, %struct._GimpLayer* %21)
  %22 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %23 = bitcast %struct._GtkTreeIter* %22 to i8*
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_tree_view_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %item, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %item.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %layer_view = alloca %struct._GimpLayerTreeView*, align 8
  %success = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %item, %struct._GimpViewable** %item.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %4 = bitcast %struct._GimpContainerView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_layer_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLayerTreeView*
  store %struct._GimpLayerTreeView* %5, %struct._GimpLayerTreeView** %layer_view, align 8
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 1
  %7 = load i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %10 = load i8*, i8** %insert_data.addr, align 8
  %call4 = call i32 %7(%struct._GimpContainerView* %8, %struct._GimpViewable* %9, i8* %10)
  store i32 %call4, i32* %success, align 4
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %11, null
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %13 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %14 = load i8*, i8** %insert_data.addr, align 8
  %15 = bitcast i8* %14 to %struct._GtkTreeIter*
  call void @gimp_layer_tree_view_update_borders(%struct._GimpLayerTreeView* %13, %struct._GtkTreeIter* %15)
  %16 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %18 = bitcast %struct._GimpViewable* %17 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_layer_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call7)
  %19 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpLayer*
  call void @gimp_layer_tree_view_update_options(%struct._GimpLayerTreeView* %16, %struct._GimpLayer* %19)
  %20 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %22 = bitcast %struct._GimpViewable* %21 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_layer_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call9)
  %23 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpLayer*
  call void @gimp_layer_tree_view_update_menu(%struct._GimpLayerTreeView* %20, %struct._GimpLayer* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %24 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %if.end
  %25 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %26 = bitcast %struct._GimpViewable* %25 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_layer_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call12)
  %27 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpLayer*
  %call14 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %27)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %lor.lhs.false, %if.end
  %28 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call17 = call %struct._GtkWidget* @gimp_item_tree_view_get_edit_button(%struct._GimpItemTreeView* %28)
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %call17, i32 0)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %lor.lhs.false
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %29 = load i32, i32* %success, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_set_view_size(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %layer_view = alloca %struct._GimpLayerTreeView*, align 8
  %size_data = alloca %struct.SetSizeForeachData, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %6 = bitcast %struct._GimpContainerView* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_layer_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLayerTreeView*
  store %struct._GimpLayerTreeView* %7, %struct._GimpLayerTreeView** %layer_view, align 8
  %8 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %8, i32 0, i32 1
  %9 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %model_column_mask = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %9, i32 0, i32 3
  %10 = load i32, i32* %model_column_mask, align 4
  %mask_column = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %size_data, i32 0, i32 0
  store i32 %10, i32* %mask_column, align 4
  %11 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %border_width = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %size_data, i32 0, i32 2
  %call4 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %11, i32* %border_width)
  %view_size = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %size_data, i32 0, i32 1
  store i32 %call4, i32* %view_size, align 4
  %12 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model5 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %12, i32 0, i32 1
  %13 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model5, align 8
  %14 = bitcast %struct.SetSizeForeachData* %size_data to i8*
  call void @gtk_tree_model_foreach(%struct._GtkTreeModel* %13, i32 (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i8*)* @gimp_layer_tree_view_set_view_size_foreach, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %15, i32 0, i32 13
  %16 = load void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)** %set_view_size, align 8
  %17 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void %16(%struct._GimpContainerView* %17)
  ret void
}

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler*) #1

declare %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer*, i8*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_layer_signal_handler(%struct._GimpLayer* %layer, %struct._GimpLayerTreeView* %view) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %active_layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpLayerTreeView* %view, %struct._GimpLayerTreeView** %view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  %3 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpLayerTreeView* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %6, i32 0, i32 5
  %7 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %8 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %8)
  %call3 = call %struct._GimpItem* %7(%struct._GimpImage* %call2)
  %9 = bitcast %struct._GimpItem* %call3 to %struct._GimpLayer*
  store %struct._GimpLayer* %9, %struct._GimpLayer** %active_layer, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %cmp = icmp eq %struct._GimpLayer* %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_tree_view_update_options(%struct._GimpLayerTreeView* %12, %struct._GimpLayer* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_mask_changed(%struct._GimpLayer* %layer, %struct._GimpLayerTreeView* %layer_view) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_viewable_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpViewable*
  %call4 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %3, %struct._GimpViewable* %6)
  %7 = bitcast i8* %call4 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %7, %struct._GtkTreeIter** %iter, align 8
  %8 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_tree_view_mask_update(%struct._GimpLayerTreeView* %9, %struct._GtkTreeIter* %10, %struct._GimpLayer* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_alpha_changed(%struct._GimpLayer* %layer, %struct._GimpLayerTreeView* %layer_view) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %5 = bitcast %struct._GimpLayer* %4 to %struct._GimpViewable*
  %call2 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %3, %struct._GimpViewable* %5)
  %6 = bitcast i8* %call2 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %6, %struct._GtkTreeIter** %iter, align 8
  %7 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %7, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %9 = bitcast %struct._GimpContainerView* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_tree_view_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %10, %struct._GimpItemTreeView** %item_view, align 8
  %11 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %12 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_tree_view_alpha_update(%struct._GimpLayerTreeView* %11, %struct._GtkTreeIter* %12, %struct._GimpLayer* %13)
  %14 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call5 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %14)
  %call6 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %call5)
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %cmp = icmp eq %struct._GimpLayer* %call6, %15
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %16 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %17 = bitcast %struct._GimpContainerView* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_container_view_interface_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpContainerView*
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_viewable_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpViewable*
  %call12 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %18, %struct._GimpViewable* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_update_options(%struct._GimpLayerTreeView* %view, %struct._GimpLayer* %layer) #3 {
entry:
  %view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  store %struct._GimpLayerTreeView* %view, %struct._GimpLayerTreeView** %view.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %0, i32 0, i32 1
  %1 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %paint_mode_menu = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %1, i32 0, i32 0
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %4 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %5 = bitcast %struct._GimpLayerTreeView* %4 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %3, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_paint_mode_menu_callback to i8*), i8* %5)
  %6 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %6, i32 0, i32 1
  %7 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv1, align 8
  %paint_mode_menu2 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %7, i32 0, i32 0
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu2, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_int_combo_box_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpIntComboBox*
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call5 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %11)
  %call6 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %10, i32 %call5)
  %12 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv7 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %12, i32 0, i32 1
  %13 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv7, align 8
  %paint_mode_menu8 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %paint_mode_menu8, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %17 = bitcast %struct._GimpLayerTreeView* %16 to i8*
  %call9 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_paint_mode_menu_callback to i8*), i8* %17)
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call10 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %18)
  %19 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %19, i32 0, i32 1
  %20 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv11, align 8
  %lock_alpha_toggle = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_toggle_button_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call12)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkToggleButton*
  %call14 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %23)
  %cmp = icmp ne i32 %call10, %call14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %24, i32 0, i32 1
  %25 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv15, align 8
  %lock_alpha_toggle16 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %25, i32 0, i32 2
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle16, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %29 = bitcast %struct._GimpLayerTreeView* %28 to i8*
  %call17 = call i32 @g_signal_handlers_block_matched(i8* %27, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_lock_alpha_button_toggled to i8*), i8* %29)
  %30 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv18 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %30, i32 0, i32 1
  %31 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv18, align 8
  %lock_alpha_toggle19 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %31, i32 0, i32 2
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle19, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_toggle_button_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkToggleButton*
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call22 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %35)
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %34, i32 %call22)
  %36 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv23 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %36, i32 0, i32 1
  %37 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv23, align 8
  %lock_alpha_toggle24 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %37, i32 0, i32 2
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle24, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %41 = bitcast %struct._GimpLayerTreeView* %40 to i8*
  %call25 = call i32 @g_signal_handlers_unblock_matched(i8* %39, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_lock_alpha_button_toggled to i8*), i8* %41)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %42 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv26 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %42, i32 0, i32 1
  %43 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv26, align 8
  %lock_alpha_toggle27 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %43, i32 0, i32 2
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %lock_alpha_toggle27, align 8
  %45 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call28 = call i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer* %45)
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %44, i32 %call28)
  %46 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call29 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %46)
  %mul = fmul double %call29, 1.000000e+02
  %47 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv30 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %47, i32 0, i32 1
  %48 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv30, align 8
  %opacity_adjustment = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %48, i32 0, i32 1
  %49 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_adjustment, align 8
  %call31 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %49)
  %cmp32 = fcmp une double %mul, %call31
  br i1 %cmp32, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %if.end
  %50 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv34 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %50, i32 0, i32 1
  %51 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv34, align 8
  %opacity_adjustment35 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %51, i32 0, i32 1
  %52 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_adjustment35, align 8
  %53 = bitcast %struct._GtkAdjustment* %52 to i8*
  %54 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %55 = bitcast %struct._GimpLayerTreeView* %54 to i8*
  %call36 = call i32 @g_signal_handlers_block_matched(i8* %53, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_opacity_scale_changed to i8*), i8* %55)
  %56 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv37 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %56, i32 0, i32 1
  %57 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv37, align 8
  %opacity_adjustment38 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %57, i32 0, i32 1
  %58 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_adjustment38, align 8
  %59 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call39 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %59)
  %mul40 = fmul double %call39, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %58, double %mul40)
  %60 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv41 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %60, i32 0, i32 1
  %61 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv41, align 8
  %opacity_adjustment42 = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %61, i32 0, i32 1
  %62 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %opacity_adjustment42, align 8
  %63 = bitcast %struct._GtkAdjustment* %62 to i8*
  %64 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %65 = bitcast %struct._GimpLayerTreeView* %64 to i8*
  %call43 = call i32 @g_signal_handlers_unblock_matched(i8* %63, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_opacity_scale_changed to i8*), i8* %65)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.33, %if.end
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_paint_mode_menu_callback(%struct._GtkWidget* %widget, %struct._GimpLayerTreeView* %view) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mode = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpLayerTreeView* %view, %struct._GimpLayerTreeView** %view.addr, align 8
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %2)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %5 = bitcast %struct._GimpLayerTreeView* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %7 = bitcast %struct._GTypeClass* %6 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %7, i32 0, i32 5
  %8 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpItem* %8(%struct._GimpImage* %9)
  %10 = bitcast %struct._GimpItem* %call3 to %struct._GimpLayer*
  store %struct._GimpLayer* %10, %struct._GimpLayer** %layer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool4 = icmp ne %struct._GimpLayer* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end.32

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_int_combo_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpIntComboBox*
  %call8 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %14, i32* %mode)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.then.5
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call10 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %15)
  %16 = load i32, i32* %mode, align 4
  %cmp = icmp ne i32 %call10, %16
  br i1 %cmp, label %if.then.11, label %if.end.31

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %push_undo, align 4
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i64 @gimp_item_undo_get_type() #6
  %call13 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %17, i64 %call12, i32 55)
  store %struct._GimpUndo* %call13, %struct._GimpUndo** %undo, align 8
  %18 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool14 = icmp ne %struct._GimpUndo* %18, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.22

land.lhs.true.15:                                 ; preds = %if.then.11
  %19 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %20 = bitcast %struct._GimpUndo* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_undo_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %21, i32 0, i32 1
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %24 = bitcast %struct._GimpLayer* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %cmp20 = icmp eq %struct._GimpItem* %22, %25
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.15
  store i32 0, i32* %push_undo, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.15, %if.then.11
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %27 = bitcast %struct._GimpLayer* %26 to i8*
  %28 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %29 = bitcast %struct._GimpLayerTreeView* %28 to i8*
  %call23 = call i32 @g_signal_handlers_block_matched(i8* %27, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to i8*), i8* %29)
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %31 = load i32, i32* %mode, align 4
  %32 = load i32, i32* %push_undo, align 4
  call void @gimp_layer_set_mode(%struct._GimpLayer* %30, i32 %31, i32 %32)
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %34 = bitcast %struct._GimpLayer* %33 to i8*
  %35 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %36 = bitcast %struct._GimpLayerTreeView* %35 to i8*
  %call24 = call i32 @g_signal_handlers_unblock_matched(i8* %34, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to i8*), i8* %36)
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %37)
  %38 = load i32, i32* %push_undo, align 4
  %tobool25 = icmp ne i32 %38, 0
  br i1 %tobool25, label %if.end.30, label %if.then.26

if.then.26:                                       ; preds = %if.end.22
  %39 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %40 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %41 = bitcast %struct._GimpLayerTreeView* %40 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_container_view_interface_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call27)
  %42 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpContainerView*
  %call29 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %42)
  call void @gimp_undo_refresh_preview(%struct._GimpUndo* %39, %struct._GimpContext* %call29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end.22
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %if.then.5
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  ret void
}

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_lock_alpha_button_toggled(%struct._GtkWidget* %widget, %struct._GimpLayerTreeView* %view) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %lock_alpha = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpLayerTreeView* %view, %struct._GimpLayerTreeView** %view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %2)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpLayerTreeView* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %6, i32 0, i32 5
  %7 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpItem* %7(%struct._GimpImage* %8)
  %9 = bitcast %struct._GimpItem* %call3 to %struct._GimpLayer*
  store %struct._GimpLayer* %9, %struct._GimpLayer** %layer, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %10, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toggle_button_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToggleButton*
  %call6 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %13)
  store i32 %call6, i32* %lock_alpha, align 4
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call7 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %14)
  %15 = load i32, i32* %lock_alpha, align 4
  %cmp = icmp ne i32 %call7, %15
  br i1 %cmp, label %if.then.8, label %if.end.20

if.then.8:                                        ; preds = %if.then
  store i32 1, i32* %push_undo, align 4
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i64 @gimp_item_undo_get_type() #6
  %call10 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %16, i64 %call9, i32 57)
  store %struct._GimpUndo* %call10, %struct._GimpUndo** %undo, align 8
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool11 = icmp ne %struct._GimpUndo* %17, null
  br i1 %tobool11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.8
  %18 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %19 = bitcast %struct._GimpUndo* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_undo_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %20, i32 0, i32 1
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %cmp16 = icmp eq %struct._GimpItem* %21, %24
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %land.lhs.true
  store i32 0, i32* %push_undo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %land.lhs.true, %if.then.8
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %26 = bitcast %struct._GimpLayer* %25 to i8*
  %27 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %28 = bitcast %struct._GimpLayerTreeView* %27 to i8*
  %call18 = call i32 @g_signal_handlers_block_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to i8*), i8* %28)
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %30 = load i32, i32* %lock_alpha, align 4
  %31 = load i32, i32* %push_undo, align 4
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %29, i32 %30, i32 %31)
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %33 = bitcast %struct._GimpLayer* %32 to i8*
  %34 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %35 = bitcast %struct._GimpLayerTreeView* %34 to i8*
  %call19 = call i32 @g_signal_handlers_unblock_matched(i8* %33, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to i8*), i8* %35)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %36)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer*) #1

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_opacity_scale_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpLayerTreeView* %view) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %opacity = alloca double, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpLayerTreeView* %view, %struct._GimpLayerTreeView** %view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %2)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpLayerTreeView* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %6, i32 0, i32 5
  %7 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpItem* %7(%struct._GimpImage* %8)
  %9 = bitcast %struct._GimpItem* %call3 to %struct._GimpLayer*
  store %struct._GimpLayer* %9, %struct._GimpLayer** %layer, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %10, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call4 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %11)
  %div = fdiv double %call4, 1.000000e+02
  store double %div, double* %opacity, align 8
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %12)
  %13 = load double, double* %opacity, align 8
  %cmp = fcmp une double %call5, %13
  br i1 %cmp, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %if.then
  store i32 1, i32* %push_undo, align 4
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call i64 @gimp_item_undo_get_type() #6
  %call8 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %14, i64 %call7, i32 56)
  store %struct._GimpUndo* %call8, %struct._GimpUndo** %undo, align 8
  %15 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool9 = icmp ne %struct._GimpUndo* %15, null
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.6
  %16 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %17 = bitcast %struct._GimpUndo* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_undo_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %18, i32 0, i32 1
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %21 = bitcast %struct._GimpLayer* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %cmp14 = icmp eq %struct._GimpItem* %19, %22
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  store i32 0, i32* %push_undo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true, %if.then.6
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %24 = bitcast %struct._GimpLayer* %23 to i8*
  %25 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %26 = bitcast %struct._GimpLayerTreeView* %25 to i8*
  %call16 = call i32 @g_signal_handlers_block_matched(i8* %24, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to i8*), i8* %26)
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %28 = load double, double* %opacity, align 8
  %29 = load i32, i32* %push_undo, align 4
  call void @gimp_layer_set_opacity(%struct._GimpLayer* %27, double %28, i32 %29)
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %31 = bitcast %struct._GimpLayer* %30 to i8*
  %32 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %33 = bitcast %struct._GimpLayerTreeView* %32 to i8*
  %call17 = call i32 @g_signal_handlers_unblock_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpLayer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_layer_signal_handler to i8*), i8* %33)
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %34)
  %35 = load i32, i32* %push_undo, align 4
  %tobool18 = icmp ne i32 %35, 0
  br i1 %tobool18, label %if.end.23, label %if.then.19

if.then.19:                                       ; preds = %if.end
  %36 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %37 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %38 = bitcast %struct._GimpLayerTreeView* %37 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_container_view_interface_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call20)
  %39 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpContainerView*
  %call22 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %39)
  call void @gimp_undo_refresh_preview(%struct._GimpUndo* %36, %struct._GimpContext* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare void @gimp_layer_set_mode(%struct._GimpLayer*, i32, i32) #1

declare void @gimp_undo_refresh_preview(%struct._GimpUndo*, %struct._GimpContext*) #1

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #1

declare void @gimp_layer_set_opacity(%struct._GimpLayer*, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_mask_update(%struct._GimpLayerTreeView* %layer_view, %struct._GtkTreeIter* %iter, %struct._GimpLayer* %layer) #3 {
entry:
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %mask_visible = alloca i32, align 4
  %closure = alloca %struct._GClosure*, align 8
  %view_size = alloca i32, align 4
  %border_width = alloca i32, align 4
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %4 = bitcast %struct._GimpLayerTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %5, %struct._GimpContainerTreeView** %tree_view, align 8
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %renderer, align 8
  store i32 0, i32* %mask_visible, align 4
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call4 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %6)
  store %struct._GimpLayerMask* %call4, %struct._GimpLayerMask** %mask, align 8
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call5 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %8, i32* %border_width)
  store i32 %call5, i32* %view_size, align 4
  store i32 1, i32* %mask_visible, align 4
  %9 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call6 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %9)
  %10 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %11 = bitcast %struct._GimpLayerMask* %10 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i32, i32* %view_size, align 4
  %15 = load i32, i32* %border_width, align 4
  %call7 = call %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext* %call6, i64 %13, i32 %14, i32 %15, i32 0)
  store %struct._GimpViewRenderer* %call7, %struct._GimpViewRenderer** %renderer, align 8
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %17 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %18 = bitcast %struct._GimpLayerMask* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  call void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer* %16, %struct._GimpViewable* %19)
  %20 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %21 = bitcast %struct._GimpViewRenderer* %20 to i8*
  %22 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %23 = bitcast %struct._GimpLayerTreeView* %22 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_renderer_update to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %25 = bitcast %struct._GimpLayerTreeView* %24 to i8*
  %call11 = call %struct._GClosure* @g_cclosure_new(void ()* bitcast (void (%struct._GimpLayerMask*, %struct._GimpLayerTreeView*)* @gimp_layer_tree_view_mask_callback to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null)
  store %struct._GClosure* %call11, %struct._GClosure** %closure, align 8
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %27 = bitcast %struct._GimpViewRenderer* %26 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %29 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_object_watch_closure(%struct._GObject* %28, %struct._GClosure* %29)
  %30 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %31 = bitcast %struct._GimpLayerMask* %30 to i8*
  %32 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  %call13 = call i64 @g_signal_connect_closure(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._GClosure* %32, i32 0)
  %33 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %34 = bitcast %struct._GimpLayerMask* %33 to i8*
  %35 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  %call14 = call i64 @g_signal_connect_closure(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), %struct._GClosure* %35, i32 0)
  %36 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %37 = bitcast %struct._GimpLayerMask* %36 to i8*
  %38 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  %call15 = call i64 @g_signal_connect_closure(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), %struct._GClosure* %38, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %39 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %39, i32 0, i32 1
  %40 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %41 = bitcast %struct._GtkTreeModel* %40 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_tree_store_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call16)
  %42 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTreeStore*
  %43 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %44 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %44, i32 0, i32 1
  %45 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %model_column_mask = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %45, i32 0, i32 3
  %46 = load i32, i32* %model_column_mask, align 4
  %47 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %48 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %priv18 = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %48, i32 0, i32 1
  %49 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv18, align 8
  %model_column_mask_visible = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %49, i32 0, i32 4
  %50 = load i32, i32* %model_column_mask_visible, align 4
  %51 = load i32, i32* %mask_visible, align 4
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %42, %struct._GtkTreeIter* %43, i32 %46, %struct._GimpViewRenderer* %47, i32 %50, i32 %51, i32 -1)
  %52 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %53 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gimp_layer_tree_view_update_borders(%struct._GimpLayerTreeView* %52, %struct._GtkTreeIter* %53)
  %54 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool19 = icmp ne %struct._GimpViewRenderer* %54, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %55 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %55)
  %56 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %57 = bitcast %struct._GimpViewRenderer* %56 to i8*
  call void @g_object_unref(i8* %57)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end
  ret void
}

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext*, i64, i32, i32, i32) #1

declare void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer*, %struct._GimpViewable*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_renderer_update(%struct._GimpViewRenderer* %renderer, %struct._GimpLayerTreeView* %layer_view) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %4 = bitcast %struct._GimpLayerTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %5, %struct._GimpContainerTreeView** %tree_view, align 8
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 3
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %8 = bitcast %struct._GimpViewable* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_layer_mask_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %9, %struct._GimpLayerMask** %mask, align 8
  %10 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %11 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call6 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %11)
  %12 = bitcast %struct._GimpLayer* %call6 to %struct._GimpViewable*
  %call7 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %10, %struct._GimpViewable* %12)
  %13 = bitcast i8* %call7 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %13, %struct._GtkTreeIter** %iter, align 8
  %14 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %15, i32 0, i32 1
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %call8 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %16, %struct._GtkTreeIter* %17)
  store %struct._GtkTreePath* %call8, %struct._GtkTreePath** %path, align 8
  %18 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model9 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %18, i32 0, i32 1
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model9, align 8
  %20 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  call void @gtk_tree_model_row_changed(%struct._GtkTreeModel* %19, %struct._GtkTreePath* %20, %struct._GtkTreeIter* %21)
  %22 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GClosure* @g_cclosure_new(void ()*, i8*, void (i8*, %struct._GClosure*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_mask_callback(%struct._GimpLayerMask* %mask, %struct._GimpLayerTreeView* %layer_view) #3 {
entry:
  %mask.addr = alloca %struct._GimpLayerMask*, align 8
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpLayerMask* %mask, %struct._GimpLayerMask** %mask.addr, align 8
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %call2 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %4)
  %5 = bitcast %struct._GimpLayer* %call2 to %struct._GimpViewable*
  %call3 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %3, %struct._GimpViewable* %5)
  %6 = bitcast i8* %call3 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %6, %struct._GtkTreeIter** %iter, align 8
  %7 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %8 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  call void @gimp_layer_tree_view_update_borders(%struct._GimpLayerTreeView* %7, %struct._GtkTreeIter* %8)
  ret void
}

declare void @g_object_watch_closure(%struct._GObject*, %struct._GClosure*) #1

declare i64 @g_signal_connect_closure(i8*, i8*, %struct._GClosure*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_update_borders(%struct._GimpLayerTreeView* %layer_view, %struct._GtkTreeIter* %iter) #3 {
entry:
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %layer_renderer = alloca %struct._GimpViewRenderer*, align 8
  %mask_renderer = alloca %struct._GimpViewRenderer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %layer_type = alloca i32, align 4
  %mask_color = alloca i32, align 4
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %mask, align 8
  store i32 0, i32* %layer_type, align 4
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %6 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %6, i32 0, i32 1
  %7 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %model_column_mask = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %7, i32 0, i32 3
  %8 = load i32, i32* %model_column_mask, align 4
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %5, i32 0, %struct._GimpViewRenderer** %layer_renderer, i32 %8, %struct._GimpViewRenderer** %mask_renderer, i32 -1)
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %mask_renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %mask_renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 3
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %12 = bitcast %struct._GimpViewable* %11 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_layer_mask_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call2)
  %13 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %13, %struct._GimpLayerMask** %mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool4 = icmp ne %struct._GimpLayerMask* %14, null
  br i1 %tobool4, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool5 = icmp ne %struct._GimpLayerMask* %15, null
  br i1 %tobool5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %16 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call6 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %16)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %layer_type, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %lor.lhs.false
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %layer_renderer, align 8
  %18 = load i32, i32* %layer_type, align 4
  call void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer* %17, i32 %18)
  %19 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool10 = icmp ne %struct._GimpLayerMask* %19, null
  br i1 %tobool10, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %if.end.9
  store i32 0, i32* %mask_color, align 4
  %20 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call12 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.11
  store i32 3, i32* %mask_color, align 4
  br label %if.end.24

if.else:                                          ; preds = %if.then.11
  %21 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call15 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %21)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %if.else
  store i32 2, i32* %mask_color, align 4
  br label %if.end.23

if.else.18:                                       ; preds = %if.else
  %22 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call19 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %22)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.18
  store i32 1, i32* %mask_color, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %mask_renderer, align 8
  %24 = load i32, i32* %mask_color, align 4
  call void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer* %23, i32 %24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.9
  %25 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %layer_renderer, align 8
  %tobool26 = icmp ne %struct._GimpViewRenderer* %25, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %26 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %layer_renderer, align 8
  %27 = bitcast %struct._GimpViewRenderer* %26 to i8*
  call void @g_object_unref(i8* %27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %mask_renderer, align 8
  %tobool29 = icmp ne %struct._GimpViewRenderer* %28, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %mask_renderer, align 8
  %30 = bitcast %struct._GimpViewRenderer* %29 to i8*
  call void @g_object_unref(i8* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  ret void
}

declare void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer*) #1

declare %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_row_changed(%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*) #1

declare void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_alpha_update(%struct._GimpLayerTreeView* %view, %struct._GtkTreeIter* %iter, %struct._GimpLayer* %layer) #3 {
entry:
  %view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GimpLayerTreeView* %view, %struct._GimpLayerTreeView** %view.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_tree_store_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTreeStore*
  %7 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_drawable_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawable*
  %call6 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpLayerTreeView, %struct._GimpLayerTreeView* %11, i32 0, i32 1
  %12 = load %struct._GimpLayerTreeViewPriv*, %struct._GimpLayerTreeViewPriv** %priv, align 8
  %bold_attrs = getelementptr inbounds %struct._GimpLayerTreeViewPriv, %struct._GimpLayerTreeViewPriv* %12, i32 0, i32 7
  %13 = load %struct._PangoAttrList*, %struct._PangoAttrList** %bold_attrs, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._PangoAttrList* [ null, %cond.true ], [ %13, %cond.false ]
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %6, %struct._GtkTreeIter* %7, i32 2, %struct._PangoAttrList* %cond, i32 -1)
  ret void
}

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare void @gtk_tree_model_foreach(%struct._GtkTreeModel*, i32 (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_tree_view_set_context_foreach(%struct._GtkTreeModel* %model, %struct._GtkTreePath* %path, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %context_data = alloca %struct.SetContextForeachData*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SetContextForeachData*
  store %struct.SetContextForeachData* %1, %struct.SetContextForeachData** %context_data, align 8
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %4 = load %struct.SetContextForeachData*, %struct.SetContextForeachData** %context_data, align 8
  %mask_column = getelementptr inbounds %struct.SetContextForeachData, %struct.SetContextForeachData* %4, i32 0, i32 0
  %5 = load i32, i32* %mask_column, align 4
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %3, i32 %5, %struct._GimpViewRenderer** %renderer, i32 -1)
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %8 = load %struct.SetContextForeachData*, %struct.SetContextForeachData** %context_data, align 8
  %context = getelementptr inbounds %struct.SetContextForeachData, %struct.SetContextForeachData* %8, i32 0, i32 1
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %7, %struct._GimpContext* %9)
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %11 = bitcast %struct._GimpViewRenderer* %10 to i8*
  call void @g_object_unref(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_tree_view_update_menu(%struct._GimpLayerTreeView* %layer_view, %struct._GimpLayer* %layer) #3 {
entry:
  %layer_view.addr = alloca %struct._GimpLayerTreeView*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpLayerTreeView* %layer_view, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  %0 = load %struct._GimpLayerTreeView*, %struct._GimpLayerTreeView** %layer_view.addr, align 8
  %1 = bitcast %struct._GimpLayerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %2)
  store %struct._GimpUIManager* %call2, %struct._GimpUIManager** %ui_manager, align 8
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %call3 = call %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpActionGroup* %call3, %struct._GimpActionGroup** %group, align 8
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call4 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %4)
  store %struct._GimpLayerMask* %call4, %struct._GimpLayerMask** %mask, align 8
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %7 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call5 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 %land.ext)
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %10 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool7 = icmp ne %struct._GimpLayerMask* %10, null
  br i1 %tobool7, label %land.rhs.8, label %land.end.11

land.rhs.8:                                       ; preds = %land.end
  %11 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call9 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %11)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.8, %land.end
  %12 = phi i1 [ false, %land.end ], [ %lnot, %land.rhs.8 ]
  %land.ext12 = zext i1 %12 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %land.ext12)
  %13 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %14 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool13 = icmp ne %struct._GimpLayerMask* %14, null
  br i1 %tobool13, label %land.rhs.14, label %land.end.17

land.rhs.14:                                      ; preds = %land.end.11
  %15 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call15 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %15)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.14, %land.end.11
  %16 = phi i1 [ false, %land.end.11 ], [ %tobool16, %land.rhs.14 ]
  %land.ext18 = zext i1 %16 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 %land.ext18)
  ret void
}

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_tree_view_set_view_size_foreach(%struct._GtkTreeModel* %model, %struct._GtkTreePath* %path, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %size_data = alloca %struct.SetSizeForeachData*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SetSizeForeachData*
  store %struct.SetSizeForeachData* %1, %struct.SetSizeForeachData** %size_data, align 8
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %4 = load %struct.SetSizeForeachData*, %struct.SetSizeForeachData** %size_data, align 8
  %mask_column = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %4, i32 0, i32 0
  %5 = load i32, i32* %mask_column, align 4
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %3, i32 %5, %struct._GimpViewRenderer** %renderer, i32 -1)
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %8 = load %struct.SetSizeForeachData*, %struct.SetSizeForeachData** %size_data, align 8
  %view_size = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %8, i32 0, i32 1
  %9 = load i32, i32* %view_size, align 4
  %10 = load %struct.SetSizeForeachData*, %struct.SetSizeForeachData** %size_data, align 8
  %border_width = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %10, i32 0, i32 2
  %11 = load i32, i32* %border_width, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %7, i32 %9, i32 %11)
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %13 = bitcast %struct._GimpViewRenderer* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare void @gimp_view_renderer_set_size(%struct._GimpViewRenderer*, i32, i32) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_container_tree_store_columns_add(i64*, i32*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare %struct._GtkWidget* @gimp_paint_mode_menu_new(i32, i32) #1

declare void @gimp_item_tree_view_add_options(%struct._GimpItemTreeView*, i8*, %struct._GtkWidget*) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_item_tree_view_get_lock_box(%struct._GimpItemTreeView*) #1

declare %struct._GtkWidget* @gtk_toggle_button_new() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._PangoAttribute* @pango_attr_style_new(i32) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare %struct._PangoAttribute* @pango_attr_weight_new(i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
