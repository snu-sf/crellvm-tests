; ModuleID = './app/widgets/gimpcolordisplayeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorDisplayEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
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
%struct._GimpColorDisplayEditor = type { %struct._GtkBox, %struct._GimpColorDisplayStack*, %struct._GimpColorConfig*, %struct._GimpColorManaged*, %struct._GtkListStore*, %struct._GtkListStore*, %struct._GtkTreeSelection*, %struct._GtkTreeSelection*, %struct._GimpColorDisplay*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpColorManaged = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GimpColorDisplay = type { %struct._GObject, i32 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkOrientable = type opaque
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpColorDisplayClass = type { %struct._GObjectClass, i8*, i8*, %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)*, void (%struct._GimpColorDisplay*, %struct._GimpParasite*)*, %struct._GimpParasite* (%struct._GimpColorDisplay*)*, %struct._GtkWidget* (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*)*, i8*, void (%struct._GimpColorDisplay*, %struct._cairo_surface*)*, void ()*, void ()* }
%struct._GimpParasite = type opaque
%struct._cairo_surface = type opaque
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }

@gimp_color_display_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpColorDisplayEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_color_display_editor_new = private unnamed_addr constant [30 x i8] c"gimp_color_display_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_COLOR_DISPLAY_STACK (stack)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"GIMP_IS_COLOR_CONFIG (config)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GIMP_IS_COLOR_MANAGED (managed)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"notify::enabled\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"reordered\00", align 1
@gimp_color_display_editor_parent_class = internal global i8* null, align 8
@GimpColorDisplayEditor_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Available Filters\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"gtk-go-forward\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"gtk-go-back\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Move the selected filter up\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Move the selected filter down\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gimp-visible\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Active Filters\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Reset the selected filter to default values\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Add '%s' to the list of active filters\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"color-config\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"color-managed\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"Remove '%s' from the list of active filters\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"No filter selected\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_display_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_display_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_display_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_display_editor_class_intern_init to void (i8*, i8*)*), i32 256, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_display_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_display_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_display_editor_parent_class, align 8
  %1 = load i32, i32* @GimpColorDisplayEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorDisplayEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorDisplayEditorClass*
  call void @gimp_color_display_editor_class_init(%struct._GimpColorDisplayEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_init(%struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %paned = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %ed = alloca %struct._GtkWidget*, align 8
  %scrolled_win = alloca %struct._GtkWidget*, align 8
  %tv = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %rend = alloca %struct._GtkCellRenderer*, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %call2 = call %struct._GtkWidget* @gtk_paned_new(i32 1)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %paned, align 8
  %3 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpColorDisplayEditor* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %hbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_paned_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkPaned*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %10, %struct._GtkWidget* %11, i32 0, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call8 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %scrolled_win, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_scrolled_window_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %15, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_scrolled_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %18, i32 1, i32 1)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 1, i32 1, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call15 = call i64 @g_gtype_get_type()
  %call16 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 64, i64 64, i64 %call15)
  %24 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %src = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %24, i32 0, i32 4
  store %struct._GtkListStore* %call16, %struct._GtkListStore** %src, align 8
  %25 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %src17 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %25, i32 0, i32 4
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %src17, align 8
  %27 = bitcast %struct._GtkListStore* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_tree_model_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTreeModel*
  %call20 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %28)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %tv, align 8
  %29 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %src21 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %29, i32 0, i32 4
  %30 = load %struct._GtkListStore*, %struct._GtkListStore** %src21, align 8
  %31 = bitcast %struct._GtkListStore* %30 to i8*
  call void @g_object_unref(i8* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %32, i32 200, i32 100)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_tree_view_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_clickable(%struct._GtkTreeView* %35, i32 0)
  %call24 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call24, %struct._GtkTreeViewColumn** %column, align 8
  %36 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #6
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %36, i8* %call25)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_tree_view_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTreeView*
  %40 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call28 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %39, %struct._GtkTreeViewColumn* %40)
  %call29 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call29, %struct._GtkCellRenderer** %rend, align 8
  %41 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %42 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %41, %struct._GtkCellRenderer* %42, i32 0)
  %43 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %44 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %43, %struct._GtkCellRenderer* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* null)
  %call30 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call30, %struct._GtkCellRenderer** %rend, align 8
  %45 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %46 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %45, %struct._GtkCellRenderer* %46, i32 1)
  %47 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %48 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %47, %struct._GtkCellRenderer* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 0, i8* null)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_container_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call31)
  %51 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkContainer*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_container_add(%struct._GtkContainer* %51, %struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_tree_view_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call33)
  %56 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTreeView*
  %call35 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %56)
  %57 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %src_sel = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %57, i32 0, i32 6
  store %struct._GtkTreeSelection* %call35, %struct._GtkTreeSelection** %src_sel, align 8
  %58 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %src_sel36 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %58, i32 0, i32 6
  %59 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %src_sel36, align 8
  %60 = bitcast %struct._GtkTreeSelection* %59 to i8*
  %61 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %62 = bitcast %struct._GimpColorDisplayEditor* %61 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_src_changed to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  %call38 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %vbox, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call39)
  %65 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %65, i32 1)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call41)
  %68 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %call43 = call %struct._GtkWidget* @gtk_button_new()
  %71 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %add_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %71, i32 0, i32 9
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %add_button, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call44)
  %74 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %75 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %add_button46 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %75, i32 0, i32 9
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button46, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %74, %struct._GtkWidget* %76, i32 1, i32 0, i32 0)
  %77 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %add_button47 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %77, i32 0, i32 9
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button47, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %78, i32 0)
  %79 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %add_button48 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %79, i32 0, i32 9
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button48, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %call49 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %image, align 8
  %81 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %add_button50 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %81, i32 0, i32 9
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button50, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_container_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call51)
  %84 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkContainer*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %84, %struct._GtkWidget* %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %add_button53 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %87, i32 0, i32 9
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button53, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %90 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %91 = bitcast %struct._GimpColorDisplayEditor* %90 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_add_clicked to void ()*), i8* %91, void (i8*, %struct._GClosure*)* null, i32 0)
  %call55 = call %struct._GtkWidget* @gtk_button_new()
  %92 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %remove_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %92, i32 0, i32 10
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %remove_button, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call56)
  %95 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %96 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %remove_button58 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %96, i32 0, i32 10
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button58, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %95, %struct._GtkWidget* %97, i32 1, i32 0, i32 0)
  %98 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %remove_button59 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %98, i32 0, i32 10
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button59, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %99, i32 0)
  %100 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %remove_button60 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %100, i32 0, i32 10
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button60, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %call61 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %image, align 8
  %102 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %remove_button62 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %102, i32 0, i32 10
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button62, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_container_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call63)
  %105 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkContainer*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %105, %struct._GtkWidget* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  %108 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %remove_button65 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %108, i32 0, i32 10
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button65, align 8
  %110 = bitcast %struct._GtkWidget* %109 to i8*
  %111 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %112 = bitcast %struct._GimpColorDisplayEditor* %111 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_remove_clicked to void ()*), i8* %112, void (i8*, %struct._GClosure*)* null, i32 0)
  %call67 = call %struct._GtkWidget* @gimp_editor_new()
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %ed, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call68)
  %115 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %ed, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %115, %struct._GtkWidget* %116, i32 1, i32 1, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %ed, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %ed, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_editor_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call70)
  %120 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpEditor*
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0)) #6
  %121 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %122 = bitcast %struct._GimpColorDisplayEditor* %121 to i8*
  %call73 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* %call72, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_up_clicked to void ()*), void ()* null, i8* %122)
  %123 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %123, i32 0, i32 11
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %up_button, align 8
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %ed, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_editor_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call74)
  %126 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpEditor*
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #6
  %127 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %128 = bitcast %struct._GimpColorDisplayEditor* %127 to i8*
  %call77 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* %call76, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_down_clicked to void ()*), void ()* null, i8* %128)
  %129 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %down_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %129, i32 0, i32 12
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %down_button, align 8
  %130 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %up_button78 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %130, i32 0, i32 11
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %up_button78, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %131, i32 0)
  %132 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %down_button79 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %132, i32 0, i32 12
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %down_button79, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %133, i32 0)
  %call80 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %scrolled_win, align 8
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_scrolled_window_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call81)
  %136 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %136, i32 1)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_scrolled_window_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call83)
  %139 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %139, i32 1, i32 1)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %ed, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call85)
  %142 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %142, %struct._GtkWidget* %143, i32 1, i32 1, i32 0)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %144)
  %call87 = call i64 @gimp_color_display_get_type() #7
  %call88 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 4, i64 20, i64 64, i64 64, i64 %call87)
  %145 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %145, i32 0, i32 5
  store %struct._GtkListStore* %call88, %struct._GtkListStore** %dest, align 8
  %146 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest89 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %146, i32 0, i32 5
  %147 = load %struct._GtkListStore*, %struct._GtkListStore** %dest89, align 8
  %148 = bitcast %struct._GtkListStore* %147 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_tree_model_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call90)
  %149 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTreeModel*
  %call92 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %149)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %tv, align 8
  %150 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest93 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %150, i32 0, i32 5
  %151 = load %struct._GtkListStore*, %struct._GtkListStore** %dest93, align 8
  %152 = bitcast %struct._GtkListStore* %151 to i8*
  call void @g_object_unref(i8* %152)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %153, i32 200, i32 100)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_tree_view_get_type() #7
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call94)
  %156 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_clickable(%struct._GtkTreeView* %156, i32 0)
  %call96 = call %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new()
  store %struct._GtkCellRenderer* %call96, %struct._GtkCellRenderer** %rend, align 8
  %157 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  %158 = bitcast %struct._GtkCellRenderer* %157 to i8*
  %159 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %160 = bitcast %struct._GimpColorDisplayEditor* %159 to i8*
  %call97 = call i64 @g_signal_connect_data(i8* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererToggle*, i8*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_enable_toggled to void ()*), i8* %160, void (i8*, %struct._GClosure*)* null, i32 0)
  %161 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  %call98 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* null, %struct._GtkCellRenderer* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 0, i8* null)
  store %struct._GtkTreeViewColumn* %call98, %struct._GtkTreeViewColumn** %column, align 8
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_tree_view_get_type() #7
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call99)
  %164 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkTreeView*
  %165 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call101 = call i32 @gtk_tree_view_insert_column(%struct._GtkTreeView* %164, %struct._GtkTreeViewColumn* %165, i32 0)
  %call102 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %image, align 8
  %166 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_tree_view_column_set_widget(%struct._GtkTreeViewColumn* %166, %struct._GtkWidget* %167)
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %168)
  %call103 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call103, %struct._GtkTreeViewColumn** %column, align 8
  %169 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #6
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %169, i8* %call104)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_tree_view_get_type() #7
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call105)
  %172 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkTreeView*
  %173 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call107 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %172, %struct._GtkTreeViewColumn* %173)
  %call108 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call108, %struct._GtkCellRenderer** %rend, align 8
  %174 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %175 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %174, %struct._GtkCellRenderer* %175, i32 0)
  %176 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %177 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %176, %struct._GtkCellRenderer* %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* null)
  %call109 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call109, %struct._GtkCellRenderer** %rend, align 8
  %178 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %179 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %178, %struct._GtkCellRenderer* %179, i32 1)
  %180 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %181 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %rend, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %180, %struct._GtkCellRenderer* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* null)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_container_get_type() #7
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call110)
  %184 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkContainer*
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_container_add(%struct._GtkContainer* %184, %struct._GtkWidget* %185)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %186)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %188 = bitcast %struct._GtkWidget* %187 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_tree_view_get_type() #7
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call112)
  %189 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkTreeView*
  %call114 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %189)
  %190 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest_sel = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %190, i32 0, i32 7
  store %struct._GtkTreeSelection* %call114, %struct._GtkTreeSelection** %dest_sel, align 8
  %191 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest_sel115 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %191, i32 0, i32 7
  %192 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %dest_sel115, align 8
  %193 = bitcast %struct._GtkTreeSelection* %192 to i8*
  %194 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %195 = bitcast %struct._GimpColorDisplayEditor* %194 to i8*
  %call116 = call i64 @g_signal_connect_data(i8* %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_dest_changed to void ()*), i8* %195, void (i8*, %struct._GClosure*)* null, i32 0)
  %call117 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %vbox, align 8
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %197 = bitcast %struct._GtkWidget* %196 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_paned_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %197, i64 %call118)
  %198 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkPaned*
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %198, %struct._GtkWidget* %199, i32 1, i32 0)
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %200)
  %call120 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call120, %struct._GtkWidget** %hbox, align 8
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %202 = bitcast %struct._GtkWidget* %201 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_box_get_type() #7
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %202, i64 %call121)
  %203 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkBox*
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %203, %struct._GtkWidget* %204, i32 0, i32 0, i32 0)
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %205)
  %call123 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  %206 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_frame = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %206, i32 0, i32 13
  store %struct._GtkWidget* %call123, %struct._GtkWidget** %config_frame, align 8
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %208 = bitcast %struct._GtkWidget* %207 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_box_get_type() #7
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %208, i64 %call124)
  %209 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkBox*
  %210 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_frame126 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %210, i32 0, i32 13
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %config_frame126, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %209, %struct._GtkWidget* %211, i32 1, i32 1, i32 0)
  %212 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_frame127 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %212, i32 0, i32 13
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %config_frame127, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %213)
  %call128 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  %214 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_box = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %214, i32 0, i32 14
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %config_box, align 8
  %215 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_frame129 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %215, i32 0, i32 13
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %config_frame129, align 8
  %217 = bitcast %struct._GtkWidget* %216 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_container_get_type() #7
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %217, i64 %call130)
  %218 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkContainer*
  %219 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_box132 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %219, i32 0, i32 14
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %config_box132, align 8
  call void @gtk_container_add(%struct._GtkContainer* %218, %struct._GtkWidget* %220)
  %221 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_box133 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %221, i32 0, i32 14
  %222 = load %struct._GtkWidget*, %struct._GtkWidget** %config_box133, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %222)
  %call134 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call134, %struct._GtkWidget** %hbox, align 8
  %223 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_box135 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %223, i32 0, i32 14
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %config_box135, align 8
  %225 = bitcast %struct._GtkWidget* %224 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_box_get_type() #7
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %225, i64 %call136)
  %226 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkBox*
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %226, %struct._GtkWidget* %227, i32 0, i32 0, i32 0)
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %228)
  %call138 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0))
  %229 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %reset_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %229, i32 0, i32 16
  store %struct._GtkWidget* %call138, %struct._GtkWidget** %reset_button, align 8
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %231 = bitcast %struct._GtkWidget* %230 to %struct._GTypeInstance*
  %call139 = call i64 @gtk_box_get_type() #7
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call139)
  %232 = bitcast %struct._GTypeInstance* %call140 to %struct._GtkBox*
  %233 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %reset_button141 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %233, i32 0, i32 16
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %reset_button141, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %232, %struct._GtkWidget* %234, i32 0, i32 0, i32 0)
  %235 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %reset_button142 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %235, i32 0, i32 16
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %reset_button142, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %236)
  %237 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %reset_button143 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %237, i32 0, i32 16
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %reset_button143, align 8
  %call144 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %238, i8* %call144, i8* null)
  %239 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %reset_button145 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %239, i32 0, i32 16
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %reset_button145, align 8
  %241 = bitcast %struct._GtkWidget* %240 to i8*
  %242 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %243 = bitcast %struct._GimpColorDisplayEditor* %242 to i8*
  %call146 = call i64 @g_signal_connect_data(i8* %241, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_reset_clicked to void ()*), i8* %243, void (i8*, %struct._GClosure*)* null, i32 0)
  %244 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest_sel147 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %244, i32 0, i32 7
  %245 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %dest_sel147, align 8
  %246 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  call void @gimp_color_display_editor_dest_changed(%struct._GtkTreeSelection* %245, %struct._GimpColorDisplayEditor* %246)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_display_editor_new(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorConfig* %config, %struct._GimpColorManaged* %managed) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %config.addr = alloca %struct._GimpColorConfig*, align 8
  %managed.addr = alloca %struct._GimpColorManaged*, align 8
  %editor = alloca %struct._GimpColorDisplayEditor*, align 8
  %display_types = alloca i64*, align 8
  %n_display_types = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %display_class = alloca %struct._GimpColorDisplayClass*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %display = alloca %struct._GimpColorDisplay*, align 8
  %iter89 = alloca %struct._GtkTreeIter, align 8
  %enabled = alloca i32, align 4
  %name92 = alloca i8*, align 8
  %stock_id94 = alloca i8*, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorConfig* %config, %struct._GimpColorConfig** %config.addr, align 8
  store %struct._GimpColorManaged* %managed, %struct._GimpColorManaged** %managed.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_display_stack_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_display_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpColorConfig* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_color_config_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_display_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %27 = bitcast %struct._GimpColorManaged* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_color_managed_interface_get_type() #7
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #8
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_display_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %call67 = call i64 @gimp_color_display_editor_get_type() #7
  %call68 = call i8* (i64, i8*, ...) @g_object_new(i64 %call67, i8* null)
  %39 = bitcast i8* %call68 to %struct._GimpColorDisplayEditor*
  store %struct._GimpColorDisplayEditor* %39, %struct._GimpColorDisplayEditor** %editor, align 8
  %40 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %41 = bitcast %struct._GimpColorDisplayStack* %40 to i8*
  %call69 = call i8* @g_object_ref(i8* %41)
  %42 = bitcast i8* %call69 to %struct._GimpColorDisplayStack*
  %43 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %stack70 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %43, i32 0, i32 1
  store %struct._GimpColorDisplayStack* %42, %struct._GimpColorDisplayStack** %stack70, align 8
  %44 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %45 = bitcast %struct._GimpColorConfig* %44 to i8*
  %call71 = call i8* @g_object_ref(i8* %45)
  %46 = bitcast i8* %call71 to %struct._GimpColorConfig*
  %47 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %config72 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %47, i32 0, i32 2
  store %struct._GimpColorConfig* %46, %struct._GimpColorConfig** %config72, align 8
  %48 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %49 = bitcast %struct._GimpColorManaged* %48 to i8*
  %call73 = call i8* @g_object_ref(i8* %49)
  %50 = bitcast i8* %call73 to %struct._GimpColorManaged*
  %51 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %managed74 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %51, i32 0, i32 3
  store %struct._GimpColorManaged* %50, %struct._GimpColorManaged** %managed74, align 8
  %call75 = call i64 @gimp_color_display_get_type() #7
  %call76 = call i64* @g_type_children(i64 %call75, i32* %n_display_types)
  store i64* %call76, i64** %display_types, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.66
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %n_display_types, align 4
  %cmp77 = icmp ult i32 %52, %53
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load i64*, i64** %display_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %55, i64 %idxprom
  %56 = load i64, i64* %arrayidx, align 8
  %call80 = call i8* @g_type_class_ref(i64 %56)
  %57 = bitcast i8* %call80 to %struct._GimpColorDisplayClass*
  store %struct._GimpColorDisplayClass* %57, %struct._GimpColorDisplayClass** %display_class, align 8
  %58 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %src = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %58, i32 0, i32 4
  %59 = load %struct._GtkListStore*, %struct._GtkListStore** %src, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %59, %struct._GtkTreeIter* %iter)
  %60 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %src81 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %60, i32 0, i32 4
  %61 = load %struct._GtkListStore*, %struct._GtkListStore** %src81, align 8
  %62 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %62, i32 0, i32 10
  %63 = load i8*, i8** %stock_id, align 8
  %64 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %name = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %64, i32 0, i32 1
  %65 = load i8*, i8** %name, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %66 to i64
  %67 = load i64*, i64** %display_types, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %67, i64 %idxprom82
  %68 = load i64, i64* %arrayidx83, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %61, %struct._GtkTreeIter* %iter, i32 1, i8* %63, i32 0, i8* %65, i32 2, i64 %68, i32 -1)
  %69 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %70 = bitcast %struct._GimpColorDisplayClass* %69 to i8*
  call void @g_type_class_unref(i8* %70)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i32, i32* %i, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load i64*, i64** %display_types, align 8
  %73 = bitcast i64* %72 to i8*
  call void @g_free(i8* %73)
  %74 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %74, i32 0, i32 1
  %75 = load %struct._GList*, %struct._GList** %filters, align 8
  store %struct._GList* %75, %struct._GList** %list, align 8
  br label %for.cond.84

