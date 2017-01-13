; ModuleID = './libgimpwidgets/gimppatheditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPathEditorClass = type { %struct._GtkBoxClass, void (%struct._GimpPathEditor*)*, void (%struct._GimpPathEditor*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpPathEditor = type { %struct._GtkBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkTreeSelection*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkOrientable = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpFileEntry = type { %struct._GtkBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkEditable = type opaque
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }

@gimp_path_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpPathEditor\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_path_editor_new = private unnamed_addr constant [21 x i8] c"gimp_path_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"filename-changed\00", align 1
@__func__.gimp_path_editor_get_path = private unnamed_addr constant [26 x i8] c"gimp_path_editor_get_path\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"GIMP_IS_PATH_EDITOR (editor)\00", align 1
@__func__.gimp_path_editor_set_path = private unnamed_addr constant [26 x i8] c"gimp_path_editor_set_path\00", align 1
@gimp_path_editor_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_path_editor_get_writable_path = private unnamed_addr constant [35 x i8] c"gimp_path_editor_get_writable_path\00", align 1
@__func__.gimp_path_editor_set_writable_path = private unnamed_addr constant [35 x i8] c"gimp_path_editor_set_writable_path\00", align 1
@__func__.gimp_path_editor_get_dir_writable = private unnamed_addr constant [34 x i8] c"gimp_path_editor_get_dir_writable\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"directory != NULL\00", align 1
@__func__.gimp_path_editor_set_dir_writable = private unnamed_addr constant [34 x i8] c"gimp_path_editor_set_dir_writable\00", align 1
@gimp_path_editor_parent_class = internal global i8* null, align 8
@GimpPathEditor_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"path-changed\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"writable-changed\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Writable\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_path_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_path_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_path_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 872, void (i8*, i8*)* bitcast (void (i8*)* @gimp_path_editor_class_intern_init to void (i8*, i8*)*), i32 216, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPathEditor*)* @gimp_path_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_path_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_path_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_path_editor_parent_class, align 8
  %1 = load i32, i32* @GimpPathEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPathEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPathEditorClass*
  call void @gimp_path_editor_class_init(%struct._GimpPathEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_init(%struct._GimpPathEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %button_box = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %tv = alloca %struct._GtkWidget*, align 8
  %col = alloca %struct._GtkTreeViewColumn*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %0, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %file_entry, align 8
  %1 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %1, i32 0, i32 9
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %sel_path, align 8
  %2 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %num_items = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %2, i32 0, i32 11
  store i32 0, i32* %num_items, align 4
  %3 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpPathEditor* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %5, i32 1)
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  %6 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %upper_hbox = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %6, i32 0, i32 1
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %upper_hbox, align 8
  %7 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpPathEditor* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %10 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %upper_hbox5 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox5, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %11, i32 0, i32 1, i32 0)
  %12 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %upper_hbox6 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox6, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %button_box, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %16, i32 1)
  %17 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %upper_hbox10 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox10, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 1, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call13 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %button, align 8
  %23 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %new_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %23, i32 0, i32 2
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %new_button, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 1, i32 1, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call16 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %image, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call17)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %31, %struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %37 = bitcast %struct._GimpPathEditor* %36 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_new_clicked to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %call20 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %button, align 8
  %38 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %38, i32 0, i32 3
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %up_button, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %39, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call21)
  %42 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 1, i32 1, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call23 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %image, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_container_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call24)
  %47 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkContainer*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %47, %struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %53 = bitcast %struct._GimpPathEditor* %52 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_move_clicked to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %call27 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %button, align 8
  %54 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %down_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %54, i32 0, i32 4
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %down_button, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %55, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call28)
  %58 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 1, i32 1, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %call30 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %image, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_container_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call31)
  %63 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkContainer*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %63, %struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %68 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %69 = bitcast %struct._GimpPathEditor* %68 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_move_clicked to void ()*), i8* %69, void (i8*, %struct._GClosure*)* null, i32 0)
  %call34 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %button, align 8
  %70 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %delete_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %70, i32 0, i32 5
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %delete_button, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %71, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %button_box, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call35)
  %74 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %74, %struct._GtkWidget* %75, i32 1, i32 1, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %call37 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %image, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_container_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call38)
  %79 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkContainer*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %79, %struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %84 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %85 = bitcast %struct._GimpPathEditor* %84 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_delete_clicked to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 0)
  %call41 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %scrolled_window, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_scrolled_window_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call42)
  %88 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %88, i32 1)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_scrolled_window_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call44)
  %91 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %91, i32 1, i32 0)
  %92 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %93 = bitcast %struct._GimpPathEditor* %92 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call46)
  %94 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %95, i32 1, i32 1, i32 2)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %call48 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 64, i64 64, i64 20)
  %97 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %97, i32 0, i32 7
  store %struct._GtkListStore* %call48, %struct._GtkListStore** %dir_list, align 8
  %98 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list49 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %98, i32 0, i32 7
  %99 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list49, align 8
  %100 = bitcast %struct._GtkListStore* %99 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_tree_model_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call50)
  %101 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTreeModel*
  %call52 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %101)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %tv, align 8
  %102 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list53 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %102, i32 0, i32 7
  %103 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list53, align 8
  %104 = bitcast %struct._GtkListStore* %103 to i8*
  call void @g_object_unref(i8* %104)
  %call54 = call %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new()
  store %struct._GtkCellRenderer* %call54, %struct._GtkCellRenderer** %renderer, align 8
  %105 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %106 = bitcast %struct._GtkCellRenderer* %105 to i8*
  %107 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %108 = bitcast %struct._GimpPathEditor* %107 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererToggle*, i8*, %struct._GimpPathEditor*)* @gimp_path_editor_writable_toggled to void ()*), i8* %108, void (i8*, %struct._GClosure*)* null, i32 0)
  %call56 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call56, %struct._GtkTreeViewColumn** %col, align 8
  %109 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %writable_column = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %109, i32 0, i32 10
  store %struct._GtkTreeViewColumn* %call56, %struct._GtkTreeViewColumn** %writable_column, align 8
  %110 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call57 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #8
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %110, i8* %call57)
  %111 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %112 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %111, %struct._GtkCellRenderer* %112, i32 0)
  %113 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %114 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_tree_view_column_add_attribute(%struct._GtkTreeViewColumn* %113, %struct._GtkCellRenderer* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 2)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_tree_view_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call58)
  %117 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTreeView*
  %118 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  %call60 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %117, %struct._GtkTreeViewColumn* %118)
  %119 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %col, align 8
  call void @gtk_tree_view_column_set_visible(%struct._GtkTreeViewColumn* %119, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_tree_view_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call61)
  %122 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTreeView*
  %call63 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #8
  %call64 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call65 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %122, i32 -1, i8* %call63, %struct._GtkCellRenderer* %call64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, i8* null)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_tree_view_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call66)
  %125 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %125, i32 1)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_container_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call68)
  %128 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkContainer*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_container_add(%struct._GtkContainer* %128, %struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %130)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_tree_view_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call70)
  %133 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTreeView*
  %call72 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %133)
  %134 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %134, i32 0, i32 8
  store %struct._GtkTreeSelection* %call72, %struct._GtkTreeSelection** %sel, align 8
  %135 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel73 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %135, i32 0, i32 8
  %136 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel73, align 8
  %137 = bitcast %struct._GtkTreeSelection* %136 to i8*
  %138 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %139 = bitcast %struct._GimpPathEditor* %138 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpPathEditor*)* @gimp_path_editor_selection_changed to void ()*), i8* %139, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_path_editor_new(i8* %title, i8* %path) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpPathEditor*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %title.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_path_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_path_editor_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpPathEditor*
  store %struct._GimpPathEditor* %1, %struct._GimpPathEditor** %editor, align 8
  %2 = load i8*, i8** %title.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_file_entry_new(i8* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 1)
  %3 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %file_entry = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %3, i32 0, i32 6
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %file_entry, align 8
  %4 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %file_entry3 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %4, i32 0, i32 6
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry3, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %5, i32 0)
  %6 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %upper_hbox = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %10 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %file_entry6 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %10, i32 0, i32 6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry6, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %11, i32 1, i32 1, i32 0)
  %12 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %file_entry7 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %12, i32 0, i32 6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry7, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %file_entry8 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %14, i32 0, i32 6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry8, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %18 = bitcast %struct._GimpPathEditor* %17 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_file_entry_changed to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load i8*, i8** %path.addr, align 8
  %tobool = icmp ne i8* %19, null
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %20 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %21 = load i8*, i8** %path.addr, align 8
  call void @gimp_path_editor_set_path(%struct._GimpPathEditor* %20, i8* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.end
  %22 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor, align 8
  %23 = bitcast %struct._GimpPathEditor* %22 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call12)
  %24 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  store %struct._GtkWidget* %24, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.else
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %25
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GtkWidget* @gimp_file_entry_new(i8*, i8*, i32, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_file_entry_changed(%struct._GtkWidget* %widget, %struct._GimpPathEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %dir = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_entry_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileEntry*
  %call2 = call i8* @gimp_file_entry_get_filename(%struct._GimpFileEntry* %2)
  store i8* %call2, i8** %dir, align 8
  %3 = load i8*, i8** %dir, align 8
  %call3 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #9
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %4)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %dir, align 8
  %call4 = call noalias i8* @g_filename_display_name(i8* %5)
  store i8* %call4, i8** %utf8, align 8
  %6 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %6, i32 0, i32 9
  %7 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path, align 8
  %cmp5 = icmp eq %struct._GtkTreePath* %7, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %8, i32 0, i32 7
  %9 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %9, %struct._GtkTreeIter* %iter)
  %10 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list7 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %10, i32 0, i32 7
  %11 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list7, align 8
  %12 = load i8*, i8** %utf8, align 8
  %13 = load i8*, i8** %dir, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %11, %struct._GtkTreeIter* %iter, i32 0, i8* %12, i32 1, i8* %13, i32 2, i32 0, i32 -1)
  %14 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %num_items = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %14, i32 0, i32 11
  %15 = load i32, i32* %num_items, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %num_items, align 4
  %16 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %16, i32 0, i32 8
  %17 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %17, %struct._GtkTreeIter* %iter)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %18 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list8 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %18, i32 0, i32 7
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list8, align 8
  %20 = bitcast %struct._GtkListStore* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_model_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeModel*
  %22 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path11 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %22, i32 0, i32 9
  %23 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path11, align 8
  %call12 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %21, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %23)
  %24 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list13 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %24, i32 0, i32 7
  %25 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list13, align 8
  %26 = load i8*, i8** %utf8, align 8
  %27 = load i8*, i8** %dir, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %25, %struct._GtkTreeIter* %iter, i32 0, i8* %26, i32 1, i8* %27, i32 -1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.6
  %28 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %28)
  %29 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %31 = bitcast %struct._GimpPathEditor* %30 to i8*
  %32 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %31, i32 %32, i32 0)
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_path_editor_set_path(%struct._GimpPathEditor* %editor, i8* %path) #3 {
entry:
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %path.addr = alloca i8*, align 8
  %old_path = alloca i8*, align 8
  %path_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %directory = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPathEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_path_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_path_editor_set_path, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %call11 = call i8* @gimp_path_editor_get_path(%struct._GimpPathEditor* %13)
  store i8* %call11, i8** %old_path, align 8
  %14 = load i8*, i8** %old_path, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.19

