; ModuleID = './app/widgets/gimppanedbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPanedBoxClass = type { %struct._GtkBoxClass }
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
%struct._GimpPanedBox = type { %struct._GtkBox, %struct._GimpPanedBoxPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpPanedBoxPrivate = type { %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i32 (%struct._GtkWidget*, i32, i8*)*, i8*, %struct._GimpPanedBox* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkOrientable = type opaque
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GimpToolbox = type { %struct._GimpDock, %struct._GimpToolboxPrivate* }
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GimpDockPrivate = type opaque
%struct._GimpToolboxPrivate = type opaque
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDockbookPrivate = type opaque
%struct._GdkWindowAttr = type { i8*, i32, i32, i32, i32, i32, i32, %struct._GdkVisual*, %struct._GdkColormap*, i32, %struct._GdkCursor*, i8*, i8*, i32, i32 }
%struct._GdkCursor = type { i32, i32 }

@gimp_paned_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpPanedBox\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"homogeneous\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_paned_box_set_dropped_cb = private unnamed_addr constant [30 x i8] c"gimp_paned_box_set_dropped_cb\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"GIMP_IS_PANED_BOX (paned_box)\00", align 1
@__func__.gimp_paned_box_add_widget = private unnamed_addr constant [26 x i8] c"gimp_paned_box_add_widget\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Adding GtkWidget %p to GimpPanedBox %p\00", align 1
@__func__.gimp_paned_box_remove_widget = private unnamed_addr constant [29 x i8] c"gimp_paned_box_remove_widget\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Removing GtkWidget %p from GimpPanedBox %p\00", align 1
@__func__.gimp_paned_box_will_handle_drag = private unnamed_addr constant [32 x i8] c"gimp_paned_box_will_handle_drag\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"paned_box == NULL || GIMP_IS_PANED_BOX (paned_box)\00", align 1
@__func__.gimp_paned_box_set_drag_handler = private unnamed_addr constant [32 x i8] c"gimp_paned_box_set_drag_handler\00", align 1
@gimp_paned_box_parent_class = internal global i8* null, align 8
@GimpPanedBox_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"You can drop dockable dialogs here\00", align 1
@dialog_target_table = internal constant [1 x %struct._GtkTargetEntry] [%struct._GtkTargetEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 24 }], align 16
@.str.11 = private unnamed_addr constant [26 x i8] c"application/x-gimp-dialog\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_paned_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_paned_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_paned_box_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_paned_box_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPanedBox*)* @gimp_paned_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_paned_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_paned_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_paned_box_parent_class, align 8
  %1 = load i32, i32* @GimpPanedBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPanedBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPanedBoxClass*
  call void @gimp_paned_box_class_init(%struct._GimpPanedBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_init(%struct._GimpPanedBox* %paned_box) #3 {
entry:
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  %0 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %1 = bitcast %struct._GimpPanedBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paned_box_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpPanedBoxPrivate*
  %3 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %3, i32 0, i32 1
  store %struct._GimpPanedBoxPrivate* %2, %struct._GimpPanedBoxPrivate** %p, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #5
  %call3 = call %struct._GtkWidget* @gtk_label_new(i8* %call2)
  %4 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %4, i32 0, i32 1
  %5 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p4, align 8
  %instructions = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %5, i32 0, i32 1
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %instructions, align 8
  %6 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %6, i32 0, i32 1
  %7 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p5, align 8
  %instructions6 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions6, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_misc_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %10, i32 6, i32 6)
  %11 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p9 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %11, i32 0, i32 1
  %12 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p9, align 8
  %instructions10 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions10, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %15, i32 1)
  %16 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p13 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %16, i32 0, i32 1
  %17 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p13, align 8
  %instructions14 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions14, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_label_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %20, i32 2)
  %21 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p17 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %21, i32 0, i32 1
  %22 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p17, align 8
  %instructions18 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %22, i32 0, i32 1
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions18, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %23, i32 1, i32 6)
  %24 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p19 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %24, i32 0, i32 1
  %25 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p19, align 8
  %instructions20 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions20, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_label_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %28, i32 3, i32 2, i32 -1)
  %29 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %30 = bitcast %struct._GimpPanedBox* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %32 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p25 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %32, i32 0, i32 1
  %33 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p25, align 8
  %instructions26 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %33, i32 0, i32 1
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions26, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %34, i32 1, i32 1, i32 0)
  %35 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p27 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %35, i32 0, i32 1
  %36 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p27, align 8
  %instructions28 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions28, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %39 = bitcast %struct._GimpPanedBox* %38 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_widget_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call29)
  %40 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %40, i32 0, %struct._GtkTargetEntry* getelementptr inbounds ([1 x %struct._GtkTargetEntry], [1 x %struct._GtkTargetEntry]* @dialog_target_table, i32 0, i32 0), i32 1, i32 4)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_paned_box_new(i32 %homogeneous, i32 %spacing, i32 %orientation) #3 {
entry:
  %homogeneous.addr = alloca i32, align 4
  %spacing.addr = alloca i32, align 4
  %orientation.addr = alloca i32, align 4
  store i32 %homogeneous, i32* %homogeneous.addr, align 4
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  %call = call i64 @gimp_paned_box_get_type() #7
  %0 = load i32, i32* %homogeneous.addr, align 4
  %1 = load i32, i32* %orientation.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %2
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_paned_box_set_dropped_cb(%struct._GimpPanedBox* %paned_box, i32 (%struct._GtkWidget*, i32, i8*)* %dropped_cb, i8* %dropped_cb_data) #3 {
entry:
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  %dropped_cb.addr = alloca i32 (%struct._GtkWidget*, i32, i8*)*, align 8
  %dropped_cb_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  store i32 (%struct._GtkWidget*, i32, i8*)* %dropped_cb, i32 (%struct._GtkWidget*, i32, i8*)** %dropped_cb.addr, align 8
  store i8* %dropped_cb_data, i8** %dropped_cb_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %1 = bitcast %struct._GimpPanedBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paned_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_paned_box_set_dropped_cb, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32 (%struct._GtkWidget*, i32, i8*)*, i32 (%struct._GtkWidget*, i32, i8*)** %dropped_cb.addr, align 8
  %14 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %14, i32 0, i32 1
  %15 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %dropped_cb11 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %15, i32 0, i32 4
  store i32 (%struct._GtkWidget*, i32, i8*)* %13, i32 (%struct._GtkWidget*, i32, i8*)** %dropped_cb11, align 8
  %16 = load i8*, i8** %dropped_cb_data.addr, align 8
  %17 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p12 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %17, i32 0, i32 1
  %18 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p12, align 8
  %dropped_cb_data13 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %18, i32 0, i32 5
  store i8* %16, i8** %dropped_cb_data13, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_paned_box_add_widget(%struct._GimpPanedBox* %paned_box, %struct._GtkWidget* %widget, i32 %index) #3 {