for.cond.84:                                      ; preds = %cond.end, %for.end
  %76 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool85 = icmp ne %struct._GList* %76, null
  br i1 %tobool85, label %for.body.86, label %for.end.105

for.body.86:                                      ; preds = %for.cond.84
  %77 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %77, i32 0, i32 0
  %78 = load i8*, i8** %data, align 8
  %79 = bitcast i8* %78 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %79, %struct._GimpColorDisplay** %display, align 8
  %80 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %call95 = call i32 @gimp_color_display_get_enabled(%struct._GimpColorDisplay* %80)
  store i32 %call95, i32* %enabled, align 4
  %81 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %82 = bitcast %struct._GimpColorDisplay* %81 to %struct._GTypeInstance*
  %g_class96 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %82, i32 0, i32 0
  %83 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class96, align 8
  %84 = bitcast %struct._GTypeClass* %83 to %struct._GimpColorDisplayClass*
  %name97 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %84, i32 0, i32 1
  %85 = load i8*, i8** %name97, align 8
  store i8* %85, i8** %name92, align 8
  %86 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %87 = bitcast %struct._GimpColorDisplay* %86 to %struct._GTypeInstance*
  %g_class98 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %87, i32 0, i32 0
  %88 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class98, align 8
  %89 = bitcast %struct._GTypeClass* %88 to %struct._GimpColorDisplayClass*
  %stock_id99 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %89, i32 0, i32 10
  %90 = load i8*, i8** %stock_id99, align 8
  store i8* %90, i8** %stock_id94, align 8
  %91 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %dest = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %91, i32 0, i32 5
  %92 = load %struct._GtkListStore*, %struct._GtkListStore** %dest, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %92, %struct._GtkTreeIter* %iter89)
  %93 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %dest100 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %93, i32 0, i32 5
  %94 = load %struct._GtkListStore*, %struct._GtkListStore** %dest100, align 8
  %95 = load i32, i32* %enabled, align 4
  %96 = load i8*, i8** %stock_id94, align 8
  %97 = load i8*, i8** %name92, align 8
  %98 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %94, %struct._GtkTreeIter* %iter89, i32 0, i32 %95, i32 2, i8* %96, i32 1, i8* %97, i32 3, %struct._GimpColorDisplay* %98, i32 -1)
  %99 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %100 = bitcast %struct._GimpColorDisplay* %99 to i8*
  %101 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %102 = bitcast %struct._GimpColorDisplayEditor* %101 to %struct._GTypeInstance*
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 80)
  %103 = bitcast %struct._GTypeInstance* %call101 to %struct._GObject*
  %104 = bitcast %struct._GObject* %103 to i8*
  %call102 = call i64 @g_signal_connect_object(i8* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplay*, %struct._GParamSpec*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_enabled to void ()*), i8* %104, i32 0)
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.86
  %105 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool104 = icmp ne %struct._GList* %105, null
  br i1 %tobool104, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.103
  %106 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %106, i32 0, i32 1
  %107 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.103
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %107, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond.84

