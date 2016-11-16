; ModuleID = './libgimpwidgets/gimpunitmenu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpUnitMenuClass = type { %struct._GtkOptionMenuClass, void (%struct._GimpUnitMenu*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkOptionMenuClass = type { %struct._GtkButtonClass, void (%struct._GtkOptionMenu*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkButtonClass = type { %struct._GtkBinClass, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkArg = type { i64, i8*, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { void ()*, i8* }
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
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.1 }
%union.anon.1 = type { [5 x i64] }
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
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkOptionMenu = type { %struct._GtkButton, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GimpUnitMenu = type { %struct._GtkOptionMenu, i8*, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque

@gimp_unit_menu_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpUnitMenu\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_unit_menu_new = private unnamed_addr constant [19 x i8] c"gimp_unit_menu_new\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"((unit >= GIMP_UNIT_PIXEL) && (unit < gimp_unit_get_number_of_units ())) || (unit == GIMP_UNIT_PERCENT)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimp_unit_menu\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"More...\00", align 1
@__func__.gimp_unit_menu_set_unit = private unnamed_addr constant [24 x i8] c"gimp_unit_menu_set_unit\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"GIMP_IS_UNIT_MENU (menu)\00", align 1
@.str.8 = private unnamed_addr constant [179 x i8] c"((unit >= GIMP_UNIT_PIXEL) && ((unit > GIMP_UNIT_PIXEL) || menu->show_pixels) && (unit < gimp_unit_get_number_of_units ())) || ((unit == GIMP_UNIT_PERCENT) && menu->show_percent)\00", align 1
@gimp_unit_menu_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_unit_menu_get_unit = private unnamed_addr constant [24 x i8] c"gimp_unit_menu_get_unit\00", align 1
@__func__.gimp_unit_menu_set_pixel_digits = private unnamed_addr constant [32 x i8] c"gimp_unit_menu_set_pixel_digits\00", align 1
@__func__.gimp_unit_menu_get_pixel_digits = private unnamed_addr constant [32 x i8] c"gimp_unit_menu_get_pixel_digits\00", align 1
@gimp_unit_menu_parent_class = internal global i8* null, align 8
@GimpUnitMenu_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"unit-changed\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Unit Selection\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"gimp-unit-selection\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"gimp-unit-dialog\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"(%f)\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"row-activated\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_unit_menu_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_unit_menu_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_unit_menu_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_option_menu_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 984, void (i8*, i8*)* bitcast (void (i8*)* @gimp_unit_menu_class_intern_init to void (i8*, i8*)*), i32 208, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpUnitMenu*)* @gimp_unit_menu_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_unit_menu_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_unit_menu_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_option_menu_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_menu_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_unit_menu_parent_class, align 8
  %1 = load i32, i32* @GimpUnitMenu_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpUnitMenu_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpUnitMenuClass*
  call void @gimp_unit_menu_class_init(%struct._GimpUnitMenuClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_menu_init(%struct._GimpUnitMenu* %menu) #3 {
entry:
  %menu.addr = alloca %struct._GimpUnitMenu*, align 8
  store %struct._GimpUnitMenu* %menu, %struct._GimpUnitMenu** %menu.addr, align 8
  %0 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %format = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %0, i32 0, i32 1
  store i8* null, i8** %format, align 8
  %1 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %unit = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %1, i32 0, i32 2
  store i32 0, i32* %unit, align 4
  %2 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_pixels = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %2, i32 0, i32 4
  store i32 0, i32* %show_pixels, align 4
  %3 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_percent = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %3, i32 0, i32 5
  store i32 0, i32* %show_percent, align 4
  %4 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %4, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %selection, align 8
  %5 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %5, i32 0, i32 7
  store %struct._GtkWidget* null, %struct._GtkWidget** %tv, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_unit_menu_new(i8* %format, i32 %unit, i32 %show_pixels, i32 %show_percent, i32 %show_custom) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %format.addr = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  %show_pixels.addr = alloca i32, align 4
  %show_percent.addr = alloca i32, align 4
  %show_custom.addr = alloca i32, align 4
  %unit_menu = alloca %struct._GimpUnitMenu*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %menuitem = alloca %struct._GtkWidget*, align 8
  %string = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %format, i8** %format.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %show_pixels, i32* %show_pixels.addr, align 4
  store i32 %show_percent, i32* %show_percent.addr, align 4
  store i32 %show_custom, i32* %show_custom.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp uge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i32 @gimp_unit_get_number_of_units()
  %cmp1 = icmp ult i32 %1, %call
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %2 = load i32, i32* %unit.addr, align 4
  %cmp2 = icmp eq i32 %2, 65536
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_unit_menu_new, i32 0, i32 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i32, i32* %unit.addr, align 4
  %call3 = call i32 @gimp_unit_get_number_of_built_in_units() #7
  %cmp4 = icmp uge i32 %3, %call3
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.8

land.lhs.true.5:                                  ; preds = %do.end
  %4 = load i32, i32* %unit.addr, align 4
  %cmp6 = icmp ne i32 %4, 65536
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.5
  store i32 1, i32* %show_custom.addr, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true.5, %do.end
  %call9 = call i64 @gimp_unit_menu_get_type() #7
  %call10 = call i8* (i64, i8*, ...) @g_object_new(i64 %call9, i8* null)
  %5 = bitcast i8* %call10 to %struct._GimpUnitMenu*
  store %struct._GimpUnitMenu* %5, %struct._GimpUnitMenu** %unit_menu, align 8
  %6 = load i8*, i8** %format.addr, align 8
  %call11 = call noalias i8* @g_strdup(i8* %6)
  %7 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %format12 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %7, i32 0, i32 1
  store i8* %call11, i8** %format12, align 8
  %8 = load i32, i32* %show_pixels.addr, align 4
  %9 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %show_pixels13 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %9, i32 0, i32 4
  store i32 %8, i32* %show_pixels13, align 4
  %10 = load i32, i32* %show_percent.addr, align 4
  %11 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %show_percent14 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %11, i32 0, i32 5
  store i32 %10, i32* %show_percent14, align 4
  %call15 = call %struct._GtkWidget* @gtk_menu_new()
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %menu, align 8
  %12 = load i32, i32* %show_pixels.addr, align 4
  %tobool = icmp ne i32 %12, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %13 = load i32, i32* %u, align 4
  %call16 = call i32 @gimp_unit_get_number_of_built_in_units() #7
  %cmp17 = icmp ult i32 %13, %call16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %u, align 4
  %cmp18 = icmp eq i32 %14, 1
  br i1 %cmp18, label %if.then.19, label %if.end.37

if.then.19:                                       ; preds = %for.body
  %15 = load i32, i32* %show_percent.addr, align 4
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.then.19
  %16 = load i8*, i8** %format.addr, align 8
  %call22 = call i8* @gimp_unit_format_string(i8* %16, i32 65536)
  store i8* %call22, i8** %string, align 8
  %17 = load i8*, i8** %string, align 8
  %call23 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %17)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %menuitem, align 8
  %18 = load i8*, i8** %string, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_menu_shell_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call24)
  %21 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkMenuShell*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %21, %struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* inttoptr (i64 65536 to i8*))
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %30 = bitcast %struct._GimpUnitMenu* %29 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_unit_menu_callback to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %if.then.19
  %31 = load i32, i32* %show_pixels.addr, align 4
  %tobool29 = icmp ne i32 %31, 0
  br i1 %tobool29, label %if.then.32, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end.28
  %32 = load i32, i32* %show_percent.addr, align 4
  %tobool31 = icmp ne i32 %32, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %lor.lhs.false.30, %if.end.28
  %call33 = call %struct._GtkWidget* @gtk_menu_item_new()
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %menuitem, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_menu_shell_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call34)
  %35 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkMenuShell*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %35, %struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %37, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %lor.lhs.false.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %for.body
  %39 = load i8*, i8** %format.addr, align 8
  %40 = load i32, i32* %u, align 4
  %call38 = call i8* @gimp_unit_format_string(i8* %39, i32 %40)
  store i8* %call38, i8** %string, align 8
  %41 = load i8*, i8** %string, align 8
  %call39 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %41)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %menuitem, align 8
  %42 = load i8*, i8** %string, align 8
  call void @g_free(i8* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_menu_shell_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkMenuShell*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %45, %struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call42 to %struct._GObject*
  %50 = load i32, i32* %u, align 4
  %conv = zext i32 %50 to i64
  %51 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %55 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %56 = bitcast %struct._GimpUnitMenu* %55 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_unit_menu_callback to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %57 = load i32, i32* %u, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %unit.addr, align 4
  %call44 = call i32 @gimp_unit_get_number_of_built_in_units() #7
  %cmp45 = icmp uge i32 %58, %call44
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.61

land.lhs.true.47:                                 ; preds = %for.end
  %59 = load i32, i32* %unit.addr, align 4
  %cmp48 = icmp ne i32 %59, 65536
  br i1 %cmp48, label %if.then.50, label %if.end.61

if.then.50:                                       ; preds = %land.lhs.true.47
  %call51 = call %struct._GtkWidget* @gtk_menu_item_new()
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %menuitem, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_menu_shell_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call52)
  %62 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkMenuShell*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %62, %struct._GtkWidget* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %64, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load i8*, i8** %format.addr, align 8
  %67 = load i32, i32* %unit.addr, align 4
  %call54 = call i8* @gimp_unit_format_string(i8* %66, i32 %67)
  store i8* %call54, i8** %string, align 8
  %68 = load i8*, i8** %string, align 8
  %call55 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %68)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %menuitem, align 8
  %69 = load i8*, i8** %string, align 8
  call void @g_free(i8* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_menu_shell_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call56)
  %72 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkMenuShell*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %72, %struct._GtkWidget* %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 80)
  %76 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  %77 = load i32, i32* %unit.addr, align 4
  %conv59 = zext i32 %77 to i64
  %78 = inttoptr i64 %conv59 to i8*
  call void @g_object_set_data(%struct._GObject* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %82 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %83 = bitcast %struct._GimpUnitMenu* %82 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_unit_menu_callback to void ()*), i8* %83, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.50, %land.lhs.true.47, %for.end
  %84 = load i32, i32* %show_custom.addr, align 4
  %tobool62 = icmp ne i32 %84, 0
  br i1 %tobool62, label %if.then.63, label %if.end.73