land.lhs.true.13:                                 ; preds = %do.end
  %15 = load i8*, i8** %path.addr, align 8
  %tobool14 = icmp ne i8* %15, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.19

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %16 = load i8*, i8** %old_path, align 8
  %17 = load i8*, i8** %path.addr, align 8
  %call16 = call i32 @strcmp(i8* %16, i8* %17) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.15
  %18 = load i8*, i8** %old_path, align 8
  call void @g_free(i8* %18)
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.15, %land.lhs.true.13, %do.end
  %19 = load i8*, i8** %old_path, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %path.addr, align 8
  %call20 = call %struct._GList* @gimp_path_parse(i8* %20, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call20, %struct._GList** %path_list, align 8
  %21 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %21, i32 0, i32 7
  %22 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  call void @gtk_list_store_clear(%struct._GtkListStore* %22)
  %23 = load %struct._GList*, %struct._GList** %path_list, align 8
  store %struct._GList* %23, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.19
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %24, null
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  store i8* %26, i8** %directory, align 8
  %27 = load i8*, i8** %directory, align 8
  %call25 = call noalias i8* @g_filename_to_utf8(i8* %27, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call25, i8** %utf8, align 8
  %28 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list26 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %28, i32 0, i32 7
  %29 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list26, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %29, %struct._GtkTreeIter* %iter)
  %30 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list27 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %30, i32 0, i32 7
  %31 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list27, align 8
  %32 = load i8*, i8** %utf8, align 8
  %33 = load i8*, i8** %directory, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %31, %struct._GtkTreeIter* %iter, i32 0, i8* %32, i32 1, i8* %33, i32 2, i32 0, i32 -1)
  %34 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %num_items = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %35, i32 0, i32 11
  %36 = load i32, i32* %num_items, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %num_items, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool28 = icmp ne %struct._GList* %37, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._GList*, %struct._GList** %path_list, align 8
  call void @gimp_path_free(%struct._GList* %40)
  %41 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %42 = bitcast %struct._GimpPathEditor* %41 to i8*
  %43 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %42, i32 %43, i32 0)
  br label %return

