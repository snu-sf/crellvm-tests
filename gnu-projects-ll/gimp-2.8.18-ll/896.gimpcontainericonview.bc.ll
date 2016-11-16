; ModuleID = './app/widgets/gimpcontainericonview.bc'
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
%struct._Gimp = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContainerIconViewClass = type { %struct._GimpContainerBoxClass }
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
%struct._GimpContainerIconView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkIconView*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerIconViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkIconView = type { %struct._GtkContainer, %struct._GtkIconViewPrivate* }
%struct._GtkIconViewPrivate = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerIconViewPriv = type { %struct._GimpViewRenderer* }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkCellLayout = type opaque
%struct._GimpContainerTreeStore = type { %struct._GtkTreeStore }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTreePath = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._TempBuf = type opaque

@gimp_container_icon_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpContainerIconView\00", align 1
@gimp_container_icon_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_container_icon_view_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_icon_view_new = private unnamed_addr constant [29 x i8] c"gimp_container_icon_view_new\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"container == NULL || GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@gimp_container_icon_view_parent_class = internal global i8* null, align 8
@GimpContainerIconView_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"row-spacing\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"column-spacing\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"margin\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"item-padding\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"has-tooltip\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"selection-changed\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"item-activated\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"query-tooltip\00", align 1
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_icon_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_icon_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_icon_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_container_box_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_icon_view_class_intern_init to void (i8*, i8*)*), i32 320, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainerIconView*)* @gimp_container_icon_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_container_icon_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_icon_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_container_icon_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_icon_view_parent_class, align 8
  %1 = load i32, i32* @GimpContainerIconView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainerIconView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerIconViewClass*
  call void @gimp_container_icon_view_class_init(%struct._GimpContainerIconViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_init(%struct._GimpContainerIconView* %icon_view) #3 {
entry:
  %icon_view.addr = alloca %struct._GimpContainerIconView*, align 8
  %box = alloca %struct._GimpContainerBox*, align 8
  store %struct._GimpContainerIconView* %icon_view, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %0 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %1 = bitcast %struct._GimpContainerIconView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerBox*
  store %struct._GimpContainerBox* %2, %struct._GimpContainerBox** %box, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %4 = bitcast %struct._GimpContainerIconView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_icon_view_get_type() #5
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpContainerIconViewPriv*
  %6 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %6, i32 0, i32 7
  store %struct._GimpContainerIconViewPriv* %5, %struct._GimpContainerIconViewPriv** %priv, align 8
  %7 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %model_columns = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns, i32 0, i32 0
  %8 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %n_model_columns = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %8, i32 0, i32 2
  call void @gimp_container_tree_store_columns_init(i64* %arraydecay, i32* %n_model_columns)
  %9 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_scrolled_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %12, i32 1)
  %13 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win6 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win6, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_scrolled_window_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %16, i32 1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %iface, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpContainerViewInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %2, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %tobool = icmp ne %struct._GimpContainerViewInterface* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @gimp_container_view_interface_get_type() #5
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %4, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %5, i32 0, i32 4
  store void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_container_icon_view_set_container, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 5
  store void (%struct._GimpContainerView*, %struct._GimpContext*)* @gimp_container_icon_view_set_context, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_selection_mode = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 6
  store void (%struct._GimpContainerView*, i32)* @gimp_container_icon_view_set_selection_mode, void (%struct._GimpContainerView*, i32)** %set_selection_mode, align 8
  %8 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %8, i32 0, i32 7
  store i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)* @gimp_container_icon_view_insert_item, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %9 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %remove_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %9, i32 0, i32 9
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_icon_view_remove_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %remove_item, align 8
  %10 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %reorder_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %10, i32 0, i32 10
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)* @gimp_container_icon_view_reorder_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)** %reorder_item, align 8
  %11 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %rename_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %11, i32 0, i32 11
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_icon_view_rename_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %rename_item, align 8
  %12 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %12, i32 0, i32 1
  store i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_icon_view_select_item, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %13 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %13, i32 0, i32 12
  store void (%struct._GimpContainerView*)* @gimp_container_icon_view_clear_items, void (%struct._GimpContainerView*)** %clear_items, align 8
  %14 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %14, i32 0, i32 13
  store void (%struct._GimpContainerView*)* @gimp_container_icon_view_set_view_size, void (%struct._GimpContainerView*)** %set_view_size, align 8
  %15 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %get_selected = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %15, i32 0, i32 14
  store i32 (%struct._GimpContainerView*, %struct._GList**)* @gimp_container_icon_view_get_selected, i32 (%struct._GimpContainerView*, %struct._GList**)** %get_selected, align 8
  %16 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_data_free = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %16, i32 0, i32 15
  store void (i8*)* bitcast (void (%struct._GtkTreeIter*)* @gtk_tree_iter_free to void (i8*)*), void (i8*)** %insert_data_free, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_container_icon_view_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i32 %view_size, i32 %view_border_width) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_icon_view_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp13 = icmp eq %struct._GimpContext* %14, null
  br i1 %cmp13, label %if.then.38, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %do.body.12
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %16 = bitcast %struct._GimpContext* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_context_get_type() #5
  store i64 %call19, i64* %__t18, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %lor.lhs.false.14
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type29, align 8
  %23 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %22, %23
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %25 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %26 = load i32, i32* %__r21, align 4
  store i32 %26, i32* %tmp36
  %27 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.35, %do.body.12
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_icon_view_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %28 = load i32, i32* %view_size.addr, align 4
  %cmp43 = icmp sgt i32 %28, 0
  br i1 %cmp43, label %land.lhs.true.44, label %if.else.47

land.lhs.true.44:                                 ; preds = %do.body.42
  %29 = load i32, i32* %view_size.addr, align 4
  %cmp45 = icmp sle i32 %29, 2048
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %land.lhs.true.44
  br label %if.end.48