if.then.63:                                       ; preds = %if.end.61
  %call64 = call %struct._GtkWidget* @gtk_menu_item_new()
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %menuitem, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_menu_shell_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call65)
  %87 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkMenuShell*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %87, %struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %89, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %call67 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #6
  %call68 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %call67)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %menuitem, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_menu_shell_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call69)
  %93 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkMenuShell*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %93, %struct._GtkWidget* %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 80)
  %97 = bitcast %struct._GTypeInstance* %call71 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* inttoptr (i64 65537 to i8*))
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %101 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %102 = bitcast %struct._GimpUnitMenu* %101 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_unit_menu_callback to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.63, %if.end.61
  %103 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %104 = bitcast %struct._GimpUnitMenu* %103 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_option_menu_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call74)
  %105 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkOptionMenu*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_option_menu_set_menu(%struct._GtkOptionMenu* %105, %struct._GtkWidget* %106)
  %107 = load i32, i32* %unit.addr, align 4
  %108 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %unit76 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %108, i32 0, i32 2
  store i32 %107, i32* %unit76, align 4
  %109 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %110 = bitcast %struct._GimpUnitMenu* %109 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_option_menu_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call77)
  %111 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkOptionMenu*
  %112 = load i32, i32* %unit.addr, align 4
  %cmp79 = icmp eq i32 %112, 0
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.73
  br label %cond.end.101