for.end.105:                                      ; preds = %for.cond.84
  %108 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %109 = bitcast %struct._GimpColorDisplayStack* %108 to i8*
  %110 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %111 = bitcast %struct._GimpColorDisplayEditor* %110 to %struct._GTypeInstance*
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 80)
  %112 = bitcast %struct._GTypeInstance* %call106 to %struct._GObject*
  %113 = bitcast %struct._GObject* %112 to i8*
  %call107 = call i64 @g_signal_connect_object(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, i32, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_added to void ()*), i8* %113, i32 0)
  %114 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %115 = bitcast %struct._GimpColorDisplayStack* %114 to i8*
  %116 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %117 = bitcast %struct._GimpColorDisplayEditor* %116 to %struct._GTypeInstance*
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 80)
  %118 = bitcast %struct._GTypeInstance* %call108 to %struct._GObject*
  %119 = bitcast %struct._GObject* %118 to i8*
  %call109 = call i64 @g_signal_connect_object(i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_removed to void ()*), i8* %119, i32 0)
  %120 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %121 = bitcast %struct._GimpColorDisplayStack* %120 to i8*
  %122 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %123 = bitcast %struct._GimpColorDisplayEditor* %122 to %struct._GTypeInstance*
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 80)
  %124 = bitcast %struct._GTypeInstance* %call110 to %struct._GObject*
  %125 = bitcast %struct._GObject* %124 to i8*
  %call111 = call i64 @g_signal_connect_object(i8* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*, i32, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_reordered to void ()*), i8* %125, i32 0)
  %126 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %127 = bitcast %struct._GimpColorDisplayEditor* %126 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_widget_get_type() #7
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call112)
  %128 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkWidget*
  store %struct._GtkWidget* %128, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end.105, %if.else.64, %if.else.36, %if.else.9
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %129
}

