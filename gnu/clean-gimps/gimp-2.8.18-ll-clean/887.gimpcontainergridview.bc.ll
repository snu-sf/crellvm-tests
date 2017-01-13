; ModuleID = './app/widgets/gimpcontainergridview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpContainerGridViewClass = type { %struct._GimpContainerBoxClass, i32 (%struct._GimpContainerGridView*, i32, i32)* }
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
%struct._GimpContainerGridView = type { %struct._GimpContainerBox, %struct._GtkWidget*, i32, i32, i32, %struct._GimpView* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkViewport = type { %struct._GtkBin, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkBindingSet = type { i8*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, i8 }
%struct._GtkBindingEntry = type { i32, i32, %struct._GtkBindingSet*, i8, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, %struct._GtkBindingSignal* }
%struct._GtkBindingSignal = type { %struct._GtkBindingSignal*, i8*, i32, %struct._GtkBindingArg* }
%struct._GtkBindingArg = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkWrapBoxChild = type { %struct._GtkWidget*, i8, %struct._GtkWrapBoxChild* }
%struct._GtkWrapBox = type { %struct._GtkContainer, i16, i8, i8, i16, %struct._GtkWrapBoxChild*, float, i32 }

@gimp_container_grid_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpContainerGridView\00", align 1
@gimp_container_grid_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_container_grid_view_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_grid_view_new = private unnamed_addr constant [29 x i8] c"gimp_container_grid_view_new\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"container == NULL || GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@gimp_container_grid_view_parent_class = internal global i8* null, align 8
@GimpContainerGridView_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"move-cursor\00", align 1
@grid_view_signals = internal global [1 x i32] zeroinitializer, align 4
@white_color = internal global %struct._GimpRGB zeroinitializer, align 8
@black_color = internal global %struct._GimpRGB zeroinitializer, align 8
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"double-clicked\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_grid_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_grid_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_grid_view_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_grid_view_class_intern_init to void (i8*, i8*)*), i32 176, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainerGridView*)* @gimp_container_grid_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_container_grid_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_grid_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_container_grid_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_grid_view_parent_class, align 8
  %1 = load i32, i32* @GimpContainerGridView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainerGridView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerGridViewClass*
  call void @gimp_container_grid_view_class_init(%struct._GimpContainerGridViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_init(%struct._GimpContainerGridView* %grid_view) #3 {
entry:
  %grid_view.addr = alloca %struct._GimpContainerGridView*, align 8
  %box = alloca %struct._GimpContainerBox*, align 8
  %viewport = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainerGridView* %grid_view, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %0 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %1 = bitcast %struct._GimpContainerGridView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerBox*
  store %struct._GimpContainerBox* %2, %struct._GimpContainerBox** %box, align 8
  %3 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %rows = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %3, i32 0, i32 2
  store i32 1, i32* %rows, align 4
  %4 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %columns = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %4, i32 0, i32 3
  store i32 1, i32* %columns, align 4
  %5 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %visible_rows = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %5, i32 0, i32 4
  store i32 0, i32* %visible_rows, align 4
  %6 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %selected_item = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %6, i32 0, i32 5
  store %struct._GimpView* null, %struct._GimpView** %selected_item, align 8
  %7 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_scrolled_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %10, i32 1)
  %11 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win4 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %11, i32 0, i32 1
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win4, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_scrolled_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %14, i32 2, i32 0)
  %15 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %16 = bitcast %struct._GimpContainerGridView* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_editor_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpEditor*
  call void @gimp_editor_set_show_name(%struct._GimpEditor* %17, i32 1)
  %call9 = call %struct._GtkWidget* @gtk_hwrap_box_new(i32 0)
  %18 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %wrap_box = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %18, i32 0, i32 1
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %wrap_box, align 8
  %19 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %wrap_box10 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %19, i32 0, i32 1
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box10, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %20, i32 16, i32 16)
  %21 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win11 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %21, i32 0, i32 1
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win11, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_scrolled_window_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call12)
  %24 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkScrolledWindow*
  %25 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %wrap_box14 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box14, align 8
  call void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow* %24, %struct._GtkWidget* %26)
  %27 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %wrap_box15 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %27, i32 0, i32 1
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box15, align 8
  %call16 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %28)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %viewport, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_viewport_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call17)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkViewport*
  call void @gtk_viewport_set_shadow_type(%struct._GtkViewport* %31, i32 0)
  %32 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %wrap_box19 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box19, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %37 = bitcast %struct._GimpContainerGridView* %36 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpContainerGridView*)* @gimp_container_grid_view_viewport_resized to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %viewport, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %41 = bitcast %struct._GimpContainerGridView* %40 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpContainerGridView*)* @gimp_container_grid_view_button_press to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %43 = bitcast %struct._GimpContainerGridView* %42 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call22)
  %44 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %44, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %iface, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpContainerViewInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %2, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 5
  store void (%struct._GimpContainerView*, %struct._GimpContext*)* @gimp_container_grid_view_set_context, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %4 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %4, i32 0, i32 7
  store i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)* @gimp_container_grid_view_insert_item, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %5 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %remove_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %5, i32 0, i32 9
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_grid_view_remove_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %remove_item, align 8
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %reorder_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 10
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)* @gimp_container_grid_view_reorder_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)** %reorder_item, align 8
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %rename_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 11
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_grid_view_rename_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %rename_item, align 8
  %8 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %8, i32 0, i32 1
  store i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_grid_view_select_item, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %9 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %9, i32 0, i32 12
  store void (%struct._GimpContainerView*)* @gimp_container_grid_view_clear_items, void (%struct._GimpContainerView*)** %clear_items, align 8
  %10 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %10, i32 0, i32 13
  store void (%struct._GimpContainerView*)* @gimp_container_grid_view_set_view_size, void (%struct._GimpContainerView*)** %set_view_size, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_container_grid_view_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i32 %view_size, i32 %view_border_width) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_grid_view_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_grid_view_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_grid_view_new, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_grid_view_new, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %call58 = call i64 @gimp_container_grid_view_get_type() #5
  %call59 = call i8* (i64, i8*, ...) @g_object_new(i64 %call58, i8* null)
  %32 = bitcast i8* %call59 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %32, %struct._GimpContainerGridView** %grid_view, align 8
  %33 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %34 = bitcast %struct._GimpContainerGridView* %33 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_container_view_interface_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call60)
  %35 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %35, %struct._GimpContainerView** %view, align 8
  %36 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %37 = load i32, i32* %view_size.addr, align 4
  %38 = load i32, i32* %view_border_width.addr, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %36, i32 %37, i32 %38)
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool62 = icmp ne %struct._GimpContainer* %39, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %do.end.57
  %40 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %41 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %40, %struct._GimpContainer* %41)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %do.end.57
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool65 = icmp ne %struct._GimpContext* %42, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  %43 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %43, %struct._GimpContext* %44)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  %45 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %46 = bitcast %struct._GimpContainerGridView* %45 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_widget_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call68)
  %47 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkWidget*
  store %struct._GtkWidget* %47, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.else.55, %if.else.47, %if.else.39, %if.else.10
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %48
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
define internal void @gimp_container_grid_view_class_init(%struct._GimpContainerGridViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerGridViewClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %binding_set = alloca %struct._GtkBindingSet*, align 8
  store %struct._GimpContainerGridViewClass* %klass, %struct._GimpContainerGridViewClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerGridViewClass*, %struct._GimpContainerGridViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerGridViewClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GimpContainerGridViewClass*, %struct._GimpContainerGridViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpContainerGridViewClass* %3 to i8*
  %call2 = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %4)
  store %struct._GtkBindingSet* %call2, %struct._GtkBindingSet** %binding_set, align 8
  %5 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %focus = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 23
  store i32 (%struct._GtkWidget*, i32)* @gimp_container_grid_view_focus, i32 (%struct._GtkWidget*, i32)** %focus, align 8
  %6 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %popup_menu = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %6, i32 0, i32 61
  store i32 (%struct._GtkWidget*)* @gimp_container_grid_view_popup_menu, i32 (%struct._GtkWidget*)** %popup_menu, align 8
  %7 = load %struct._GimpContainerGridViewClass*, %struct._GimpContainerGridViewClass** %klass.addr, align 8
  %move_cursor = getelementptr inbounds %struct._GimpContainerGridViewClass, %struct._GimpContainerGridViewClass* %7, i32 0, i32 1
  store i32 (%struct._GimpContainerGridView*, i32, i32)* @gimp_container_grid_view_move_cursor, i32 (%struct._GimpContainerGridView*, i32, i32)** %move_cursor, align 8
  %8 = load %struct._GimpContainerGridViewClass*, %struct._GimpContainerGridViewClass** %klass.addr, align 8
  %9 = bitcast %struct._GimpContainerGridViewClass* %8 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gtk_movement_step_get_type() #5
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 %10, i32 34, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_BOOLEAN__ENUM_INT, i64 20, i32 2, i64 %call3, i64 24)
  store i32 %call4, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @grid_view_signals, i32 0, i64 0), align 4
  %11 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %11, i32 65360, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 2, i64 48, i32 8, i64 24, i32 -1)
  %12 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %12, i32 65367, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 2, i64 48, i32 8, i64 24, i32 1)
  %13 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %13, i32 65365, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 2, i64 48, i32 7, i64 24, i32 -1)
  %14 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %14, i32 65366, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 2, i64 48, i32 7, i64 24, i32 1)
  call void @gimp_rgba_set(%struct._GimpRGB* @white_color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* @black_color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare %struct._GtkBindingSet* @gtk_binding_set_by_class(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_grid_view_focus(%struct._GtkWidget* %widget, i32 %direction) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %direction.addr = alloca i32, align 4
  %view = alloca %struct._GimpContainerGridView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call i32 @gtk_widget_get_can_focus(%struct._GtkWidget* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %7)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %direction.addr, align 4
  switch i32 %8, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.12
    i32 0, label %sw.bb.14
    i32 1, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %view, align 8
  %call7 = call i32 @gimp_container_grid_view_move_by(%struct._GimpContainerGridView* %9, i32 0, i32 -1)
  store i32 %call7, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %if.end
  %10 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %view, align 8
  %call9 = call i32 @gimp_container_grid_view_move_by(%struct._GimpContainerGridView* %10, i32 0, i32 1)
  store i32 %call9, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %if.end
  %11 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %view, align 8
  %call11 = call i32 @gimp_container_grid_view_move_by(%struct._GimpContainerGridView* %11, i32 -1, i32 0)
  store i32 %call11, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %if.end
  %12 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %view, align 8
  %call13 = call i32 @gimp_container_grid_view_move_by(%struct._GimpContainerGridView* %12, i32 1, i32 0)
  store i32 %call13, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %if.end, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_grid_view_popup_menu(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpEditor*
  %6 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %7 = bitcast %struct._GimpContainerGridView* %6 to i8*
  %call4 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %5, void (%struct._GtkMenu*, i32*, i32*, i8*)* @gimp_container_grid_view_menu_position, i8* %7)
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_grid_view_move_cursor(%struct._GimpContainerGridView* %grid_view, i32 %step, i32 %count) #3 {
entry:
  %retval = alloca i32, align 4
  %grid_view.addr = alloca %struct._GimpContainerGridView*, align 8
  %step.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %view = alloca %struct._GimpContainerView*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %item = alloca %struct._GimpViewable*, align 8
  store %struct._GimpContainerGridView* %grid_view, %struct._GimpContainerGridView** %grid_view.addr, align 8
  store i32 %step, i32* %step.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %1 = bitcast %struct._GimpContainerGridView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %4 = bitcast %struct._GimpContainerGridView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %call4 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %5)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %count.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call5 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %7)
  store %struct._GimpContainer* %call5, %struct._GimpContainer** %container, align 8
  %8 = load i32, i32* %step.addr, align 4
  switch i32 %8, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %10 = load i32, i32* %count.addr, align 4
  %11 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %visible_rows = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %11, i32 0, i32 4
  %12 = load i32, i32* %visible_rows, align 4
  %mul = mul nsw i32 %10, %12
  %call6 = call i32 @gimp_container_grid_view_move_by(%struct._GimpContainerGridView* %9, i32 0, i32 %mul)
  store i32 %call6, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %if.end
  %13 = load i32, i32* %count.addr, align 4
  %cmp8 = icmp slt i32 %13, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.7
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.7
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call9 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %14)
  %sub = sub nsw i32 %call9, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %count.addr, align 4
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %16 = load i32, i32* %count.addr, align 4
  %call10 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %15, i32 %16)
  %17 = bitcast %struct._GimpObject* %call10 to %struct._GimpViewable*
  store %struct._GimpViewable* %17, %struct._GimpViewable** %item, align 8
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %item, align 8
  %tobool11 = icmp ne %struct._GimpViewable* %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %cond.end
  %19 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %20 = load %struct._GimpViewable*, %struct._GimpViewable** %item, align 8
  %call13 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %19, %struct._GimpViewable* %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %cond.end
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.14, %sw.bb, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_BOOLEAN__ENUM_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_movement_step_get_type() #2