cond.false:                                       ; preds = %if.end.73
  %113 = load i32, i32* %unit.addr, align 4
  %cmp81 = icmp eq i32 %113, 65536
  br i1 %cmp81, label %cond.true.83, label %cond.false.86

cond.true.83:                                     ; preds = %cond.false
  %114 = load i32, i32* %show_pixels.addr, align 4
  %tobool84 = icmp ne i32 %114, 0
  %cond85 = select i1 %tobool84, i32 1, i32 0
  br label %cond.end.99

cond.false.86:                                    ; preds = %cond.false
  %115 = load i32, i32* %show_pixels.addr, align 4
  %tobool87 = icmp ne i32 %115, 0
  br i1 %tobool87, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.86
  %116 = load i32, i32* %show_percent.addr, align 4
  %tobool88 = icmp ne i32 %116, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.86
  %117 = phi i1 [ true, %cond.false.86 ], [ %tobool88, %lor.rhs ]
  %cond89 = select i1 %117, i32 2, i32 0
  %118 = load i32, i32* %show_pixels.addr, align 4
  %tobool90 = icmp ne i32 %118, 0
  br i1 %tobool90, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %119 = load i32, i32* %show_percent.addr, align 4
  %tobool91 = icmp ne i32 %119, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %120 = phi i1 [ false, %lor.end ], [ %tobool91, %land.rhs ]
  %cond92 = select i1 %120, i32 1, i32 0
  %add = add nsw i32 %cond89, %cond92
  %121 = load i32, i32* %unit.addr, align 4
  %cmp93 = icmp ult i32 %121, 5
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %land.end
  %122 = load i32, i32* %unit.addr, align 4
  %sub = sub i32 %122, 1
  br label %cond.end

cond.false.96:                                    ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false.96, %cond.true.95
  %cond97 = phi i32 [ %sub, %cond.true.95 ], [ 5, %cond.false.96 ]
  %add98 = add i32 %add, %cond97
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end, %cond.true.83
  %cond100 = phi i32 [ %cond85, %cond.true.83 ], [ %add98, %cond.end ]
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.end.99, %cond.true
  %cond102 = phi i32 [ 0, %cond.true ], [ %cond100, %cond.end.99 ]
  call void @gtk_option_menu_set_history(%struct._GtkOptionMenu* %111, i32 %cond102)
  %123 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %unit_menu, align 8
  %124 = bitcast %struct._GimpUnitMenu* %123 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_widget_get_type() #7
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call103)
  %125 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkWidget*
  store %struct._GtkWidget* %125, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %cond.end.101, %if.else
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %126
}

declare i32 @gimp_unit_get_number_of_units() #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_unit_get_number_of_built_in_units() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GtkWidget* @gtk_menu_new() #1

declare i8* @gimp_unit_format_string(i8*, i32) #1

