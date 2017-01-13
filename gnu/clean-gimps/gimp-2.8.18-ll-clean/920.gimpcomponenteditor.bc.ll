; ModuleID = './app/widgets/gimpcomponenteditor.bc'
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
%struct._GimpContext = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpComponentEditorClass = type { %struct._GimpImageEditorClass }
%struct._GimpImageEditorClass = type { %struct._GimpEditorClass, void (%struct._GimpImageEditor*, %struct._GimpImage*)* }
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
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpComponentEditor = type { %struct._GimpImageEditor, i32, %struct._GtkTreeModel*, %struct._GtkTreeView*, %struct._GtkTreeSelection*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkCellRenderer*, i32 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreePath = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpViewRendererImage = type { %struct._GimpViewRenderer, i32 }
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@gimp_component_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpComponentEditor\00", align 1
@gimp_component_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_component_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_component_editor_new = private unnamed_addr constant [26 x i8] c"gimp_component_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"<Channels>\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"/channels-popup\00", align 1
@__func__.gimp_component_editor_set_view_size = private unnamed_addr constant [36 x i8] c"gimp_component_editor_set_view_size\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"GIMP_IS_COMPONENT_EDITOR (editor)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gimp-visible\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"stock-size\00", align 1
@gimp_component_editor_parent_class = internal global i8* null, align 8
@GimpComponentEditor_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"mode-changed\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"alpha-changed\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"component-visibility-changed\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"component-active-changed\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@parent_docked_iface = internal global %struct._GimpDockedInterface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_component_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_component_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_component_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_editor_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_component_editor_class_intern_init to void (i8*, i8*)*), i32 216, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpComponentEditor*)* @gimp_component_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_component_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_component_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_component_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_component_editor_parent_class, align 8
  %1 = load i32, i32* @GimpComponentEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpComponentEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpComponentEditorClass*
  call void @gimp_component_editor_class_init(%struct._GimpComponentEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_init(%struct._GimpComponentEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GtkListStore*, align 8
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %call = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %3 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpComponentEditor* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call5 = call i64 @gimp_view_renderer_get_type() #5
  %call6 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 4, i64 24, i64 20, i64 %call5, i64 64)
  store %struct._GtkListStore* %call6, %struct._GtkListStore** %list, align 8
  %8 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %9 = bitcast %struct._GtkListStore* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_tree_model_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTreeModel*
  %11 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %11, i32 0, i32 2
  store %struct._GtkTreeModel* %10, %struct._GtkTreeModel** %model, align 8
  %12 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model9 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %12, i32 0, i32 2
  %13 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model9, align 8
  %call10 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %13)
  %14 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_view_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeView*
  %16 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %16, i32 0, i32 3
  store %struct._GtkTreeView* %15, %struct._GtkTreeView** %view, align 8
  %17 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %18 = bitcast %struct._GtkListStore* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view13 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %19, i32 0, i32 3
  %20 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view13, align 8
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %20, i32 0)
  %call14 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  %21 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_column = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %21, i32 0, i32 5
  store %struct._GtkTreeViewColumn* %call14, %struct._GtkTreeViewColumn** %eye_column, align 8
  %22 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view15 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %22, i32 0, i32 3
  %23 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view15, align 8
  %24 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_column16 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %24, i32 0, i32 5
  %25 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %eye_column16, align 8
  %call17 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %23, %struct._GtkTreeViewColumn* %25)
  %call18 = call %struct._GtkCellRenderer* @gimp_cell_renderer_toggle_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %26 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_cell = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %26, i32 0, i32 6
  store %struct._GtkCellRenderer* %call18, %struct._GtkCellRenderer** %eye_cell, align 8
  %27 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_column19 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %27, i32 0, i32 5
  %28 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %eye_column19, align 8
  %29 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_cell20 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %29, i32 0, i32 6
  %30 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell20, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %28, %struct._GtkCellRenderer* %30, i32 0)
  %31 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_column21 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %31, i32 0, i32 5
  %32 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %eye_column21, align 8
  %33 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_cell22 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %33, i32 0, i32 6
  %34 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell22, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %32, %struct._GtkCellRenderer* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* null)
  %35 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_cell23 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %35, i32 0, i32 6
  %36 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell23, align 8
  %37 = bitcast %struct._GtkCellRenderer* %36 to i8*
  %38 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %39 = bitcast %struct._GimpComponentEditor* %38 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererToggle*, i8*, i32, %struct._GimpComponentEditor*)* @gimp_component_editor_clicked to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  %call25 = call %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new()
  %40 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %renderer_cell = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %40, i32 0, i32 7
  store %struct._GtkCellRenderer* %call25, %struct._GtkCellRenderer** %renderer_cell, align 8
  %41 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view26 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %41, i32 0, i32 3
  %42 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view26, align 8
  %43 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %renderer_cell27 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %43, i32 0, i32 7
  %44 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell27, align 8
  %call28 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %42, i32 -1, i8* null, %struct._GtkCellRenderer* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 2, i8* null)
  %45 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view29 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %45, i32 0, i32 3
  %46 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view29, align 8
  %call30 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call31 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %46, i32 -1, i8* null, %struct._GtkCellRenderer* %call30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 3, i8* null)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call32)
  %49 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %50 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view34 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %50, i32 0, i32 3
  %51 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view34, align 8
  %52 = bitcast %struct._GtkTreeView* %51 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_widget_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call35)
  %53 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkWidget*
  call void @gtk_container_add(%struct._GtkContainer* %49, %struct._GtkWidget* %53)
  %54 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view37 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %54, i32 0, i32 3
  %55 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view37, align 8
  %56 = bitcast %struct._GtkTreeView* %55 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_widget_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call38)
  %57 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %58 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view40 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %58, i32 0, i32 3
  %59 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view40, align 8
  %60 = bitcast %struct._GtkTreeView* %59 to i8*
  %61 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %62 = bitcast %struct._GimpComponentEditor* %61 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpComponentEditor*)* @gimp_component_editor_button_press to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view42 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %63, i32 0, i32 3
  %64 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view42, align 8
  %call43 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %64)
  %65 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %selection = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %65, i32 0, i32 4
  store %struct._GtkTreeSelection* %call43, %struct._GtkTreeSelection** %selection, align 8
  %66 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %selection44 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %66, i32 0, i32 4
  %67 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection44, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %67, i32 3)
  %68 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %selection45 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %68, i32 0, i32 4
  %69 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection45, align 8
  %70 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %71 = bitcast %struct._GimpComponentEditor* %70 to i8*
  call void @gtk_tree_selection_set_select_function(%struct._GtkTreeSelection* %69, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)* @gimp_component_editor_select, i8* %71, void (i8*)* null)
  %72 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view46 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %72, i32 0, i32 3
  %73 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view46, align 8
  %74 = bitcast %struct._GtkTreeView* %73 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_widget_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call47)
  %75 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkWidget*
  %76 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %77 = bitcast %struct._GimpComponentEditor* %76 to i8*
  call void @gimp_dnd_component_source_add(%struct._GtkWidget* %75, %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)* @gimp_component_editor_drag_component, i8* %77)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
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
  %call1 = call i64 @gimp_docked_interface_get_type() #5
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpDockedInterface*
  store %struct._GimpDockedInterface* %4, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_component_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_component_editor_new(i32 %view_size, %struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view_size.addr = alloca i32, align 4
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %editor = alloca %struct._GimpComponentEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %view_size, i32* %view_size.addr, align 4
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %view_size.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %view_size.addr, align 4
  %cmp1 = icmp sle i32 %1, 2048
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_component_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %3 = bitcast %struct._GimpMenuFactory* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #5
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %do.body.2
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else.4:                                        ; preds = %do.body.2
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.else.10

land.lhs.true.6:                                  ; preds = %if.else.4
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp8 = icmp eq i64 %9, %10
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true.6, %if.else.4
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #6
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.3
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  br label %if.end.17

if.else.16:                                       ; preds = %if.end.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_component_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %call19 = call i64 @gimp_component_editor_get_type() #5
  %15 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call20 = call i8* (i64, i8*, ...) @g_object_new(i64 %call19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct._GimpMenuFactory* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* null)
  %16 = bitcast i8* %call20 to %struct._GimpComponentEditor*
  store %struct._GimpComponentEditor* %16, %struct._GimpComponentEditor** %editor, align 8
  %17 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %18 = load i32, i32* %view_size.addr, align 4
  call void @gimp_component_editor_set_view_size(%struct._GimpComponentEditor* %17, i32 %18)
  %19 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %20 = bitcast %struct._GimpComponentEditor* %19 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call21)
  %21 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  store %struct._GtkWidget* %21, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %22
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_component_editor_set_view_size(%struct._GimpComponentEditor* %editor, i32 %view_size) #3 {
entry:
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %view_size.addr = alloca i32, align 4
  %tree_widget = alloca %struct._GtkWidget*, align 8
  %tree_style = alloca %struct._GtkStyle*, align 8
  %icon_size = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpComponentEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_component_editor_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_component_editor_set_view_size, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %view_size.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %view_size.addr, align 4
  %cmp14 = icmp sle i32 %14, 2048
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_component_editor_set_view_size, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %15, i32 0, i32 3
  %16 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %17 = bitcast %struct._GtkTreeView* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  store %struct._GtkWidget* %18, %struct._GtkWidget** %tree_widget, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_widget, align 8
  %call21 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %19)
  store %struct._GtkStyle* %call21, %struct._GtkStyle** %tree_style, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_widget, align 8
  %21 = load i32, i32* %view_size.addr, align 4
  %22 = load %struct._GtkStyle*, %struct._GtkStyle** %tree_style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %22, i32 0, i32 12
  %23 = load i32, i32* %xthickness, align 4
  %mul = mul nsw i32 2, %23
  %sub = sub nsw i32 %21, %mul
  %24 = load i32, i32* %view_size.addr, align 4
  %25 = load %struct._GtkStyle*, %struct._GtkStyle** %tree_style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %25, i32 0, i32 13
  %26 = load i32, i32* %ythickness, align 4
  %mul22 = mul nsw i32 2, %26
  %sub23 = sub nsw i32 %24, %mul22
  %call24 = call i32 @gimp_get_icon_size(%struct._GtkWidget* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 4, i32 %sub, i32 %sub23)
  store i32 %call24, i32* %icon_size, align 4
  %27 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_cell = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %27, i32 0, i32 6
  %28 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell, align 8
  %29 = bitcast %struct._GtkCellRenderer* %28 to i8*
  %30 = load i32, i32* %icon_size, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %30, i8* null)
  %31 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %31, i32 0, i32 2
  %32 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call25 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %32, %struct._GtkTreeIter* %iter)
  store i32 %call25, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.18
  %33 = load i32, i32* %iter_valid, align 4
  %tobool26 = icmp ne i32 %33, 0
  br i1 %tobool26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model28 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %34, i32 0, i32 2
  %35 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model28, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %35, %struct._GtkTreeIter* %iter, i32 2, %struct._GimpViewRenderer** %renderer, i32 -1)
  %36 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %37 = load i32, i32* %view_size.addr, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %36, i32 %37, i32 1)
  %38 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %39 = bitcast %struct._GimpViewRenderer* %38 to i8*
  call void @g_object_unref(i8* %39)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model29 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %40, i32 0, i32 2
  %41 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model29, align 8
  %call30 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %41, %struct._GtkTreeIter* %iter)
  store i32 %call30, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %view_size.addr, align 4
  %43 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view_size31 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %43, i32 0, i32 1
  store i32 %42, i32* %view_size31, align 4
  %44 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view32 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %44, i32 0, i32 3
  %45 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view32, align 8
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %45)
  br label %return