; Function Attrs: nounwind readnone
declare i64 @gimp_color_display_stack_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_config_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_managed_interface_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_object_ref(i8*) #1

declare i64* @g_type_children(i64, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_display_get_type() #2

declare i8* @g_type_class_ref(i64) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @g_type_class_unref(i8*) #1

declare void @g_free(i8*) #1

declare i32 @gimp_color_display_get_enabled(%struct._GimpColorDisplay*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_enabled(%struct._GimpColorDisplay* %display, %struct._GParamSpec* %pspec, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %display2 = alloca %struct._GimpColorDisplay*, align 8
  %enabled = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 5
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %dest, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter)
  store i32 %call2, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest3 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %5, i32 0, i32 5
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %dest3, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_model_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter, i32 3, %struct._GimpColorDisplay** %display2, i32 -1)
  %9 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display2, align 8
  %10 = bitcast %struct._GimpColorDisplay* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %12 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpColorDisplay* %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %call6 = call i32 @gimp_color_display_get_enabled(%struct._GimpColorDisplay* %13)
  store i32 %call6, i32* %enabled, align 4
  %14 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest7 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %14, i32 0, i32 5
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %dest7, align 8
  %16 = load i32, i32* %enabled, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %15, %struct._GtkTreeIter* %iter, i32 0, i32 %16, i32 -1)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest8 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %17, i32 0, i32 5
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %dest8, align 8
  %19 = bitcast %struct._GtkListStore* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_model_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeModel*
  %call11 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %iter)
  store i32 %call11, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_added(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplay* %display, i32 %position, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %position.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %enabled = alloca i32, align 4
  %name = alloca i8*, align 8
  %stock_id = alloca i8*, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %call = call i32 @gimp_color_display_get_enabled(%struct._GimpColorDisplay* %0)
  store i32 %call, i32* %enabled, align 4
  %1 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %2 = bitcast %struct._GimpColorDisplay* %1 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %2, i32 0, i32 0
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %4 = bitcast %struct._GTypeClass* %3 to %struct._GimpColorDisplayClass*
  %name1 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %4, i32 0, i32 1
  %5 = load i8*, i8** %name1, align 8
  store i8* %5, i8** %name, align 8
  %6 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %7 = bitcast %struct._GimpColorDisplay* %6 to %struct._GTypeInstance*
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %9 = bitcast %struct._GTypeClass* %8 to %struct._GimpColorDisplayClass*
  %stock_id3 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %9, i32 0, i32 10
  %10 = load i8*, i8** %stock_id3, align 8
  store i8* %10, i8** %stock_id, align 8
  %11 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %11, i32 0, i32 5
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %dest, align 8
  %13 = load i32, i32* %position.addr, align 4
  call void @gtk_list_store_insert(%struct._GtkListStore* %12, %struct._GtkTreeIter* %iter, i32 %13)
  %14 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest4 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %14, i32 0, i32 5
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %dest4, align 8
  %16 = load i32, i32* %enabled, align 4
  %17 = load i8*, i8** %stock_id, align 8
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %15, %struct._GtkTreeIter* %iter, i32 0, i32 %16, i32 2, i8* %17, i32 1, i8* %18, i32 3, %struct._GimpColorDisplay* %19, i32 -1)
  %20 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %21 = bitcast %struct._GimpColorDisplay* %20 to i8*
  %22 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %23 = bitcast %struct._GimpColorDisplayEditor* %22 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %25 = bitcast %struct._GObject* %24 to i8*
  %call6 = call i64 @g_signal_connect_object(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDisplay*, %struct._GParamSpec*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_enabled to void ()*), i8* %25, i32 0)
  %26 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  call void @gimp_color_display_editor_update_buttons(%struct._GimpColorDisplayEditor* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_removed(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplay* %display, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %display2 = alloca %struct._GimpColorDisplay*, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 5
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %dest, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter)
  store i32 %call2, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest3 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %5, i32 0, i32 5
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %dest3, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_model_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter, i32 3, %struct._GimpColorDisplay** %display2, i32 -1)
  %9 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display2, align 8
  %10 = bitcast %struct._GimpColorDisplay* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %12 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpColorDisplay* %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to i8*
  %15 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %16 = bitcast %struct._GimpColorDisplayEditor* %15 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorDisplay*, %struct._GParamSpec*, %struct._GimpColorDisplayEditor*)* @gimp_color_display_editor_enabled to i8*), i8* %16)
  %17 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest7 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %17, i32 0, i32 5
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %dest7, align 8
  %call8 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %18, %struct._GtkTreeIter* %iter)
  %19 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  call void @gimp_color_display_editor_update_buttons(%struct._GimpColorDisplayEditor* %19)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest9 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %20, i32 0, i32 5
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %dest9, align 8
  %22 = bitcast %struct._GtkListStore* %21 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_tree_model_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call10)
  %23 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTreeModel*
  %call12 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %iter)
  store i32 %call12, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_reordered(%struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplay* %display, i32 %position, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %stack.addr = alloca %struct._GimpColorDisplayStack*, align 8
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %position.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %display2 = alloca %struct._GimpColorDisplay*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %old_position = alloca i32, align 4
  %place_iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpColorDisplayStack* %stack, %struct._GimpColorDisplayStack** %stack.addr, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 5
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %dest, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter)
  store i32 %call2, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest3 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %5, i32 0, i32 5
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %dest3, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_model_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter, i32 3, %struct._GimpColorDisplay** %display2, i32 -1)
  %9 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display2, align 8
  %10 = bitcast %struct._GimpColorDisplay* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %12 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpColorDisplay* %11, %12
  br i1 %cmp, label %if.then, label %if.end.35

