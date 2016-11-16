; ModuleID = './app/display/gimpcursorview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDocked = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
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
%struct._GimpUIManager = type opaque
%struct._GimpCursorViewClass = type { %struct._GimpEditorClass }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
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
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpCursorView = type { %struct._GimpEditor, %struct._GimpCursorViewPriv* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpCursorViewPriv = type { %struct._GimpEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GimpContext*, %struct._GimpDisplayShell*, %struct._GimpImage*, i32 }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpColorFrame = type { %struct._GimpFrame, i32, i32, %struct._GimpRGB, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*], %struct._PangoLayout* }
%struct._GimpFrame = type { %struct._GtkFrame }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._PangoLayout = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpSessionInfoAux = type { i8*, i8* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_cursor_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpCursorView\00", align 1
@gimp_cursor_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_cursor_view_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_cursor_view_new = private unnamed_addr constant [21 x i8] c"gimp_cursor_view_new\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"<CursorInfo>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"/cursor-info-popup\00", align 1
@__func__.gimp_cursor_view_set_sample_merged = private unnamed_addr constant [35 x i8] c"gimp_cursor_view_set_sample_merged\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"GIMP_IS_CURSOR_VIEW (view)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"sample-merged\00", align 1
@__func__.gimp_cursor_view_get_sample_merged = private unnamed_addr constant [35 x i8] c"gimp_cursor_view_get_sample_merged\00", align 1
@__func__.gimp_cursor_view_update_cursor = private unnamed_addr constant [31 x i8] c"gimp_cursor_view_update_cursor\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__func__.gimp_cursor_view_clear_cursor = private unnamed_addr constant [30 x i8] c"gimp_cursor_view_clear_cursor\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@gimp_cursor_view_parent_class = internal global i8* null, align 8
@GimpCursorView_private_offset = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"gimpcursorview.c\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"content-spacing\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Pixels\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Units\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Selection Bounding Box\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"_Sample Merged\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"frame-1-mode\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"frame-2-mode\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"display-changed\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"image-changed\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"notify::unit\00", align 1
@__func__.gimp_cursor_view_image_changed = private unnamed_addr constant [31 x i8] c"gimp_cursor_view_image_changed\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"mask-changed\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"%%.%df %s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cursor_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_cursor_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_cursor_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_editor_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_cursor_view_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCursorView*)* @gimp_cursor_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_cursor_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_cursor_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_cursor_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_cursor_view_parent_class, align 8
  %1 = load i32, i32* @GimpCursorView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCursorView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCursorViewClass*
  call void @gimp_cursor_view_class_init(%struct._GimpCursorViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_init(%struct._GimpCursorView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %content_spacing = alloca i32, align 4
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  %0 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %1 = bitcast %struct._GimpCursorView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cursor_view_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpCursorViewPriv*
  %3 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %3, i32 0, i32 1
  store %struct._GimpCursorViewPriv* %2, %struct._GimpCursorViewPriv** %priv, align 8
  %4 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %4, i32 0, i32 1
  %5 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv2, align 8
  %sample_merged = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %5, i32 0, i32 14
  store i32 1, i32* %sample_merged, align 4
  %6 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %6, i32 0, i32 1
  %7 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv3, align 8
  %context = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %7, i32 0, i32 15
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %8 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %8, i32 0, i32 1
  %9 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv4, align 8
  %shell = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %9, i32 0, i32 16
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  %10 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %10, i32 0, i32 1
  %11 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv5, align 8
  %image = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %11, i32 0, i32 17
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv6 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %12, i32 0, i32 1
  %13 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv6, align 8
  %unit = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %13, i32 0, i32 18
  store i32 0, i32* %unit, align 4
  %14 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %15 = bitcast %struct._GimpCursorView* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32* %content_spacing, i8* null)
  %17 = load i32, i32* %content_spacing, align 4
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %17)
  %18 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv10 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %18, i32 0, i32 1
  %19 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv10, align 8
  %coord_hbox = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %19, i32 0, i32 1
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %coord_hbox, align 8
  %20 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %20, i32 0, i32 1
  %21 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv11, align 8
  %coord_hbox12 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %21, i32 0, i32 1
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %coord_hbox12, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %24, i32 1)
  %25 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %26 = bitcast %struct._GimpCursorView* %25 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call15)
  %27 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %28 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv17 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %28, i32 0, i32 1
  %29 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv17, align 8
  %coord_hbox18 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %29, i32 0, i32 1
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %coord_hbox18, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv19 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %31, i32 0, i32 1
  %32 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv19, align 8
  %coord_hbox20 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %coord_hbox20, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load i32, i32* %content_spacing, align 4
  %call21 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %34)
  %35 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv22 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %35, i32 0, i32 1
  %36 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv22, align 8
  %selection_hbox = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %36, i32 0, i32 2
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %selection_hbox, align 8
  %37 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv23 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %37, i32 0, i32 1
  %38 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv23, align 8
  %selection_hbox24 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %38, i32 0, i32 2
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_hbox24, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call25)
  %41 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %41, i32 1)
  %42 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %43 = bitcast %struct._GimpCursorView* %42 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call27)
  %44 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %45 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv29 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %45, i32 0, i32 1
  %46 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv29, align 8
  %selection_hbox30 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %46, i32 0, i32 2
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_hbox30, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv31 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %48, i32 0, i32 1
  %49 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv31, align 8
  %selection_hbox32 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %49, i32 0, i32 2
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_hbox32, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #6
  %call34 = call %struct._GtkWidget* @gimp_frame_new(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %frame, align 8
  %51 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv35 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %51, i32 0, i32 1
  %52 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv35, align 8
  %coord_hbox36 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %52, i32 0, i32 1
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %coord_hbox36, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call37)
  %55 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %55, %struct._GtkWidget* %56, i32 1, i32 1, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %call39 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %table, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call40)
  %60 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %60, i32 6)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call42)
  %63 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %63, i32 2)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_container_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call44)
  %66 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkContainer*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %66, %struct._GtkWidget* %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %call47 = call %struct._GtkWidget* @gtk_label_new(i8* %call46)
  %69 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv48 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %69, i32 0, i32 1
  %70 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv48, align 8
  %pixel_x_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %70, i32 0, i32 4
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %pixel_x_label, align 8
  %71 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv49 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %71, i32 0, i32 1
  %72 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv49, align 8
  %pixel_x_label50 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %72, i32 0, i32 4
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_x_label50, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_misc_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call51)
  %75 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %75, float 1.000000e+00, float 5.000000e-01)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call53)
  %78 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #6
  %79 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv56 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %79, i32 0, i32 1
  %80 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv56, align 8
  %pixel_x_label57 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %80, i32 0, i32 4
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_x_label57, align 8
  %call58 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %78, i32 0, i32 0, i8* %call55, float 5.000000e-01, float 5.000000e-01, %struct._GtkWidget* %81, i32 1, i32 0)
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %call60 = call %struct._GtkWidget* @gtk_label_new(i8* %call59)
  %82 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv61 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %82, i32 0, i32 1
  %83 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv61, align 8
  %pixel_y_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %83, i32 0, i32 5
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %pixel_y_label, align 8
  %84 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv62 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %84, i32 0, i32 1
  %85 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv62, align 8
  %pixel_y_label63 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %85, i32 0, i32 5
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_y_label63, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_misc_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call64)
  %88 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %88, float 1.000000e+00, float 5.000000e-01)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call66)
  %91 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #6
  %92 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv69 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %92, i32 0, i32 1
  %93 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv69, align 8
  %pixel_y_label70 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %93, i32 0, i32 5
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_y_label70, align 8
  %call71 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %91, i32 0, i32 1, i8* %call68, float 5.000000e-01, float 5.000000e-01, %struct._GtkWidget* %94, i32 1, i32 0)
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #6
  %call73 = call %struct._GtkWidget* @gimp_frame_new(i8* %call72)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %frame, align 8
  %95 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv74 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %95, i32 0, i32 1
  %96 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv74, align 8
  %coord_hbox75 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %96, i32 0, i32 1
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %coord_hbox75, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call76)
  %99 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 1, i32 1, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %call78 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %table, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call79)
  %104 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %104, i32 4)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_table_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call81)
  %107 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %107, i32 2)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_container_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call83)
  %110 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkContainer*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %110, %struct._GtkWidget* %111)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %call86 = call %struct._GtkWidget* @gtk_label_new(i8* %call85)
  %113 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv87 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %113, i32 0, i32 1
  %114 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv87, align 8
  %unit_x_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %114, i32 0, i32 6
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %unit_x_label, align 8
  %115 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv88 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %115, i32 0, i32 1
  %116 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv88, align 8
  %unit_x_label89 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %116, i32 0, i32 6
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_x_label89, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_misc_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call90)
  %119 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %119, float 1.000000e+00, float 5.000000e-01)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_table_get_type() #7
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call92)
  %122 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkTable*
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #6
  %123 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv95 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %123, i32 0, i32 1
  %124 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv95, align 8
  %unit_x_label96 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %124, i32 0, i32 6
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_x_label96, align 8
  %call97 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %122, i32 0, i32 0, i8* %call94, float 5.000000e-01, float 5.000000e-01, %struct._GtkWidget* %125, i32 1, i32 0)
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %call99 = call %struct._GtkWidget* @gtk_label_new(i8* %call98)
  %126 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv100 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %126, i32 0, i32 1
  %127 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv100, align 8
  %unit_y_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %127, i32 0, i32 7
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %unit_y_label, align 8
  %128 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv101 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %128, i32 0, i32 1
  %129 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv101, align 8
  %unit_y_label102 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %129, i32 0, i32 7
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_y_label102, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_misc_get_type() #7
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call103)
  %132 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %132, float 1.000000e+00, float 5.000000e-01)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_table_get_type() #7
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call105)
  %135 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkTable*
  %call107 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #6
  %136 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv108 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %136, i32 0, i32 1
  %137 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv108, align 8
  %unit_y_label109 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %137, i32 0, i32 7
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_y_label109, align 8
  %call110 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %135, i32 0, i32 1, i8* %call107, float 5.000000e-01, float 5.000000e-01, %struct._GtkWidget* %138, i32 1, i32 0)
  %call111 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)) #6
  %call112 = call %struct._GtkWidget* @gimp_frame_new(i8* %call111)
  store %struct._GtkWidget* %call112, %struct._GtkWidget** %frame, align 8
  %139 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv113 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %139, i32 0, i32 1
  %140 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv113, align 8
  %selection_hbox114 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %140, i32 0, i32 2
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_hbox114, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_box_get_type() #7
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call115)
  %143 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkBox*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %143, %struct._GtkWidget* %144, i32 1, i32 1, i32 0)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %145)
  %call117 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %table, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_table_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call118)
  %148 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %148, i32 6)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_table_get_type() #7
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call120)
  %151 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %151, i32 2)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_container_get_type() #7
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call122)
  %154 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkContainer*
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %154, %struct._GtkWidget* %155)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %156)
  %call124 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %call125 = call %struct._GtkWidget* @gtk_label_new(i8* %call124)
  %157 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv126 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %157, i32 0, i32 1
  %158 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv126, align 8
  %selection_x_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %158, i32 0, i32 8
  store %struct._GtkWidget* %call125, %struct._GtkWidget** %selection_x_label, align 8
  %159 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv127 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %159, i32 0, i32 1
  %160 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv127, align 8
  %selection_x_label128 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %160, i32 0, i32 8
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_x_label128, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_misc_get_type() #7
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call129)
  %163 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %163, float 1.000000e+00, float 5.000000e-01)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call131 = call i64 @gtk_table_get_type() #7
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call131)
  %166 = bitcast %struct._GTypeInstance* %call132 to %struct._GtkTable*
  %call133 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #6
  %167 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv134 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %167, i32 0, i32 1
  %168 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv134, align 8
  %selection_x_label135 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %168, i32 0, i32 8
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_x_label135, align 8
  %call136 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %166, i32 0, i32 0, i8* %call133, float 5.000000e-01, float 5.000000e-01, %struct._GtkWidget* %169, i32 1, i32 0)
  %call137 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %call138 = call %struct._GtkWidget* @gtk_label_new(i8* %call137)
  %170 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv139 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %170, i32 0, i32 1
  %171 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv139, align 8
  %selection_y_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %171, i32 0, i32 9
  store %struct._GtkWidget* %call138, %struct._GtkWidget** %selection_y_label, align 8
  %172 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv140 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %172, i32 0, i32 1
  %173 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv140, align 8
  %selection_y_label141 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %173, i32 0, i32 9
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_y_label141, align 8
  %175 = bitcast %struct._GtkWidget* %174 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_misc_get_type() #7
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call142)
  %176 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %176, float 1.000000e+00, float 5.000000e-01)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_table_get_type() #7
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call144)
  %179 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkTable*
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #6
  %180 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv147 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %180, i32 0, i32 1
  %181 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv147, align 8
  %selection_y_label148 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %181, i32 0, i32 9
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_y_label148, align 8
  %call149 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %179, i32 0, i32 1, i8* %call146, float 5.000000e-01, float 5.000000e-01, %struct._GtkWidget* %182, i32 1, i32 0)
  %call150 = call %struct._GtkWidget* @gimp_frame_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GtkWidget* %call150, %struct._GtkWidget** %frame, align 8
  %183 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv151 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %183, i32 0, i32 1
  %184 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv151, align 8
  %selection_hbox152 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %184, i32 0, i32 2
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_hbox152, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call153 = call i64 @gtk_box_get_type() #7
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call153)
  %187 = bitcast %struct._GTypeInstance* %call154 to %struct._GtkBox*
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %187, %struct._GtkWidget* %188, i32 1, i32 1, i32 0)
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %189)
  %call155 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call155, %struct._GtkWidget** %table, align 8
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %call156 = call i64 @gtk_table_get_type() #7
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 %call156)
  %192 = bitcast %struct._GTypeInstance* %call157 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %192, i32 4)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %194 = bitcast %struct._GtkWidget* %193 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_table_get_type() #7
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %194, i64 %call158)
  %195 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %195, i32 2)
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %197 = bitcast %struct._GtkWidget* %196 to %struct._GTypeInstance*
  %call160 = call i64 @gtk_container_get_type() #7
  %call161 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %197, i64 %call160)
  %198 = bitcast %struct._GTypeInstance* %call161 to %struct._GtkContainer*
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %198, %struct._GtkWidget* %199)
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %200)
  %call162 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %call163 = call %struct._GtkWidget* @gtk_label_new(i8* %call162)
  %201 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv164 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %201, i32 0, i32 1
  %202 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv164, align 8
  %selection_width_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %202, i32 0, i32 10
  store %struct._GtkWidget* %call163, %struct._GtkWidget** %selection_width_label, align 8
  %203 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv165 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %203, i32 0, i32 1
  %204 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv165, align 8
  %selection_width_label166 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %204, i32 0, i32 10
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_width_label166, align 8
  %206 = bitcast %struct._GtkWidget* %205 to %struct._GTypeInstance*
  %call167 = call i64 @gtk_misc_get_type() #7
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %206, i64 %call167)
  %207 = bitcast %struct._GTypeInstance* %call168 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %207, float 1.000000e+00, float 5.000000e-01)
  %208 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %209 = bitcast %struct._GtkWidget* %208 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_table_get_type() #7
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %209, i64 %call169)
  %210 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkTable*
  %call171 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #6
  %211 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv172 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %211, i32 0, i32 1
  %212 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv172, align 8
  %selection_width_label173 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %212, i32 0, i32 10
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_width_label173, align 8
  %call174 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %210, i32 0, i32 0, i8* %call171, float 5.000000e-01, float 5.000000e-01, %struct._GtkWidget* %213, i32 1, i32 0)
  %call175 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %call176 = call %struct._GtkWidget* @gtk_label_new(i8* %call175)
  %214 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv177 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %214, i32 0, i32 1
  %215 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv177, align 8
  %selection_height_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %215, i32 0, i32 11
  store %struct._GtkWidget* %call176, %struct._GtkWidget** %selection_height_label, align 8
  %216 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv178 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %216, i32 0, i32 1
  %217 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv178, align 8
  %selection_height_label179 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %217, i32 0, i32 11
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_height_label179, align 8
  %219 = bitcast %struct._GtkWidget* %218 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_misc_get_type() #7
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %219, i64 %call180)
  %220 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %220, float 1.000000e+00, float 5.000000e-01)
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %222 = bitcast %struct._GtkWidget* %221 to %struct._GTypeInstance*
  %call182 = call i64 @gtk_table_get_type() #7
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %222, i64 %call182)
  %223 = bitcast %struct._GTypeInstance* %call183 to %struct._GtkTable*
  %call184 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #6
  %224 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv185 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %224, i32 0, i32 1
  %225 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv185, align 8
  %selection_height_label186 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %225, i32 0, i32 11
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_height_label186, align 8
  %call187 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %223, i32 0, i32 1, i8* %call184, float 5.000000e-01, float 5.000000e-01, %struct._GtkWidget* %226, i32 1, i32 0)
  %227 = load i32, i32* %content_spacing, align 4
  %call188 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %227)
  %228 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv189 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %228, i32 0, i32 1
  %229 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv189, align 8
  %color_hbox = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %229, i32 0, i32 3
  store %struct._GtkWidget* %call188, %struct._GtkWidget** %color_hbox, align 8
  %230 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv190 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %230, i32 0, i32 1
  %231 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv190, align 8
  %color_hbox191 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %231, i32 0, i32 3
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %color_hbox191, align 8
  %233 = bitcast %struct._GtkWidget* %232 to %struct._GTypeInstance*
  %call192 = call i64 @gtk_box_get_type() #7
  %call193 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %233, i64 %call192)
  %234 = bitcast %struct._GTypeInstance* %call193 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %234, i32 1)
  %235 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %236 = bitcast %struct._GimpCursorView* %235 to %struct._GTypeInstance*
  %call194 = call i64 @gtk_box_get_type() #7
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 %call194)
  %237 = bitcast %struct._GTypeInstance* %call195 to %struct._GtkBox*
  %238 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv196 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %238, i32 0, i32 1
  %239 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv196, align 8
  %color_hbox197 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %239, i32 0, i32 3
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %color_hbox197, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %237, %struct._GtkWidget* %240, i32 0, i32 0, i32 0)
  %241 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv198 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %241, i32 0, i32 1
  %242 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv198, align 8
  %color_hbox199 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %242, i32 0, i32 3
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %color_hbox199, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %243)
  %call200 = call %struct._GtkWidget* @gimp_color_frame_new()
  %244 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv201 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %244, i32 0, i32 1
  %245 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv201, align 8
  %color_frame_1 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %245, i32 0, i32 12
  store %struct._GtkWidget* %call200, %struct._GtkWidget** %color_frame_1, align 8
  %246 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv202 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %246, i32 0, i32 1
  %247 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv202, align 8
  %color_frame_1203 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %247, i32 0, i32 12
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_1203, align 8
  %249 = bitcast %struct._GtkWidget* %248 to %struct._GTypeInstance*
  %call204 = call i64 @gimp_color_frame_get_type() #7
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %249, i64 %call204)
  %250 = bitcast %struct._GTypeInstance* %call205 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_mode(%struct._GimpColorFrame* %250, i32 0)
  %251 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv206 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %251, i32 0, i32 1
  %252 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv206, align 8
  %color_hbox207 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %252, i32 0, i32 3
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %color_hbox207, align 8
  %254 = bitcast %struct._GtkWidget* %253 to %struct._GTypeInstance*
  %call208 = call i64 @gtk_box_get_type() #7
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 %call208)
  %255 = bitcast %struct._GTypeInstance* %call209 to %struct._GtkBox*
  %256 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv210 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %256, i32 0, i32 1
  %257 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv210, align 8
  %color_frame_1211 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %257, i32 0, i32 12
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_1211, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %255, %struct._GtkWidget* %258, i32 1, i32 1, i32 0)
  %259 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv212 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %259, i32 0, i32 1
  %260 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv212, align 8
  %color_frame_1213 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %260, i32 0, i32 12
  %261 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_1213, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %261)
  %call214 = call %struct._GtkWidget* @gimp_color_frame_new()
  %262 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv215 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %262, i32 0, i32 1
  %263 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv215, align 8
  %color_frame_2 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %263, i32 0, i32 13
  store %struct._GtkWidget* %call214, %struct._GtkWidget** %color_frame_2, align 8
  %264 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv216 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %264, i32 0, i32 1
  %265 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv216, align 8
  %color_frame_2217 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %265, i32 0, i32 13
  %266 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_2217, align 8
  %267 = bitcast %struct._GtkWidget* %266 to %struct._GTypeInstance*
  %call218 = call i64 @gimp_color_frame_get_type() #7
  %call219 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %267, i64 %call218)
  %268 = bitcast %struct._GTypeInstance* %call219 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_mode(%struct._GimpColorFrame* %268, i32 1)
  %269 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv220 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %269, i32 0, i32 1
  %270 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv220, align 8
  %color_hbox221 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %270, i32 0, i32 3
  %271 = load %struct._GtkWidget*, %struct._GtkWidget** %color_hbox221, align 8
  %272 = bitcast %struct._GtkWidget* %271 to %struct._GTypeInstance*
  %call222 = call i64 @gtk_box_get_type() #7
  %call223 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %272, i64 %call222)
  %273 = bitcast %struct._GTypeInstance* %call223 to %struct._GtkBox*
  %274 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv224 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %274, i32 0, i32 1
  %275 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv224, align 8
  %color_frame_2225 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %275, i32 0, i32 13
  %276 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_2225, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %273, %struct._GtkWidget* %276, i32 1, i32 1, i32 0)
  %277 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv226 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %277, i32 0, i32 1
  %278 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv226, align 8
  %color_frame_2227 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %278, i32 0, i32 13
  %279 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_2227, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %279)
  %280 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %281 = bitcast %struct._GimpCursorView* %280 to %struct._GTypeInstance*
  %call228 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %281, i64 80)
  %282 = bitcast %struct._GTypeInstance* %call228 to %struct._GObject*
  %call229 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #6
  %call230 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %282, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* %call229)
  store %struct._GtkWidget* %call230, %struct._GtkWidget** %toggle, align 8
  %283 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %284 = bitcast %struct._GimpCursorView* %283 to %struct._GTypeInstance*
  %call231 = call i64 @gtk_box_get_type() #7
  %call232 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %284, i64 %call231)
  %285 = bitcast %struct._GTypeInstance* %call232 to %struct._GtkBox*
  %286 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %285, %struct._GtkWidget* %286, i32 0, i32 0, i32 0)
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %287)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %iface, %struct._GimpDockedInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpDockedInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %2, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %tobool = icmp ne %struct._GimpDockedInterface* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @gimp_docked_interface_get_type() #7
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %4, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 2
  store void (%struct._GimpDocked*, %struct._GList*)* @gimp_cursor_view_set_aux_info, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %6 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %6, i32 0, i32 3
  store %struct._GList* (%struct._GimpDocked*)* @gimp_cursor_view_get_aux_info, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  %7 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %7, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_cursor_view_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_cursor_view_new(%struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_cursor_view_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_cursor_view_get_type() #7
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GimpMenuFactory* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_cursor_view_set_sample_merged(%struct._GimpCursorView* %view, i32 %sample_merged) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %sample_merged.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %1 = bitcast %struct._GimpCursorView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cursor_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cursor_view_set_sample_merged, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %sample_merged.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  store i32 %cond, i32* %sample_merged.addr, align 4
  %14 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %14, i32 0, i32 1
  %15 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %sample_merged12 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %15, i32 0, i32 14
  %16 = load i32, i32* %sample_merged12, align 4
  %17 = load i32, i32* %sample_merged.addr, align 4
  %cmp13 = icmp ne i32 %16, %17
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %do.end
  %18 = load i32, i32* %sample_merged.addr, align 4
  %19 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %19, i32 0, i32 1
  %20 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv15, align 8
  %sample_merged16 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %20, i32 0, i32 14
  store i32 %18, i32* %sample_merged16, align 4
  %21 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %22 = bitcast %struct._GimpCursorView* %21 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_cursor_view_get_sample_merged(%struct._GimpCursorView* %view) #3 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %1 = bitcast %struct._GimpCursorView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cursor_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cursor_view_get_sample_merged, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %13, i32 0, i32 1
  %14 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %sample_merged = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %14, i32 0, i32 14
  %15 = load i32, i32* %sample_merged, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_cursor_view_update_cursor(%struct._GimpCursorView* %view, %struct._GimpImage* %image, i32 %shell_unit, double %x, double %y) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %shell_unit.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %unit = alloca i32, align 4
  %in_image = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %sample_type = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %color_index = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %shell_unit, i32* %shell_unit.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load i32, i32* %shell_unit.addr, align 4
  store i32 %0, i32* %unit, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %2 = bitcast %struct._GimpCursorView* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cursor_view_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_cursor_view_update_cursor, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_cursor_view_update_cursor, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %27 = load i32, i32* %unit, align 4
  %cmp39 = icmp eq i32 %27, 0
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %do.end.38
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call41 = call i32 @gimp_image_get_unit(%struct._GimpImage* %28)
  store i32 %call41, i32* %unit, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %do.end.38
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %29, double* %xres, double* %yres)
  %30 = load double, double* %x.addr, align 8
  %cmp43 = fcmp oge double %30, 0.000000e+00
  br i1 %cmp43, label %land.lhs.true.44, label %land.end