declare void @gtk_binding_entry_add_signal(%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare i32 @gtk_widget_get_can_focus(%struct._GtkWidget*) #1

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_grid_view_move_by(%struct._GimpContainerGridView* %grid_view, i32 %x, i32 %y) #3 {
entry:
  %retval = alloca i32, align 4
  %grid_view.addr = alloca %struct._GimpContainerGridView*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %view = alloca %struct._GimpContainerView*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %item = alloca %struct._GimpViewable*, align 8
  %index = alloca i32, align 4
  store %struct._GimpContainerGridView* %grid_view, %struct._GimpContainerGridView** %grid_view.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %1 = bitcast %struct._GimpContainerGridView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %selected_item = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %3, i32 0, i32 5
  %4 = load %struct._GimpView*, %struct._GimpView** %selected_item, align 8
  %tobool = icmp ne %struct._GimpView* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %5)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %6 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %selected_item3 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %6, i32 0, i32 5
  %7 = load %struct._GimpView*, %struct._GimpView** %selected_item3, align 8
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %7, i32 0, i32 2
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  store %struct._GimpViewable* %8, %struct._GimpViewable** %item, align 8
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %item, align 8
  %11 = bitcast %struct._GimpViewable* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %call6 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  store i32 %call6, i32* %index, align 4
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %index, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %index, align 4
  %15 = load i32, i32* %index, align 4
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call7 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %16)
  %sub = sub nsw i32 %call7, 1
  %cmp = icmp sgt i32 %15, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call8 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %17)
  %sub9 = sub nsw i32 %call8, 1
  br label %cond.end.13