declare %struct._GtkWidget* @gtk_menu_item_new_with_label(i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_menu_shell_append(%struct._GtkMenuShell*, %struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_shell_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_menu_callback(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %menu = alloca %struct._GimpUnitMenu*, align 8
  %new_unit = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpUnitMenu*
  store %struct._GimpUnitMenu* %1, %struct._GimpUnitMenu** %menu, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  %5 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %new_unit, align 4
  %6 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %unit = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %6, i32 0, i32 2
  %7 = load i32, i32* %unit, align 4
  %8 = load i32, i32* %new_unit, align 4
  %cmp = icmp eq i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %new_unit, align 4
  %cmp3 = icmp eq i32 %9, 65537
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %11 = bitcast %struct._GimpUnitMenu* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_option_menu_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkOptionMenu*
  %13 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %unit8 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %13, i32 0, i32 2
  %14 = load i32, i32* %unit8, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  br label %cond.end.35

cond.false:                                       ; preds = %if.then.5
  %15 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %unit11 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %15, i32 0, i32 2
  %16 = load i32, i32* %unit11, align 4
  %cmp12 = icmp eq i32 %16, 65536
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  %17 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %show_pixels = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %17, i32 0, i32 4
  %18 = load i32, i32* %show_pixels, align 4
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i32 1, i32 0
  br label %cond.end.33

cond.false.15:                                    ; preds = %cond.false
  %19 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %show_pixels16 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %19, i32 0, i32 4
  %20 = load i32, i32* %show_pixels16, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.15
  %21 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %show_percent = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %21, i32 0, i32 5
  %22 = load i32, i32* %show_percent, align 4
  %tobool18 = icmp ne i32 %22, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.15
  %23 = phi i1 [ true, %cond.false.15 ], [ %tobool18, %lor.rhs ]
  %cond19 = select i1 %23, i32 2, i32 0
  %24 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %show_pixels20 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %24, i32 0, i32 4
  %25 = load i32, i32* %show_pixels20, align 4
  %tobool21 = icmp ne i32 %25, 0
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %26 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %show_percent22 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %26, i32 0, i32 5
  %27 = load i32, i32* %show_percent22, align 4
  %tobool23 = icmp ne i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %28 = phi i1 [ false, %lor.end ], [ %tobool23, %land.rhs ]
  %cond24 = select i1 %28, i32 1, i32 0
  %add = add nsw i32 %cond19, %cond24
  %29 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %unit25 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %29, i32 0, i32 2
  %30 = load i32, i32* %unit25, align 4
  %cmp26 = icmp ult i32 %30, 5
  br i1 %cmp26, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %land.end
  %31 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %unit29 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %31, i32 0, i32 2
  %32 = load i32, i32* %unit29, align 4
  %sub = sub i32 %32, 1
  br label %cond.end

cond.false.30:                                    ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.28
  %cond31 = phi i32 [ %sub, %cond.true.28 ], [ 5, %cond.false.30 ]
  %add32 = add i32 %add, %cond31
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true.14
  %cond34 = phi i32 [ %cond, %cond.true.14 ], [ %add32, %cond.end ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.33, %cond.true
  %cond36 = phi i32 [ 0, %cond.true ], [ %cond34, %cond.end.33 ]
  call void @gtk_option_menu_set_history(%struct._GtkOptionMenu* %12, i32 %cond36)
  %33 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %selection = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %33, i32 0, i32 6
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %tobool37 = icmp ne %struct._GtkWidget* %34, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %cond.end.35
  %35 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  call void @gimp_unit_menu_create_selection(%struct._GimpUnitMenu* %35)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %cond.end.35
  br label %return

if.else:                                          ; preds = %if.end
  %36 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %selection40 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %36, i32 0, i32 6
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %selection40, align 8
  %tobool41 = icmp ne %struct._GtkWidget* %37, null
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.else
  %38 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %selection43 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %38, i32 0, i32 6
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %selection43, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %39)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44
  %40 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %41 = load i32, i32* %new_unit, align 4
  call void @gimp_unit_menu_set_unit(%struct._GimpUnitMenu* %40, i32 %41)
  br label %return

return:                                           ; preds = %if.end.45, %if.end.39, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_menu_item_new() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare void @gtk_option_menu_set_menu(%struct._GtkOptionMenu*, %struct._GtkWidget*) #1

declare void @gtk_option_menu_set_history(%struct._GtkOptionMenu*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_unit_menu_set_unit(%struct._GimpUnitMenu* %menu, i32 %unit) #3 {
entry:
  %menu.addr = alloca %struct._GimpUnitMenu*, align 8
  %unit.addr = alloca i32, align 4
  %menuitem = alloca %struct._GtkWidget*, align 8
  %items = alloca %struct._GList*, align 8
  %user_unit = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %string = alloca i8*, align 8
  store %struct._GimpUnitMenu* %menu, %struct._GimpUnitMenu** %menu.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %menuitem, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %1 = bitcast %struct._GimpUnitMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_menu_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_unit_menu_set_unit, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %unit.addr, align 4
  %cmp12 = icmp uge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.19

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %unit.addr, align 4
  %cmp14 = icmp ugt i32 %14, 0
  br i1 %cmp14, label %land.lhs.true.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13
  %15 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_pixels = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %15, i32 0, i32 4
  %16 = load i32, i32* %show_pixels, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %land.lhs.true.16, label %lor.lhs.false.19

land.lhs.true.16:                                 ; preds = %lor.lhs.false, %land.lhs.true.13
  %17 = load i32, i32* %unit.addr, align 4
  %call17 = call i32 @gimp_unit_get_number_of_units()
  %cmp18 = icmp ult i32 %17, %call17
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.16, %lor.lhs.false, %do.body.11
  %18 = load i32, i32* %unit.addr, align 4
  %cmp20 = icmp eq i32 %18, 65536
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %lor.lhs.false.19
  %19 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_percent = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %19, i32 0, i32 5
  %20 = load i32, i32* %show_percent, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21, %land.lhs.true.16
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %lor.lhs.false.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_unit_menu_set_unit, i32 0, i32 0), i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %21 = load i32, i32* %unit.addr, align 4
  %22 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %unit27 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %22, i32 0, i32 2
  %23 = load i32, i32* %unit27, align 4
  %cmp28 = icmp eq i32 %21, %23
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end.26
  br label %return

if.end.30:                                        ; preds = %do.end.26
  %24 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %25 = bitcast %struct._GimpUnitMenu* %24 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_option_menu_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call31)
  %26 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkOptionMenu*
  %menu33 = getelementptr inbounds %struct._GtkOptionMenu, %struct._GtkOptionMenu* %26, i32 0, i32 1
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %menu33, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_menu_shell_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call34)
  %29 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkMenuShell*
  %children = getelementptr inbounds %struct._GtkMenuShell, %struct._GtkMenuShell* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %30, %struct._GList** %items, align 8
  %31 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_pixels36 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %31, i32 0, i32 4
  %32 = load i32, i32* %show_pixels36, align 4
  %tobool37 = icmp ne i32 %32, 0
  br i1 %tobool37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.30
  %33 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_percent38 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %33, i32 0, i32 5
  %34 = load i32, i32* %show_percent38, align 4
  %tobool39 = icmp ne i32 %34, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.30
  %35 = phi i1 [ true, %if.end.30 ], [ %tobool39, %lor.rhs ]
  %cond = select i1 %35, i32 2, i32 0
  %36 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_pixels40 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %36, i32 0, i32 4
  %37 = load i32, i32* %show_pixels40, align 4
  %tobool41 = icmp ne i32 %37, 0
  br i1 %tobool41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %38 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_percent42 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %38, i32 0, i32 5
  %39 = load i32, i32* %show_percent42, align 4
  %tobool43 = icmp ne i32 %39, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %40 = phi i1 [ false, %lor.end ], [ %tobool43, %land.rhs ]
  %cond44 = select i1 %40, i32 1, i32 0
  %add = add nsw i32 %cond, %cond44
  %add45 = add nsw i32 5, %add
  store i32 %add45, i32* %user_unit, align 4
  %41 = load i32, i32* %unit.addr, align 4
  %cmp46 = icmp uge i32 %41, 5
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.89

land.lhs.true.47:                                 ; preds = %land.end
  %42 = load i32, i32* %unit.addr, align 4
  %cmp48 = icmp ne i32 %42, 65536
  br i1 %cmp48, label %if.then.49, label %if.end.89

if.then.49:                                       ; preds = %land.lhs.true.47
  %43 = load %struct._GList*, %struct._GList** %items, align 8
  %call51 = call i32 @g_list_length(%struct._GList* %43)
  %sub = sub i32 %call51, 3
  %44 = load i32, i32* %user_unit, align 4
  %cmp52 = icmp uge i32 %sub, %44
  br i1 %cmp52, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %if.then.49
  %45 = load %struct._GList*, %struct._GList** %items, align 8
  %46 = load i32, i32* %user_unit, align 4
  %sub54 = sub nsw i32 %46, 1
  %call55 = call i8* @g_list_nth_data(%struct._GList* %45, i32 %sub54)
  %47 = bitcast i8* %call55 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_widget_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call56)
  %48 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %48)
  %49 = load %struct._GList*, %struct._GList** %items, align 8
  %50 = load i32, i32* %user_unit, align 4
  %sub58 = sub nsw i32 %50, 1
  %call59 = call i8* @g_list_nth_data(%struct._GList* %49, i32 %sub58)
  %51 = bitcast i8* %call59 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_widget_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call60)
  %52 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %52)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.53, %if.then.49
  %call63 = call %struct._GtkWidget* @gtk_menu_item_new()
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %menuitem, align 8
  %53 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %54 = bitcast %struct._GimpUnitMenu* %53 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_option_menu_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call64)
  %55 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkOptionMenu*
  %menu66 = getelementptr inbounds %struct._GtkOptionMenu, %struct._GtkOptionMenu* %55, i32 0, i32 1
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %menu66, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_menu_shell_get_type() #7
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call67)
  %58 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkMenuShell*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %58, %struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %60, i32 0)
  %61 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %62 = bitcast %struct._GimpUnitMenu* %61 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_option_menu_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call69)
  %63 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkOptionMenu*
  %menu71 = getelementptr inbounds %struct._GtkOptionMenu, %struct._GtkOptionMenu* %63, i32 0, i32 1
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %menu71, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_menu_get_type() #7
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call72)
  %66 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkMenu*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %68 = load i32, i32* %user_unit, align 4
  %sub74 = sub nsw i32 %68, 1
  call void @gtk_menu_reorder_child(%struct._GtkMenu* %66, %struct._GtkWidget* %67, i32 %sub74)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %format = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %70, i32 0, i32 1
  %71 = load i8*, i8** %format, align 8
  %72 = load i32, i32* %unit.addr, align 4
  %call75 = call i8* @gimp_unit_format_string(i8* %71, i32 %72)
  store i8* %call75, i8** %string, align 8
  %73 = load i8*, i8** %string, align 8
  %call76 = call %struct._GtkWidget* @gtk_menu_item_new_with_label(i8* %73)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %menuitem, align 8
  %74 = load i8*, i8** %string, align 8
  call void @g_free(i8* %74)
  %75 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %76 = bitcast %struct._GimpUnitMenu* %75 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_option_menu_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call77)
  %77 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkOptionMenu*
  %menu79 = getelementptr inbounds %struct._GtkOptionMenu, %struct._GtkOptionMenu* %77, i32 0, i32 1
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %menu79, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_menu_shell_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call80)
  %80 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkMenuShell*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_menu_shell_append(%struct._GtkMenuShell* %80, %struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 80)
  %84 = bitcast %struct._GTypeInstance* %call82 to %struct._GObject*
  %85 = load i32, i32* %unit.addr, align 4
  %conv = zext i32 %85 to i64
  %86 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* %86)
  %87 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %88 = bitcast %struct._GimpUnitMenu* %87 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_option_menu_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call83)
  %89 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkOptionMenu*
  %menu85 = getelementptr inbounds %struct._GtkOptionMenu, %struct._GtkOptionMenu* %89, i32 0, i32 1
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %menu85, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_menu_get_type() #7
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call86)
  %92 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkMenu*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %94 = load i32, i32* %user_unit, align 4
  call void @gtk_menu_reorder_child(%struct._GtkMenu* %92, %struct._GtkWidget* %93, i32 %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %menuitem, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  %98 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %99 = bitcast %struct._GimpUnitMenu* %98 to i8*
  %call88 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_unit_menu_callback to void ()*), i8* %99, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.62, %land.lhs.true.47, %land.end
  %100 = load i32, i32* %unit.addr, align 4
  %101 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %unit90 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %101, i32 0, i32 2
  store i32 %100, i32* %unit90, align 4
  %102 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %103 = bitcast %struct._GimpUnitMenu* %102 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_option_menu_get_type() #7
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call91)
  %104 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkOptionMenu*
  %105 = load i32, i32* %unit.addr, align 4
  %cmp93 = icmp eq i32 %105, 0
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.89
  br label %cond.end.126