if.else.47:                                       ; preds = %land.lhs.true.44, %do.body.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_icon_view_new, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.48:                                        ; preds = %if.then.46
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %30 = load i32, i32* %view_border_width.addr, align 4
  %cmp51 = icmp sge i32 %30, 0
  br i1 %cmp51, label %land.lhs.true.52, label %if.else.55

land.lhs.true.52:                                 ; preds = %do.body.50
  %31 = load i32, i32* %view_border_width.addr, align 4
  %cmp53 = icmp sle i32 %31, 16
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %land.lhs.true.52
  br label %if.end.56

if.else.55:                                       ; preds = %land.lhs.true.52, %do.body.50
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_icon_view_new, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %call58 = call i64 @gimp_container_icon_view_get_type() #5
  %call59 = call i8* (i64, i8*, ...) @g_object_new(i64 %call58, i8* null)
  %32 = bitcast i8* %call59 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %32, %struct._GimpContainerIconView** %icon_view, align 8
  %33 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %34 = bitcast %struct._GimpContainerIconView* %33 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_container_view_interface_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call60)
  %35 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %35, %struct._GimpContainerView** %view, align 8
  %36 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %37 = load i32, i32* %view_size.addr, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %36, i32 %37, i32 0)
  %38 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool62 = icmp ne %struct._GimpContainer* %38, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %do.end.57
  %39 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %39, %struct._GimpContainer* %40)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %do.end.57
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool65 = icmp ne %struct._GimpContext* %41, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  %42 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %42, %struct._GimpContext* %43)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  %44 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %45 = bitcast %struct._GimpContainerIconView* %44 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_widget_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call68)
  %46 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkWidget*
  store %struct._GtkWidget* %46, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.else.55, %if.else.47, %if.else.39, %if.else.10
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %47
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_container_view_set_view_size(%struct._GimpContainerView*, i32, i32) #1

declare void @gimp_container_view_set_container(%struct._GimpContainerView*, %struct._GimpContainer*) #1