cond.false:                                       ; preds = %if.end
  %18 = load i32, i32* %index, align 4
  %cmp10 = icmp slt i32 %18, 0
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %19 = load i32, i32* %index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond = phi i32 [ 0, %cond.true.11 ], [ %19, %cond.false.12 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i32 [ %sub9, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond14, i32* %index, align 4
  %20 = load i32, i32* %y.addr, align 4
  %21 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %columns = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %21, i32 0, i32 3
  %22 = load i32, i32* %columns, align 4
  %mul = mul nsw i32 %20, %22
  %23 = load i32, i32* %index, align 4
  %add15 = add nsw i32 %23, %mul
  store i32 %add15, i32* %index, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.13
  %24 = load i32, i32* %index, align 4
  %cmp16 = icmp slt i32 %24, 0
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %columns17 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %25, i32 0, i32 3
  %26 = load i32, i32* %columns17, align 4
  %27 = load i32, i32* %index, align 4
  %add18 = add nsw i32 %27, %26
  store i32 %add18, i32* %index, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.22, %while.end
  %28 = load i32, i32* %index, align 4
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call20 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %29)
  %cmp21 = icmp sge i32 %28, %call20
  br i1 %cmp21, label %while.body.22, label %while.end.25

while.body.22:                                    ; preds = %while.cond.19
  %30 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %columns23 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %30, i32 0, i32 3
  %31 = load i32, i32* %columns23, align 4
  %32 = load i32, i32* %index, align 4
  %sub24 = sub nsw i32 %32, %31
  store i32 %sub24, i32* %index, align 4
  br label %while.cond.19

while.end.25:                                     ; preds = %while.cond.19
  %33 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %34 = load i32, i32* %index, align 4
  %call26 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %33, i32 %34)
  %35 = bitcast %struct._GimpObject* %call26 to %struct._GimpViewable*
  store %struct._GimpViewable* %35, %struct._GimpViewable** %item, align 8
  %36 = load %struct._GimpViewable*, %struct._GimpViewable** %item, align 8
  %tobool27 = icmp ne %struct._GimpViewable* %36, null
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %while.end.25
  %37 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %38 = bitcast %struct._GimpContainerView* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_container_view_interface_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpContainerView*
  %40 = load %struct._GimpViewable*, %struct._GimpViewable** %item, align 8
  %call31 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %39, %struct._GimpViewable* %40)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %while.end.25
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