entry:
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %index.addr = alloca i32, align 4
  %old_length = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %old_widget = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %paned = alloca %struct._GtkWidget*, align 8
  %orientation = alloca i32, align 4
  %grandparent = alloca %struct._GtkWidget*, align 8
  %__inst90 = alloca %struct._GTypeInstance*, align 8
  %__t92 = alloca i64, align 8
  %__r95 = alloca i32, align 4
  %tmp110 = alloca i32, align 4
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 0, i32* %old_length, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %1 = bitcast %struct._GimpPanedBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paned_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_paned_box_add_widget, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.131

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_paned_box_add_widget, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.131

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 4
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.body.39
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %28 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_paned_box_add_widget, i32 0, i32 0), i32 521, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), %struct._GtkWidget* %27, %struct._GimpPanedBox* %28)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.body.39
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %29 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %29, i32 0, i32 1
  %30 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %widgets = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %30, i32 0, i32 0
  %31 = load %struct._GList*, %struct._GList** %widgets, align 8
  %call44 = call i32 @g_list_length(%struct._GList* %31)
  store i32 %call44, i32* %old_length, align 4
  %32 = load i32, i32* %index.addr, align 4
  %33 = load i32, i32* %old_length, align 4
  %cmp45 = icmp sge i32 %32, %33
  br i1 %cmp45, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.43
  %34 = load i32, i32* %index.addr, align 4
  %cmp46 = icmp slt i32 %34, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %do.end.43
  %35 = load i32, i32* %old_length, align 4
  store i32 %35, i32* %index.addr, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %lor.lhs.false
  %36 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p49 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %36, i32 0, i32 1
  %37 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p49, align 8
  %widgets50 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %37, i32 0, i32 0
  %38 = load %struct._GList*, %struct._GList** %widgets50, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load i32, i32* %index.addr, align 4
  %call51 = call %struct._GList* @g_list_insert(%struct._GList* %38, i8* %40, i32 %41)
  %42 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p52 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %42, i32 0, i32 1
  %43 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p52, align 8
  %widgets53 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %43, i32 0, i32 0
  store %struct._GList* %call51, %struct._GList** %widgets53, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %45 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  call void @gimp_paned_box_set_widget_drag_handler(%struct._GtkWidget* %44, %struct._GimpPanedBox* %45)
  %46 = load i32, i32* %old_length, align 4
  %cmp54 = icmp eq i32 %46, 0
  br i1 %cmp54, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %if.end.48
  %47 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p56 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %47, i32 0, i32 1
  %48 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p56, align 8
  %instructions = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %48, i32 0, i32 1
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %49)
  %50 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %51 = bitcast %struct._GimpPanedBox* %50 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call57)
  %52 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 1, i32 1, i32 0)
  br label %if.end.131

if.else.59:                                       ; preds = %if.end.48
  %54 = load i32, i32* %index.addr, align 4
  %cmp64 = icmp eq i32 %54, 0
  br i1 %cmp64, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %if.else.59
  %55 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p66 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %55, i32 0, i32 1
  %56 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p66, align 8
  %widgets67 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %56, i32 0, i32 0
  %57 = load %struct._GList*, %struct._GList** %widgets67, align 8
  %58 = load i32, i32* %index.addr, align 4
  %add = add nsw i32 %58, 1
  %call68 = call i8* @g_list_nth_data(%struct._GList* %57, i32 %add)
  %59 = bitcast i8* %call68 to %struct._GtkWidget*
  store %struct._GtkWidget* %59, %struct._GtkWidget** %old_widget, align 8
  br label %if.end.73

if.else.69:                                       ; preds = %if.else.59
  %60 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p70 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %60, i32 0, i32 1
  %61 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p70, align 8
  %widgets71 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %61, i32 0, i32 0
  %62 = load %struct._GList*, %struct._GList** %widgets71, align 8
  %63 = load i32, i32* %index.addr, align 4
  %sub = sub nsw i32 %63, 1
  %call72 = call i8* @g_list_nth_data(%struct._GList* %62, i32 %sub)
  %64 = bitcast i8* %call72 to %struct._GtkWidget*
  store %struct._GtkWidget* %64, %struct._GtkWidget** %old_widget, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.69, %if.then.65
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %old_widget, align 8
  %call74 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %65)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %parent, align 8
  %66 = load i32, i32* %old_length, align 4
  %cmp75 = icmp sgt i32 %66, 1
  br i1 %cmp75, label %land.lhs.true.76, label %if.end.81