cond.false:                                       ; preds = %if.end.89
  %106 = load i32, i32* %unit.addr, align 4
  %cmp95 = icmp eq i32 %106, 65536
  br i1 %cmp95, label %cond.true.97, label %cond.false.101

cond.true.97:                                     ; preds = %cond.false
  %107 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_pixels98 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %107, i32 0, i32 4
  %108 = load i32, i32* %show_pixels98, align 4
  %tobool99 = icmp ne i32 %108, 0
  %cond100 = select i1 %tobool99, i32 1, i32 0
  br label %cond.end.124

cond.false.101:                                   ; preds = %cond.false
  %109 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_pixels102 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %109, i32 0, i32 4
  %110 = load i32, i32* %show_pixels102, align 4
  %tobool103 = icmp ne i32 %110, 0
  br i1 %tobool103, label %lor.end.107, label %lor.rhs.104

lor.rhs.104:                                      ; preds = %cond.false.101
  %111 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_percent105 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %111, i32 0, i32 5
  %112 = load i32, i32* %show_percent105, align 4
  %tobool106 = icmp ne i32 %112, 0
  br label %lor.end.107

lor.end.107:                                      ; preds = %lor.rhs.104, %cond.false.101
  %113 = phi i1 [ true, %cond.false.101 ], [ %tobool106, %lor.rhs.104 ]
  %cond108 = select i1 %113, i32 2, i32 0
  %114 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_pixels109 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %114, i32 0, i32 4
  %115 = load i32, i32* %show_pixels109, align 4
  %tobool110 = icmp ne i32 %115, 0
  br i1 %tobool110, label %land.rhs.111, label %land.end.114