declare i32 @gimp_container_view_item_selected(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_menu_position(%struct._GtkMenu* %menu, i32* %x, i32* %y, i8* %data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %style = alloca %struct._GtkStyle*, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %3, i32 0, i32 5
  %4 = load %struct._GimpView*, %struct._GimpView** %selected_item, align 8
  %tobool = icmp ne %struct._GimpView* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item2 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %5, i32 0, i32 5
  %6 = load %struct._GimpView*, %struct._GimpView** %selected_item2, align 8
  %7 = bitcast %struct._GimpView* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  store %struct._GtkWidget* %8, %struct._GtkWidget** %widget, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  store %struct._GtkWidget* %12, %struct._GtkWidget** %widget, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %13, %struct._GdkRectangle* %allocation)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call7 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %14)
  %15 = load i32*, i32** %x.addr, align 8
  %16 = load i32*, i32** %y.addr, align 8
  %call8 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call7, i32* %15, i32* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call9 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %17)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.15, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %x12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %18 = load i32, i32* %x12, align 4
  %19 = load i32*, i32** %x.addr, align 8
  %20 = load i32, i32* %19, align 4
  %add = add nsw i32 %20, %18
  store i32 %add, i32* %19, align 4
  %y13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %21 = load i32, i32* %y13, align 4
  %22 = load i32*, i32** %y.addr, align 8
  %23 = load i32, i32* %22, align 4
  %add14 = add nsw i32 %23, %21
  store i32 %add14, i32* %22, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end
  %24 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item16 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %24, i32 0, i32 5
  %25 = load %struct._GimpView*, %struct._GimpView** %selected_item16, align 8
  %tobool17 = icmp ne %struct._GimpView* %25, null
  br i1 %tobool17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %if.end.15
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %26 = load i32, i32* %width, align 4
  %div = sdiv i32 %26, 2
  %27 = load i32*, i32** %x.addr, align 8
  %28 = load i32, i32* %27, align 4
  %add19 = add nsw i32 %28, %div
  store i32 %add19, i32* %27, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %29 = load i32, i32* %height, align 4
  %div20 = sdiv i32 %29, 2
  %30 = load i32*, i32** %y.addr, align 8
  %31 = load i32, i32* %30, align 4
  %add21 = add nsw i32 %31, %div20
  store i32 %add21, i32* %30, align 4
  br label %if.end.26