land.lhs.true.44:                                 ; preds = %if.end.42
  %31 = load double, double* %x.addr, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call45 = call i32 @gimp_image_get_width(%struct._GimpImage* %32)
  %conv = sitofp i32 %call45 to double
  %cmp46 = fcmp olt double %31, %conv
  br i1 %cmp46, label %land.lhs.true.48, label %land.end

land.lhs.true.48:                                 ; preds = %land.lhs.true.44
  %33 = load double, double* %y.addr, align 8
  %cmp49 = fcmp oge double %33, 0.000000e+00
  br i1 %cmp49, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.48
  %34 = load double, double* %y.addr, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call51 = call i32 @gimp_image_get_height(%struct._GimpImage* %35)
  %conv52 = sitofp i32 %call51 to double
  %cmp53 = fcmp olt double %34, %conv52
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.48, %land.lhs.true.44, %if.end.42
  %36 = phi i1 [ false, %land.lhs.true.48 ], [ false, %land.lhs.true.44 ], [ false, %if.end.42 ], [ %cmp53, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  store i32 %land.ext, i32* %in_image, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %37 = load double, double* %x.addr, align 8
  %call55 = call double @floor(double %37) #7
  %conv56 = fptosi double %call55 to i32
  %call57 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %conv56)
  %38 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %38, i32 0, i32 1
  %39 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %pixel_x_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %39, i32 0, i32 4
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_x_label, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_label_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call58)
  %42 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkLabel*
  %arraydecay60 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %42, i8* %arraydecay60)
  %43 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv61 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %43, i32 0, i32 1
  %44 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv61, align 8
  %pixel_x_label62 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %44, i32 0, i32 4
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_x_label62, align 8
  %46 = load i32, i32* %in_image, align 4
  %tobool63 = icmp ne i32 %46, 0
  %lnot = xor i1 %tobool63, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_cursor_view_set_label_italic(%struct._GtkWidget* %45, i32 %lnot.ext)
  %arraydecay64 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %47 = load double, double* %y.addr, align 8
  %call65 = call double @floor(double %47) #7
  %conv66 = fptosi double %call65 to i32
  %call67 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay64, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %conv66)
  %48 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv68 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %48, i32 0, i32 1
  %49 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv68, align 8
  %pixel_y_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %49, i32 0, i32 5
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_y_label, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_label_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call69)
  %52 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkLabel*
  %arraydecay71 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %52, i8* %arraydecay71)
  %53 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv72 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %53, i32 0, i32 1
  %54 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv72, align 8
  %pixel_y_label73 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %54, i32 0, i32 5
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_y_label73, align 8
  %56 = load i32, i32* %in_image, align 4
  %tobool74 = icmp ne i32 %56, 0
  %lnot75 = xor i1 %tobool74, true
  %lnot.ext76 = zext i1 %lnot75 to i32
  call void @gimp_cursor_view_set_label_italic(%struct._GtkWidget* %55, i32 %lnot.ext76)
  %57 = load i32, i32* %unit, align 4
  %arraydecay77 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %58 = load double, double* %x.addr, align 8
  %59 = load double, double* %xres, align 8
  call void @gimp_cursor_view_format_as_unit(i32 %57, i8* %arraydecay77, i32 32, double %58, double %59)
  %60 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv78 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %60, i32 0, i32 1
  %61 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv78, align 8
  %unit_x_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %61, i32 0, i32 6
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_x_label, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_label_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call79)
  %64 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkLabel*
  %arraydecay81 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %64, i8* %arraydecay81)
  %65 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv82 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %65, i32 0, i32 1
  %66 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv82, align 8
  %unit_x_label83 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %66, i32 0, i32 6
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_x_label83, align 8
  %68 = load i32, i32* %in_image, align 4
  %tobool84 = icmp ne i32 %68, 0
  %lnot85 = xor i1 %tobool84, true
  %lnot.ext86 = zext i1 %lnot85 to i32
  call void @gimp_cursor_view_set_label_italic(%struct._GtkWidget* %67, i32 %lnot.ext86)
  %69 = load i32, i32* %unit, align 4
  %arraydecay87 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %70 = load double, double* %y.addr, align 8
  %71 = load double, double* %yres, align 8
  call void @gimp_cursor_view_format_as_unit(i32 %69, i8* %arraydecay87, i32 32, double %70, double %71)
  %72 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv88 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %72, i32 0, i32 1
  %73 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv88, align 8
  %unit_y_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %73, i32 0, i32 7
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_y_label, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_label_get_type() #7
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call89)
  %76 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkLabel*
  %arraydecay91 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %76, i8* %arraydecay91)
  %77 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv92 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %77, i32 0, i32 1
  %78 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv92, align 8
  %unit_y_label93 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %78, i32 0, i32 7
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_y_label93, align 8
  %80 = load i32, i32* %in_image, align 4
  %tobool94 = icmp ne i32 %80, 0
  %lnot95 = xor i1 %tobool94, true
  %lnot.ext96 = zext i1 %lnot95 to i32
  call void @gimp_cursor_view_set_label_italic(%struct._GtkWidget* %79, i32 %lnot.ext96)
  %81 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %82 = load double, double* %x.addr, align 8
  %call97 = call double @floor(double %82) #7
  %conv98 = fptosi double %call97 to i32
  %83 = load double, double* %y.addr, align 8
  %call99 = call double @floor(double %83) #7
  %conv100 = fptosi double %call99 to i32
  %84 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv101 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %84, i32 0, i32 1
  %85 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv101, align 8
  %sample_merged = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %85, i32 0, i32 14
  %86 = load i32, i32* %sample_merged, align 4
  %call102 = call i32 @gimp_image_pick_color(%struct._GimpImage* %81, %struct._GimpDrawable* null, i32 %conv98, i32 %conv100, i32 %86, i32 0, double 0.000000e+00, i32* %sample_type, %struct._GimpRGB* %color, i32* %color_index)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.else.111