land.lhs.true.76:                                 ; preds = %if.end.73
  %67 = load i32, i32* %index.addr, align 4
  %cmp77 = icmp sgt i32 %67, 0
  br i1 %cmp77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %land.lhs.true.76
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %call80 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %68)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %grandparent, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  store %struct._GtkWidget* %69, %struct._GtkWidget** %old_widget, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %grandparent, align 8
  store %struct._GtkWidget* %70, %struct._GtkWidget** %parent, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %land.lhs.true.76, %if.end.73
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %old_widget, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %call82 = call i8* @g_object_ref(i8* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_container_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call83)
  %75 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkContainer*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %old_widget, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %75, %struct._GtkWidget* %76)
  %77 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %78 = bitcast %struct._GimpPanedBox* %77 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_orientable_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call85)
  %79 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkOrientable*
  %call87 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %79)
  store i32 %call87, i32* %orientation, align 4
  %80 = load i32, i32* %orientation, align 4
  %call88 = call %struct._GtkWidget* @gtk_paned_new(i32 %80)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %paned, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %82, %struct._GTypeInstance** %__inst90, align 8
  %call93 = call i64 @gtk_paned_get_type() #7
  store i64 %call93, i64* %__t92, align 8
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst90, align 8
  %tobool96 = icmp ne %struct._GTypeInstance* %83, null
  br i1 %tobool96, label %if.else.98, label %if.then.97

if.then.97:                                       ; preds = %if.end.81
  store i32 0, i32* %__r95, align 4
  br label %if.end.109

if.else.98:                                       ; preds = %if.end.81
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst90, align 8
  %g_class99 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %84, i32 0, i32 0
  %85 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class99, align 8
  %tobool100 = icmp ne %struct._GTypeClass* %85, null
  br i1 %tobool100, label %land.lhs.true.101, label %if.else.106

land.lhs.true.101:                                ; preds = %if.else.98
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst90, align 8
  %g_class102 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %86, i32 0, i32 0
  %87 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class102, align 8
  %g_type103 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %87, i32 0, i32 0
  %88 = load i64, i64* %g_type103, align 8
  %89 = load i64, i64* %__t92, align 8
  %cmp104 = icmp eq i64 %88, %89
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %land.lhs.true.101
  store i32 1, i32* %__r95, align 4
  br label %if.end.108

if.else.106:                                      ; preds = %land.lhs.true.101, %if.else.98
  %90 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst90, align 8
  %91 = load i64, i64* %__t92, align 8
  %call107 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %90, i64 %91) #8
  store i32 %call107, i32* %__r95, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.106, %if.then.105
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.97
  %92 = load i32, i32* %__r95, align 4
  store i32 %92, i32* %tmp110
  %93 = load i32, i32* %tmp110
  %tobool111 = icmp ne i32 %93, 0
  br i1 %tobool111, label %if.then.112, label %if.else.115

if.then.112:                                      ; preds = %if.end.109
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_paned_get_type() #7
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call113)
  %96 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkPaned*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %96, %struct._GtkWidget* %97, i32 1, i32 0)
  br label %if.end.118

if.else.115:                                      ; preds = %if.end.109
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_box_get_type() #7
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call116)
  %100 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkBox*
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %100, %struct._GtkWidget* %101, i32 1, i32 1, i32 0)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.112
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %103 = load i32, i32* %index.addr, align 4
  %cmp119 = icmp eq i32 %103, 0
  br i1 %cmp119, label %if.then.120, label %if.else.125

if.then.120:                                      ; preds = %if.end.118
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_paned_get_type() #7
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call121)
  %106 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkPaned*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %106, %struct._GtkWidget* %107, i32 1, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_paned_get_type() #7
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call123)
  %110 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkPaned*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %old_widget, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %110, %struct._GtkWidget* %111, i32 1, i32 0)
  br label %if.end.130