if.else.22:                                       ; preds = %if.end.15
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call23 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %32)
  store %struct._GtkStyle* %call23, %struct._GtkStyle** %style, align 8
  %33 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %33, i32 0, i32 12
  %34 = load i32, i32* %xthickness, align 4
  %35 = load i32*, i32** %x.addr, align 8
  %36 = load i32, i32* %35, align 4
  %add24 = add nsw i32 %36, %34
  store i32 %add24, i32* %35, align 4
  %37 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %37, i32 0, i32 13
  %38 = load i32, i32* %ythickness, align 4
  %39 = load i32*, i32** %y.addr, align 8
  %40 = load i32, i32* %39, align 4
  %add25 = add nsw i32 %40, %38
  store i32 %add25, i32* %39, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.18
  %41 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %42 = load i32*, i32** %x.addr, align 8
  %43 = load i32*, i32** %y.addr, align 8
  call void @gimp_menu_position(%struct._GtkMenu* %41, i32* %42, i32* %43)
  ret void
}

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gimp_menu_position(%struct._GtkMenu*, i32*, i32*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  %view4 = alloca %struct._GimpView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 5
  %4 = load void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpContainerView* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_wrap_box_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWrapBox*
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %10, i32 0, i32 5
  %11 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %11, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_view_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call5)
  %16 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpView*
  store %struct._GimpView* %16, %struct._GimpView** %view4, align 8
  %17 = load %struct._GimpView*, %struct._GimpView** %view4, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %17, i32 0, i32 3
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %18, %struct._GimpContext* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %20, i32 0, i32 2
  %21 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %21, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_container_grid_view_insert_item(%struct._GimpContainerView* %container_view, %struct._GimpViewable* %viewable, i8* %parent_insert_data, i32 %index) #3 {