if.then:                                          ; preds = %for.body
  %13 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest6 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %13, i32 0, i32 5
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %dest6, align 8
  %15 = bitcast %struct._GtkListStore* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_tree_model_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTreeModel*
  %call9 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %16, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call9, %struct._GtkTreePath** %path, align 8
  %17 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call10 = call i32* @gtk_tree_path_get_indices(%struct._GtkTreePath* %17)
  %arrayidx = getelementptr inbounds i32, i32* %call10, i64 0
  %18 = load i32, i32* %arrayidx, align 4
  store i32 %18, i32* %old_position, align 4
  %19 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %19)
  %20 = load i32, i32* %position.addr, align 4
  %21 = load i32, i32* %old_position, align 4
  %cmp11 = icmp eq i32 %20, %21
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %22 = load i32, i32* %position.addr, align 4
  %cmp13 = icmp eq i32 %22, -1
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %23 = load i32, i32* %position.addr, align 4
  %24 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack.addr, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %filters, align 8
  %call14 = call i32 @g_list_length(%struct._GList* %25)
  %sub = sub i32 %call14, 1
  %cmp15 = icmp eq i32 %23, %sub
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false, %if.end
  %26 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest17 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %26, i32 0, i32 5
  %27 = load %struct._GtkListStore*, %struct._GtkListStore** %dest17, align 8
  call void @gtk_list_store_move_before(%struct._GtkListStore* %27, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null)
  br label %if.end.34