declare void @gimp_container_view_set_context(%struct._GimpContainerView*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_class_init(%struct._GimpContainerIconViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerIconViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpContainerIconViewClass* %klass, %struct._GimpContainerIconViewClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerIconViewClass*, %struct._GimpContainerIconViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerIconViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpContainerIconViewClass*, %struct._GimpContainerIconViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpContainerIconViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_container_icon_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_container_icon_view_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_container_icon_view_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %popup_menu = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 61
  store i32 (%struct._GtkWidget*)* @gimp_container_icon_view_popup_menu, i32 (%struct._GtkWidget*)** %popup_menu, align 8
  %10 = load %struct._GimpContainerIconViewClass*, %struct._GimpContainerIconViewClass** %klass.addr, align 8
  %11 = bitcast %struct._GimpContainerIconViewClass* %10 to i8*
  call void @g_type_class_add_private(i8* %11, i64 8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %box = alloca %struct._GimpContainerBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %5, %struct._GimpContainerView** %view, align 8
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %7 = bitcast %struct._GObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_container_box_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpContainerBox*
  store %struct._GimpContainerBox* %8, %struct._GimpContainerBox** %box, align 8
  %9 = load i8*, i8** @gimp_container_icon_view_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 9
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** @gimp_container_icon_view_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %constructed8 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 9
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed8, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %19 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %n_model_columns = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %19, i32 0, i32 2
  %20 = load i32, i32* %n_model_columns, align 4
  %21 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model_columns = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %21, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns, i32 0, i32 0
  %call9 = call %struct._GtkTreeModel* @gimp_container_tree_store_new(%struct._GimpContainerView* %18, i32 %20, i64* %arraydecay)
  %22 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %22, i32 0, i32 1
  store %struct._GtkTreeModel* %call9, %struct._GtkTreeModel** %model, align 8
  %call10 = call i64 @gtk_icon_view_get_type() #5
  %23 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model11 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %23, i32 0, i32 1
  %24 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model11, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._GtkTreeModel* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* null)
  %25 = bitcast i8* %call12 to %struct._GtkIconView*
  %26 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view13 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %26, i32 0, i32 4
  store %struct._GtkIconView* %25, %struct._GtkIconView** %view13, align 8
  %27 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model14 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %27, i32 0, i32 1
  %28 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model14, align 8
  %29 = bitcast %struct._GtkTreeModel* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %30, i32 0, i32 1
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call15)
  %33 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  %34 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view17 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %34, i32 0, i32 4
  %35 = load %struct._GtkIconView*, %struct._GtkIconView** %view17, align 8
  %36 = bitcast %struct._GtkIconView* %35 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call18)
  %37 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  call void @gtk_container_add(%struct._GtkContainer* %33, %struct._GtkWidget* %37)
  %38 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view20 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %38, i32 0, i32 4
  %39 = load %struct._GtkIconView*, %struct._GtkIconView** %view20, align 8
  %40 = bitcast %struct._GtkIconView* %39 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call21)
  %41 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %42 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %43 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view23 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %43, i32 0, i32 4
  %44 = load %struct._GtkIconView*, %struct._GtkIconView** %view23, align 8
  %45 = bitcast %struct._GtkIconView* %44 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_widget_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call24)
  %46 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWidget*
  call void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView* %42, %struct._GtkWidget* %46)
  %call26 = call %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new()
  %47 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %renderer_cell = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %47, i32 0, i32 5
  store %struct._GtkCellRenderer* %call26, %struct._GtkCellRenderer** %renderer_cell, align 8
  %48 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view27 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %48, i32 0, i32 4
  %49 = load %struct._GtkIconView*, %struct._GtkIconView** %view27, align 8
  %50 = bitcast %struct._GtkIconView* %49 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_cell_layout_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call28)
  %51 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkCellLayout*
  %52 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %renderer_cell30 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %52, i32 0, i32 5
  %53 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell30, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %51, %struct._GtkCellRenderer* %53, i32 0)
  %54 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view31 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %54, i32 0, i32 4
  %55 = load %struct._GtkIconView*, %struct._GtkIconView** %view31, align 8
  %56 = bitcast %struct._GtkIconView* %55 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_cell_layout_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call32)
  %57 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkCellLayout*
  %58 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %renderer_cell34 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %58, i32 0, i32 5
  %59 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell34, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %57, %struct._GtkCellRenderer* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 0, i8* null)
  %60 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model35 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %60, i32 0, i32 1
  %61 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model35, align 8
  %62 = bitcast %struct._GtkTreeModel* %61 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_container_tree_store_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call36)
  %63 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpContainerTreeStore*
  %64 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %renderer_cell38 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %64, i32 0, i32 5
  %65 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell38, align 8
  call void @gimp_container_tree_store_add_renderer_cell(%struct._GimpContainerTreeStore* %63, %struct._GtkCellRenderer* %65)
  %66 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view39 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %66, i32 0, i32 4
  %67 = load %struct._GtkIconView*, %struct._GtkIconView** %view39, align 8
  %68 = bitcast %struct._GtkIconView* %67 to i8*
  %69 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %70 = bitcast %struct._GimpContainerIconView* %69 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkIconView*, %struct._GimpContainerIconView*)* @gimp_container_icon_view_selection_changed to void ()*), i8* %70, void (i8*, %struct._GClosure*)* null, i32 0)
  %71 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view41 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %71, i32 0, i32 4
  %72 = load %struct._GtkIconView*, %struct._GtkIconView** %view41, align 8
  %73 = bitcast %struct._GtkIconView* %72 to i8*
  %74 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %75 = bitcast %struct._GimpContainerIconView* %74 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkIconView*, %struct._GtkTreePath*, %struct._GimpContainerIconView*)* @gimp_container_icon_view_item_activated to void ()*), i8* %75, void (i8*, %struct._GClosure*)* null, i32 0)
  %76 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view43 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %76, i32 0, i32 4
  %77 = load %struct._GtkIconView*, %struct._GtkIconView** %view43, align 8
  %78 = bitcast %struct._GtkIconView* %77 to i8*
  %79 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %80 = bitcast %struct._GimpContainerIconView* %79 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*, %struct._GimpContainerIconView*)* @gimp_container_icon_view_tooltip to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_container_icon_view_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 6
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %3(%struct._GObject* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_unmap(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i8*, i8** @gimp_container_icon_view_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 9
  %3 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %3(%struct._GtkWidget* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_icon_view_popup_menu(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %call2 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %2, void (%struct._GtkMenu*, i32*, i32*, i8*)* @gimp_container_icon_view_menu_position, i8* %4)
  ret i32 %call2
}

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GtkTreeModel* @gimp_container_tree_store_new(%struct._GimpContainerView*, i32, i64*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_view_get_type() #2

declare void @g_object_unref(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView*, %struct._GtkWidget*) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new() #1

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

declare void @gtk_cell_layout_set_attributes(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) #1

declare void @gimp_container_tree_store_add_renderer_cell(%struct._GimpContainerTreeStore*, %struct._GtkCellRenderer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_store_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_selection_changed(%struct._GtkIconView* %gtk_icon_view, %struct._GimpContainerIconView* %icon_view) #3 {
entry:
  %gtk_icon_view.addr = alloca %struct._GtkIconView*, align 8
  %icon_view.addr = alloca %struct._GimpContainerIconView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %items = alloca %struct._GList*, align 8
  store %struct._GtkIconView* %gtk_icon_view, %struct._GtkIconView** %gtk_icon_view.addr, align 8
  store %struct._GimpContainerIconView* %icon_view, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %0 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %1 = bitcast %struct._GimpContainerIconView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call i32 @gimp_container_icon_view_get_selected(%struct._GimpContainerView* %3, %struct._GList** %items)
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = load %struct._GList*, %struct._GList** %items, align 8
  %call3 = call i32 @gimp_container_view_multi_selected(%struct._GimpContainerView* %4, %struct._GList* %5)
  %6 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_item_activated(%struct._GtkIconView* %view, %struct._GtkTreePath* %path, %struct._GimpContainerIconView* %icon_view) #3 {
entry:
  %view.addr = alloca %struct._GtkIconView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %icon_view.addr = alloca %struct._GimpContainerIconView*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GtkIconView* %view, %struct._GtkIconView** %view.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GimpContainerIconView* %icon_view, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %0 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %0, i32 0, i32 1
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %call = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %2)
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %model1 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model1, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %5 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %6 = bitcast %struct._GimpContainerIconView* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 3
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  call void @gimp_container_view_item_activated(%struct._GimpContainerView* %7, %struct._GimpViewable* %9)
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %11 = bitcast %struct._GimpViewRenderer* %10 to i8*
  call void @g_object_unref(i8* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_icon_view_tooltip(%struct._GtkWidget* %widget, i32 %x, i32 %y, i32 %keyboard_tip, %struct._GtkTooltip* %tooltip, %struct._GimpContainerIconView* %icon_view) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %keyboard_tip.addr = alloca i32, align 4
  %tooltip.addr = alloca %struct._GtkTooltip*, align 8
  %icon_view.addr = alloca %struct._GimpContainerIconView*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %show_tip = alloca i32, align 4
  %desc = alloca i8*, align 8
  %tip = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %keyboard_tip, i32* %keyboard_tip.addr, align 4
  store %struct._GtkTooltip* %tooltip, %struct._GtkTooltip** %tooltip.addr, align 8
  store %struct._GimpContainerIconView* %icon_view, %struct._GimpContainerIconView** %icon_view.addr, align 8
  store i32 0, i32* %show_tip, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkIconView*
  %3 = load i32, i32* %keyboard_tip.addr, align 4
  %call2 = call i32 @gtk_icon_view_get_tooltip_context(%struct._GtkIconView* %2, i32* %x.addr, i32* %y.addr, i32 %3, %struct._GtkTreeModel** null, %struct._GtkTreePath** %path, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %4, i32 0, i32 1
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool3 = icmp ne %struct._GimpViewRenderer* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 3
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call5 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %8, i8** %tip)
  store i8* %call5, i8** %desc, align 8
  %9 = load i8*, i8** %tip, align 8
  %tobool6 = icmp ne i8* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.4
  %10 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %11 = load i8*, i8** %tip, align 8
  call void @gtk_tooltip_set_text(%struct._GtkTooltip* %10, i8* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_icon_view_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkIconView*
  %15 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %17 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %renderer_cell = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %17, i32 0, i32 5
  %18 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell, align 8
  call void @gtk_icon_view_set_tooltip_cell(%struct._GtkIconView* %14, %struct._GtkTooltip* %15, %struct._GtkTreePath* %16, %struct._GtkCellRenderer* %18)
  store i32 1, i32* %show_tip, align 4
  %19 = load i8*, i8** %tip, align 8
  call void @g_free(i8* %19)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.then.4
  %20 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %22 = bitcast %struct._GimpViewRenderer* %21 to i8*
  call void @g_object_unref(i8* %22)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %23 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %23)
  %24 = load i32, i32* %show_tip, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_icon_view_get_selected(%struct._GimpContainerView* %view, %struct._GList** %items) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %items.addr = alloca %struct._GList**, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %selected_items = alloca %struct._GList*, align 8
  %selected_count = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GList** %items, %struct._GList*** %items.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view2 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 4
  %4 = load %struct._GtkIconView*, %struct._GtkIconView** %view2, align 8
  %call3 = call %struct._GList* @gtk_icon_view_get_selected_items(%struct._GtkIconView* %4)
  store %struct._GList* %call3, %struct._GList** %selected_items, align 8
  %5 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %call4 = call i32 @g_list_length(%struct._GList* %5)
  store i32 %call4, i32* %selected_count, align 4
  %6 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  %tobool = icmp ne %struct._GList** %6, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %7 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  store %struct._GList* null, %struct._GList** %7, align 8
  %8 = load %struct._GList*, %struct._GList** %selected_items, align 8
  store %struct._GList* %8, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %9, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %10, i32 0, i32 1
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %12 = bitcast %struct._GtkTreeModel* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_tree_model_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTreeModel*
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GtkTreePath*
  %call8 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %13, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %16)
  %17 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model9 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %17, i32 0, i32 1
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model9, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %19, i32 0, i32 3
  %20 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool10 = icmp ne %struct._GimpViewable* %20, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  %21 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  %22 = load %struct._GList*, %struct._GList** %21, align 8
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable12 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 3
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable12, align 8
  %25 = bitcast %struct._GimpViewable* %24 to i8*
  %call13 = call %struct._GList* @g_list_prepend(%struct._GList* %22, i8* %25)
  %26 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  store %struct._GList* %call13, %struct._GList** %26, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %28 = bitcast %struct._GimpViewRenderer* %27 to i8*
  call void @g_object_unref(i8* %28)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %29, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  %33 = load %struct._GList*, %struct._GList** %32, align 8
  %call15 = call %struct._GList* @g_list_reverse(%struct._GList* %33)
  %34 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  store %struct._GList* %call15, %struct._GList** %34, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %entry
  %35 = load %struct._GList*, %struct._GList** %selected_items, align 8
  call void @g_list_free_full(%struct._GList* %35, void (i8*)* bitcast (void (%struct._GtkTreePath*)* @gtk_tree_path_free to void (i8*)*))
  %36 = load i32, i32* %selected_count, align 4
  ret i32 %36
}

declare i32 @gimp_container_view_multi_selected(%struct._GimpContainerView*, %struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GList* @gtk_icon_view_get_selected_items(%struct._GtkIconView*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @gimp_container_view_item_activated(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i32 @gtk_icon_view_get_tooltip_context(%struct._GtkIconView*, i32*, i32*, i32, %struct._GtkTreeModel**, %struct._GtkTreePath**, %struct._GtkTreeIter*) #1

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

declare void @gtk_tooltip_set_text(%struct._GtkTooltip*, i8*) #1

declare void @gtk_icon_view_set_tooltip_cell(%struct._GtkIconView*, %struct._GtkTooltip*, %struct._GtkTreePath*, %struct._GtkCellRenderer*) #1

declare void @g_free(i8*) #1

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_menu_position(%struct._GtkMenu* %menu, i32* %x, i32* %y, i8* %data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %style = alloca %struct._GtkStyle*, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 4
  %4 = load %struct._GtkIconView*, %struct._GtkIconView** %view, align 8
  %5 = bitcast %struct._GtkIconView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %7, %struct._GdkRectangle* %allocation)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %8)
  %9 = load i32*, i32** %x.addr, align 8
  %10 = load i32*, i32** %y.addr, align 8
  %call5 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call4, i32* %9, i32* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %11)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %x7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %12 = load i32, i32* %x7, align 4
  %13 = load i32*, i32** %x.addr, align 8
  %14 = load i32, i32* %13, align 4
  %add = add nsw i32 %14, %12
  store i32 %add, i32* %13, align 4
  %y8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %15 = load i32, i32* %y8, align 4
  %16 = load i32*, i32** %y.addr, align 8
  %17 = load i32, i32* %16, align 4
  %add9 = add nsw i32 %17, %15
  store i32 %add9, i32* %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call10 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %18)
  store %struct._GtkStyle* %call10, %struct._GtkStyle** %style, align 8
  %19 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %19, i32 0, i32 12
  %20 = load i32, i32* %xthickness, align 4
  %21 = load i32*, i32** %x.addr, align 8
  %22 = load i32, i32* %21, align 4
  %add11 = add nsw i32 %22, %20
  store i32 %add11, i32* %21, align 4
  %23 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %23, i32 0, i32 13
  %24 = load i32, i32* %ythickness, align 4
  %25 = load i32*, i32** %y.addr, align 8
  %26 = load i32, i32* %25, align 4
  %add12 = add nsw i32 %26, %24
  store i32 %add12, i32* %25, align 4
  %27 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %28 = load i32*, i32** %x.addr, align 8
  %29 = load i32*, i32** %y.addr, align 8
  call void @gimp_menu_position(%struct._GtkMenu* %27, i32* %28, i32* %29)
  ret void
}

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gimp_menu_position(%struct._GtkMenu*, i32*, i32*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_set_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %old_container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %3)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %old_container, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool3 = icmp ne %struct._GimpContainer* %5, null
  br i1 %tobool3, label %if.end.27, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view5 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %6, i32 0, i32 4
  %7 = load %struct._GtkIconView*, %struct._GtkIconView** %view5, align 8
  %8 = bitcast %struct._GtkIconView* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %call8 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %10)
  %call9 = call i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget* %9, i64 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %if.then.4
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %call12 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %11)
  %call13 = call i8* @g_type_class_peek(i64 %call12)
  %12 = bitcast i8* %call13 to %struct._GTypeClass*
  %call14 = call i64 @gimp_viewable_get_type() #5
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call14)
  %13 = bitcast %struct._GTypeClass* %call15 to %struct._GimpViewableClass*
  %get_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %13, i32 0, i32 5
  %14 = load i32 (%struct._GimpViewable*, i32*, i32*)*, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size, align 8
  %tobool16 = icmp ne i32 (%struct._GimpViewable*, i32*, i32*)* %14, null
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.11
  %15 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view18 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %15, i32 0, i32 4
  %16 = load %struct._GtkIconView*, %struct._GtkIconView** %view18, align 8
  %17 = bitcast %struct._GtkIconView* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  call void @gimp_dnd_pixbuf_source_remove(%struct._GtkWidget* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.11
  %19 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view21 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %19, i32 0, i32 4
  %20 = load %struct._GtkIconView*, %struct._GtkIconView** %view21, align 8
  %21 = bitcast %struct._GtkIconView* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  call void @gtk_drag_source_unset(%struct._GtkWidget* %22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.4
  %23 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view25 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %23, i32 0, i32 4
  %24 = load %struct._GtkIconView*, %struct._GtkIconView** %view25, align 8
  %25 = bitcast %struct._GtkIconView* %24 to i8*
  %26 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %27 = bitcast %struct._GimpContainerIconView* %26 to i8*
  %call26 = call i32 @g_signal_handlers_disconnect_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpContainerIconView*)* @gimp_container_icon_view_button_press to i8*), i8* %27)
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.24, %if.then
  br label %if.end.57