if.then.104:                                      ; preds = %land.end
  %87 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv105 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %87, i32 0, i32 1
  %88 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv105, align 8
  %color_frame_1 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %88, i32 0, i32 12
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_1, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_color_frame_get_type() #7
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call106)
  %91 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpColorFrame*
  %92 = load i32, i32* %sample_type, align 4
  %93 = load i32, i32* %color_index, align 4
  call void @gimp_color_frame_set_color(%struct._GimpColorFrame* %91, i32 %92, %struct._GimpRGB* %color, i32 %93)
  %94 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv108 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %94, i32 0, i32 1
  %95 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv108, align 8
  %color_frame_2 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %95, i32 0, i32 13
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_2, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_color_frame_get_type() #7
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call109)
  %98 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpColorFrame*
  %99 = load i32, i32* %sample_type, align 4
  %100 = load i32, i32* %color_index, align 4
  call void @gimp_color_frame_set_color(%struct._GimpColorFrame* %98, i32 %99, %struct._GimpRGB* %color, i32 %100)
  br label %if.end.120

if.else.111:                                      ; preds = %land.end
  %101 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv112 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %101, i32 0, i32 1
  %102 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv112, align 8
  %color_frame_1113 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %102, i32 0, i32 12
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_1113, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call114 = call i64 @gimp_color_frame_get_type() #7
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call114)
  %105 = bitcast %struct._GTypeInstance* %call115 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_invalid(%struct._GimpColorFrame* %105)
  %106 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv116 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %106, i32 0, i32 1
  %107 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv116, align 8
  %color_frame_2117 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %107, i32 0, i32 13
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_2117, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_color_frame_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call118)
  %110 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_invalid(%struct._GimpColorFrame* %110)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.111, %if.then.104
  %111 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %112 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %113 = load i32, i32* %shell_unit.addr, align 4
  call void @gimp_cursor_view_update_selection_info(%struct._GimpCursorView* %111, %struct._GimpImage* %112, i32 %113)
  br label %return