if.else.125:                                      ; preds = %if.end.118
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_paned_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call126)
  %114 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkPaned*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %old_widget, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %114, %struct._GtkWidget* %115, i32 1, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %paned, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_paned_get_type() #7
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call128)
  %118 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkPaned*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %118, %struct._GtkWidget* %119, i32 1, i32 0)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.125, %if.then.120
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %old_widget, align 8
  %121 = bitcast %struct._GtkWidget* %120 to i8*
  call void @g_object_unref(i8* %121)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.9, %if.else.36, %if.end.130, %if.then.55
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_set_widget_drag_handler(%struct._GtkWidget* %widget, %struct._GimpPanedBox* %drag_handler) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %drag_handler.addr = alloca %struct._GimpPanedBox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %dock_paned_box = alloca %struct._GimpPanedBox*, align 8
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %toolbox = alloca %struct._GimpToolbox*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpPanedBox* %drag_handler, %struct._GimpPanedBox** %drag_handler.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_dockbook_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDockbook*
  %16 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler.addr, align 8
  call void @gimp_dockbook_set_drag_handler(%struct._GimpDockbook* %15, %struct._GimpPanedBox* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dock_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %if.end.11
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type26, align 8
  %25 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %24, %25
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %27 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %28 = load i32, i32* %__r18, align 4
  store i32 %28, i32* %tmp33
  %29 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %29, 0
  br i1 %tobool34, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %if.end.32
  store %struct._GimpPanedBox* null, %struct._GimpPanedBox** %dock_paned_box, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_dock_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call37)
  %32 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDock*
  %call39 = call %struct._GtkWidget* @gimp_dock_get_vbox(%struct._GimpDock* %32)
  %33 = bitcast %struct._GtkWidget* %call39 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_paned_box_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call40)
  %34 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpPanedBox*
  store %struct._GimpPanedBox* %34, %struct._GimpPanedBox** %dock_paned_box, align 8
  %35 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %dock_paned_box, align 8
  %36 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler.addr, align 8
  call void @gimp_paned_box_set_drag_handler(%struct._GimpPanedBox* %35, %struct._GimpPanedBox* %36)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.35, %if.end.32
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %38, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gimp_toolbox_get_type() #7
  store i64 %call47, i64* %__t46, align 8
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %39, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %if.end.42
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %41, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type57, align 8
  %45 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %44, %45
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %47 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %46, i64 %47) #8
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %48 = load i32, i32* %__r49, align 4
  store i32 %48, i32* %tmp64
  %49 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %49, 0
  br i1 %tobool65, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %if.end.63
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_toolbox_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call68)
  %52 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpToolbox*
  store %struct._GimpToolbox* %52, %struct._GimpToolbox** %toolbox, align 8
  %53 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %54 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler.addr, align 8
  call void @gimp_toolbox_set_drag_handler(%struct._GimpToolbox* %53, %struct._GimpPanedBox* %54)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %if.end.63
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i32 @gtk_orientable_get_orientation(%struct._GtkOrientable*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare %struct._GtkWidget* @gtk_paned_new(i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #2

declare void @gtk_paned_pack1(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_paned_pack2(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_paned_box_remove_widget(%struct._GimpPanedBox* %paned_box, %struct._GtkWidget* %widget) #3 {
entry:
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %old_length = alloca i32, align 4
  %index = alloca i32, align 4
  %other_widget = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %grandparent = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst88 = alloca %struct._GTypeInstance*, align 8
  %__t90 = alloca i64, align 8
  %__r93 = alloca i32, align 4
  %tmp108 = alloca i32, align 4
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 0, i32* %old_length, align 4
  store i32 0, i32* %index, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %other_widget, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %parent, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %grandparent, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %1 = bitcast %struct._GimpPanedBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paned_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_paned_box_remove_widget, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.117

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_paned_box_remove_widget, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.117

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 4
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.body.39
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %28 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_paned_box_remove_widget, i32 0, i32 0), i32 633, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), %struct._GtkWidget* %27, %struct._GimpPanedBox* %28)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.body.39
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %29 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %29, i32 0, i32 1
  %30 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %widgets = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %30, i32 0, i32 0
  %31 = load %struct._GList*, %struct._GList** %widgets, align 8
  %call44 = call i32 @g_list_length(%struct._GList* %31)
  store i32 %call44, i32* %old_length, align 4
  %32 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p45 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %32, i32 0, i32 1
  %33 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p45, align 8
  %widgets46 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %33, i32 0, i32 0
  %34 = load %struct._GList*, %struct._GList** %widgets46, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %call47 = call i32 @g_list_index(%struct._GList* %34, i8* %36)
  store i32 %call47, i32* %index, align 4
  %37 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p48 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %37, i32 0, i32 1
  %38 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p48, align 8
  %widgets49 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %38, i32 0, i32 0
  %39 = load %struct._GList*, %struct._GList** %widgets49, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %call50 = call %struct._GList* @g_list_remove(%struct._GList* %39, i8* %41)
  %42 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p51 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %42, i32 0, i32 1
  %43 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p51, align 8
  %widgets52 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %43, i32 0, i32 0
  store %struct._GList* %call50, %struct._GList** %widgets52, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_paned_box_set_widget_drag_handler(%struct._GtkWidget* %44, %struct._GimpPanedBox* null)
  %45 = load i32, i32* %old_length, align 4
  %cmp53 = icmp eq i32 %45, 1
  br i1 %cmp53, label %if.then.54, label %if.else.62

if.then.54:                                       ; preds = %do.end.43
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call55 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %46)
  %cmp56 = icmp ne %struct._GtkWidget* %call55, null
  br i1 %cmp56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.then.54
  %47 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %48 = bitcast %struct._GimpPanedBox* %47 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_container_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call58)
  %49 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkContainer*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %49, %struct._GtkWidget* %50)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.then.54
  %51 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p61 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %51, i32 0, i32 1
  %52 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p61, align 8
  %instructions = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %52, i32 0, i32 1
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %instructions, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  br label %if.end.117

if.else.62:                                       ; preds = %do.end.43
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %call63 = call i8* @g_object_ref(i8* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_widget_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call64)
  %58 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkWidget*
  %call66 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %58)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %parent, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %call67 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %59)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %grandparent, align 8
  %60 = load i32, i32* %index, align 4
  %cmp68 = icmp eq i32 %60, 0
  br i1 %cmp68, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %if.else.62
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_paned_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call70)
  %63 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkPaned*
  %call72 = call %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned* %63)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %other_widget, align 8
  br label %if.end.77

if.else.73:                                       ; preds = %if.else.62
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_paned_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call74)
  %66 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkPaned*
  %call76 = call %struct._GtkWidget* @gtk_paned_get_child1(%struct._GtkPaned* %66)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %other_widget, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.73, %if.then.69
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %other_widget, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %call78 = call i8* @g_object_ref(i8* %68)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_container_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call79)
  %71 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkContainer*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %other_widget, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %71, %struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_container_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call81)
  %75 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkContainer*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_widget_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call83)
  %78 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkWidget*
  call void @gtk_container_remove(%struct._GtkContainer* %75, %struct._GtkWidget* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %grandparent, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_container_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call85)
  %81 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkContainer*
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %81, %struct._GtkWidget* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %grandparent, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %84, %struct._GTypeInstance** %__inst88, align 8
  %call91 = call i64 @gtk_paned_get_type() #7
  store i64 %call91, i64* %__t90, align 8
  %85 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %tobool94 = icmp ne %struct._GTypeInstance* %85, null
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.77
  store i32 0, i32* %__r93, align 4
  br label %if.end.107

if.else.96:                                       ; preds = %if.end.77
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class97 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %86, i32 0, i32 0
  %87 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class97, align 8
  %tobool98 = icmp ne %struct._GTypeClass* %87, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.104

land.lhs.true.99:                                 ; preds = %if.else.96
  %88 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class100 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %88, i32 0, i32 0
  %89 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class100, align 8
  %g_type101 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %89, i32 0, i32 0
  %90 = load i64, i64* %g_type101, align 8
  %91 = load i64, i64* %__t90, align 8
  %cmp102 = icmp eq i64 %90, %91
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.99
  store i32 1, i32* %__r93, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.99, %if.else.96
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %93 = load i64, i64* %__t90, align 8
  %call105 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %92, i64 %93) #8
  store i32 %call105, i32* %__r93, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.95
  %94 = load i32, i32* %__r93, align 4
  store i32 %94, i32* %tmp108
  %95 = load i32, i32* %tmp108
  %tobool109 = icmp ne i32 %95, 0
  br i1 %tobool109, label %if.then.110, label %if.else.113

if.then.110:                                      ; preds = %if.end.107
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %grandparent, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_paned_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call111)
  %98 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkPaned*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %other_widget, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %98, %struct._GtkWidget* %99, i32 1, i32 0)
  br label %if.end.116