if.else:                                          ; preds = %entry
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool28 = icmp ne %struct._GimpContainer* %28, null
  br i1 %tobool28, label %if.then.29, label %if.end.56

if.then.29:                                       ; preds = %if.else
  %29 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view30 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %29, i32 0, i32 4
  %30 = load %struct._GtkIconView*, %struct._GtkIconView** %view30, align 8
  %31 = bitcast %struct._GtkIconView* %30 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_widget_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call31)
  %32 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkWidget*
  %33 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call33 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %33)
  %call34 = call i32 @gimp_dnd_drag_source_set_by_type(%struct._GtkWidget* %32, i32 768, i64 %call33, i32 2)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.53

if.then.36:                                       ; preds = %if.then.29
  %34 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view37 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %34, i32 0, i32 4
  %35 = load %struct._GtkIconView*, %struct._GtkIconView** %view37, align 8
  %36 = bitcast %struct._GtkIconView* %35 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_widget_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call38)
  %37 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkWidget*
  %38 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call40 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %38)
  %39 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %40 = bitcast %struct._GimpContainerIconView* %39 to i8*
  %call41 = call i32 @gimp_dnd_viewable_source_add(%struct._GtkWidget* %37, i64 %call40, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* @gimp_container_icon_view_drag_viewable, i8* %40)
  %41 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call42 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %41)
  %call43 = call i8* @g_type_class_peek(i64 %call42)
  %42 = bitcast i8* %call43 to %struct._GTypeClass*
  %call44 = call i64 @gimp_viewable_get_type() #5
  %call45 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %42, i64 %call44)
  %43 = bitcast %struct._GTypeClass* %call45 to %struct._GimpViewableClass*
  %get_size46 = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %43, i32 0, i32 5
  %44 = load i32 (%struct._GimpViewable*, i32*, i32*)*, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size46, align 8
  %tobool47 = icmp ne i32 (%struct._GimpViewable*, i32*, i32*)* %44, null
  br i1 %tobool47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.then.36
  %45 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view49 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %45, i32 0, i32 4
  %46 = load %struct._GtkIconView*, %struct._GtkIconView** %view49, align 8
  %47 = bitcast %struct._GtkIconView* %46 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_widget_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call50)
  %48 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkWidget*
  %49 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %50 = bitcast %struct._GimpContainerIconView* %49 to i8*
  call void @gimp_dnd_pixbuf_source_add(%struct._GtkWidget* %48, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)* @gimp_container_icon_view_drag_pixbuf, i8* %50)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.then.36
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.29
  %51 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view54 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %51, i32 0, i32 4
  %52 = load %struct._GtkIconView*, %struct._GtkIconView** %view54, align 8
  %53 = bitcast %struct._GtkIconView* %52 to i8*
  %54 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %55 = bitcast %struct._GimpContainerIconView* %54 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpContainerIconView*)* @gimp_container_icon_view_button_press to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.53, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.27
  %56 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %56, i32 0, i32 4
  %57 = load void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %58 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %59 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void %57(%struct._GimpContainerView* %58, %struct._GimpContainer* %59)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 5
  %4 = load void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpContainerView* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %7, i32 0, i32 1
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model2 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %9, i32 0, i32 1
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model2, align 8
  %11 = bitcast %struct._GtkTreeModel* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_tree_store_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainerTreeStore*
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_tree_store_set_context(%struct._GimpContainerTreeStore* %12, %struct._GimpContext* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_set_selection_mode(%struct._GimpContainerView* %view, i32 %mode) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %mode.addr = alloca i32, align 4
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view2 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 4
  %4 = load %struct._GtkIconView*, %struct._GtkIconView** %view2, align 8
  %5 = load i32, i32* %mode.addr, align 4
  call void @gtk_icon_view_set_selection_mode(%struct._GtkIconView* %4, i32 %5)
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_selection_mode = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 6
  %7 = load void (%struct._GimpContainerView*, i32)*, void (%struct._GimpContainerView*, i32)** %set_selection_mode, align 8
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %9 = load i32, i32* %mode.addr, align 4
  call void %7(%struct._GimpContainerView* %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_container_icon_view_insert_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %parent_insert_data, i32 %index) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %parent_insert_data.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %parent_insert_data, i8** %parent_insert_data.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeStore*
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %8 = load i8*, i8** %parent_insert_data.addr, align 8
  %9 = bitcast i8* %8 to %struct._GtkTreeIter*
  %10 = load i32, i32* %index.addr, align 4
  %call4 = call %struct._GtkTreeIter* @gimp_container_tree_store_insert_item(%struct._GimpContainerTreeStore* %6, %struct._GimpViewable* %7, %struct._GtkTreeIter* %9, i32 %10)
  store %struct._GtkTreeIter* %call4, %struct._GtkTreeIter** %iter, align 8
  %11 = load i8*, i8** %parent_insert_data.addr, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %13 = bitcast %struct._GtkTreeIter* %12 to i8*
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_remove_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeStore*
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %8 = load i8*, i8** %insert_data.addr, align 8
  %9 = bitcast i8* %8 to %struct._GtkTreeIter*
  call void @gimp_container_tree_store_remove_item(%struct._GimpContainerTreeStore* %6, %struct._GimpViewable* %7, %struct._GtkTreeIter* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_reorder_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i32 %new_index, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %new_index.addr = alloca i32, align 4
  %insert_data.addr = alloca i8*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %selected = alloca i32, align 4
  %selected_iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %4, %struct._GtkTreeIter** %iter, align 8
  store i32 0, i32* %selected, align 4
  %5 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %5, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %call2 = call i32 @gimp_container_icon_view_get_selected_single(%struct._GimpContainerIconView* %6, %struct._GtkTreeIter* %selected_iter)
  store i32 %call2, i32* %selected, align 4
  %7 = load i32, i32* %selected, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then
  %8 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %8, i32 0, i32 1
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %selected_iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable5 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 3
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable5, align 8
  %12 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp = icmp ne %struct._GimpViewable* %11, %12
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  store i32 0, i32* %selected, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %14 = bitcast %struct._GimpViewRenderer* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %15 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model9 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %15, i32 0, i32 1
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model9, align 8
  %17 = bitcast %struct._GtkTreeModel* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_container_tree_store_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContainerTreeStore*
  %19 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %20 = load i32, i32* %new_index.addr, align 4
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  call void @gimp_container_tree_store_reorder_item(%struct._GimpContainerTreeStore* %18, %struct._GimpViewable* %19, i32 %20, %struct._GtkTreeIter* %21)
  %22 = load i32, i32* %selected, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.8
  %23 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call14 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %23, %struct._GimpViewable* %24)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_rename_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %4, %struct._GtkTreeIter** %iter, align 8
  %5 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %7 = bitcast %struct._GtkTreeModel* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeStore*
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %call4 = call i32 @gimp_container_tree_store_rename_item(%struct._GimpContainerTreeStore* %8, %struct._GimpViewable* %9, %struct._GtkTreeIter* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_icon_view_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %parent_path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %insert_data.addr, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %insert_data.addr, align 8
  %6 = bitcast i8* %5 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %6, %struct._GtkTreeIter** %iter, align 8
  %7 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %7, i32 0, i32 1
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %9 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %call3 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %9)
  store %struct._GtkTreePath* %call3, %struct._GtkTreePath** %path, align 8
  %10 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call4 = call %struct._GtkTreePath* @gtk_tree_path_copy(%struct._GtkTreePath* %10)
  store %struct._GtkTreePath* %call4, %struct._GtkTreePath** %parent_path, align 8
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %parent_path, align 8
  %call5 = call i32 @gtk_tree_path_up(%struct._GtkTreePath* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %12 = load %struct._GtkTreePath*, %struct._GtkTreePath** %parent_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %12)
  %13 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view8 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %13, i32 0, i32 4
  %14 = load %struct._GtkIconView*, %struct._GtkIconView** %view8, align 8
  %15 = bitcast %struct._GtkIconView* %14 to i8*
  %16 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %17 = bitcast %struct._GimpContainerIconView* %16 to i8*
  %call9 = call i32 @g_signal_handlers_block_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkIconView*, %struct._GimpContainerIconView*)* @gimp_container_icon_view_selection_changed to i8*), i8* %17)
  %18 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view10 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %18, i32 0, i32 4
  %19 = load %struct._GtkIconView*, %struct._GtkIconView** %view10, align 8
  %20 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_icon_view_select_path(%struct._GtkIconView* %19, %struct._GtkTreePath* %20)
  %21 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view11 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %21, i32 0, i32 4
  %22 = load %struct._GtkIconView*, %struct._GtkIconView** %view11, align 8
  %23 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_icon_view_set_cursor(%struct._GtkIconView* %22, %struct._GtkTreePath* %23, %struct._GtkCellRenderer* null, i32 0)
  %24 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view12 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %24, i32 0, i32 4
  %25 = load %struct._GtkIconView*, %struct._GtkIconView** %view12, align 8
  %26 = bitcast %struct._GtkIconView* %25 to i8*
  %27 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %28 = bitcast %struct._GimpContainerIconView* %27 to i8*
  %call13 = call i32 @g_signal_handlers_unblock_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkIconView*, %struct._GimpContainerIconView*)* @gimp_container_icon_view_selection_changed to i8*), i8* %28)
  %29 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view14 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %29, i32 0, i32 4
  %30 = load %struct._GtkIconView*, %struct._GtkIconView** %view14, align 8
  %31 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_icon_view_scroll_to_path(%struct._GtkIconView* %30, %struct._GtkTreePath* %31, i32 0, float 0.000000e+00, float 0.000000e+00)
  %32 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %32)
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %entry
  %33 = load i8*, i8** %insert_data.addr, align 8
  %cmp = icmp eq i8* %33, null
  br i1 %cmp, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.else
  %34 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view16 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %34, i32 0, i32 4
  %35 = load %struct._GtkIconView*, %struct._GtkIconView** %view16, align 8
  call void @gtk_icon_view_unselect_all(%struct._GtkIconView* %35)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_clear_items(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeStore*
  call void @gimp_container_tree_store_clear_items(%struct._GimpContainerTreeStore* %6)
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 12
  %8 = load void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)** %clear_items, align 8
  %9 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void %8(%struct._GimpContainerView* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_icon_view_set_view_size(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %model2 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model2, align 8
  %7 = bitcast %struct._GtkTreeModel* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_tree_store_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainerTreeStore*
  call void @gimp_container_tree_store_set_view_size(%struct._GimpContainerTreeStore* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view5 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %9, i32 0, i32 4
  %10 = load %struct._GtkIconView*, %struct._GtkIconView** %view5, align 8
  %tobool6 = icmp ne %struct._GtkIconView* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view8 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %11, i32 0, i32 4
  %12 = load %struct._GtkIconView*, %struct._GtkIconView** %view8, align 8
  call void @gtk_icon_view_set_columns(%struct._GtkIconView* %12, i32 -1)
  %13 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %view9 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %13, i32 0, i32 4
  %14 = load %struct._GtkIconView*, %struct._GtkIconView** %view9, align 8
  call void @gtk_icon_view_set_item_width(%struct._GtkIconView* %14, i32 -1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  ret void
}

declare void @gtk_tree_iter_free(%struct._GtkTreeIter*) #1

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget*, i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare i8* @g_type_class_peek(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_dnd_pixbuf_source_remove(%struct._GtkWidget*) #1

declare void @gtk_drag_source_unset(%struct._GtkWidget*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_icon_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpContainerIconView* %icon_view) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %icon_view.addr = alloca %struct._GimpContainerIconView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpContainerIconView* %icon_view, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %0 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %0, i32 0, i32 7
  %1 = load %struct._GimpContainerIconViewPriv*, %struct._GimpContainerIconViewPriv** %priv, align 8
  %dnd_renderer = getelementptr inbounds %struct._GimpContainerIconViewPriv, %struct._GimpContainerIconViewPriv* %1, i32 0, i32 0
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %dnd_renderer, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkIconView*
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 4
  %6 = load double, double* %x, align 8
  %conv = fptosi double %6 to i32
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 5
  %8 = load double, double* %y, align 8
  %conv2 = fptosi double %8 to i32
  %call3 = call %struct._GtkTreePath* @gtk_icon_view_get_path_at_pos(%struct._GtkIconView* %4, i32 %conv, i32 %conv2)
  store %struct._GtkTreePath* %call3, %struct._GtkTreePath** %path, align 8
  %9 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %tobool = icmp ne %struct._GtkTreePath* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %10, i32 0, i32 1
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %12 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call4 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %12)
  %13 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %model5 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %13, i32 0, i32 1
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model5, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %16 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %priv6 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %16, i32 0, i32 7
  %17 = load %struct._GimpContainerIconViewPriv*, %struct._GimpContainerIconViewPriv** %priv6, align 8
  %dnd_renderer7 = getelementptr inbounds %struct._GimpContainerIconViewPriv, %struct._GimpContainerIconViewPriv* %17, i32 0, i32 0
  store %struct._GimpViewRenderer* %15, %struct._GimpViewRenderer** %dnd_renderer7, align 8
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %19 = bitcast %struct._GimpViewRenderer* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @gimp_dnd_drag_source_set_by_type(%struct._GtkWidget*, i32, i64, i32) #1

declare i32 @gimp_dnd_viewable_source_add(%struct._GtkWidget*, i64, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpViewable* @gimp_container_icon_view_drag_viewable(%struct._GtkWidget* %widget, %struct._GimpContext** %context, i8* %data) #3 {
entry:
  %retval = alloca %struct._GimpViewable*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext**, align 8
  %data.addr = alloca i8*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpContext** %context, %struct._GimpContext*** %context.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContext**, %struct._GimpContext*** %context.addr, align 8
  %tobool = icmp ne %struct._GimpContext** %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %call4 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  %7 = load %struct._GimpContext**, %struct._GimpContext*** %context.addr, align 8
  store %struct._GimpContext* %call4, %struct._GimpContext** %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %8, i32 0, i32 7
  %9 = load %struct._GimpContainerIconViewPriv*, %struct._GimpContainerIconViewPriv** %priv, align 8
  %dnd_renderer = getelementptr inbounds %struct._GimpContainerIconViewPriv, %struct._GimpContainerIconViewPriv* %9, i32 0, i32 0
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %dnd_renderer, align 8
  %tobool5 = icmp ne %struct._GimpViewRenderer* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %priv7 = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %11, i32 0, i32 7
  %12 = load %struct._GimpContainerIconViewPriv*, %struct._GimpContainerIconViewPriv** %priv7, align 8
  %dnd_renderer8 = getelementptr inbounds %struct._GimpContainerIconViewPriv, %struct._GimpContainerIconViewPriv* %12, i32 0, i32 0
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %dnd_renderer8, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 3
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  store %struct._GimpViewable* %14, %struct._GimpViewable** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  store %struct._GimpViewable* null, %struct._GimpViewable** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %retval
  ret %struct._GimpViewable* %15
}

declare void @gimp_dnd_pixbuf_source_add(%struct._GtkWidget*, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_container_icon_view_drag_pixbuf(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %icon_view = alloca %struct._GimpContainerIconView*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_icon_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerIconView*
  store %struct._GimpContainerIconView* %2, %struct._GimpContainerIconView** %icon_view, align 8
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 7
  %4 = load %struct._GimpContainerIconViewPriv*, %struct._GimpContainerIconViewPriv** %priv, align 8
  %dnd_renderer = getelementptr inbounds %struct._GimpContainerIconViewPriv, %struct._GimpContainerIconViewPriv* %4, i32 0, i32 0
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %dnd_renderer, align 8
  store %struct._GimpViewRenderer* %5, %struct._GimpViewRenderer** %renderer, align 8
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 3
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call2 = call i32 @gimp_viewable_get_size(%struct._GimpViewable* %8, i32* %width, i32* %height)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 3
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable4, align 8
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 1
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %13 = load i32, i32* %width, align 4
  %14 = load i32, i32* %height, align 4
  %call5 = call %struct._GdkPixbuf* @gimp_viewable_get_new_pixbuf(%struct._GimpViewable* %10, %struct._GimpContext* %12, i32 %13, i32 %14)
  store %struct._GdkPixbuf* %call5, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %15
}

declare %struct._GtkTreePath* @gtk_icon_view_get_path_at_pos(%struct._GtkIconView*, i32, i32) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare i32 @gimp_viewable_get_size(%struct._GimpViewable*, i32*, i32*) #1

declare %struct._GdkPixbuf* @gimp_viewable_get_new_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare void @gimp_container_tree_store_set_context(%struct._GimpContainerTreeStore*, %struct._GimpContext*) #1

declare void @gtk_icon_view_set_selection_mode(%struct._GtkIconView*, i32) #1

declare %struct._GtkTreeIter* @gimp_container_tree_store_insert_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*, i32) #1

declare void @gimp_container_tree_store_remove_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_icon_view_get_selected_single(%struct._GimpContainerIconView* %icon_view, %struct._GtkTreeIter* %iter) #3 {
entry:
  %icon_view.addr = alloca %struct._GimpContainerIconView*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %selected_items = alloca %struct._GList*, align 8
  %retval1 = alloca i32, align 4
  store %struct._GimpContainerIconView* %icon_view, %struct._GimpContainerIconView** %icon_view.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %0, i32 0, i32 4
  %1 = load %struct._GtkIconView*, %struct._GtkIconView** %view, align 8
  %call = call %struct._GList* @gtk_icon_view_get_selected_items(%struct._GtkIconView* %1)
  store %struct._GList* %call, %struct._GList** %selected_items, align 8
  %2 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %call2 = call i32 @g_list_length(%struct._GList* %2)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContainerIconView*, %struct._GimpContainerIconView** %icon_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerIconView, %struct._GimpContainerIconView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  %7 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %8 = load %struct._GList*, %struct._GList** %selected_items, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GtkTreePath*
  %call5 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %7, %struct._GtkTreePath* %10)
  store i32 1, i32* %retval1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct._GList*, %struct._GList** %selected_items, align 8
  call void @g_list_free_full(%struct._GList* %11, void (i8*)* bitcast (void (%struct._GtkTreePath*)* @gtk_tree_path_free to void (i8*)*))
  %12 = load i32, i32* %retval1, align 4
  ret i32 %12
}

declare void @gimp_container_tree_store_reorder_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, i32, %struct._GtkTreeIter*) #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i32 @gimp_container_tree_store_rename_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_path_copy(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_path_up(%struct._GtkTreePath*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_icon_view_select_path(%struct._GtkIconView*, %struct._GtkTreePath*) #1

declare void @gtk_icon_view_set_cursor(%struct._GtkIconView*, %struct._GtkTreePath*, %struct._GtkCellRenderer*, i32) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_icon_view_scroll_to_path(%struct._GtkIconView*, %struct._GtkTreePath*, i32, float, float) #1

declare void @gtk_icon_view_unselect_all(%struct._GtkIconView*) #1

declare void @gimp_container_tree_store_clear_items(%struct._GimpContainerTreeStore*) #1

declare void @gimp_container_tree_store_set_view_size(%struct._GimpContainerTreeStore*) #1

declare void @gtk_icon_view_set_columns(%struct._GtkIconView*, i32) #1

declare void @gtk_icon_view_set_item_width(%struct._GtkIconView*, i32) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_container_tree_store_columns_init(i64*, i32*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