return:                                           ; preds = %if.end.120, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_set_label_italic(%struct._GtkWidget* %label, i32 %italic) #3 {
entry:
  %label.addr = alloca %struct._GtkWidget*, align 8
  %italic.addr = alloca i32, align 4
  %attribute = alloca i32, align 4
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store i32 %italic, i32* %italic.addr, align 4
  %0 = load i32, i32* %italic.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 2, i32 0
  store i32 %cond, i32* %attribute, align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkLabel*
  %4 = load i32, i32* %attribute, align 4
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %3, i32 3, i32 %4, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_format_as_unit(i32 %unit, i8* %output_buf, i32 %output_buf_size, double %pixel_value, double %image_res) #3 {
entry:
  %unit.addr = alloca i32, align 4
  %output_buf.addr = alloca i8*, align 8
  %output_buf_size.addr = alloca i32, align 4
  %pixel_value.addr = alloca double, align 8
  %image_res.addr = alloca double, align 8
  %format_buf = alloca [32 x i8], align 16
  %value = alloca double, align 8
  %unit_digits = alloca i32, align 4
  %unit_str = alloca i8*, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i8* %output_buf, i8** %output_buf.addr, align 8
  store i32 %output_buf_size, i32* %output_buf_size.addr, align 4
  store double %pixel_value, double* %pixel_value.addr, align 8
  store double %image_res, double* %image_res.addr, align 8
  store i32 0, i32* %unit_digits, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8** %unit_str, align 8
  %0 = load double, double* %pixel_value.addr, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %2 = load double, double* %image_res.addr, align 8
  %call = call double @gimp_pixels_to_units(double %0, i32 %1, double %2)
  store double %call, double* %value, align 8
  %3 = load i32, i32* %unit.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %unit.addr, align 4
  %call1 = call i32 @gimp_unit_get_digits(i32 %4)
  store i32 %call1, i32* %unit_digits, align 4
  %5 = load i32, i32* %unit.addr, align 4
  %call2 = call i8* @gimp_unit_get_abbreviation(i32 %5)
  store i8* %call2, i8** %unit_str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %format_buf, i32 0, i32 0
  %6 = load i32, i32* %unit_digits, align 4
  %7 = load i8*, i8** %unit_str, align 8
  %call3 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 %6, i8* %7)
  %8 = load i8*, i8** %output_buf.addr, align 8
  %9 = load i32, i32* %output_buf_size.addr, align 4
  %conv = sext i32 %9 to i64
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %format_buf, i32 0, i32 0
  %10 = load double, double* %value, align 8
  %call5 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %8, i64 %conv, i8* %arraydecay4, double %10)
  ret void
}