if.else:                                          ; preds = %lor.lhs.false
  %28 = load i32, i32* %position.addr, align 4
  %cmp18 = icmp eq i32 %28, 0
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %29 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest20 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %29, i32 0, i32 5
  %30 = load %struct._GtkListStore*, %struct._GtkListStore** %dest20, align 8
  call void @gtk_list_store_move_after(%struct._GtkListStore* %30, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null)
  br label %if.end.33

if.else.21:                                       ; preds = %if.else
  %31 = load i32, i32* %position.addr, align 4
  %call22 = call %struct._GtkTreePath* (i32, ...) @gtk_tree_path_new_from_indices(i32 %31, i32 -1)
  store %struct._GtkTreePath* %call22, %struct._GtkTreePath** %path, align 8
  %32 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest23 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %32, i32 0, i32 5
  %33 = load %struct._GtkListStore*, %struct._GtkListStore** %dest23, align 8
  %34 = bitcast %struct._GtkListStore* %33 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_model_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeModel*
  %36 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call26 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %35, %struct._GtkTreeIter* %place_iter, %struct._GtkTreePath* %36)
  %37 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %37)
  %38 = load i32, i32* %position.addr, align 4
  %39 = load i32, i32* %old_position, align 4
  %cmp27 = icmp sgt i32 %38, %39
  br i1 %cmp27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else.21
  %40 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest29 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %40, i32 0, i32 5
  %41 = load %struct._GtkListStore*, %struct._GtkListStore** %dest29, align 8
  call void @gtk_list_store_move_after(%struct._GtkListStore* %41, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %place_iter)
  br label %if.end.32

if.else.30:                                       ; preds = %if.else.21
  %42 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest31 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %42, i32 0, i32 5
  %43 = load %struct._GtkListStore*, %struct._GtkListStore** %dest31, align 8
  call void @gtk_list_store_move_before(%struct._GtkListStore* %43, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %place_iter)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.19
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.16
  %44 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  call void @gimp_color_display_editor_update_buttons(%struct._GimpColorDisplayEditor* %44)
  br label %for.end