entry:
  %container_view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %parent_insert_data.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %view_size = alloca i32, align 4
  store %struct._GimpContainerView* %container_view, %struct._GimpContainerView** %container_view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %parent_insert_data, i8** %parent_insert_data.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %call2 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %3, i32* null)
  store i32 %call2, i32* %view_size, align 4
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %call3 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %6 = load i32, i32* %view_size, align 4
  %7 = load i32, i32* %view_size, align 4
  %call4 = call %struct._GtkWidget* @gimp_view_new_full(%struct._GimpContext* %call3, %struct._GimpViewable* %5, i32 %6, i32 %7, i32 1, i32 0, i32 1, i32 1)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %view, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_view_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %10, i32 0, i32 3
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer* %11, i32 1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_view_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpView*
  %renderer9 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %14, i32 0, i32 3
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer9, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %15)
  %16 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_wrap_box_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWrapBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_wrap_box_pack(%struct._GtkWrapBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0, i32 0)
  %21 = load i32, i32* %index.addr, align 4
  %cmp = icmp ne i32 %21, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box12 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %22, i32 0, i32 1
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box12, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_wrap_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWrapBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %27 = load i32, i32* %index.addr, align 4
  call void @gtk_wrap_box_reorder_child(%struct._GtkWrapBox* %25, %struct._GtkWidget* %26, i32 %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %32 = bitcast %struct._GimpContainerView* %31 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @gimp_container_grid_view_item_selected to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %36 = bitcast %struct._GimpContainerView* %35 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_container_grid_view_item_activated to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %40 = bitcast %struct._GimpContainerView* %39 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_container_grid_view_item_context to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  ret i8* %42
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_remove_item(%struct._GimpContainerView* %container_view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %container_view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainerView* %container_view, %struct._GimpContainerView** %container_view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %5, %struct._GtkWidget** %view, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %7 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %7, i32 0, i32 5
  %8 = load %struct._GimpView*, %struct._GimpView** %selected_item, align 8
  %9 = bitcast %struct._GimpView* %8 to %struct._GtkWidget*
  %cmp = icmp eq %struct._GtkWidget* %6, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item4 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %10, i32 0, i32 5
  store %struct._GimpView* null, %struct._GimpView** %selected_item4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_reorder_item(%struct._GimpContainerView* %container_view, %struct._GimpViewable* %viewable, i32 %new_index, i8* %insert_data) #3 {
entry:
  %container_view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %new_index.addr = alloca i32, align 4
  %insert_data.addr = alloca i8*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainerView* %container_view, %struct._GimpContainerView** %container_view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %5, %struct._GtkWidget** %view, align 8
  %6 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_wrap_box_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWrapBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %11 = load i32, i32* %new_index.addr, align 4
  call void @gtk_wrap_box_reorder_child(%struct._GtkWrapBox* %9, %struct._GtkWidget* %10, i32 %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_rename_item(%struct._GimpContainerView* %container_view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %container_view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpContainerView* %container_view, %struct._GimpContainerView** %container_view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %5, %struct._GtkWidget** %view, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %7 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %7, i32 0, i32 5
  %8 = load %struct._GimpView*, %struct._GimpView** %selected_item, align 8
  %9 = bitcast %struct._GimpView* %8 to %struct._GtkWidget*
  %cmp = icmp eq %struct._GtkWidget* %6, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call4 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %10, i8** null)
  store i8* %call4, i8** %name, align 8
  %11 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %12 = bitcast %struct._GimpContainerView* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %14 = load i8*, i8** %name, align 8
  call void @gimp_editor_set_name(%struct._GimpEditor* %13, i8* %14)
  %15 = load i8*, i8** %name, align 8
  call void @g_free(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_grid_view_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %2 = load i8*, i8** %insert_data.addr, align 8
  call void @gimp_container_grid_view_highlight_item(%struct._GimpContainerView* %0, %struct._GimpViewable* %1, i8* %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_clear_items(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %3, i32 0, i32 5
  store %struct._GimpView* null, %struct._GimpView** %selected_item, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_wrap_box_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWrapBox*
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %7, i32 0, i32 5
  %8 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box4 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box4, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_wrap_box_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWrapBox*
  %children7 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %12, i32 0, i32 5
  %13 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children7, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %14)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %15, i32 0, i32 12
  %16 = load void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)** %clear_items, align 8
  %17 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void %16(%struct._GimpContainerView* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_set_view_size(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  %view_size = alloca i32, align 4
  %view5 = alloca %struct._GimpView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %3, i32* null)
  store i32 %call2, i32* %view_size, align 4
  %4 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_wrap_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWrapBox*
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %7, i32 0, i32 5
  %8 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %8, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %10, i32 0, i32 0
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_view_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpView*
  store %struct._GimpView* %13, %struct._GimpView** %view5, align 8
  %14 = load %struct._GimpView*, %struct._GimpView** %view5, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %14, i32 0, i32 3
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %16 = load i32, i32* %view_size, align 4
  %17 = load %struct._GimpView*, %struct._GimpView** %view5, align 8
  %renderer8 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %17, i32 0, i32 3
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer8, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %18, i32 0, i32 6
  %19 = load i32, i32* %border_width, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %15, i32 %16, i32 %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %20, i32 0, i32 2
  %21 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %21, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %wrap_box9 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %22, i32 0, i32 1
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box9, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %23)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_wrap_box_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare %struct._GtkWidget* @gimp_view_new_full(%struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32, i32, i32, i32) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer*, i32) #1

declare void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer*) #1

declare void @gtk_wrap_box_pack(%struct._GtkWrapBox*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gtk_wrap_box_reorder_child(%struct._GtkWrapBox*, %struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_grid_view_item_selected(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 8
  %3 = load i32, i32* %button, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to %struct._GtkWidget*
  %call = call i32 @gtk_widget_get_can_focus(%struct._GtkWidget* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8
  %7 = bitcast i8* %6 to %struct._GtkWidget*
  %call3 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true.2
  %8 = load i8*, i8** %data.addr, align 8
  %9 = bitcast i8* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true.2, %if.then
  %11 = load i8*, i8** %data.addr, align 8
  %12 = bitcast i8* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_container_view_interface_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpContainerView*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_view_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpView*
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %16, i32 0, i32 2
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call12 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %13, %struct._GimpViewable* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_item_activated(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_view_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpView*
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %5, i32 0, i32 2
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  call void @gimp_container_view_item_activated(%struct._GimpContainerView* %2, %struct._GimpViewable* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_item_context(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call i8* @g_object_ref(i8* %0)
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_view_interface_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerView*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_view_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpView*
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %6, i32 0, i32 2
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call5 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %3, %struct._GimpViewable* %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %data.addr, align 8
  %9 = bitcast i8* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_container_view_interface_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpContainerView*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_view_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpView*
  %viewable10 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %13, i32 0, i32 2
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable10, align 8
  call void @gimp_container_view_item_context(%struct._GimpContainerView* %10, %struct._GimpViewable* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i8*, i8** %data.addr, align 8
  call void @g_object_unref(i8* %15)
  ret void
}

declare void @gimp_container_view_item_activated(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_container_view_item_context(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

declare void @gimp_editor_set_name(%struct._GimpEditor*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_highlight_item(%struct._GimpContainerView* %container_view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %container_view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %grid_view = alloca %struct._GimpContainerGridView*, align 8
  %box = alloca %struct._GimpContainerBox*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %view = alloca %struct._GimpView*, align 8
  %view_requisition = alloca %struct._GtkRequisition, align 4
  %adj = alloca %struct._GtkAdjustment*, align 8
  %item_height = alloca i32, align 4
  %index = alloca i32, align 4
  %row = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GimpContainerView* %container_view, %struct._GimpContainerView** %container_view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_grid_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerGridView*
  store %struct._GimpContainerGridView* %2, %struct._GimpContainerGridView** %grid_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %4 = bitcast %struct._GimpContainerView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_box_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerBox*
  store %struct._GimpContainerBox* %5, %struct._GimpContainerBox** %box, align 8
  store %struct._GimpView* null, %struct._GimpView** %view, align 8
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %call4 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %6)
  store %struct._GimpContainer* %call4, %struct._GimpContainer** %container, align 8
  %7 = load i8*, i8** %insert_data.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %insert_data.addr, align 8
  %9 = bitcast i8* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_view_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpView*
  store %struct._GimpView* %10, %struct._GimpView** %view, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %11, i32 0, i32 5
  %12 = load %struct._GimpView*, %struct._GimpView** %selected_item, align 8
  %tobool7 = icmp ne %struct._GimpView* %12, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item8 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %13, i32 0, i32 5
  %14 = load %struct._GimpView*, %struct._GimpView** %selected_item8, align 8
  %15 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %cmp = icmp ne %struct._GimpView* %14, %15
  br i1 %cmp, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %land.lhs.true
  %16 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item10 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %16, i32 0, i32 5
  %17 = load %struct._GimpView*, %struct._GimpView** %selected_item10, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %17, i32 0, i32 3
  %18 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer* %18, i32 1)
  %19 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item11 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %19, i32 0, i32 5
  %20 = load %struct._GimpView*, %struct._GimpView** %selected_item11, align 8
  %renderer12 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %20, i32 0, i32 3
  %21 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer12, align 8
  call void @gimp_view_renderer_update(%struct._GimpViewRenderer* %21)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %22 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %tobool14 = icmp ne %struct._GimpView* %22, null
  br i1 %tobool14, label %if.then.15, label %if.else.51

if.then.15:                                       ; preds = %if.end.13
  %23 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %23, i32 0, i32 1
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_scrolled_window_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkScrolledWindow*
  %call18 = call %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow* %26)
  store %struct._GtkAdjustment* %call18, %struct._GtkAdjustment** %adj, align 8
  %27 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %28 = bitcast %struct._GimpView* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  call void @gtk_widget_size_request(%struct._GtkWidget* %29, %struct._GtkRequisition* %view_requisition)
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %view_requisition, i32 0, i32 1
  %30 = load i32, i32* %height, align 4
  store i32 %30, i32* %item_height, align 4
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %32 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %33 = bitcast %struct._GimpViewable* %32 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call21)
  %34 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  %call23 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %31, %struct._GimpObject* %34)
  store i32 %call23, i32* %index, align 4
  %35 = load i32, i32* %index, align 4
  %36 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %columns = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %36, i32 0, i32 3
  %37 = load i32, i32* %columns, align 4
  %div = sdiv i32 %35, %37
  store i32 %div, i32* %row, align 4
  %38 = load i32, i32* %row, align 4
  %39 = load i32, i32* %item_height, align 4
  %mul = mul nsw i32 %38, %39
  %conv = sitofp i32 %mul to double
  %40 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call24 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %40)
  %cmp25 = fcmp olt double %conv, %call24
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.15
  %41 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %42 = load i32, i32* %row, align 4
  %43 = load i32, i32* %item_height, align 4
  %mul28 = mul nsw i32 %42, %43
  %conv29 = sitofp i32 %mul28 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %41, double %conv29)
  br label %if.end.43

if.else:                                          ; preds = %if.then.15
  %44 = load i32, i32* %row, align 4
  %add = add nsw i32 %44, 1
  %45 = load i32, i32* %item_height, align 4
  %mul30 = mul nsw i32 %add, %45
  %conv31 = sitofp i32 %mul30 to double
  %46 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call32 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %46)
  %47 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call33 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %47)
  %add34 = fadd double %call32, %call33
  %cmp35 = fcmp ogt double %conv31, %add34
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.else
  %48 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %49 = load i32, i32* %row, align 4
  %add38 = add nsw i32 %49, 1
  %50 = load i32, i32* %item_height, align 4
  %mul39 = mul nsw i32 %add38, %50
  %conv40 = sitofp i32 %mul39 to double
  %51 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call41 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %51)
  %sub = fsub double %conv40, %call41
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %48, double %sub)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.27
  %52 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer44 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %52, i32 0, i32 3
  %53 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer44, align 8
  call void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer* %53, i32 0)
  %54 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer45 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %54, i32 0, i32 3
  %55 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer45, align 8
  call void @gimp_view_renderer_update(%struct._GimpViewRenderer* %55)
  %56 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer46 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %56, i32 0, i32 3
  %57 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer46, align 8
  %viewable47 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %57, i32 0, i32 3
  %58 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable47, align 8
  %call48 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %58, i8** null)
  store i8* %call48, i8** %name, align 8
  %59 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %60 = bitcast %struct._GimpContainerGridView* %59 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_editor_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call49)
  %61 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpEditor*
  %62 = load i8*, i8** %name, align 8
  call void @gimp_editor_set_name(%struct._GimpEditor* %61, i8* %62)
  %63 = load i8*, i8** %name, align 8
  call void @g_free(i8* %63)
  br label %if.end.54