declare i32 @gimp_image_pick_color(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, double, i32*, %struct._GimpRGB*, i32*) #1

declare void @gimp_color_frame_set_color(%struct._GimpColorFrame*, i32, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_frame_get_type() #2

declare void @gimp_color_frame_set_invalid(%struct._GimpColorFrame*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_update_selection_info(%struct._GimpCursorView* %view, %struct._GimpImage* %image, i32 %unit) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %unit.addr = alloca i32, align 4
  %bounds_exist = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %buf = alloca [32 x i8], align 16
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 0, i32* %bounds_exist, align 4
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool = icmp ne %struct._GimpImage* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %1)
  %call1 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call1, i32* %bounds_exist, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %bounds_exist, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %x2, align 4
  %4 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %width, align 4
  %5 = load i32, i32* %y2, align 4
  %6 = load i32, i32* %y1, align 4
  %sub4 = sub nsw i32 %5, %6
  store i32 %sub4, i32* %height, align 4
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %7, double* %xres, double* %yres)
  %8 = load i32, i32* %unit.addr, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %9 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %9 to double
  %10 = load double, double* %xres, align 8
  call void @gimp_cursor_view_format_as_unit(i32 %8, i8* %arraydecay, i32 32, double %conv, double %10)
  %11 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %11, i32 0, i32 1
  %12 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %selection_x_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %12, i32 0, i32 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_x_label, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_label_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkLabel*
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %15, i8* %arraydecay7)
  %16 = load i32, i32* %unit.addr, align 4
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %17 = load i32, i32* %y1, align 4
  %conv9 = sitofp i32 %17 to double
  %18 = load double, double* %yres, align 8
  call void @gimp_cursor_view_format_as_unit(i32 %16, i8* %arraydecay8, i32 32, double %conv9, double %18)
  %19 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv10 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %19, i32 0, i32 1
  %20 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv10, align 8
  %selection_y_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %20, i32 0, i32 9
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_y_label, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %arraydecay13 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %23, i8* %arraydecay13)
  %24 = load i32, i32* %unit.addr, align 4
  %arraydecay14 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %25 = load i32, i32* %width, align 4
  %conv15 = sitofp i32 %25 to double
  %26 = load double, double* %xres, align 8
  call void @gimp_cursor_view_format_as_unit(i32 %24, i8* %arraydecay14, i32 32, double %conv15, double %26)
  %27 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv16 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %27, i32 0, i32 1
  %28 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv16, align 8
  %selection_width_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %28, i32 0, i32 10
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_width_label, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_label_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call17)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkLabel*
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %31, i8* %arraydecay19)
  %32 = load i32, i32* %unit.addr, align 4
  %arraydecay20 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %33 = load i32, i32* %height, align 4
  %conv21 = sitofp i32 %33 to double
  %34 = load double, double* %yres, align 8
  call void @gimp_cursor_view_format_as_unit(i32 %32, i8* %arraydecay20, i32 32, double %conv21, double %34)
  %35 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv22 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %35, i32 0, i32 1
  %36 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv22, align 8
  %selection_height_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %36, i32 0, i32 11
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_height_label, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_label_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call23)
  %39 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkLabel*
  %arraydecay25 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %39, i8* %arraydecay25)
  br label %if.end.46