if.end.35:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %45 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest36 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %45, i32 0, i32 5
  %46 = load %struct._GtkListStore*, %struct._GtkListStore** %dest36, align 8
  %47 = bitcast %struct._GtkListStore* %46 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_tree_model_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call37)
  %48 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTreeModel*
  %call39 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %48, %struct._GtkTreeIter* %iter)
  store i32 %call39, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %if.end.34, %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_class_init(%struct._GimpColorDisplayEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorDisplayEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpColorDisplayEditorClass* %klass, %struct._GimpColorDisplayEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpColorDisplayEditorClass*, %struct._GimpColorDisplayEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorDisplayEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_display_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpColorDisplayEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_display_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorDisplayEditor*
  store %struct._GimpColorDisplayEditor* %2, %struct._GimpColorDisplayEditor** %editor, align 8
  %3 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %selected = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %3, i32 0, i32 8
  %4 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected, align 8
  %tobool = icmp ne %struct._GimpColorDisplay* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %selected2 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %5, i32 0, i32 8
  %6 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected2, align 8
  %7 = bitcast %struct._GimpColorDisplay* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %9 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %selected4 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %9, i32 0, i32 8
  %10 = bitcast %struct._GimpColorDisplay** %selected4 to i8*
  %11 = bitcast i8* %10 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %8, i8** %11)
  %12 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %selected5 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %12, i32 0, i32 8
  store %struct._GimpColorDisplay* null, %struct._GimpColorDisplay** %selected5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %stack = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %13, i32 0, i32 1
  %14 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %tobool6 = icmp ne %struct._GimpColorDisplayStack* %14, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %15 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %stack8 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %15, i32 0, i32 1
  %16 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack8, align 8
  %17 = bitcast %struct._GimpColorDisplayStack* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %stack9 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %18, i32 0, i32 1
  store %struct._GimpColorDisplayStack* null, %struct._GimpColorDisplayStack** %stack9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %19 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %config = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %19, i32 0, i32 2
  %20 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  %tobool11 = icmp ne %struct._GimpColorConfig* %20, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.10
  %21 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %config13 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %21, i32 0, i32 2
  %22 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config13, align 8
  %23 = bitcast %struct._GimpColorConfig* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %config14 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %24, i32 0, i32 2
  store %struct._GimpColorConfig* null, %struct._GimpColorConfig** %config14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.10
  %25 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %managed = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %25, i32 0, i32 3
  %26 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed, align 8
  %tobool16 = icmp ne %struct._GimpColorManaged* %26, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %managed18 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %27, i32 0, i32 3
  %28 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed18, align 8
  %29 = bitcast %struct._GimpColorManaged* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor, align 8
  %managed19 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %30, i32 0, i32 3
  store %struct._GimpColorManaged* null, %struct._GimpColorManaged** %managed19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.15
  %31 = load i8*, i8** @gimp_color_display_editor_parent_class, align 8
  %32 = bitcast i8* %31 to %struct._GTypeClass*
  %call21 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %32, i64 80)
  %33 = bitcast %struct._GTypeClass* %call21 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %33, i32 0, i32 5
  %34 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %35 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %34(%struct._GObject* %35)
  ret void
}

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare %struct._GtkWidget* @gtk_paned_new(i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_paned_pack1(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #2

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare i64 @g_gtype_get_type() #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_tree_view_set_headers_clickable(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_src_changed(%struct._GtkTreeSelection* %sel, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %tip = alloca i8*, align 8
  %name = alloca i8*, align 8
  %val = alloca %struct._GValue, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  store i8* null, i8** %tip, align 8
  store i8* null, i8** %name, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._GValue* %val to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 0, %struct._GValue* %val)
  %call1 = call i8* @g_value_get_string(%struct._GValue* %val)
  store i8* %call1, i8** %name, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0)) #6
  %3 = load i8*, i8** %name, align 8
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call2, i8* %3)
  store i8* %call3, i8** %tip, align 8
  call void @g_value_unset(%struct._GValue* %val)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %add_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %4, i32 0, i32 9
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button, align 8
  %6 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %6, null
  %conv = zext i1 %cmp to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %5, i32 %conv)
  %7 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %add_button4 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %7, i32 0, i32 9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button4, align 8
  %9 = load i8*, i8** %tip, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %8, i8* %9, i8* null)
  %10 = load i8*, i8** %tip, align 8
  call void @g_free(i8* %10)
  ret void
}

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_add_clicked(%struct._GtkWidget* %widget, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %display = alloca %struct._GimpColorDisplay*, align 8
  %type = alloca i64, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %src_sel = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 6
  %1 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %src_sel, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %1, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 2, i64* %type, i32 -1)
  %3 = load i64, i64* %type, align 8
  %4 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %4, i32 0, i32 2
  %5 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config, align 8
  %6 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %managed = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %6, i32 0, i32 3
  %7 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), %struct._GimpColorConfig* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), %struct._GimpColorManaged* %7, i8* null)
  %8 = bitcast i8* %call1 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %8, %struct._GimpColorDisplay** %display, align 8
  %9 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %tobool2 = icmp ne %struct._GimpColorDisplay* %9, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %stack = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %12 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  call void @gimp_color_display_stack_add(%struct._GimpColorDisplayStack* %11, %struct._GimpColorDisplay* %12)
  %13 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %14 = bitcast %struct._GimpColorDisplay* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_remove_clicked(%struct._GtkWidget* %widget, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 8
  %1 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected, align 8
  %tobool = icmp ne %struct._GimpColorDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %stack = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %2, i32 0, i32 1
  %3 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %4 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected1 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %4, i32 0, i32 8
  %5 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected1, align 8
  call void @gimp_color_display_stack_remove(%struct._GimpColorDisplayStack* %3, %struct._GimpColorDisplay* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_editor_new() #1

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_up_clicked(%struct._GtkWidget* %widget, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 8
  %1 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected, align 8
  %tobool = icmp ne %struct._GimpColorDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %stack = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %2, i32 0, i32 1
  %3 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %4 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected1 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %4, i32 0, i32 8
  %5 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected1, align 8
  call void @gimp_color_display_stack_reorder_up(%struct._GimpColorDisplayStack* %3, %struct._GimpColorDisplay* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_down_clicked(%struct._GtkWidget* %widget, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 8
  %1 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected, align 8
  %tobool = icmp ne %struct._GimpColorDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %stack = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %2, i32 0, i32 1
  %3 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %4 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected1 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %4, i32 0, i32 8
  %5 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected1, align 8
  call void @gimp_color_display_stack_reorder_down(%struct._GimpColorDisplayStack* %3, %struct._GimpColorDisplay* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_enable_toggled(%struct._GtkCellRendererToggle* %toggle, i8* %path_str, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %toggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_str.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %display = alloca %struct._GimpColorDisplay*, align 8
  %enabled = alloca i32, align 4
  store %struct._GtkCellRendererToggle* %toggle, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load i8*, i8** %path_str.addr, align 8
  %call = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %0)
  store %struct._GtkTreePath* %call, %struct._GtkTreePath** %path, align 8
  %1 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %1, i32 0, i32 5
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %dest, align 8
  %3 = bitcast %struct._GtkListStore* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  %5 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest4 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %6, i32 0, i32 5
  %7 = load %struct._GtkListStore*, %struct._GtkListStore** %dest4, align 8
  %8 = bitcast %struct._GtkListStore* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tree_model_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 3, %struct._GimpColorDisplay** %display, i32 0, i32* %enabled, i32 -1)
  %10 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %11 = load i32, i32* %enabled, align 4
  %tobool7 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool7, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_color_display_set_enabled(%struct._GimpColorDisplay* %10, i32 %lnot.ext)
  %12 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %13 = bitcast %struct._GimpColorDisplay* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %14)
  ret void
}

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #1

declare i32 @gtk_tree_view_insert_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*, i32) #1

declare void @gtk_tree_view_column_set_widget(%struct._GtkTreeViewColumn*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_dest_changed(%struct._GtkTreeSelection* %sel, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %display = alloca %struct._GimpColorDisplay*, align 8
  %tip = alloca i8*, align 8
  %val = alloca %struct._GValue, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  store %struct._GimpColorDisplay* null, %struct._GimpColorDisplay** %display, align 8
  store i8* null, i8** %tip, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 8
  %1 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected, align 8
  %tobool = icmp ne %struct._GimpColorDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected1 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %2, i32 0, i32 8
  %3 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected1, align 8
  %4 = bitcast %struct._GimpColorDisplay* %3 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %6 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected2 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %6, i32 0, i32 8
  %7 = bitcast %struct._GimpColorDisplay** %selected2 to i8*
  %8 = bitcast i8* %7 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %5, i8** %8)
  %9 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected3 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %9, i32 0, i32 8
  store %struct._GimpColorDisplay* null, %struct._GimpColorDisplay** %selected3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call4 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %10, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %11 = bitcast %struct._GValue* %val to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false)
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter, i32 3, %struct._GValue* %val)
  %call7 = call i8* @g_value_get_object(%struct._GValue* %val)
  %13 = bitcast i8* %call7 to %struct._GimpColorDisplay*
  store %struct._GimpColorDisplay* %13, %struct._GimpColorDisplay** %display, align 8
  call void @g_value_unset(%struct._GValue* %val)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i32 0, i32 0)) #6
  %14 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %15 = bitcast %struct._GimpColorDisplay* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpColorDisplayClass*
  %name = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %call9 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call8, i8* %18)
  store i8* %call9, i8** %tip, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %19 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %remove_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %19, i32 0, i32 10
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button, align 8
  %21 = load i8*, i8** %tip, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %20, i8* %21, i8* null)
  %22 = load i8*, i8** %tip, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %remove_button11 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %23, i32 0, i32 10
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button11, align 8
  %25 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %cmp = icmp ne %struct._GimpColorDisplay* %25, null
  %conv = zext i1 %cmp to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %24, i32 %conv)
  %26 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %reset_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %26, i32 0, i32 16
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %reset_button, align 8
  %28 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %cmp12 = icmp ne %struct._GimpColorDisplay* %28, null
  %conv13 = zext i1 %cmp12 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %27, i32 %conv13)
  %29 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %29, i32 0, i32 15
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %config_widget, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %30, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.10
  %31 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_box = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %31, i32 0, i32 14
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %config_box, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call16)
  %34 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  %35 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget18 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %35, i32 0, i32 15
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %config_widget18, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %34, %struct._GtkWidget* %36)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.10
  %37 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %tobool20 = icmp ne %struct._GimpColorDisplay* %37, null
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.19
  %38 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %39 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected22 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %39, i32 0, i32 8
  store %struct._GimpColorDisplay* %38, %struct._GimpColorDisplay** %selected22, align 8
  %40 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %41 = bitcast %struct._GimpColorDisplay* %40 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %43 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected24 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %43, i32 0, i32 8
  %44 = bitcast %struct._GimpColorDisplay** %selected24 to i8*
  %45 = bitcast i8* %44 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %42, i8** %45)
  %46 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %call25 = call %struct._GtkWidget* @gimp_color_display_configure(%struct._GimpColorDisplay* %46)
  %47 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget26 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %47, i32 0, i32 15
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %config_widget26, align 8
  %48 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_frame = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %48, i32 0, i32 13
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %config_frame, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_frame_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call27)
  %51 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkFrame*
  %52 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display, align 8
  %53 = bitcast %struct._GimpColorDisplay* %52 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %55 = bitcast %struct._GTypeClass* %54 to %struct._GimpColorDisplayClass*
  %name30 = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %55, i32 0, i32 1
  %56 = load i8*, i8** %name30, align 8
  call void @gtk_frame_set_label(%struct._GtkFrame* %51, i8* %56)
  br label %if.end.36