if.else.51:                                       ; preds = %if.end.13
  %64 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %65 = bitcast %struct._GimpContainerGridView* %64 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_editor_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call52)
  %66 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpEditor*
  call void @gimp_editor_set_name(%struct._GimpEditor* %66, i8* null)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.end.43
  %67 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %68 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view, align 8
  %selected_item55 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %68, i32 0, i32 5
  store %struct._GimpView* %67, %struct._GimpView** %selected_item55, align 8
  ret void
}

declare void @gimp_view_renderer_update(%struct._GimpViewRenderer*) #1

declare %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare void @gimp_view_renderer_set_size(%struct._GimpViewRenderer*, i32, i32) #1

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare void @gimp_editor_set_show_name(%struct._GimpEditor*, i32) #1

declare %struct._GtkWidget* @gtk_hwrap_box_new(i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare void @gtk_viewport_set_shadow_type(%struct._GtkViewport*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_viewport_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_grid_view_viewport_resized(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpContainerGridView* %grid_view) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %grid_view.addr = alloca %struct._GimpContainerGridView*, align 8
  %container_view = alloca %struct._GimpContainerView*, align 8
  %children = alloca %struct._GList*, align 8
  %n_children = alloca i32, align 4
  %view_requisition = alloca %struct._GtkRequisition, align 4
  %columns = alloca i32, align 4
  %rows = alloca i32, align 4
  %view = alloca %struct._GimpView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpContainerGridView* %grid_view, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %0 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %1 = bitcast %struct._GimpContainerGridView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %container_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %3)
  %tobool = icmp ne %struct._GimpContainer* %call2, null
  br i1 %tobool, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %wrap_box = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %call5 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %7)
  store %struct._GList* %call5, %struct._GList** %children, align 8
  %8 = load %struct._GList*, %struct._GList** %children, align 8
  %call6 = call i32 @g_list_length(%struct._GList* %8)
  store i32 %call6, i32* %n_children, align 4
  %9 = load %struct._GList*, %struct._GList** %children, align 8
  %tobool7 = icmp ne %struct._GList* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.31