land.rhs.111:                                     ; preds = %lor.end.107
  %116 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %show_percent112 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %116, i32 0, i32 5
  %117 = load i32, i32* %show_percent112, align 4
  %tobool113 = icmp ne i32 %117, 0
  br label %land.end.114

land.end.114:                                     ; preds = %land.rhs.111, %lor.end.107
  %118 = phi i1 [ false, %lor.end.107 ], [ %tobool113, %land.rhs.111 ]
  %cond115 = select i1 %118, i32 1, i32 0
  %add116 = add nsw i32 %cond108, %cond115
  %119 = load i32, i32* %unit.addr, align 4
  %cmp117 = icmp ult i32 %119, 5
  br i1 %cmp117, label %cond.true.119, label %cond.false.121

cond.true.119:                                    ; preds = %land.end.114
  %120 = load i32, i32* %unit.addr, align 4
  %sub120 = sub i32 %120, 1
  br label %cond.end

cond.false.121:                                   ; preds = %land.end.114
  br label %cond.end

cond.end:                                         ; preds = %cond.false.121, %cond.true.119
  %cond122 = phi i32 [ %sub120, %cond.true.119 ], [ 5, %cond.false.121 ]
  %add123 = add i32 %add116, %cond122
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end, %cond.true.97
  %cond125 = phi i32 [ %cond100, %cond.true.97 ], [ %add123, %cond.end ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true
  %cond127 = phi i32 [ 0, %cond.true ], [ %cond125, %cond.end.124 ]
  call void @gtk_option_menu_set_history(%struct._GtkOptionMenu* %104, i32 %cond127)
  %121 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %122 = bitcast %struct._GimpUnitMenu* %121 to i8*
  %123 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_unit_menu_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %122, i32 %123, i32 0)
  br label %return