return:                                           ; preds = %for.end, %if.then.18, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define i8* @gimp_path_editor_get_path(%struct._GimpPathEditor* %editor) #3 {
entry:
  %retval = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %path = alloca %struct._GString*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dir = alloca i8*, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPathEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_path_editor_get_type() #7
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
  br label %if.end.11

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_path_editor_get_path, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  %call10 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call10, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %13, i32 0, i32 7
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %15 = bitcast %struct._GtkListStore* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_tree_model_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %16, %struct._GtkTreeModel** %model, align 8
  %call14 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GString* %call14, %struct._GString** %path, align 8
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call15 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter)
  store i32 %call15, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %18 = load i32, i32* %iter_valid, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter, i32 1, i8** %dir, i32 -1)
  %20 = load %struct._GString*, %struct._GString** %path, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %20, i32 0, i32 1
  %21 = load i64, i64* %len, align 8
  %cmp18 = icmp ugt i64 %21, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body
  %22 = load %struct._GString*, %struct._GString** %path, align 8
  %call20 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %22, i8 signext 58)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %for.body
  %23 = load %struct._GString*, %struct._GString** %path, align 8
  %24 = load i8*, i8** %dir, align 8
  %call22 = call %struct._GString* @g_string_append(%struct._GString* %23, i8* %24)
  %25 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %25)
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %26 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call23 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %26, %struct._GtkTreeIter* %iter)
  store i32 %call23, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._GString*, %struct._GString** %path, align 8
  %call24 = call i8* @g_string_free(%struct._GString* %27, i32 0)
  store i8* %call24, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare %struct._GString* @g_string_new(i8*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #5 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare void @g_free(i8*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #1

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @gimp_path_free(%struct._GList*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_path_editor_get_writable_path(%struct._GimpPathEditor* %editor) #3 {
entry:
  %retval = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %path = alloca %struct._GString*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dir = alloca i8*, align 8
  %dir_writable = alloca i32, align 4
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPathEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_path_editor_get_type() #7
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
  br label %if.end.11

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_path_editor_get_writable_path, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  %call10 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call10, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %13, i32 0, i32 7
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %15 = bitcast %struct._GtkListStore* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_tree_model_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %16, %struct._GtkTreeModel** %model, align 8
  %call14 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GString* %call14, %struct._GString** %path, align 8
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call15 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter)
  store i32 %call15, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %18 = load i32, i32* %iter_valid, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter, i32 1, i8** %dir, i32 2, i32* %dir_writable, i32 -1)
  %20 = load i32, i32* %dir_writable, align 4
  %tobool19 = icmp ne i32 %20, 0
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %for.body
  %21 = load %struct._GString*, %struct._GString** %path, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %21, i32 0, i32 1
  %22 = load i64, i64* %len, align 8
  %cmp21 = icmp ugt i64 %22, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.20
  %23 = load %struct._GString*, %struct._GString** %path, align 8
  %call23 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %23, i8 signext 58)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.20
  %24 = load %struct._GString*, %struct._GString** %path, align 8
  %25 = load i8*, i8** %dir, align 8
  %call25 = call %struct._GString* @g_string_append(%struct._GString* %24, i8* %25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.24, %for.body
  %26 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %26)
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %27 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call27 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %27, %struct._GtkTreeIter* %iter)
  store i32 %call27, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._GString*, %struct._GString** %path, align 8
  %call28 = call i8* @g_string_free(%struct._GString* %28, i32 0)
  store i8* %call28, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define void @gimp_path_editor_set_writable_path(%struct._GimpPathEditor* %editor, i8* %path) #3 {