if.else.113:                                      ; preds = %if.end.107
  %100 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %101 = bitcast %struct._GimpPanedBox* %100 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_box_get_type() #7
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call114)
  %102 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkBox*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %other_widget, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %102, %struct._GtkWidget* %103, i32 1, i32 1, i32 0)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.110
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %other_widget, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  call void @g_object_unref(i8* %105)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  call void @g_object_unref(i8* %107)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.9, %if.else.36, %if.end.116, %if.end.60
  ret void
}

declare i32 @g_list_index(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare %struct._GtkWidget* @gtk_paned_get_child2(%struct._GtkPaned*) #1

declare %struct._GtkWidget* @gtk_paned_get_child1(%struct._GtkPaned*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %paned_box, %struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %paned_box_x = alloca i32, align 4
  %paned_box_y = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %orientation = alloca i32, align 4
  %will_handle = alloca i32, align 4
  %drop_area_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store i32 0, i32* %paned_box_x, align 4
  store i32 0, i32* %paned_box_y, align 4
  %0 = bitcast %struct._GdkRectangle* %allocation to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false)
  store i32 0, i32* %orientation, align 4
  store i32 0, i32* %will_handle, align 4
  store i32 0, i32* %drop_area_size, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %cmp = icmp eq %struct._GimpPanedBox* %1, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %2 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %3 = bitcast %struct._GimpPanedBox* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paned_box_get_type() #7
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paned_box_will_handle_drag, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %15 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %cmp12 = icmp eq %struct._GimpPanedBox* %15, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %16 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %16, i32 0, i32 1
  %17 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %17, i32 0, i32 6
  %18 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* %time.addr, align 4
  %call15 = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %18, %struct._GtkWidget* %19, %struct._GdkDragContext* %20, i32 %21, i32 %22, i32 %23)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %25 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %26 = bitcast %struct._GimpPanedBox* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  %28 = load i32, i32* %x.addr, align 4
  %29 = load i32, i32* %y.addr, align 4
  %call21 = call i32 @gtk_widget_translate_coordinates(%struct._GtkWidget* %24, %struct._GtkWidget* %27, i32 %28, i32 %29, i32* %paned_box_x, i32* %paned_box_y)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %30 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %31 = bitcast %struct._GimpPanedBox* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_widget_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %32, %struct._GdkRectangle* %allocation)
  %33 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %34 = bitcast %struct._GimpPanedBox* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_orientable_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkOrientable*
  %call29 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %35)
  store i32 %call29, i32* %orientation, align 4
  %36 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %call30 = call i32 @gimp_paned_box_get_drop_area_size(%struct._GimpPanedBox* %36)
  store i32 %call30, i32* %drop_area_size, align 4
  %37 = load i32, i32* %orientation, align 4
  %cmp31 = icmp eq i32 %37, 0
  br i1 %cmp31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.end.24
  %38 = load i32, i32* %paned_box_x, align 4
  %39 = load i32, i32* %drop_area_size, align 4
  %cmp33 = icmp slt i32 %38, %39
  br i1 %cmp33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.32
  %40 = load i32, i32* %paned_box_x, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %drop_area_size, align 4
  %sub = sub nsw i32 %41, %42
  %cmp34 = icmp sgt i32 %40, %sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.32
  %43 = phi i1 [ true, %if.then.32 ], [ %cmp34, %lor.rhs ]
  %lor.ext = zext i1 %43 to i32
  store i32 %lor.ext, i32* %will_handle, align 4
  br label %if.end.42

if.else.35:                                       ; preds = %if.end.24
  %44 = load i32, i32* %paned_box_y, align 4
  %45 = load i32, i32* %drop_area_size, align 4
  %cmp36 = icmp slt i32 %44, %45
  br i1 %cmp36, label %lor.end.40, label %lor.rhs.37

lor.rhs.37:                                       ; preds = %if.else.35
  %46 = load i32, i32* %paned_box_y, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %47 = load i32, i32* %height, align 4
  %48 = load i32, i32* %drop_area_size, align 4
  %sub38 = sub nsw i32 %47, %48
  %cmp39 = icmp sgt i32 %46, %sub38
  br label %lor.end.40

lor.end.40:                                       ; preds = %lor.rhs.37, %if.else.35
  %49 = phi i1 [ true, %if.else.35 ], [ %cmp39, %lor.rhs.37 ]
  %lor.ext41 = zext i1 %49 to i32
  store i32 %lor.ext41, i32* %will_handle, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %lor.end.40, %lor.end
  %50 = load i32, i32* %will_handle, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.23, %if.then.17, %if.then.13, %if.else.10
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @gtk_widget_translate_coordinates(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32*, i32*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_paned_box_get_drop_area_size(%struct._GimpPanedBox* %paned_box) #3 {
entry:
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  %drop_area_size = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %orientation = alloca i32, align 4
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  store i32 0, i32* %drop_area_size, align 4
  %0 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %0, i32 0, i32 1
  %1 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %widgets = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %1, i32 0, i32 0
  %2 = load %struct._GList*, %struct._GList** %widgets, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %4 = bitcast %struct._GimpPanedBox* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %6 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %7 = bitcast %struct._GimpPanedBox* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_orientable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkOrientable*
  %call4 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %8)
  store i32 %call4, i32* %orientation, align 4
  %9 = load i32, i32* %orientation, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %10 = load i32, i32* %width, align 4
  store i32 %10, i32* %drop_area_size, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %orientation, align 4
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %12 = load i32, i32* %height, align 4
  store i32 %12, i32* %drop_area_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %13 = load i32, i32* %drop_area_size, align 4
  %cmp10 = icmp sgt i32 %13, 6
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %14 = load i32, i32* %drop_area_size, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ 6, %cond.false ]
  store i32 %cond, i32* %drop_area_size, align 4
  %15 = load i32, i32* %drop_area_size, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_paned_box_set_drag_handler(%struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox* %drag_handler) #3 {