if.else:                                          ; preds = %if.end.19
  %57 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget31 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %57, i32 0, i32 15
  store %struct._GtkWidget* null, %struct._GtkWidget** %config_widget31, align 8
  %58 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_frame32 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %58, i32 0, i32 13
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %config_frame32, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_frame_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call33)
  %61 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkFrame*
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0)) #6
  call void @gtk_frame_set_label(%struct._GtkFrame* %61, i8* %call35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.21
  %62 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget37 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %62, i32 0, i32 15
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %config_widget37, align 8
  %tobool38 = icmp ne %struct._GtkWidget* %63, null
  br i1 %tobool38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %if.end.36
  %64 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_box40 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %64, i32 0, i32 14
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %config_box40, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call41)
  %67 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %68 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget43 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %68, i32 0, i32 15
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %config_widget43, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget44 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %70, i32 0, i32 15
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %config_widget44, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %72 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget45 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %72, i32 0, i32 15
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %config_widget45, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 80)
  %75 = bitcast %struct._GTypeInstance* %call46 to %struct._GObject*
  %76 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %config_widget47 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %76, i32 0, i32 15
  %77 = bitcast %struct._GtkWidget** %config_widget47 to i8*
  %78 = bitcast i8* %77 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %75, i8** %78)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.39, %if.end.36
  %79 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  call void @gimp_color_display_editor_update_buttons(%struct._GimpColorDisplayEditor* %79)
  ret void
}

declare void @gtk_paned_pack2(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_reset_clicked(%struct._GtkWidget* %widget, %struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 8
  %1 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected, align 8
  %tobool = icmp ne %struct._GimpColorDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %selected1 = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %2, i32 0, i32 8
  %3 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %selected1, align 8
  call void @gimp_color_display_configure_reset(%struct._GimpColorDisplay* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare void @gtk_tree_model_get_value(%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gimp_color_display_stack_add(%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*) #1

declare void @gimp_color_display_stack_remove(%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*) #1

declare void @gimp_color_display_stack_reorder_up(%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*) #1

declare void @gimp_color_display_stack_reorder_down(%struct._GimpColorDisplayStack*, %struct._GimpColorDisplay*) #1

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gimp_color_display_set_enabled(%struct._GimpColorDisplay*, i32) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare %struct._GtkWidget* @gimp_color_display_configure(%struct._GimpColorDisplay*) #1

declare void @gtk_frame_set_label(%struct._GtkFrame*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_display_editor_update_buttons(%struct._GimpColorDisplayEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpColorDisplayEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %up_sensitive = alloca i32, align 4
  %down_sensitive = alloca i32, align 4
  %path = alloca %struct._GtkTreePath*, align 8
  %indices = alloca i32*, align 8
  store %struct._GimpColorDisplayEditor* %editor, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  store i32 0, i32* %up_sensitive, align 4
  store i32 0, i32* %down_sensitive, align 4
  %0 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %dest_sel = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %0, i32 0, i32 7
  %1 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %dest_sel, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %1, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call1 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call1, %struct._GtkTreePath** %path, align 8
  %3 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call2 = call i32* @gtk_tree_path_get_indices(%struct._GtkTreePath* %3)
  store i32* %call2, i32** %indices, align 8
  %4 = load i32*, i32** %indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sgt i32 %5, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %up_sensitive, align 4
  %6 = load i32*, i32** %indices, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx3, align 4
  %8 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %stack = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %8, i32 0, i32 1
  %9 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %filters = getelementptr inbounds %struct._GimpColorDisplayStack, %struct._GimpColorDisplayStack* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %filters, align 8
  %call4 = call i32 @g_list_length(%struct._GList* %10)
  %sub = sub i32 %call4, 1
  %cmp5 = icmp ult i32 %7, %sub
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %down_sensitive, align 4
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %12, i32 0, i32 11
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %up_button, align 8
  %14 = load i32, i32* %up_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %13, i32 %14)
  %15 = load %struct._GimpColorDisplayEditor*, %struct._GimpColorDisplayEditor** %editor.addr, align 8
  %down_button = getelementptr inbounds %struct._GimpColorDisplayEditor, %struct._GimpColorDisplayEditor* %15, i32 0, i32 12
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %down_button, align 8
  %17 = load i32, i32* %down_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %16, i32 %17)
  ret void
}

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32* @gtk_tree_path_get_indices(%struct._GtkTreePath*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare void @gimp_color_display_configure_reset(%struct._GimpColorDisplay*) #1

declare void @gtk_list_store_insert(%struct._GtkListStore*, %struct._GtkTreeIter*, i32) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_move_before(%struct._GtkListStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_move_after(%struct._GtkListStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_path_new_from_indices(i32, ...) #1

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