return:                                           ; preds = %for.end, %if.else.16, %if.else.9
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare i32 @gimp_get_icon_size(%struct._GtkWidget*, i8*, i32, i32, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gimp_view_renderer_set_size(%struct._GimpViewRenderer*, i32, i32) #1

declare void @g_object_unref(i8*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_view_columns_autosize(%struct._GtkTreeView*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_class_init(%struct._GimpComponentEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpComponentEditorClass*, align 8
  %image_editor_class = alloca %struct._GimpImageEditorClass*, align 8
  store %struct._GimpComponentEditorClass* %klass, %struct._GimpComponentEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpComponentEditorClass*, %struct._GimpComponentEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpComponentEditorClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_image_editor_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpImageEditorClass*
  store %struct._GimpImageEditorClass* %2, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %3 = load %struct._GimpImageEditorClass*, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %3, i32 0, i32 1
  store void (%struct._GimpImageEditor*, %struct._GimpImage*)* @gimp_component_editor_set_image, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_set_image(%struct._GimpImageEditor* %editor, %struct._GimpImage* %image) #3 {
entry:
  %editor.addr = alloca %struct._GimpImageEditor*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %component_editor = alloca %struct._GimpComponentEditor*, align 8
  store %struct._GimpImageEditor* %editor, %struct._GimpImageEditor** %editor.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpImageEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_component_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpComponentEditor*
  store %struct._GimpComponentEditor* %2, %struct._GimpComponentEditor** %component_editor, align 8
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  call void @gimp_component_editor_clear_components(%struct._GimpComponentEditor* %5)
  %6 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image3 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %6, i32 0, i32 2
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  %8 = bitcast %struct._GimpImage* %7 to i8*
  %9 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  %10 = bitcast %struct._GimpComponentEditor* %9 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpComponentEditor*)* @gimp_component_editor_mode_changed to i8*), i8* %10)
  %11 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image5 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %11, i32 0, i32 2
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %13 = bitcast %struct._GimpImage* %12 to i8*
  %14 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  %15 = bitcast %struct._GimpComponentEditor* %14 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpComponentEditor*)* @gimp_component_editor_alpha_changed to i8*), i8* %15)
  %16 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image7 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %16, i32 0, i32 2
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image7, align 8
  %18 = bitcast %struct._GimpImage* %17 to i8*
  %19 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  %20 = bitcast %struct._GimpComponentEditor* %19 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, %struct._GimpComponentEditor*)* @gimp_component_editor_visibility_changed to i8*), i8* %20)
  %21 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image9 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %21, i32 0, i32 2
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image9, align 8
  %23 = bitcast %struct._GimpImage* %22 to i8*
  %24 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  %25 = bitcast %struct._GimpComponentEditor* %24 to i8*
  %call10 = call i32 @g_signal_handlers_disconnect_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, %struct._GimpComponentEditor*)* @gimp_component_editor_active_changed to i8*), i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load i8*, i8** @gimp_component_editor_parent_class, align 8
  %27 = bitcast i8* %26 to %struct._GTypeClass*
  %call11 = call i64 @gimp_image_editor_get_type() #5
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %27, i64 %call11)
  %28 = bitcast %struct._GTypeClass* %call12 to %struct._GimpImageEditorClass*
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %28, i32 0, i32 1
  %29 = load void (%struct._GimpImageEditor*, %struct._GimpImage*)*, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  %30 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %29(%struct._GimpImageEditor* %30, %struct._GimpImage* %31)
  %32 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image13 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %32, i32 0, i32 2
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image13, align 8
  %tobool14 = icmp ne %struct._GimpImage* %33, null
  br i1 %tobool14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %if.end
  %34 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  call void @gimp_component_editor_create_components(%struct._GimpComponentEditor* %34)
  %35 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image16 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %35, i32 0, i32 2
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image16, align 8
  %37 = bitcast %struct._GimpImage* %36 to i8*
  %38 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  %39 = bitcast %struct._GimpComponentEditor* %38 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpComponentEditor*)* @gimp_component_editor_mode_changed to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image18 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %40, i32 0, i32 2
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image18, align 8
  %42 = bitcast %struct._GimpImage* %41 to i8*
  %43 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  %44 = bitcast %struct._GimpComponentEditor* %43 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpComponentEditor*)* @gimp_component_editor_alpha_changed to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 0)
  %45 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image20 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %45, i32 0, i32 2
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image20, align 8
  %47 = bitcast %struct._GimpImage* %46 to i8*
  %48 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  %49 = bitcast %struct._GimpComponentEditor* %48 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpComponentEditor*)* @gimp_component_editor_visibility_changed to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %editor.addr, align 8
  %image22 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %50, i32 0, i32 2
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image22, align 8
  %52 = bitcast %struct._GimpImage* %51 to i8*
  %53 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %component_editor, align 8
  %54 = bitcast %struct._GimpComponentEditor* %53 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpComponentEditor*)* @gimp_component_editor_active_changed to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.15, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_clear_components(%struct._GimpComponentEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %0, i32 0, i32 2
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = bitcast %struct._GtkTreeModel* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_list_store_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkListStore*
  call void @gtk_list_store_clear(%struct._GtkListStore* %3)
  %4 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %renderer_cell = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %4, i32 0, i32 7
  %5 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell, align 8
  %6 = bitcast %struct._GtkCellRenderer* %5 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null)
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_mode_changed(%struct._GimpImage* %image, %struct._GimpComponentEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  call void @gimp_component_editor_clear_components(%struct._GimpComponentEditor* %0)
  %1 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  call void @gimp_component_editor_create_components(%struct._GimpComponentEditor* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_alpha_changed(%struct._GimpImage* %image, %struct._GimpComponentEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  call void @gimp_component_editor_clear_components(%struct._GimpComponentEditor* %0)
  %1 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  call void @gimp_component_editor_create_components(%struct._GimpComponentEditor* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_visibility_changed(%struct._GimpImage* %image, i32 %channel, %struct._GimpComponentEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %visible = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %1 = load i32, i32* %channel.addr, align 4
  %call = call i32 @gimp_component_editor_get_iter(%struct._GimpComponentEditor* %0, i32 %1, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %3 = load i32, i32* %channel.addr, align 4
  %call1 = call i32 @gimp_image_get_component_visible(%struct._GimpImage* %2, i32 %3)
  store i32 %call1, i32* %visible, align 4
  %4 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %4, i32 0, i32 2
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = bitcast %struct._GtkTreeModel* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_list_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkListStore*
  %8 = load i32, i32* %visible, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter, i32 1, i32 %8, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_active_changed(%struct._GimpImage* %image, i32 %channel, %struct._GimpComponentEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %active = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %1 = load i32, i32* %channel.addr, align 4
  %call = call i32 @gimp_component_editor_get_iter(%struct._GimpComponentEditor* %0, i32 %1, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %3 = load i32, i32* %channel.addr, align 4
  %call1 = call i32 @gimp_image_get_component_active(%struct._GimpImage* %2, i32 %3)
  store i32 %call1, i32* %active, align 4
  %4 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %selection = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %4, i32 0, i32 4
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call2 = call i32 @gtk_tree_selection_iter_is_selected(%struct._GtkTreeSelection* %5, %struct._GtkTreeIter* %iter)
  %6 = load i32, i32* %active, align 4
  %cmp = icmp ne i32 %call2, %6
  br i1 %cmp, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %active, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  %8 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %selection6 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %8, i32 0, i32 4
  %9 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection6, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %9, %struct._GtkTreeIter* %iter)
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %10 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %selection7 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %10, i32 0, i32 4
  %11 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection7, align 8
  call void @gtk_tree_selection_unselect_iter(%struct._GtkTreeSelection* %11, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_create_components(%struct._GimpComponentEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %n_components = alloca i32, align 4
  %components = alloca [4 x i32], align 16
  %enum_class = alloca %struct._GEnumClass*, align 8
  %i = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %desc = alloca i8*, align 8
  %visible = alloca i32, align 4
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpComponentEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  store i32 0, i32* %n_components, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_base_type(%struct._GimpImage* %4)
  switch i32 %call3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %n_components, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 1
  store i32 1, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 2
  store i32 2, i32* %arrayidx5, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i32 1, i32* %n_components, align 4
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 0
  store i32 3, i32* %arrayidx7, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i32 1, i32* %n_components, align 4
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 0
  store i32 4, i32* %arrayidx9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.8, %sw.bb.6, %sw.bb
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i32 @gimp_image_has_alpha(%struct._GimpImage* %5)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %6 = load i32, i32* %n_components, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %n_components, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 %idxprom
  store i32 5, i32* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %call12 = call i64 @gimp_channel_type_get_type() #5
  %call13 = call i8* @g_type_class_ref(i64 %call12)
  %7 = bitcast i8* %call13 to %struct._GEnumClass*
  store %struct._GEnumClass* %7, %struct._GEnumClass** %enum_class, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n_components, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %call16 = call i32 @gimp_image_get_component_visible(%struct._GimpImage* %10, i32 %12)
  store i32 %call16, i32* %visible, align 4
  %13 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpComponentEditor* %13 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_image_editor_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call17)
  %15 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpImageEditor*
  %context = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %15, i32 0, i32 1
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = bitcast %struct._GimpImage* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %view_size = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %21, i32 0, i32 1
  %22 = load i32, i32* %view_size, align 4
  %call19 = call %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext* %16, i64 %20, i32 %22, i32 1, i32 0)
  store %struct._GimpViewRenderer* %call19, %struct._GimpViewRenderer** %renderer, align 8
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %25 = bitcast %struct._GimpImage* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_viewable_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpViewable*
  call void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer* %23, %struct._GimpViewable* %26)
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %27)
  %28 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 %idxprom22
  %29 = load i32, i32* %arrayidx23, align 4
  %30 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %31 = bitcast %struct._GimpViewRenderer* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_view_renderer_image_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpViewRendererImage*
  %channel = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %32, i32 0, i32 1
  store i32 %29, i32* %channel, align 4
  %33 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %34 = bitcast %struct._GimpViewRenderer* %33 to i8*
  %35 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %36 = bitcast %struct._GimpComponentEditor* %35 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpComponentEditor*)* @gimp_component_editor_renderer_update to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 %idxprom27
  %39 = load i32, i32* %arrayidx28, align 4
  %call29 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %37, i32 %39)
  store %struct._GEnumValue* %call29, %struct._GEnumValue** %enum_value, align 8
  %40 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %41 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %call30 = call i8* @gimp_enum_value_get_desc(%struct._GEnumClass* %40, %struct._GEnumValue* %41)
  store i8* %call30, i8** %desc, align 8
  %42 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %42, i32 0, i32 2
  %43 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %44 = bitcast %struct._GtkTreeModel* %43 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_list_store_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call31)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkListStore*
  call void @gtk_list_store_append(%struct._GtkListStore* %45, %struct._GtkTreeIter* %iter)
  %46 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model33 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %46, i32 0, i32 2
  %47 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model33, align 8
  %48 = bitcast %struct._GtkTreeModel* %47 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_list_store_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call34)
  %49 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkListStore*
  %50 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %50 to i64
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 %idxprom36
  %51 = load i32, i32* %arrayidx37, align 4
  %52 = load i32, i32* %visible, align 4
  %53 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %54 = load i8*, i8** %desc, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %49, %struct._GtkTreeIter* %iter, i32 0, i32 %51, i32 1, i32 %52, i32 2, %struct._GimpViewRenderer* %53, i32 3, i8* %54, i32 -1)
  %55 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %56 = bitcast %struct._GimpViewRenderer* %55 to i8*
  call void @g_object_unref(i8* %56)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %58 to i64
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %components, i32 0, i64 %idxprom38
  %59 = load i32, i32* %arrayidx39, align 4
  %call40 = call i32 @gimp_image_get_component_active(%struct._GimpImage* %57, i32 %59)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body
  %60 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %selection = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %60, i32 0, i32 4
  %61 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %61, %struct._GtkTreeIter* %iter)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %62 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %62, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %64 = bitcast %struct._GEnumClass* %63 to i8*
  call void @g_type_class_unref(i8* %64)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_component_editor_get_iter(%struct._GimpComponentEditor* %editor, i32 %channel, %struct._GtkTreeIter* %iter) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %channel.addr = alloca i32, align 4
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %index = alloca i32, align 4
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpComponentEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %4 = load i32, i32* %channel.addr, align 4
  %call2 = call i32 @gimp_image_get_component_index(%struct._GimpImage* %3, i32 %4)
  store i32 %call2, i32* %index, align 4
  %5 = load i32, i32* %index, align 4
  %cmp = icmp ne i32 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %6, i32 0, i32 2
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %8 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %9 = load i32, i32* %index, align 4
  %call3 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %8, %struct._GtkTreeIter* null, i32 %9)
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @gimp_image_get_component_visible(%struct._GimpImage*, i32) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare i32 @gimp_image_get_component_index(%struct._GimpImage*, i32) #1

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