entry:
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %path.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %path_list = alloca %struct._GList*, align 8
  %writable_changed = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dir = alloca i8*, align 8
  %dir_writable = alloca i32, align 4
  %new_writable = alloca i32, align 4
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 0, i32* %writable_changed, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPathEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_path_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_path_editor_set_writable_path, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.30

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %writable_column = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %13, i32 0, i32 10
  %14 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %writable_column, align 8
  call void @gtk_tree_view_column_set_visible(%struct._GtkTreeViewColumn* %14, i32 1)
  %15 = load i8*, i8** %path.addr, align 8
  %call11 = call %struct._GList* @gimp_path_parse(i8* %15, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call11, %struct._GList** %path_list, align 8
  %16 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %16, i32 0, i32 7
  %17 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %18 = bitcast %struct._GtkListStore* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_tree_model_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %19, %struct._GtkTreeModel** %model, align 8
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call14 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %iter)
  store i32 %call14, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %21 = load i32, i32* %iter_valid, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %new_writable, align 4
  %22 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %22, %struct._GtkTreeIter* %iter, i32 1, i8** %dir, i32 2, i32* %dir_writable, i32 -1)
  %23 = load %struct._GList*, %struct._GList** %path_list, align 8
  %24 = load i8*, i8** %dir, align 8
  %call19 = call %struct._GList* @g_list_find_custom(%struct._GList* %23, i8* %24, i32 (i8*, i8*)* @strcmp)
  %tobool20 = icmp ne %struct._GList* %call19, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  store i32 1, i32* %new_writable, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.body
  %25 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %25)
  %26 = load i32, i32* %dir_writable, align 4
  %27 = load i32, i32* %new_writable, align 4
  %cmp23 = icmp ne i32 %26, %27
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %28 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list25 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %28, i32 0, i32 7
  %29 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list25, align 8
  %30 = load i32, i32* %new_writable, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %29, %struct._GtkTreeIter* %iter, i32 2, i32 %30, i32 -1)
  store i32 1, i32* %writable_changed, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %31 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call27 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %31, %struct._GtkTreeIter* %iter)
  store i32 %call27, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._GList*, %struct._GList** %path_list, align 8
  call void @gimp_path_free(%struct._GList* %32)
  %33 = load i32, i32* %writable_changed, align 4
  %tobool28 = icmp ne i32 %33, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end
  %34 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %35 = bitcast %struct._GimpPathEditor* %34 to i8*
  %36 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %35, i32 %36, i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.9, %if.then.29, %for.end
  ret void
}

declare void @gtk_tree_view_column_set_visible(%struct._GtkTreeViewColumn*, i32) #1