if.else:                                          ; preds = %if.end
  %40 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv26 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %40, i32 0, i32 1
  %41 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv26, align 8
  %selection_x_label27 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %41, i32 0, i32 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_x_label27, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_label_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call28)
  %44 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkLabel*
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %44, i8* %call30)
  %45 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv31 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %45, i32 0, i32 1
  %46 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv31, align 8
  %selection_y_label32 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %46, i32 0, i32 9
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_y_label32, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_label_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkLabel*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %49, i8* %call35)
  %50 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv36 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %50, i32 0, i32 1
  %51 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv36, align 8
  %selection_width_label37 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %51, i32 0, i32 10
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_width_label37, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_label_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call38)
  %54 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkLabel*
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %54, i8* %call40)
  %55 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv41 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %55, i32 0, i32 1
  %56 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv41, align 8
  %selection_height_label42 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %56, i32 0, i32 11
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_height_label42, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_label_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call43)
  %59 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkLabel*
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %59, i8* %call45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cursor_view_clear_cursor(%struct._GimpCursorView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %1 = bitcast %struct._GimpCursorView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cursor_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_cursor_view_clear_cursor, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %13, i32 0, i32 1
  %14 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %pixel_x_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %14, i32 0, i32 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_x_label, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %17, i8* %call13)
  %18 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv14 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %18, i32 0, i32 1
  %19 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv14, align 8
  %pixel_y_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %pixel_y_label, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_label_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkLabel*
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %22, i8* %call17)
  %23 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv18 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %23, i32 0, i32 1
  %24 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv18, align 8
  %unit_x_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %24, i32 0, i32 6
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_x_label, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_label_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkLabel*
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %27, i8* %call21)
  %28 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv22 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %28, i32 0, i32 1
  %29 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv22, align 8
  %unit_y_label = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %29, i32 0, i32 7
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_y_label, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_label_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkLabel*
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @gtk_label_set_text(%struct._GtkLabel* %32, i8* %call25)
  %33 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv26 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %33, i32 0, i32 1
  %34 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv26, align 8
  %color_frame_1 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %34, i32 0, i32 12
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_1, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_color_frame_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call27)
  %37 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_invalid(%struct._GimpColorFrame* %37)
  %38 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv29 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %38, i32 0, i32 1
  %39 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv29, align 8
  %color_frame_2 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %39, i32 0, i32 13
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_2, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_color_frame_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_invalid(%struct._GimpColorFrame* %42)
  %43 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %44 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv32 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %44, i32 0, i32 1
  %45 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv32, align 8
  %image = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %45, i32 0, i32 17
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %47 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv33 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %47, i32 0, i32 1
  %48 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv33, align 8
  %unit = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %48, i32 0, i32 18
  %49 = load i32, i32* %unit, align 4
  call void @gimp_cursor_view_update_selection_info(%struct._GimpCursorView* %43, %struct._GimpImage* %46, i32 %49)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_class_init(%struct._GimpCursorViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCursorViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpCursorViewClass* %klass, %struct._GimpCursorViewClass** %klass.addr, align 8
  %0 = load %struct._GimpCursorViewClass*, %struct._GimpCursorViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCursorViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCursorViewClass*, %struct._GimpCursorViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCursorViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_cursor_view_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cursor_view_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cursor_view_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_cursor_view_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call3)
  %11 = load %struct._GimpCursorViewClass*, %struct._GimpCursorViewClass** %klass.addr, align 8
  %12 = bitcast %struct._GimpCursorViewClass* %11 to i8*
  call void @g_type_class_add_private(i8* %12, i64 280)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpCursorView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cursor_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCursorView*
  store %struct._GimpCursorView* %2, %struct._GimpCursorView** %view, align 8
  %3 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %3, i32 0, i32 1
  %4 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %context = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %4, i32 0, i32 15
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %7 = bitcast %struct._GimpCursorView* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_docked_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDocked*
  call void @gimp_docked_set_context(%struct._GimpDocked* %8, %struct._GimpContext* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_cursor_view_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpCursorView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cursor_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCursorView*
  store %struct._GimpCursorView* %2, %struct._GimpCursorView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %5, i32 0, i32 1
  %6 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %sample_merged = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %6, i32 0, i32 14
  %7 = load i32, i32* %sample_merged, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %7)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpCursorView*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cursor_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCursorView*
  store %struct._GimpCursorView* %2, %struct._GimpCursorView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %5, i32 0, i32 1
  %6 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %sample_merged = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %6, i32 0, i32 14
  store i32 %call2, i32* %sample_merged, align 4
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 373, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %view = alloca %struct._GimpCursorView*, align 8
  %content_spacing = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cursor_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCursorView*
  store %struct._GimpCursorView* %2, %struct._GimpCursorView** %view, align 8
  %3 = load i8*, i8** @gimp_cursor_view_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %10 = bitcast %struct._GimpCursorView* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32* %content_spacing, i8* null)
  %12 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %12, i32 0, i32 1
  %13 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %coord_hbox = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %coord_hbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %17 = load i32, i32* %content_spacing, align 4
  call void @gtk_box_set_spacing(%struct._GtkBox* %16, i32 %17)
  %18 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv8 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %18, i32 0, i32 1
  %19 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv8, align 8
  %selection_hbox = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %selection_hbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %23 = load i32, i32* %content_spacing, align 4
  call void @gtk_box_set_spacing(%struct._GtkBox* %22, i32 %23)
  %24 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv11 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %24, i32 0, i32 1
  %25 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv11, align 8
  %color_hbox = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %25, i32 0, i32 3
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %color_hbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call12)
  %28 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %29 = load i32, i32* %content_spacing, align 4
  call void @gtk_box_set_spacing(%struct._GtkBox* %28, i32 %29)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gimp_docked_set_context(%struct._GimpDocked*, %struct._GimpContext*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

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

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_color_frame_new() #1

declare void @gimp_color_frame_set_mode(%struct._GimpColorFrame*, i32) #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_set_aux_info(%struct._GimpDocked* %docked, %struct._GList* %aux_info) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %view = alloca %struct._GimpCursorView*, align 8
  %list = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cursor_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCursorView*
  store %struct._GimpCursorView* %2, %struct._GimpCursorView** %view, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 2
  %4 = load void (%struct._GimpDocked*, %struct._GList*)*, void (%struct._GimpDocked*, %struct._GList*)** %set_aux_info, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GList* %6)
  %7 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %11, %struct._GimpSessionInfoAux** %aux, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %frame, align 8
  %12 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0)) #8
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %14 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %14, i32 0, i32 1
  %15 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %color_frame_1 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %15, i32 0, i32 12
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_1, align 8
  store %struct._GtkWidget* %16, %struct._GtkWidget** %frame, align 8
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %17 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name4 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %17, i32 0, i32 0
  %18 = load i8*, i8** %name4, align 8
  %call5 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)) #8
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %19 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv8 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %19, i32 0, i32 1
  %20 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv8, align 8
  %color_frame_2 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %20, i32 0, i32 13
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_2, align 8
  store %struct._GtkWidget* %21, %struct._GtkWidget** %frame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %tobool10 = icmp ne %struct._GtkWidget* %22, null
  br i1 %tobool10, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %if.end.9
  %call12 = call i64 @gimp_color_frame_mode_get_type() #7
  %call13 = call i8* @g_type_class_peek(i64 %call12)
  %23 = bitcast i8* %call13 to %struct._GEnumClass*
  store %struct._GEnumClass* %23, %struct._GEnumClass** %enum_class, align 8
  %24 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %25 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %25, i32 0, i32 1
  %26 = load i8*, i8** %value, align 8
  %call14 = call %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass* %24, i8* %26)
  store %struct._GEnumValue* %call14, %struct._GEnumValue** %enum_value, align 8
  %27 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool15 = icmp ne %struct._GEnumValue* %27, null
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.then.11
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_color_frame_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call17)
  %30 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColorFrame*
  %31 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value19 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %31, i32 0, i32 0
  %32 = load i32, i32* %value19, align 4
  call void @gimp_color_frame_set_mode(%struct._GimpColorFrame* %30, i32 %32)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.then.11
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %33, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_cursor_view_get_aux_info(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %view = alloca %struct._GimpCursorView*, align 8
  %aux_info = alloca %struct._GList*, align 8
  %nick = alloca i8*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cursor_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCursorView*
  store %struct._GimpCursorView* %2, %struct._GimpCursorView** %view, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 3
  %4 = load %struct._GList* (%struct._GimpDocked*)*, %struct._GList* (%struct._GimpDocked*)** %get_aux_info, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %call2 = call %struct._GList* %4(%struct._GimpDocked* %5)
  store %struct._GList* %call2, %struct._GList** %aux_info, align 8
  %call3 = call i64 @gimp_color_frame_mode_get_type() #7
  %6 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %6, i32 0, i32 1
  %7 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %color_frame_1 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %7, i32 0, i32 12
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_1, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_frame_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorFrame*
  %frame_mode = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %10, i32 0, i32 5
  %11 = load i32, i32* %frame_mode, align 4
  %call6 = call i32 @gimp_enum_get_value(i64 %call3, i32 %11, i8** null, i8** %nick, i8** null, i8** null)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i8*, i8** %nick, align 8
  %call7 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* %12)
  store %struct._GimpSessionInfoAux* %call7, %struct._GimpSessionInfoAux** %aux, align 8
  %13 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %14 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %15 = bitcast %struct._GimpSessionInfoAux* %14 to i8*
  %call8 = call %struct._GList* @g_list_append(%struct._GList* %13, i8* %15)
  store %struct._GList* %call8, %struct._GList** %aux_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call9 = call i64 @gimp_color_frame_mode_get_type() #7
  %16 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv10 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %16, i32 0, i32 1
  %17 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv10, align 8
  %color_frame_2 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %17, i32 0, i32 13
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame_2, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_frame_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorFrame*
  %frame_mode13 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %20, i32 0, i32 5
  %21 = load i32, i32* %frame_mode13, align 4
  %call14 = call i32 @gimp_enum_get_value(i64 %call9, i32 %21, i8** null, i8** %nick, i8** null, i8** null)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end
  %22 = load i8*, i8** %nick, align 8
  %call17 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* %22)
  store %struct._GimpSessionInfoAux* %call17, %struct._GimpSessionInfoAux** %aux, align 8
  %23 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %24 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %25 = bitcast %struct._GimpSessionInfoAux* %24 to i8*
  %call18 = call %struct._GList* @g_list_append(%struct._GList* %23, i8* %25)
  store %struct._GList* %call18, %struct._GList** %aux_info, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end
  %26 = load %struct._GList*, %struct._GList** %aux_info, align 8
  ret %struct._GList* %26
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view = alloca %struct._GimpCursorView*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cursor_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCursorView*
  store %struct._GimpCursorView* %2, %struct._GimpCursorView** %view, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %4, i32 0, i32 1
  %5 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %context2 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %5, i32 0, i32 15
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %cmp = icmp eq %struct._GimpContext* %3, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv3 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %7, i32 0, i32 1
  %8 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv3, align 8
  %context4 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %8, i32 0, i32 15
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %tobool = icmp ne %struct._GimpContext* %9, null
  br i1 %tobool, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv6 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %10, i32 0, i32 1
  %11 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv6, align 8
  %context7 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %11, i32 0, i32 15
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %13 = bitcast %struct._GimpContext* %12 to i8*
  %14 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %15 = bitcast %struct._GimpCursorView* %14 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCursorView*, %struct._GimpDisplay*, %struct._GimpContext*)* @gimp_cursor_view_diplay_changed to i8*), i8* %15)
  %16 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv9 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %16, i32 0, i32 1
  %17 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv9, align 8
  %context10 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %17, i32 0, i32 15
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %19 = bitcast %struct._GimpContext* %18 to i8*
  %20 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %21 = bitcast %struct._GimpCursorView* %20 to i8*
  %call11 = call i32 @g_signal_handlers_disconnect_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCursorView*, %struct._GimpImage*, %struct._GimpContext*)* @gimp_cursor_view_image_changed to i8*), i8* %21)
  %22 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv12 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %22, i32 0, i32 1
  %23 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv12, align 8
  %context13 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %23, i32 0, i32 15
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context13, align 8
  %25 = bitcast %struct._GimpContext* %24 to i8*
  call void @g_object_unref(i8* %25)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.5, %if.end
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv15 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %27, i32 0, i32 1
  %28 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv15, align 8
  %context16 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %28, i32 0, i32 15
  store %struct._GimpContext* %26, %struct._GimpContext** %context16, align 8
  %29 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv17 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %29, i32 0, i32 1
  %30 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv17, align 8
  %context18 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %30, i32 0, i32 15
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context18, align 8
  %tobool19 = icmp ne %struct._GimpContext* %31, null
  br i1 %tobool19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %if.end.14
  %32 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv21 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %32, i32 0, i32 1
  %33 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv21, align 8
  %context22 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %33, i32 0, i32 15
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context22, align 8
  %35 = bitcast %struct._GimpContext* %34 to i8*
  %call23 = call i8* @g_object_ref(i8* %35)
  %36 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv24 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %36, i32 0, i32 1
  %37 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv24, align 8
  %context25 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %37, i32 0, i32 15
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context25, align 8
  %39 = bitcast %struct._GimpContext* %38 to i8*
  %40 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %41 = bitcast %struct._GimpCursorView* %40 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCursorView*, %struct._GimpDisplay*, %struct._GimpContext*)* @gimp_cursor_view_diplay_changed to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 2)
  %42 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv27 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %42, i32 0, i32 1
  %43 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv27, align 8
  %context28 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %43, i32 0, i32 15
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context28, align 8
  %45 = bitcast %struct._GimpContext* %44 to i8*
  %46 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %47 = bitcast %struct._GimpCursorView* %46 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCursorView*, %struct._GimpImage*, %struct._GimpContext*)* @gimp_cursor_view_image_changed to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 2)
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call30 = call i8* @gimp_context_get_display(%struct._GimpContext* %48)
  %49 = bitcast i8* %call30 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %49, %struct._GimpDisplay** %display, align 8
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call31 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %50)
  store %struct._GimpImage* %call31, %struct._GimpImage** %image, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.20, %if.end.14
  %51 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %53 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv33 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %53, i32 0, i32 1
  %54 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv33, align 8
  %context34 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %54, i32 0, i32 15
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context34, align 8
  call void @gimp_cursor_view_diplay_changed(%struct._GimpCursorView* %51, %struct._GimpDisplay* %52, %struct._GimpContext* %55)
  %56 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %58 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view, align 8
  %priv35 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %58, i32 0, i32 1
  %59 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv35, align 8
  %context36 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %59, i32 0, i32 15
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context36, align 8
  call void @gimp_cursor_view_image_changed(%struct._GimpCursorView* %56, %struct._GimpImage* %57, %struct._GimpContext* %60)
  br label %return