declare i32 @gimp_image_get_component_active(%struct._GimpImage*, i32) #1

declare i32 @gtk_tree_selection_iter_is_selected(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_selection_unselect_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare i32 @gimp_image_has_alpha(%struct._GimpImage*) #1

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #2

declare %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext*, i64, i32, i32, i32) #1

declare void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_image_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_renderer_update(%struct._GimpViewRenderer* %renderer, %struct._GimpComponentEditor* %editor) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %channel = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %1 = bitcast %struct._GimpViewRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_renderer_image_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewRendererImage*
  %channel2 = getelementptr inbounds %struct._GimpViewRendererImage, %struct._GimpViewRendererImage* %2, i32 0, i32 1
  %3 = load i32, i32* %channel2, align 4
  store i32 %3, i32* %channel, align 4
  %4 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %5 = load i32, i32* %channel, align 4
  %call3 = call i32 @gimp_component_editor_get_iter(%struct._GimpComponentEditor* %4, i32 %5, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %6, i32 0, i32 2
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call4 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call4, %struct._GtkTreePath** %path, align 8
  %8 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model5 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %8, i32 0, i32 2
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model5, align 8
  %10 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_model_row_changed(%struct._GtkTreeModel* %9, %struct._GtkTreePath* %10, %struct._GtkTreeIter* %iter)
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

declare i8* @gimp_enum_value_get_desc(%struct._GEnumClass*, %struct._GEnumValue*) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @g_type_class_unref(i8*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_row_changed(%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_toggle_new(i8*) #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_clicked(%struct._GtkCellRendererToggle* %cellrenderertoggle, i8* %path_str, i32 %state, %struct._GimpComponentEditor* %editor) #3 {
entry:
  %cellrenderertoggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_str.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca i32, align 4
  %active = alloca i32, align 4
  store %struct._GtkCellRendererToggle* %cellrenderertoggle, %struct._GtkCellRendererToggle** %cellrenderertoggle.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load i8*, i8** %path_str.addr, align 8
  %call = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %0)
  store %struct._GtkTreePath* %call, %struct._GtkTreePath** %path, align 8
  %1 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %1, i32 0, i32 2
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %3 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call1 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpComponentEditor* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpImageEditor*
  %image4 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %6, i32 0, i32 2
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image4, align 8
  store %struct._GimpImage* %7, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model5 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %8, i32 0, i32 2
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model5, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 0, i32* %channel, i32 -1)
  %10 = load %struct._GtkCellRendererToggle*, %struct._GtkCellRendererToggle** %cellrenderertoggle.addr, align 8
  %11 = bitcast %struct._GtkCellRendererToggle* %10 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32* %active, i8* null)
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load i32, i32* %channel, align 4
  %14 = load i32, i32* %active, align 4
  %tobool6 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_image_set_component_visible(%struct._GimpImage* %12, i32 %13, i32 %lnot.ext)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %16)
  ret void
}