entry:
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  %drag_handler.addr = alloca %struct._GimpPanedBox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  store %struct._GimpPanedBox* %drag_handler, %struct._GimpPanedBox** %drag_handler.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %1 = bitcast %struct._GimpPanedBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paned_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paned_box_set_drag_handler, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler.addr, align 8
  %14 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %14, i32 0, i32 1
  %15 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %drag_handler11 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %15, i32 0, i32 6
  store %struct._GimpPanedBox* %13, %struct._GimpPanedBox** %drag_handler11, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_class_init(%struct._GimpPanedBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPanedBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpPanedBoxClass* %klass, %struct._GimpPanedBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpPanedBoxClass*, %struct._GimpPanedBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPanedBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPanedBoxClass*, %struct._GimpPanedBoxClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPanedBoxClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_paned_box_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_leave = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %7, i32 0, i32 57
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)* @gimp_paned_box_drag_leave, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)** %drag_leave, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_motion = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 58
  store i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)* @gimp_paned_box_drag_motion, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)** %drag_motion, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_drop = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 59
  store i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)* @gimp_paned_box_drag_drop, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)** %drag_drop, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 10
  store void (%struct._GtkWidget*)* @gimp_paned_box_realize, void (%struct._GtkWidget*)** %realize, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 11
  store void (%struct._GtkWidget*)* @gimp_paned_box_unrealize, void (%struct._GtkWidget*)** %unrealize, align 8
  %12 = load %struct._GimpPanedBoxClass*, %struct._GimpPanedBoxClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpPanedBoxClass* %12 to i8*
  call void @g_type_class_add_private(i8* %13, i64 56)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %paned_box = alloca %struct._GimpPanedBox*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paned_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPanedBox*
  store %struct._GimpPanedBox* %2, %struct._GimpPanedBox** %paned_box, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %3, i32 0, i32 1
  %4 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %widgets = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %4, i32 0, i32 0
  %5 = load %struct._GList*, %struct._GList** %widgets, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p2 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %6, i32 0, i32 1
  %7 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p2, align 8
  %widgets3 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %7, i32 0, i32 0
  %8 = load %struct._GList*, %struct._GList** %widgets3, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GtkWidget*
  store %struct._GtkWidget* %10, %struct._GtkWidget** %widget, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %call4 = call i8* @g_object_ref(i8* %12)
  %13 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gimp_paned_box_remove_widget(%struct._GimpPanedBox* %13, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i8*, i8** @gimp_paned_box_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 80)
  %20 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %20, i32 0, i32 5
  %21 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %21(%struct._GObject* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_drag_leave(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %time) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %time.addr = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paned_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPanedBox*
  call void @gimp_paned_box_hide_drop_indicator(%struct._GimpPanedBox* %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %3, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_paned_box_drag_motion(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %paned_box = alloca %struct._GimpPanedBox*, align 8
  %insert_index = alloca i32, align 4
  %dnd_window_x = alloca i32, align 4
  %dnd_window_y = alloca i32, align 4
  %dnd_window_w = alloca i32, align 4
  %dnd_window_h = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %orientation = alloca i32, align 4
  %handle = alloca i32, align 4
  %drop_area_size = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paned_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPanedBox*
  store %struct._GimpPanedBox* %2, %struct._GimpPanedBox** %paned_box, align 8
  store i32 -2147483648, i32* %insert_index, align 4
  store i32 0, i32* %dnd_window_x, align 4
  store i32 0, i32* %dnd_window_y, align 4
  store i32 0, i32* %dnd_window_w, align 4
  store i32 0, i32* %dnd_window_h, align 4
  %3 = bitcast %struct._GdkRectangle* %allocation to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  store i32 0, i32* %orientation, align 4
  store i32 0, i32* %handle, align 4
  %4 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %call2 = call i32 @gimp_paned_box_get_drop_area_size(%struct._GimpPanedBox* %4)
  store i32 %call2, i32* %drop_area_size, align 4
  %5 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %5, i32 0, i32 1
  %6 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %6, i32 0, i32 6
  %7 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %time.addr, align 4
  %call3 = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %7, %struct._GtkWidget* %8, %struct._GdkDragContext* %9, i32 %10, i32 %11, i32 %12)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %14 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %13, i32 0, i32 %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %15, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %16, %struct._GdkRectangle* %allocation)
  %17 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %18 = bitcast %struct._GimpPanedBox* %17 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_orientable_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call4)
  %19 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkOrientable*
  %call6 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %19)
  store i32 %call6, i32* %orientation, align 4
  %20 = load i32, i32* %orientation, align 4
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then.7, label %if.else.21

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %dnd_window_y, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %21 = load i32, i32* %height, align 4
  store i32 %21, i32* %dnd_window_h, align 4
  %22 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p8 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %22, i32 0, i32 1
  %23 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p8, align 8
  %widgets = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %23, i32 0, i32 0
  %24 = load %struct._GList*, %struct._GList** %widgets, align 8
  %tobool9 = icmp ne %struct._GList* %24, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %25 = load i32, i32* %width, align 4
  store i32 %25, i32* %dnd_window_w, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then.7
  %26 = load i32, i32* %drop_area_size, align 4
  store i32 %26, i32* %dnd_window_w, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %27 = load i32, i32* %x.addr, align 4
  %28 = load i32, i32* %drop_area_size, align 4
  %cmp12 = icmp slt i32 %27, %28
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i32 0, i32* %insert_index, align 4
  store i32 0, i32* %dnd_window_x, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %29 = load i32, i32* %x.addr, align 4
  %width15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %30 = load i32, i32* %width15, align 4
  %31 = load i32, i32* %drop_area_size, align 4
  %sub = sub nsw i32 %30, %31
  %cmp16 = icmp sgt i32 %29, %sub
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %insert_index, align 4
  %width18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %32 = load i32, i32* %width18, align 4
  %33 = load i32, i32* %drop_area_size, align 4
  %sub19 = sub nsw i32 %32, %33
  store i32 %sub19, i32* %dnd_window_x, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  br label %if.end.40