return:                                           ; preds = %if.end.32, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @g_type_class_peek(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_frame_mode_get_type() #2

declare %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass*, i8*) #1

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

declare %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_diplay_changed(%struct._GimpCursorView* %view, %struct._GimpDisplay* %display, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %tobool = icmp ne %struct._GimpDisplay* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %1)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %2, i32 0, i32 1
  %3 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %shell1 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %3, i32 0, i32 16
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell1, align 8
  %tobool2 = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %5, i32 0, i32 1
  %6 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv4, align 8
  %shell5 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %6, i32 0, i32 16
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell5, align 8
  %8 = bitcast %struct._GimpDisplayShell* %7 to i8*
  %9 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %10 = bitcast %struct._GimpCursorView* %9 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCursorView*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_cursor_view_shell_unit_changed to i8*), i8* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %12 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv8 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %12, i32 0, i32 1
  %13 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv8, align 8
  %shell9 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %13, i32 0, i32 16
  store %struct._GimpDisplayShell* %11, %struct._GimpDisplayShell** %shell9, align 8
  %14 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv10 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %14, i32 0, i32 1
  %15 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv10, align 8
  %shell11 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %15, i32 0, i32 16
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell11, align 8
  %tobool12 = icmp ne %struct._GimpDisplayShell* %16, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.7
  %17 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv14 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %17, i32 0, i32 1
  %18 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv14, align 8
  %shell15 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %18, i32 0, i32 16
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell15, align 8
  %20 = bitcast %struct._GimpDisplayShell* %19 to i8*
  %21 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %22 = bitcast %struct._GimpCursorView* %21 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCursorView*, %struct._GParamSpec*, %struct._GimpDisplayShell*)* @gimp_cursor_view_shell_unit_changed to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.7
  %23 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %24 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv18 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %24, i32 0, i32 1
  %25 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv18, align 8
  %shell19 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %25, i32 0, i32 16
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell19, align 8
  call void @gimp_cursor_view_shell_unit_changed(%struct._GimpCursorView* %23, %struct._GParamSpec* null, %struct._GimpDisplayShell* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_image_changed(%struct._GimpCursorView* %view, %struct._GimpImage* %image, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %1 = bitcast %struct._GimpCursorView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cursor_view_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_cursor_view_image_changed, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %14, i32 0, i32 1
  %15 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %image11 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %15, i32 0, i32 17
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image11, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, %16
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  br label %return

if.end.14:                                        ; preds = %do.end
  %17 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %17, i32 0, i32 1
  %18 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv15, align 8
  %image16 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %18, i32 0, i32 17
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image16, align 8
  %tobool17 = icmp ne %struct._GimpImage* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.14
  %20 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv19 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %20, i32 0, i32 1
  %21 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv19, align 8
  %image20 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %21, i32 0, i32 17
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image20, align 8
  %23 = bitcast %struct._GimpImage* %22 to i8*
  %24 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %25 = bitcast %struct._GimpCursorView* %24 to i8*
  %call21 = call i32 @g_signal_handlers_disconnect_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpCursorView*, %struct._GimpImage*)* @gimp_cursor_view_mask_changed to i8*), i8* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.14
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %27 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv23 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %27, i32 0, i32 1
  %28 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv23, align 8
  %image24 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %28, i32 0, i32 17
  store %struct._GimpImage* %26, %struct._GimpImage** %image24, align 8
  %29 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv25 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %29, i32 0, i32 1
  %30 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv25, align 8
  %image26 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %30, i32 0, i32 17
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image26, align 8
  %tobool27 = icmp ne %struct._GimpImage* %31, null
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.end.22
  %32 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv29 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %32, i32 0, i32 1
  %33 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv29, align 8
  %image30 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %33, i32 0, i32 17
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image30, align 8
  %35 = bitcast %struct._GimpImage* %34 to i8*
  %36 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %37 = bitcast %struct._GimpCursorView* %36 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCursorView*, %struct._GimpImage*)* @gimp_cursor_view_mask_changed to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.end.22
  %38 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %39 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv33 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %39, i32 0, i32 1
  %40 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv33, align 8
  %image34 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %40, i32 0, i32 17
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image34, align 8
  call void @gimp_cursor_view_mask_changed(%struct._GimpCursorView* %38, %struct._GimpImage* %41)
  br label %return