return:                                           ; preds = %cond.end.126, %if.then.29, %if.else.24, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare i32 @g_list_length(%struct._GList*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

declare void @gtk_menu_reorder_child(%struct._GtkMenu*, %struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_unit_menu_get_unit(%struct._GimpUnitMenu* %menu) #3 {
entry:
  %retval = alloca i32, align 4
  %menu.addr = alloca %struct._GimpUnitMenu*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitMenu* %menu, %struct._GimpUnitMenu** %menu.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %1 = bitcast %struct._GimpUnitMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_menu_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_unit_menu_get_unit, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %unit = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %13, i32 0, i32 2
  %14 = load i32, i32* %unit, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_unit_menu_set_pixel_digits(%struct._GimpUnitMenu* %menu, i32 %digits) #3 {
entry:
  %menu.addr = alloca %struct._GimpUnitMenu*, align 8
  %digits.addr = alloca i32, align 4
  %unit = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitMenu* %menu, %struct._GimpUnitMenu** %menu.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %1 = bitcast %struct._GimpUnitMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_menu_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_unit_menu_set_pixel_digits, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %digits.addr, align 4
  %14 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %pixel_digits = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %14, i32 0, i32 3
  store i32 %13, i32* %pixel_digits, align 4
  %15 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %16 = bitcast %struct._GimpUnitMenu* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %18 = bitcast i32* %unit to i8*
  call void @gimp_unit_menu_update(%struct._GtkWidget* %17, i8* %18)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gimp_unit_menu_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_unit_menu_get_pixel_digits(%struct._GimpUnitMenu* %menu) #3 {
entry:
  %retval = alloca i32, align 4
  %menu.addr = alloca %struct._GimpUnitMenu*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitMenu* %menu, %struct._GimpUnitMenu** %menu.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %1 = bitcast %struct._GimpUnitMenu* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_menu_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_unit_menu_get_pixel_digits, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %pixel_digits = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %13, i32 0, i32 3
  %14 = load i32, i32* %pixel_digits, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_menu_class_init(%struct._GimpUnitMenuClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpUnitMenuClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpUnitMenuClass* %klass, %struct._GimpUnitMenuClass** %klass.addr, align 8
  %0 = load %struct._GimpUnitMenuClass*, %struct._GimpUnitMenuClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpUnitMenuClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpUnitMenuClass*, %struct._GimpUnitMenuClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpUnitMenuClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 %5, i32 1, i32 944, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call1, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_unit_menu_signals, i32 0, i64 0), align 4
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_unit_menu_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpUnitMenuClass*, %struct._GimpUnitMenuClass** %klass.addr, align 8
  %unit_changed = getelementptr inbounds %struct._GimpUnitMenuClass, %struct._GimpUnitMenuClass* %7, i32 0, i32 1
  store void (%struct._GimpUnitMenu*)* null, void (%struct._GimpUnitMenu*)** %unit_changed, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_menu_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %menu = alloca %struct._GimpUnitMenu*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_menu_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUnitMenu*
  store %struct._GimpUnitMenu* %2, %struct._GimpUnitMenu** %menu, align 8
  %3 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %format = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %3, i32 0, i32 1
  %4 = load i8*, i8** %format, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %format2 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %5, i32 0, i32 1
  %6 = load i8*, i8** %format2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu, align 8
  %format3 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %7, i32 0, i32 1
  store i8* null, i8** %format3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_unit_menu_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_menu_create_selection(%struct._GimpUnitMenu* %menu) #3 {
entry:
  %menu.addr = alloca %struct._GimpUnitMenu*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GtkListStore*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %flags = alloca i32, align 4
  %unit = alloca i32, align 4
  %num_units = alloca i32, align 4
  %string = alloca i8*, align 8
  store %struct._GimpUnitMenu* %menu, %struct._GimpUnitMenu** %menu.addr, align 8
  %0 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %1 = bitcast %struct._GimpUnitMenu* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %parent, align 8
  store i32 2, i32* %flags, align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  %call5 = call i32 @gtk_window_get_modal(%struct._GtkWindow* %5)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %flags, align 4
  %or = or i32 %6, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #6
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %8 = load i32, i32* %flags, align 4
  %call7 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), %struct._GtkWidget* %7, i32 %8, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 -5, i8* null)
  %9 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %9, i32 0, i32 6
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %selection, align 8
  %10 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection8 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %10, i32 0, i32 6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %selection8, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %13, i32 -5, i32 -6, i32 -1)
  %14 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection11 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %selection11, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %18 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection13 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %18, i32 0, i32 6
  %19 = bitcast %struct._GtkWidget** %selection13 to i8*
  %20 = bitcast i8* %19 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %17, i8** %20)
  %21 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection14 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %21, i32 0, i32 6
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %selection14, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %25 = bitcast %struct._GimpUnitMenu* %24 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpUnitMenu*)* @gimp_unit_menu_selection_response to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %27 = bitcast %struct._GimpUnitMenu* %26 to i8*
  %28 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection16 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %28, i32 0, i32 6
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %selection16, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call17 = call i64 @g_signal_connect_object(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %30, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %33, i32 2)
  %34 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection21 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %34, i32 0, i32 6
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %selection21, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_dialog_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call22)
  %37 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkDialog*
  %call24 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %37)
  %38 = bitcast %struct._GtkWidget* %call24 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 1, i32 1, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call27 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %scrolled_win, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_scrolled_window_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call28)
  %44 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %44, i32 3)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_scrolled_window_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call30)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %47, i32 2, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call32)
  %50 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 1, i32 1, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %call34 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 64, i64 64, i64 24)
  store %struct._GtkListStore* %call34, %struct._GtkListStore** %list, align 8
  %53 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %54 = bitcast %struct._GtkListStore* %53 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_tree_model_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call35)
  %55 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTreeModel*
  %call37 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %55)
  %56 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %56, i32 0, i32 7
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %tv, align 8
  %57 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %58 = bitcast %struct._GtkListStore* %57 to i8*
  call void @g_object_unref(i8* %58)
  %59 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv38 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %59, i32 0, i32 7
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %tv38, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_tree_view_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call39)
  %62 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTreeView*
  %call41 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #6
  %call42 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call43 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %62, i32 -1, i8* %call41, %struct._GtkCellRenderer* %call42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 0, i8* null)
  %63 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv44 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %63, i32 0, i32 7
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %tv44, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_tree_view_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call45)
  %66 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTreeView*
  %call47 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #6
  %call48 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call49 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %66, i32 -1, i8* %call47, %struct._GtkCellRenderer* %call48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* null)
  %call50 = call i32 @gimp_unit_get_number_of_units()
  store i32 %call50, i32* %num_units, align 4
  store i32 5, i32* %unit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %67 = load i32, i32* %unit, align 4
  %68 = load i32, i32* %num_units, align 4
  %cmp = icmp ult i32 %67, %68
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %69, %struct._GtkTreeIter* %iter)
  %70 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %format = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %70, i32 0, i32 1
  %71 = load i8*, i8** %format, align 8
  %72 = load i32, i32* %unit, align 4
  %call51 = call i8* @gimp_unit_format_string(i8* %71, i32 %72)
  store i8* %call51, i8** %string, align 8
  %73 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %74 = load i8*, i8** %string, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %73, %struct._GtkTreeIter* %iter, i32 0, i8* %74, i32 -1)
  %75 = load i8*, i8** %string, align 8
  call void @g_free(i8* %75)
  %76 = load i32, i32* %unit, align 4
  %call52 = call i8* @gimp_unit_format_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 %76)
  store i8* %call52, i8** %string, align 8
  %77 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %78 = load i8*, i8** %string, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %77, %struct._GtkTreeIter* %iter, i32 1, i8* %78, i32 -1)
  %79 = load i8*, i8** %string, align 8
  call void @g_free(i8* %79)
  %80 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %81 = load i32, i32* %unit, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %80, %struct._GtkTreeIter* %iter, i32 2, i32 %81, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, i32* %unit, align 4
  %inc = add i32 %82, 1
  store i32 %inc, i32* %unit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv53 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %83, i32 0, i32 7
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %tv53, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %84, i32 -1, i32 150)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call54)
  %87 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  %88 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv56 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %88, i32 0, i32 7
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %tv56, align 8
  call void @gtk_container_add(%struct._GtkContainer* %87, %struct._GtkWidget* %89)
  %90 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv57 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %90, i32 0, i32 7
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %tv57, align 8
  %92 = bitcast %struct._GtkWidget* %91 to i8*
  %93 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %94 = bitcast %struct._GimpUnitMenu* %93 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, %struct._GimpUnitMenu*)* @gimp_unit_menu_selection_row_activated_callback to void ()*), i8* %94, void (i8*, %struct._GClosure*)* null, i32 0)
  %95 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv59 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %95, i32 0, i32 7
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %tv59, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv60 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %97, i32 0, i32 7
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %tv60, align 8
  %99 = bitcast %struct._GtkWidget* %98 to i8*
  %100 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv61 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %100, i32 0, i32 7
  %101 = bitcast %struct._GtkWidget** %tv61 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %101, void (i8*, %struct._GClosure*)* null, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %103 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection63 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %103, i32 0, i32 6
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %selection63, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %105 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %unit64 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %105, i32 0, i32 2
  %106 = load i32, i32* %unit64, align 4
  %cmp65 = icmp uge i32 %106, 5
  br i1 %cmp65, label %if.then.66, label %if.end.76