if.else.21:                                       ; preds = %if.end
  store i32 0, i32* %dnd_window_x, align 4
  %width22 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %34 = load i32, i32* %width22, align 4
  store i32 %34, i32* %dnd_window_w, align 4
  %35 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p23 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %35, i32 0, i32 1
  %36 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p23, align 8
  %widgets24 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %36, i32 0, i32 0
  %37 = load %struct._GList*, %struct._GList** %widgets24, align 8
  %tobool25 = icmp ne %struct._GList* %37, null
  br i1 %tobool25, label %if.else.28, label %if.then.26

if.then.26:                                       ; preds = %if.else.21
  %height27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %38 = load i32, i32* %height27, align 4
  store i32 %38, i32* %dnd_window_h, align 4
  br label %if.end.29

if.else.28:                                       ; preds = %if.else.21
  %39 = load i32, i32* %drop_area_size, align 4
  store i32 %39, i32* %dnd_window_h, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.26
  %40 = load i32, i32* %y.addr, align 4
  %41 = load i32, i32* %drop_area_size, align 4
  %cmp30 = icmp slt i32 %40, %41
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  store i32 0, i32* %insert_index, align 4
  store i32 0, i32* %dnd_window_y, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %42 = load i32, i32* %y.addr, align 4
  %height33 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %43 = load i32, i32* %height33, align 4
  %44 = load i32, i32* %drop_area_size, align 4
  %sub34 = sub nsw i32 %43, %44
  %cmp35 = icmp sgt i32 %42, %sub34
  br i1 %cmp35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.32
  store i32 -1, i32* %insert_index, align 4
  %height37 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %45 = load i32, i32* %height37, align 4
  %46 = load i32, i32* %drop_area_size, align 4
  %sub38 = sub nsw i32 %45, %46
  store i32 %sub38, i32* %dnd_window_y, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.20
  %47 = load i32, i32* %insert_index, align 4
  %cmp41 = icmp ne i32 %47, -2147483648
  %conv = zext i1 %cmp41 to i32
  store i32 %conv, i32* %handle, align 4
  %48 = load i32, i32* %handle, align 4
  %tobool42 = icmp ne i32 %48, 0
  br i1 %tobool42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.end.40
  %49 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %x44 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %50 = load i32, i32* %x44, align 4
  %51 = load i32, i32* %dnd_window_x, align 4
  %add = add nsw i32 %50, %51
  %y45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %52 = load i32, i32* %y45, align 4
  %53 = load i32, i32* %dnd_window_y, align 4
  %add46 = add nsw i32 %52, %53
  %54 = load i32, i32* %dnd_window_w, align 4
  %55 = load i32, i32* %dnd_window_h, align 4
  call void @gimp_paned_box_position_drop_indicator(%struct._GimpPanedBox* %49, i32 %add, i32 %add46, i32 %54, i32 %55)
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.40
  %56 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  call void @gimp_paned_box_hide_drop_indicator(%struct._GimpPanedBox* %56)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.43
  %57 = load i32, i32* %insert_index, align 4
  %58 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p49 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %58, i32 0, i32 1
  %59 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p49, align 8
  %insert_index50 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %59, i32 0, i32 3
  store i32 %57, i32* %insert_index50, align 4
  %60 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %61 = load i32, i32* %handle, align 4
  %tobool51 = icmp ne i32 %61, 0
  %cond = select i1 %tobool51, i32 4, i32 0
  %62 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %60, i32 %cond, i32 %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %64 = load i32, i32* %handle, align 4
  call void @gimp_highlight_widget(%struct._GtkWidget* %63, i32 %64)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_paned_box_drag_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %paned_box = alloca %struct._GimpPanedBox*, align 8
  %dropped = alloca i32, align 4
  %source = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paned_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPanedBox*
  store %struct._GimpPanedBox* %2, %struct._GimpPanedBox** %paned_box, align 8
  %3 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %3, i32 0, i32 1
  %4 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %4, i32 0, i32 6
  %5 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %time.addr, align 4
  %call2 = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %5, %struct._GtkWidget* %6, %struct._GdkDragContext* %7, i32 %8, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p3 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %11, i32 0, i32 1
  %12 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p3, align 8
  %dropped_cb = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %12, i32 0, i32 4
  %13 = load i32 (%struct._GtkWidget*, i32, i8*)*, i32 (%struct._GtkWidget*, i32, i8*)** %dropped_cb, align 8
  %tobool4 = icmp ne i32 (%struct._GtkWidget*, i32, i8*)* %13, null
  br i1 %tobool4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end
  %14 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %call6 = call %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext* %14)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %source, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %source, align 8
  %tobool7 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.5
  %16 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p9 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %16, i32 0, i32 1
  %17 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p9, align 8
  %dropped_cb10 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %17, i32 0, i32 4
  %18 = load i32 (%struct._GtkWidget*, i32, i8*)*, i32 (%struct._GtkWidget*, i32, i8*)** %dropped_cb10, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %source, align 8
  %20 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p11 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %20, i32 0, i32 1
  %21 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p11, align 8
  %insert_index = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %21, i32 0, i32 3
  %22 = load i32, i32* %insert_index, align 4
  %23 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p12 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %23, i32 0, i32 1
  %24 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p12, align 8
  %dropped_cb_data = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %24, i32 0, i32 5
  %25 = load i8*, i8** %dropped_cb_data, align 8
  %call13 = call i32 %18(%struct._GtkWidget* %19, i32 %22, i8* %25)
  store i32 %call13, i32* %dropped, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.then.5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %26 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %27 = load i32, i32* %dropped, align 4
  %28 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %26, i32 %27, i32 1, i32 %28)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_realize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i8*, i8** @gimp_paned_box_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 10
  %3 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %realize, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %3(%struct._GtkWidget* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_unrealize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %paned_box = alloca %struct._GimpPanedBox*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paned_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPanedBox*
  store %struct._GimpPanedBox* %2, %struct._GimpPanedBox** %paned_box, align 8
  %3 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %3, i32 0, i32 1
  %4 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %dnd_window = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %4, i32 0, i32 2
  %5 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window, align 8
  %tobool = icmp ne %struct._GdkDrawable* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p2 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %6, i32 0, i32 1
  %7 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p2, align 8
  %dnd_window3 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %7, i32 0, i32 2
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window3, align 8
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %8, i8* null)
  %9 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p4 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %9, i32 0, i32 1
  %10 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p4, align 8
  %dnd_window5 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %10, i32 0, i32 2
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window5, align 8
  call void @gdk_window_destroy(%struct._GdkDrawable* %11)
  %12 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box, align 8
  %p6 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %12, i32 0, i32 1
  %13 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p6, align 8
  %dnd_window7 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %13, i32 0, i32 2
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %dnd_window7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8*, i8** @gimp_paned_box_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call8 = call i64 @gtk_widget_get_type() #7
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call8)
  %16 = bitcast %struct._GTypeClass* %call9 to %struct._GtkWidgetClass*
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 11
  %17 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unrealize, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %17(%struct._GtkWidget* %18)
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_hide_drop_indicator(%struct._GimpPanedBox* %paned_box) #3 {
entry:
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  %0 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %0, i32 0, i32 1
  %1 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %dnd_window = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %1, i32 0, i32 2
  %2 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window, align 8
  %tobool = icmp ne %struct._GdkDrawable* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %3, i32 0, i32 1
  %4 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p1, align 8
  %dnd_window2 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %4, i32 0, i32 2
  %5 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window2, align 8
  call void @gdk_window_hide(%struct._GdkDrawable* %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_highlight_widget(%struct._GtkWidget*, i32) #1

declare void @gdk_window_hide(%struct._GdkDrawable*) #1

declare void @gdk_drag_status(%struct._GdkDragContext*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paned_box_position_drop_indicator(%struct._GimpPanedBox* %paned_box, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %paned_box.addr = alloca %struct._GimpPanedBox*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %attributes = alloca %struct._GdkWindowAttr, align 8
  store %struct._GimpPanedBox* %paned_box, %struct._GimpPanedBox** %paned_box.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %1 = bitcast %struct._GimpPanedBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %4, i32 0, i32 1
  %5 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p, align 8
  %dnd_window = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %5, i32 0, i32 2
  %6 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window, align 8
  %tobool3 = icmp ne %struct._GdkDrawable* %6, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call5 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %7)
  store %struct._GtkStyle* %call5, %struct._GtkStyle** %style, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %8, %struct._GdkRectangle* %allocation)
  %9 = load i32, i32* %x.addr, align 4
  %x6 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 2
  store i32 %9, i32* %x6, align 4
  %10 = load i32, i32* %y.addr, align 4
  %y7 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 3
  store i32 %10, i32* %y7, align 4
  %11 = load i32, i32* %width.addr, align 4
  %width8 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 4
  store i32 %11, i32* %width8, align 4
  %12 = load i32, i32* %height.addr, align 4
  %height9 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 5
  store i32 %12, i32* %height9, align 4
  %window_type = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 9
  store i32 2, i32* %window_type, align 4
  %wclass = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 6
  store i32 0, i32* %wclass, align 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call10 = call i32 @gtk_widget_get_events(%struct._GtkWidget* %13)
  %event_mask = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 1
  store i32 %call10, i32* %event_mask, align 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call11 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %14)
  %call12 = call %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable* %call11, %struct._GdkWindowAttr* %attributes, i32 12)
  %15 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p13 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %15, i32 0, i32 1
  %16 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p13, align 8
  %dnd_window14 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %16, i32 0, i32 2
  store %struct._GdkDrawable* %call12, %struct._GdkDrawable** %dnd_window14, align 8
  %17 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p15 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %17, i32 0, i32 1
  %18 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p15, align 8
  %dnd_window16 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %18, i32 0, i32 2
  %19 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window16, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %19, i8* %21)
  %22 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p17 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %22, i32 0, i32 1
  %23 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p17, align 8
  %dnd_window18 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %23, i32 0, i32 2
  %24 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window18, align 8
  %25 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %25, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 3
  call void @gdk_window_set_background(%struct._GdkDrawable* %24, %struct._GdkColor* %arrayidx)
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %26 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p19 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %26, i32 0, i32 1
  %27 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p19, align 8
  %dnd_window20 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %27, i32 0, i32 2
  %28 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window20, align 8
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %height.addr, align 4
  call void @gdk_window_move_resize(%struct._GdkDrawable* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.4
  %33 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %paned_box.addr, align 8
  %p22 = getelementptr inbounds %struct._GimpPanedBox, %struct._GimpPanedBox* %33, i32 0, i32 1
  %34 = load %struct._GimpPanedBoxPrivate*, %struct._GimpPanedBoxPrivate** %p22, align 8
  %dnd_window23 = getelementptr inbounds %struct._GimpPanedBoxPrivate, %struct._GimpPanedBoxPrivate* %34, i32 0, i32 2
  %35 = load %struct._GdkDrawable*, %struct._GdkDrawable** %dnd_window23, align 8
  call void @gdk_window_show(%struct._GdkDrawable* %35)
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  ret void
}

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_events(%struct._GtkWidget*) #1

declare %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable*, %struct._GdkWindowAttr*, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_window_set_user_data(%struct._GdkDrawable*, i8*) #1

declare void @gdk_window_set_background(%struct._GdkDrawable*, %struct._GdkColor*) #1

declare void @gdk_window_move_resize(%struct._GdkDrawable*, i32, i32, i32, i32) #1

declare void @gdk_window_show(%struct._GdkDrawable*) #1

declare %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext*) #1

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #1

declare void @gdk_window_destroy(%struct._GdkDrawable*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_label_set_justify(%struct._GtkLabel*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

declare void @gimp_dockbook_set_drag_handler(%struct._GimpDockbook*, %struct._GimpPanedBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare %struct._GtkWidget* @gimp_dock_get_vbox(%struct._GimpDock*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #2

declare void @gimp_toolbox_set_drag_handler(%struct._GimpToolbox*, %struct._GimpPanedBox*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