declare %struct._GList* @g_list_find_custom(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_path_editor_get_dir_writable(%struct._GimpPathEditor* %editor, i8* %directory) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %directory.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dir = alloca i8*, align 8
  %dir_writable = alloca i32, align 4
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  store i8* %directory, i8** %directory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPathEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_path_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_path_editor_get_dir_writable, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %directory.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_path_editor_get_dir_writable, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %14, i32 0, i32 7
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %16 = bitcast %struct._GtkListStore* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_tree_model_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %17, %struct._GtkTreeModel** %model, align 8
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call19 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter)
  store i32 %call19, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %19 = load i32, i32* %iter_valid, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %iter, i32 1, i8** %dir, i32 2, i32* %dir_writable, i32 -1)
  %21 = load i8*, i8** %dir, align 8
  %22 = load i8*, i8** %directory.addr, align 8
  %call23 = call i32 @strcmp(i8* %21, i8* %22) #9
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.body
  %23 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %23)
  %24 = load i32, i32* %dir_writable, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body
  %25 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %25)
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %26 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call27 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %26, %struct._GtkTreeIter* %iter)
  store i32 %call27, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.25, %if.else.14, %if.else.9
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define void @gimp_path_editor_set_dir_writable(%struct._GimpPathEditor* %editor, i8* %directory, i32 %writable) #3 {
entry:
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %directory.addr = alloca i8*, align 8
  %writable.addr = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dir = alloca i8*, align 8
  %dir_writable = alloca i32, align 4
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  store i8* %directory, i8** %directory.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPathEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_path_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_path_editor_set_dir_writable, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %directory.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_path_editor_set_dir_writable, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %14, i32 0, i32 7
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %16 = bitcast %struct._GtkListStore* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_tree_model_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %17, %struct._GtkTreeModel** %model, align 8
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call19 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter)
  store i32 %call19, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %19 = load i32, i32* %iter_valid, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %iter, i32 1, i8** %dir, i32 2, i32* %dir_writable, i32 -1)
  %21 = load i8*, i8** %dir, align 8
  %22 = load i8*, i8** %directory.addr, align 8
  %call23 = call i32 @strcmp(i8* %21, i8* %22) #9
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.30, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %for.body
  %23 = load i32, i32* %dir_writable, align 4
  %24 = load i32, i32* %writable.addr, align 4
  %cmp26 = icmp ne i32 %23, %24
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %land.lhs.true.25
  %25 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list28 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %25, i32 0, i32 7
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list28, align 8
  %27 = load i32, i32* %writable.addr, align 4
  %tobool29 = icmp ne i32 %27, 0
  %cond = select i1 %tobool29, i32 1, i32 0
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %26, %struct._GtkTreeIter* %iter, i32 2, i32 %cond, i32 -1)
  %28 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %29 = bitcast %struct._GimpPathEditor* %28 to i8*
  %30 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %29, i32 %30, i32 0)
  %31 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %31)
  br label %for.end