return:                                           ; preds = %if.end.32, %if.then.13, %if.else.9
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_shell_unit_changed(%struct._GimpCursorView* %view, %struct._GParamSpec* %pspec, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %new_unit = alloca i32, align 4
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 0, i32* %new_unit, align 4
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call i32 @gimp_display_shell_get_unit(%struct._GimpDisplayShell* %1)
  store i32 %call, i32* %new_unit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %2, i32 0, i32 1
  %3 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %unit = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %3, i32 0, i32 18
  %4 = load i32, i32* %unit, align 4
  %5 = load i32, i32* %new_unit, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %7 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %7, i32 0, i32 1
  %8 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv2, align 8
  %image = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %8, i32 0, i32 17
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load i32, i32* %new_unit, align 4
  call void @gimp_cursor_view_update_selection_info(%struct._GimpCursorView* %6, %struct._GimpImage* %9, i32 %10)
  %11 = load i32, i32* %new_unit, align 4
  %12 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %12, i32 0, i32 1
  %13 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv3, align 8
  %unit4 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %13, i32 0, i32 18
  store i32 %11, i32* %unit4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.1, %if.end
  ret void
}

declare i32 @gimp_display_shell_get_unit(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cursor_view_mask_changed(%struct._GimpCursorView* %view, %struct._GimpImage* %image) #3 {
entry:
  %view.addr = alloca %struct._GimpCursorView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpCursorView* %view, %struct._GimpCursorView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %1 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %1, i32 0, i32 1
  %2 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv, align 8
  %image1 = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %2, i32 0, i32 17
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  %4 = load %struct._GimpCursorView*, %struct._GimpCursorView** %view.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpCursorView, %struct._GimpCursorView* %4, i32 0, i32 1
  %5 = load %struct._GimpCursorViewPriv*, %struct._GimpCursorViewPriv** %priv2, align 8
  %unit = getelementptr inbounds %struct._GimpCursorViewPriv, %struct._GimpCursorViewPriv* %5, i32 0, i32 18
  %6 = load i32, i32* %unit, align 4
  call void @gimp_cursor_view_update_selection_info(%struct._GimpCursorView* %0, %struct._GimpImage* %3, i32 %6)
  ret void
}

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare double @gimp_pixels_to_units(double, i32, double) #1

declare i32 @gimp_unit_get_digits(i32) #1

declare i8* @gimp_unit_get_abbreviation(i32) #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