if.then.8:                                        ; preds = %if.then
  %10 = load %struct._GList*, %struct._GList** %children, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  call void @gtk_widget_size_request(%struct._GtkWidget* %13, %struct._GtkRequisition* %view_requisition)
  %14 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %14)
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %15, i32 0, i32 2
  %16 = load i32, i32* %width, align 4
  %width11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %view_requisition, i32 0, i32 0
  %17 = load i32, i32* %width11, align 4
  %div = sdiv i32 %16, %17
  %cmp = icmp sgt i32 1, %div
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 2
  %19 = load i32, i32* %width12, align 4
  %width13 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %view_requisition, i32 0, i32 0
  %20 = load i32, i32* %width13, align 4
  %div14 = sdiv i32 %19, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %div14, %cond.false ]
  store i32 %cond, i32* %columns, align 4
  %21 = load i32, i32* %n_children, align 4
  %22 = load i32, i32* %columns, align 4
  %div15 = sdiv i32 %21, %22
  store i32 %div15, i32* %rows, align 4
  %23 = load i32, i32* %n_children, align 4
  %24 = load i32, i32* %columns, align 4
  %rem = srem i32 %23, %24
  %tobool16 = icmp ne i32 %rem, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %cond.end
  %25 = load i32, i32* %rows, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %cond.end
  %26 = load i32, i32* %rows, align 4
  %27 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %rows18 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %27, i32 0, i32 2
  %28 = load i32, i32* %rows18, align 4
  %cmp19 = icmp ne i32 %26, %28
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %29 = load i32, i32* %columns, align 4
  %30 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %columns20 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %30, i32 0, i32 3
  %31 = load i32, i32* %columns20, align 4
  %cmp21 = icmp ne i32 %29, %31
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %lor.lhs.false, %if.end
  %32 = load i32, i32* %rows, align 4
  %33 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %rows23 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %33, i32 0, i32 2
  store i32 %32, i32* %rows23, align 4
  %34 = load i32, i32* %columns, align 4
  %35 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %columns24 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %35, i32 0, i32 3
  store i32 %34, i32* %columns24, align 4
  %36 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %wrap_box25 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %wrap_box25, align 8
  %width26 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %view_requisition, i32 0, i32 0
  %38 = load i32, i32* %width26, align 4
  %39 = load i32, i32* %rows, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %view_requisition, i32 0, i32 1
  %40 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %39, %40
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %37, i32 %38, i32 %mul)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %lor.lhs.false
  %41 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %41, i32 0, i32 3
  %42 = load i32, i32* %height28, align 4
  %height29 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %view_requisition, i32 0, i32 1
  %43 = load i32, i32* %height29, align 4
  %div30 = sdiv i32 %42, %43
  %44 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %visible_rows = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %44, i32 0, i32 4
  store i32 %div30, i32* %visible_rows, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %if.then
  %45 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %selected_item = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %45, i32 0, i32 5
  %46 = load %struct._GimpView*, %struct._GimpView** %selected_item, align 8
  %tobool32 = icmp ne %struct._GimpView* %46, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %47 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %selected_item34 = getelementptr inbounds %struct._GimpContainerGridView, %struct._GimpContainerGridView* %47, i32 0, i32 5
  %48 = load %struct._GimpView*, %struct._GimpView** %selected_item34, align 8
  store %struct._GimpView* %48, %struct._GimpView** %view, align 8
  %49 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %50 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %viewable = getelementptr inbounds %struct._GimpView, %struct._GimpView* %50, i32 0, i32 2
  %51 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %52 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %53 = bitcast %struct._GimpView* %52 to i8*
  call void @gimp_container_grid_view_highlight_item(%struct._GimpContainerView* %49, %struct._GimpViewable* %51, i8* %53)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_grid_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpContainerGridView* %grid_view) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %grid_view.addr = alloca %struct._GimpContainerGridView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpContainerGridView* %grid_view, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %1 = bitcast %struct._GdkEventButton* %0 to %union._GdkEvent*
  %call = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContainerGridView*, %struct._GimpContainerGridView** %grid_view.addr, align 8
  %3 = bitcast %struct._GimpContainerGridView* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_editor_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpEditor*
  %call3 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %4, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i32 @g_list_length(%struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