if.end.30:                                        ; preds = %land.lhs.true.25, %for.body
  %32 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %32)
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %33 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call31 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %33, %struct._GtkTreeIter* %iter)
  store i32 %call31, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.14, %if.then.27, %for.cond
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_class_init(%struct._GimpPathEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPathEditorClass*, align 8
  store %struct._GimpPathEditorClass* %klass, %struct._GimpPathEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpPathEditorClass*, %struct._GimpPathEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPathEditorClass* %0 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %1, i32 0, i32 0
  %2 = load i64, i64* %g_type, align 8
  %call = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i64 %2, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 0), align 4
  %3 = load %struct._GimpPathEditorClass*, %struct._GimpPathEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPathEditorClass* %3 to %struct._GTypeClass*
  %g_type1 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type1, align 8
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i64 %5, i32 1, i32 832, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 1), align 4
  %6 = load %struct._GimpPathEditorClass*, %struct._GimpPathEditorClass** %klass.addr, align 8
  %path_changed = getelementptr inbounds %struct._GimpPathEditorClass, %struct._GimpPathEditorClass* %6, i32 0, i32 1
  store void (%struct._GimpPathEditor*)* null, void (%struct._GimpPathEditor*)** %path_changed, align 8
  %7 = load %struct._GimpPathEditorClass*, %struct._GimpPathEditorClass** %klass.addr, align 8
  %writable_changed = getelementptr inbounds %struct._GimpPathEditorClass, %struct._GimpPathEditorClass* %7, i32 0, i32 2
  store void (%struct._GimpPathEditor*)* null, void (%struct._GimpPathEditor*)** %writable_changed, align 8
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_new_clicked(%struct._GtkWidget* %widget, %struct._GimpPathEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %0, i32 0, i32 9
  %1 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path, align 8
  %tobool = icmp ne %struct._GtkTreePath* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %2, i32 0, i32 8
  %3 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %4 = bitcast %struct._GtkTreeSelection* %3 to i8*
  %5 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpPathEditor* %5 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpPathEditor*)* @gimp_path_editor_selection_changed to i8*), i8* %6)
  %7 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel1 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %7, i32 0, i32 8
  %8 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel1, align 8
  %9 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path2 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %9, i32 0, i32 9
  %10 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path2, align 8
  call void @gtk_tree_selection_unselect_path(%struct._GtkTreeSelection* %8, %struct._GtkTreePath* %10)
  %11 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel3 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %11, i32 0, i32 8
  %12 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel3, align 8
  %13 = bitcast %struct._GtkTreeSelection* %12 to i8*
  %14 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpPathEditor* %14 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpPathEditor*)* @gimp_path_editor_selection_changed to i8*), i8* %15)
  %16 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path5 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %16, i32 0, i32 9
  %17 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path5, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %17)
  %18 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path6 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %18, i32 0, i32 9
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %sel_path6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %delete_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %20, i32 0)
  %21 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %21, i32 0, i32 3
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %up_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %22, i32 0)
  %23 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %down_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %23, i32 0, i32 4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %down_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %24, i32 0)
  %25 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %25, i32 0, i32 6
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %26, i32 1)
  %27 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry7 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %27, i32 0, i32 6
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry7, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_file_entry_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call8)
  %30 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpFileEntry*
  %entry10 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %30, i32 0, i32 2
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %entry10, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_editable_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call11)
  %33 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkEditable*
  call void @gtk_editable_set_position(%struct._GtkEditable* %33, i32 -1)
  %34 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry13 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %34, i32 0, i32 6
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry13, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_file_entry_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call14)
  %37 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpFileEntry*
  %entry16 = getelementptr inbounds %struct._GimpFileEntry, %struct._GimpFileEntry* %37, i32 0, i32 2
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %entry16, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call17)
  %40 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %40)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_move_clicked(%struct._GtkWidget* %widget, %struct._GimpPathEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter1 = alloca %struct._GtkTreeIter, align 8
  %iter2 = alloca %struct._GtkTreeIter, align 8
  %utf81 = alloca i8*, align 8
  %utf82 = alloca i8*, align 8
  %dir1 = alloca i8*, align 8
  %dir2 = alloca i8*, align 8
  %writable1 = alloca i32, align 4
  %writable2 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %0, i32 0, i32 9
  %1 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path, align 8
  %cmp = icmp eq %struct._GtkTreePath* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path1 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %2, i32 0, i32 9
  %3 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path1, align 8
  %call = call %struct._GtkTreePath* @gtk_tree_path_copy(%struct._GtkTreePath* %3)
  store %struct._GtkTreePath* %call, %struct._GtkTreePath** %path, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %5, i32 0, i32 3
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %up_button, align 8
  %cmp2 = icmp eq %struct._GtkWidget* %4, %6
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call4 = call i32 @gtk_tree_path_prev(%struct._GtkTreePath* %7)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %8 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_next(%struct._GtkTreePath* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  %9 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %9, i32 0, i32 7
  %10 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %11 = bitcast %struct._GtkListStore* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_tree_model_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %12, %struct._GtkTreeModel** %model, align 8
  %13 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %14 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path8 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %14, i32 0, i32 9
  %15 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path8, align 8
  %call9 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %13, %struct._GtkTreeIter* %iter1, %struct._GtkTreePath* %15)
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %17 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call10 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %16, %struct._GtkTreeIter* %iter2, %struct._GtkTreePath* %17)
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter1, i32 0, i8** %utf81, i32 1, i8** %dir1, i32 2, i32* %writable1, i32 -1)
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter2, i32 0, i8** %utf82, i32 1, i8** %dir2, i32 2, i32* %writable2, i32 -1)
  %20 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list11 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %20, i32 0, i32 7
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list11, align 8
  %22 = load i8*, i8** %utf82, align 8
  %23 = load i8*, i8** %dir2, align 8
  %24 = load i32, i32* %writable2, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %21, %struct._GtkTreeIter* %iter1, i32 0, i8* %22, i32 1, i8* %23, i32 2, i32 %24, i32 -1)
  %25 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list12 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %25, i32 0, i32 7
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list12, align 8
  %27 = load i8*, i8** %utf81, align 8
  %28 = load i8*, i8** %dir1, align 8
  %29 = load i32, i32* %writable1, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %26, %struct._GtkTreeIter* %iter2, i32 0, i8* %27, i32 1, i8* %28, i32 2, i32 %29, i32 -1)
  %30 = load i8*, i8** %utf81, align 8
  call void @g_free(i8* %30)
  %31 = load i8*, i8** %utf82, align 8
  call void @g_free(i8* %31)
  %32 = load i8*, i8** %dir2, align 8
  call void @g_free(i8* %32)
  %33 = load i8*, i8** %dir1, align 8
  call void @g_free(i8* %33)
  %34 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %34, i32 0, i32 8
  %35 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %35, %struct._GtkTreeIter* %iter2)
  %36 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %37 = bitcast %struct._GimpPathEditor* %36 to i8*
  %38 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %37, i32 %38, i32 0)
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_delete_clicked(%struct._GtkWidget* %widget, %struct._GimpPathEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %dir_writable = alloca i32, align 4
  %indices = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %0, i32 0, i32 9
  %1 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path, align 8
  %cmp = icmp eq %struct._GtkTreePath* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.34

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %2, i32 0, i32 7
  %3 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %4 = bitcast %struct._GtkListStore* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  %6 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path2 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %6, i32 0, i32 9
  %7 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path2, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %7)
  %8 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list4 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %8, i32 0, i32 7
  %9 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list4, align 8
  %10 = bitcast %struct._GtkListStore* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tree_model_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %iter, i32 2, i32* %dir_writable, i32 -1)
  %12 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list7 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %12, i32 0, i32 7
  %13 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list7, align 8
  %call8 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %13, %struct._GtkTreeIter* %iter)
  %14 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %num_items = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %14, i32 0, i32 11
  %15 = load i32, i32* %num_items, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %num_items, align 4
  %16 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %num_items9 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %16, i32 0, i32 11
  %17 = load i32, i32* %num_items9, align 4
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %18 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path12 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %18, i32 0, i32 9
  %19 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path12, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %19)
  %20 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path13 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %20, i32 0, i32 9
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %sel_path13, align 8
  %21 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %21, i32 0, i32 6
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %25 = bitcast %struct._GimpPathEditor* %24 to i8*
  %call14 = call i32 @g_signal_handlers_block_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_file_entry_changed to i8*), i8* %25)
  %26 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry15 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %26, i32 0, i32 6
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry15, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_file_entry_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpFileEntry*
  call void @gimp_file_entry_set_filename(%struct._GimpFileEntry* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %30 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry18 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %30, i32 0, i32 6
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry18, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %34 = bitcast %struct._GimpPathEditor* %33 to i8*
  %call19 = call i32 @g_signal_handlers_unblock_matched(i8* %32, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_file_entry_changed to i8*), i8* %34)
  %35 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %delete_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %35, i32 0, i32 5
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %36, i32 0)
  %37 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %37, i32 0, i32 3
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %up_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %38, i32 0)
  %39 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %down_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %39, i32 0, i32 4
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %down_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %40, i32 0)
  %41 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry20 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %41, i32 0, i32 6
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry20, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %42, i32 0)
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %43 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path21 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %43, i32 0, i32 9
  %44 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path21, align 8
  %call22 = call i32* @gtk_tree_path_get_indices(%struct._GtkTreePath* %44)
  store i32* %call22, i32** %indices, align 8
  %45 = load i32*, i32** %indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx, align 4
  %47 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %num_items23 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %47, i32 0, i32 11
  %48 = load i32, i32* %num_items23, align 4
  %cmp24 = icmp eq i32 %46, %48
  br i1 %cmp24, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.else
  %49 = load i32*, i32** %indices, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %49, i64 0
  %50 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp sgt i32 %50, 0
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %land.lhs.true
  %51 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path28 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %51, i32 0, i32 9
  %52 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path28, align 8
  %call29 = call i32 @gtk_tree_path_prev(%struct._GtkTreePath* %52)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %land.lhs.true, %if.else
  %53 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %53, i32 0, i32 8
  %54 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %55 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path31 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %55, i32 0, i32 9
  %56 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path31, align 8
  call void @gtk_tree_selection_select_path(%struct._GtkTreeSelection* %54, %struct._GtkTreePath* %56)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %if.then.11
  %57 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %58 = bitcast %struct._GimpPathEditor* %57 to i8*
  %59 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %58, i32 %59, i32 0)
  %60 = load i32, i32* %dir_writable, align 4
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.32
  %61 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %62 = bitcast %struct._GimpPathEditor* %61 to i8*
  %63 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %62, i32 %63, i32 0)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then, %if.then.33, %if.end.32
  ret void
}

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_toggle_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_writable_toggled(%struct._GtkCellRendererToggle* %toggle, i8* %path_str, %struct._GimpPathEditor* %editor) #3 {
entry:
  %toggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_str.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %dir_writable = alloca i32, align 4
  store %struct._GtkCellRendererToggle* %toggle, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load i8*, i8** %path_str.addr, align 8
  %call = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %0)
  store %struct._GtkTreePath* %call, %struct._GtkTreePath** %path, align 8
  %1 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %1, i32 0, i32 7
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %3 = bitcast %struct._GtkListStore* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  %5 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list4 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %6, i32 0, i32 7
  %7 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list4, align 8
  %8 = bitcast %struct._GtkListStore* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tree_model_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 2, i32* %dir_writable, i32 -1)
  %10 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list7 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %10, i32 0, i32 7
  %11 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list7, align 8
  %12 = load i32, i32* %dir_writable, align 4
  %tobool8 = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool8, true
  %lnot.ext = zext i1 %lnot to i32
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %11, %struct._GtkTreeIter* %iter, i32 2, i32 %lnot.ext, i32 -1)
  %13 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpPathEditor* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_path_editor_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %16)
  ret void
}

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn*, i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_add_attribute(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i8*, i32) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_path_editor_selection_changed(%struct._GtkTreeSelection* %sel, %struct._GimpPathEditor* %editor) #3 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %directory = alloca i8*, align 8
  %indices = alloca i32*, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %1, i32 0, i32 7
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list, align 8
  %3 = bitcast %struct._GtkListStore* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 0, i8** %directory, i32 -1)
  %5 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %5, i32 0, i32 6
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %8 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %9 = bitcast %struct._GimpPathEditor* %8 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_file_entry_changed to i8*), i8* %9)
  %10 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry4 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %10, i32 0, i32 6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry4, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_file_entry_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpFileEntry*
  %14 = load i8*, i8** %directory, align 8
  call void @gimp_file_entry_set_filename(%struct._GimpFileEntry* %13, i8* %14)
  %15 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry7 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %15, i32 0, i32 6
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry7, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %19 = bitcast %struct._GimpPathEditor* %18 to i8*
  %call8 = call i32 @g_signal_handlers_unblock_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpPathEditor*)* @gimp_path_editor_file_entry_changed to i8*), i8* %19)
  %20 = load i8*, i8** %directory, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %21, i32 0, i32 9
  %22 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path, align 8
  %tobool9 = icmp ne %struct._GtkTreePath* %22, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %23 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path11 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %23, i32 0, i32 9
  %24 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path11, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %24)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %25 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %dir_list12 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %25, i32 0, i32 7
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %dir_list12, align 8
  %27 = bitcast %struct._GtkListStore* %26 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_tree_model_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call13)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTreeModel*
  %call15 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %iter)
  %29 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path16 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %29, i32 0, i32 9
  store %struct._GtkTreePath* %call15, %struct._GtkTreePath** %sel_path16, align 8
  %30 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path17 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %30, i32 0, i32 9
  %31 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path17, align 8
  %call18 = call i32* @gtk_tree_path_get_indices(%struct._GtkTreePath* %31)
  store i32* %call18, i32** %indices, align 8
  %32 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %delete_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %32, i32 0, i32 5
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %33, i32 1)
  %34 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %34, i32 0, i32 3
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %up_button, align 8
  %36 = load i32*, i32** %indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sgt i32 %37, 0
  %conv = zext i1 %cmp to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %35, i32 %conv)
  %38 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %down_button = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %38, i32 0, i32 4
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %down_button, align 8
  %40 = load i32*, i32** %indices, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx19, align 4
  %42 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %num_items = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %42, i32 0, i32 11
  %43 = load i32, i32* %num_items, align 4
  %sub = sub nsw i32 %43, 1
  %cmp20 = icmp slt i32 %41, %sub
  %conv21 = zext i1 %cmp20 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %39, i32 %conv21)
  %44 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %file_entry22 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %44, i32 0, i32 6
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %file_entry22, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %45, i32 1)
  br label %if.end.27