declare %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new() #1

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_component_editor_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpComponentEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %editor.addr = alloca %struct._GimpComponentEditor*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %channel = alloca i32, align 4
  %active = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpComponentEditor* %editor, %struct._GimpComponentEditor** %editor.addr, align 8
  %0 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %clicked_component = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %0, i32 0, i32 8
  store i32 -1, i32* %clicked_component, align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 4
  %5 = load double, double* %x, align 8
  %conv = fptosi double %5 to i32
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 5
  %7 = load double, double* %y, align 8
  %conv2 = fptosi double %7 to i32
  %call3 = call i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView* %3, i32 %conv, i32 %conv2, %struct._GtkTreePath** %path, %struct._GtkTreeViewColumn** %column, i32* null, i32* null)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %selection = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %8, i32 0, i32 4
  %9 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %10 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call4 = call i32 @gtk_tree_selection_path_is_selected(%struct._GtkTreeSelection* %9, %struct._GtkTreePath* %10)
  store i32 %call4, i32* %active, align 4
  %11 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %11, i32 0, i32 2
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %13 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call5 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %13)
  %14 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %14)
  %15 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %model6 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %15, i32 0, i32 2
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model6, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %16, %struct._GtkTreeIter* %iter, i32 0, i32* %channel, i32 -1)
  %17 = load i32, i32* %channel, align 4
  %18 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %clicked_component7 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %18, i32 0, i32 8
  store i32 %17, i32* %clicked_component7, align 4
  %19 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %20 = bitcast %struct._GdkEventButton* %19 to %union._GdkEvent*
  %call8 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %20)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %21 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %22 = bitcast %struct._GimpComponentEditor* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_editor_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpEditor*
  %call13 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %23, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  br label %if.end.25