if.then.66:                                       ; preds = %for.end
  %call67 = call %struct._GtkTreePath* @gtk_tree_path_new()
  store %struct._GtkTreePath* %call67, %struct._GtkTreePath** %path, align 8
  %107 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %108 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %unit68 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %108, i32 0, i32 2
  %109 = load i32, i32* %unit68, align 4
  %sub = sub i32 %109, 5
  call void @gtk_tree_path_append_index(%struct._GtkTreePath* %107, i32 %sub)
  %110 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv69 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %110, i32 0, i32 7
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %tv69, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_tree_view_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call70)
  %113 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTreeView*
  %call72 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %113)
  store %struct._GtkTreeSelection* %call72, %struct._GtkTreeSelection** %sel, align 8
  %114 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %115 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_selection_select_path(%struct._GtkTreeSelection* %114, %struct._GtkTreePath* %115)
  %116 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv73 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %116, i32 0, i32 7
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %tv73, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_tree_view_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call74)
  %119 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTreeView*
  %120 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %119, %struct._GtkTreePath* %120, %struct._GtkTreeViewColumn* null, i32 0, float 0.000000e+00, float 0.000000e+00)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.66, %for.end
  ret void
}

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare i32 @gtk_window_get_modal(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_menu_selection_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpUnitMenu* %menu) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %menu.addr = alloca %struct._GimpUnitMenu*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %val = alloca %struct._GValue, align 8
  %unit = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpUnitMenu* %menu, %struct._GimpUnitMenu** %menu.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %tv = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %1, i32 0, i32 7
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %4)
  store %struct._GtkTreeSelection* %call2, %struct._GtkTreeSelection** %sel, align 8
  %5 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %5, i32 0, i32 6
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call3 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %7, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %8 = bitcast %struct._GValue* %val to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 8, i1 false)
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 2, %struct._GValue* %val)
  %call6 = call i32 @g_value_get_int(%struct._GValue* %val)
  store i32 %call6, i32* %unit, align 4
  call void @g_value_unset(%struct._GValue* %val)
  %10 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %11 = load i32, i32* %unit, align 4
  call void @gimp_unit_menu_set_unit(%struct._GimpUnitMenu* %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %12 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection8 = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %12, i32 0, i32 6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %selection8, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %13)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_object_unref(i8*) #1

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_menu_selection_row_activated_callback(%struct._GtkTreeView* %tv, %struct._GtkTreePath* %path, %struct._GtkTreeViewColumn* %column, %struct._GimpUnitMenu* %menu) #3 {
entry:
  %tv.addr = alloca %struct._GtkTreeView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %menu.addr = alloca %struct._GimpUnitMenu*, align 8
  store %struct._GtkTreeView* %tv, %struct._GtkTreeView** %tv.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GimpUnitMenu* %menu, %struct._GimpUnitMenu** %menu.addr, align 8
  %0 = load %struct._GimpUnitMenu*, %struct._GimpUnitMenu** %menu.addr, align 8
  %selection = getelementptr inbounds %struct._GimpUnitMenu, %struct._GimpUnitMenu* %0, i32 0, i32 6
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %selection, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %3, i32 -5)
  ret void
}

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare %struct._GtkTreePath* @gtk_tree_path_new() #1

declare void @gtk_tree_path_append_index(%struct._GtkTreePath*, i32) #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_select_path(%struct._GtkTreeSelection*, %struct._GtkTreePath*) #1

declare void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32, float, float) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare void @gtk_tree_model_get_value(%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