if.else:                                          ; preds = %entry
  %46 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %47 = bitcast %struct._GtkTreeSelection* %46 to i8*
  %48 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %49 = bitcast %struct._GimpPathEditor* %48 to i8*
  %call23 = call i32 @g_signal_handlers_block_matched(i8* %47, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpPathEditor*)* @gimp_path_editor_selection_changed to i8*), i8* %49)
  %50 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel24 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %50, i32 0, i32 8
  %51 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel24, align 8
  %52 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %sel_path25 = getelementptr inbounds %struct._GimpPathEditor, %struct._GimpPathEditor* %52, i32 0, i32 9
  %53 = load %struct._GtkTreePath*, %struct._GtkTreePath** %sel_path25, align 8
  call void @gtk_tree_selection_select_path(%struct._GtkTreeSelection* %51, %struct._GtkTreePath* %53)
  %54 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %55 = bitcast %struct._GtkTreeSelection* %54 to i8*
  %56 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %57 = bitcast %struct._GimpPathEditor* %56 to i8*
  %call26 = call i32 @g_signal_handlers_unblock_matched(i8* %55, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpPathEditor*)* @gimp_path_editor_selection_changed to i8*), i8* %57)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.end
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_tree_selection_unselect_path(%struct._GtkTreeSelection*, %struct._GtkTreePath*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @gtk_editable_set_position(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_file_entry_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #2

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare %struct._GtkTreePath* @gtk_tree_path_copy(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_path_prev(%struct._GtkTreePath*) #1

declare void @gtk_tree_path_next(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gimp_file_entry_set_filename(%struct._GimpFileEntry*, i8*) #1

declare i32* @gtk_tree_path_get_indices(%struct._GtkTreePath*) #1

declare void @gtk_tree_selection_select_path(%struct._GtkTreeSelection*, %struct._GtkTreePath*) #1

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare i8* @gimp_file_entry_get_filename(%struct._GimpFileEntry*) #1

declare noalias i8* @g_filename_display_name(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