if.else:                                          ; preds = %if.then
  %24 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %24, i32 0, i32 0
  %25 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %25, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %26 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %26, i32 0, i32 8
  %27 = load i32, i32* %button, align 4
  %cmp15 = icmp eq i32 %27, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %28 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %29 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %eye_column = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %29, i32 0, i32 5
  %30 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %eye_column, align 8
  %cmp18 = icmp ne %struct._GtkTreeViewColumn* %28, %30
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true.17
  %31 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor.addr, align 8
  %32 = bitcast %struct._GimpComponentEditor* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_image_editor_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpImageEditor*
  %image23 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %33, i32 0, i32 2
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image23, align 8
  store %struct._GimpImage* %34, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %36 = load i32, i32* %channel, align 4
  %37 = load i32, i32* %active, align 4
  %tobool24 = icmp ne i32 %37, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_image_set_component_active(%struct._GimpImage* %35, i32 %36, i32 %lnot.ext)
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %38)
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true.17, %land.lhs.true, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.10
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %entry
  ret i32 0
}

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

declare void @gtk_tree_selection_set_select_function(%struct._GtkTreeSelection*, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_component_editor_select(%struct._GtkTreeSelection* %selection, %struct._GtkTreeModel* %model, %struct._GtkTreePath* %path, i32 %path_currently_selected, i8* %data) #3 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %path_currently_selected.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpComponentEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %channel = alloca i32, align 4
  %active = alloca i32, align 4
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store i32 %path_currently_selected, i32* %path_currently_selected.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_component_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpComponentEditor*
  store %struct._GimpComponentEditor* %2, %struct._GimpComponentEditor** %editor, align 8
  %3 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %model2 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %3, i32 0, i32 2
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model2, align 8
  %5 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %5)
  %6 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %model4 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %6, i32 0, i32 2
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model4, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i32 0, i32* %channel, i32 -1)
  %8 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %9 = bitcast %struct._GimpComponentEditor* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_image_editor_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpImageEditor*
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %10, i32 0, i32 2
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load i32, i32* %channel, align 4
  %call7 = call i32 @gimp_image_get_component_active(%struct._GimpImage* %11, i32 %12)
  store i32 %call7, i32* %active, align 4
  %13 = load i32, i32* %active, align 4
  %14 = load i32, i32* %path_currently_selected.addr, align 4
  %cmp = icmp ne i32 %13, %14
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @gimp_dnd_component_source_add(%struct._GtkWidget*, %struct._GimpImage* (%struct._GtkWidget*, %struct._GimpContext**, i32*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpImage* @gimp_component_editor_drag_component(%struct._GtkWidget* %widget, %struct._GimpContext** %context, i32* %channel, i8* %data) #3 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext**, align 8
  %channel.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpComponentEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpContext** %context, %struct._GimpContext*** %context.addr, align 8
  store i32* %channel, i32** %channel.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_component_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpComponentEditor*
  store %struct._GimpComponentEditor* %2, %struct._GimpComponentEditor** %editor, align 8
  %3 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %4 = bitcast %struct._GimpComponentEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpImageEditor*
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %clicked_component = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %7, i32 0, i32 8
  %8 = load i32, i32* %clicked_component, align 4
  %cmp = icmp ne i32 %8, -1
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32*, i32** %channel.addr, align 8
  %tobool4 = icmp ne i32* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %10 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %clicked_component6 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %10, i32 0, i32 8
  %11 = load i32, i32* %clicked_component6, align 4
  %12 = load i32*, i32** %channel.addr, align 8
  store i32 %11, i32* %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %13 = load %struct._GimpContext**, %struct._GimpContext*** %context.addr, align 8
  %tobool7 = icmp ne %struct._GimpContext** %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %14 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %15 = bitcast %struct._GimpComponentEditor* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_image_editor_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpImageEditor*
  %context11 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context11, align 8
  %18 = load %struct._GimpContext**, %struct._GimpContext*** %context.addr, align 8
  store %struct._GimpContext* %17, %struct._GimpContext** %18, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %19 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %20 = bitcast %struct._GimpComponentEditor* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_image_editor_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpImageEditor*
  %image15 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %21, i32 0, i32 2
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image15, align 8
  store %struct._GimpImage* %22, %struct._GimpImage** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %entry
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end.12
  %23 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %23
}

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gimp_image_set_component_visible(%struct._GimpImage*, i32, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView*, i32, i32, %struct._GtkTreePath**, %struct._GtkTreeViewColumn**, i32*, i32*) #1

declare i32 @gtk_tree_selection_path_is_selected(%struct._GtkTreeSelection*, %struct._GtkTreePath*) #1

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @gimp_image_set_component_active(%struct._GimpImage*, i32, i32) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_component_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpComponentEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_component_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpComponentEditor*
  store %struct._GimpComponentEditor* %2, %struct._GimpComponentEditor** %editor, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** @parent_docked_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 8
  %4 = load void (%struct._GimpDocked*, %struct._GimpContext*)*, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpDocked* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %model = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %7, i32 0, i32 2
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter)
  store i32 %call2, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %model3 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %10, i32 0, i32 2
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model3, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %iter, i32 2, %struct._GimpViewRenderer** %renderer, i32 -1)
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %12, %struct._GimpContext* %13)
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %15 = bitcast %struct._GimpViewRenderer* %14 to i8*
  call void @g_object_unref(i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GimpComponentEditor*, %struct._GimpComponentEditor** %editor, align 8
  %model4 = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %16, i32 0, i32 2
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model4, align 8
  %call5 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter)
  store i32 %call5, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
