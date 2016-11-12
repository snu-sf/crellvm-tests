; ModuleID = './app/widgets/gimpcontainertreeview-dnd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._Gimp = type opaque
%struct._GimpContainerTreeViewPriv = type { %struct._GtkTreeSelection*, %struct._GtkCellRenderer*, %struct._GList*, %struct._GimpViewRenderer*, %struct._GList*, %struct._GList*, i32, i32, i32, i32 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreePath = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GdkAtom = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTargetList = type { %struct._GList*, i32 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpContainerView = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpContainerTreeViewClass = type { %struct._GimpContainerBoxClass, void (%struct._GimpContainerTreeView*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)* }
%struct._GimpContainerBoxClass = type { %struct._GimpEditorClass }
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
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GimpImage = type opaque

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_drag_failed(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %result, %struct._GimpContainerTreeView* %tree_view) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %result.addr = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %result, i32* %result.addr, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %0, i32 0, i32 8
  %1 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %1, i32 0, i32 6
  %2 = load i32, i32* %scroll_timeout_id, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv1, align 8
  %scroll_timeout_id2 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 6
  %5 = load i32, i32* %scroll_timeout_id2, align 4
  %call = call i32 @g_source_remove(i32 %5)
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 8
  %7 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv3, align 8
  %scroll_timeout_id4 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %7, i32 0, i32 6
  store i32 0, i32* %scroll_timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 4
  %9 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  call void @gtk_tree_view_set_drag_dest_row(%struct._GtkTreeView* %9, %struct._GtkTreePath* null, i32 0)
  ret void
}

declare i32 @g_source_remove(i32) #1

declare void @gtk_tree_view_set_drag_dest_row(%struct._GtkTreeView*, %struct._GtkTreePath*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_drag_leave(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %time, %struct._GimpContainerTreeView* %tree_view) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %time.addr = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %0, i32 0, i32 8
  %1 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %1, i32 0, i32 6
  %2 = load i32, i32* %scroll_timeout_id, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv1, align 8
  %scroll_timeout_id2 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 6
  %5 = load i32, i32* %scroll_timeout_id2, align 4
  %call = call i32 @g_source_remove(i32 %5)
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 8
  %7 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv3, align 8
  %scroll_timeout_id4 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %7, i32 0, i32 6
  store i32 0, i32* %scroll_timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 4
  %9 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  call void @gtk_tree_view_set_drag_dest_row(%struct._GtkTreeView* %9, %struct._GtkTreePath* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_tree_view_drag_motion(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time, %struct._GimpContainerTreeView* %tree_view) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %drop_path = alloca %struct._GtkTreePath*, align 8
  %drop_pos = alloca i32, align 4
  %distance = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %1, 30
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %y.addr, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %3 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %3, 30
  %cmp1 = icmp sgt i32 %2, %sub
  br i1 %cmp1, label %if.then, label %if.else.32

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %y.addr, align 4
  %cmp2 = icmp slt i32 %4, 30
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %5, i32 0, i32 8
  %6 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %scroll_dir = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %6, i32 0, i32 8
  store i32 0, i32* %scroll_dir, align 4
  %7 = load i32, i32* %y.addr, align 4
  %sub4 = sub nsw i32 0, %7
  %cmp5 = icmp slt i32 %sub4, -1
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %8 = load i32, i32* %y.addr, align 4
  %sub6 = sub nsw i32 0, %8
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub6, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %distance, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv7 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %9, i32 0, i32 8
  %10 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv7, align 8
  %scroll_dir8 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %10, i32 0, i32 8
  store i32 1, i32* %scroll_dir8, align 4
  %height9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %11 = load i32, i32* %height9, align 4
  %12 = load i32, i32* %y.addr, align 4
  %sub10 = sub nsw i32 %11, %12
  %cmp11 = icmp sgt i32 %sub10, 1
  br i1 %cmp11, label %cond.true.12, label %cond.false.15

cond.true.12:                                     ; preds = %if.else
  %height13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %13 = load i32, i32* %height13, align 4
  %14 = load i32, i32* %y.addr, align 4
  %sub14 = sub nsw i32 %13, %14
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.else
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.12
  %cond17 = phi i32 [ %sub14, %cond.true.12 ], [ 1, %cond.false.15 ]
  store i32 %cond17, i32* %distance, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.16, %cond.end
  %15 = load i32, i32* %distance, align 4
  %cmp18 = icmp slt i32 %15, 0
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %if.end
  %16 = load i32, i32* %distance, align 4
  %sub20 = sub nsw i32 0, %16
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.end
  %17 = load i32, i32* %distance, align 4
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.19
  %cond23 = phi i32 [ %sub20, %cond.true.19 ], [ %17, %cond.false.21 ]
  %mul = mul nsw i32 5, %cond23
  %18 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv24 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %18, i32 0, i32 8
  %19 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv24, align 8
  %scroll_timeout_interval = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %19, i32 0, i32 7
  store i32 %mul, i32* %scroll_timeout_interval, align 4
  %20 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv25 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %20, i32 0, i32 8
  %21 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv25, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %21, i32 0, i32 6
  %22 = load i32, i32* %scroll_timeout_id, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.31, label %if.then.26

if.then.26:                                       ; preds = %cond.end.22
  %23 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv27 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %23, i32 0, i32 8
  %24 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv27, align 8
  %scroll_timeout_interval28 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %24, i32 0, i32 7
  %25 = load i32, i32* %scroll_timeout_interval28, align 4
  %26 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %27 = bitcast %struct._GimpContainerTreeView* %26 to i8*
  %call = call i32 @g_timeout_add(i32 %25, i32 (i8*)* @gimp_container_tree_view_scroll_timeout, i8* %27)
  %28 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv29 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %28, i32 0, i32 8
  %29 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv29, align 8
  %scroll_timeout_id30 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %29, i32 0, i32 6
  store i32 %call, i32* %scroll_timeout_id30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %cond.end.22
  br label %if.end.43

if.else.32:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv33 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %30, i32 0, i32 8
  %31 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv33, align 8
  %scroll_timeout_id34 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %31, i32 0, i32 6
  %32 = load i32, i32* %scroll_timeout_id34, align 4
  %tobool35 = icmp ne i32 %32, 0
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.else.32
  %33 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv37 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %33, i32 0, i32 8
  %34 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv37, align 8
  %scroll_timeout_id38 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %34, i32 0, i32 6
  %35 = load i32, i32* %scroll_timeout_id38, align 4
  %call39 = call i32 @g_source_remove(i32 %35)
  %36 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv40 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %36, i32 0, i32 8
  %37 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv40, align 8
  %scroll_timeout_id41 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %37, i32 0, i32 6
  store i32 0, i32* %scroll_timeout_id41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %if.else.32
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.31
  %38 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %39 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %40 = load i32, i32* %x.addr, align 4
  %41 = load i32, i32* %y.addr, align 4
  %42 = load i32, i32* %time.addr, align 4
  %call44 = call i32 @gimp_container_tree_view_drop_status(%struct._GimpContainerTreeView* %38, %struct._GdkDragContext* %39, i32 %40, i32 %41, i32 %42, %struct._GtkTreePath** %drop_path, %struct._GdkAtom** null, i32* null, %struct._GimpViewable** null, %struct._GimpViewable** null, i32* %drop_pos)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.43
  %43 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %43, i32 0, i32 4
  %44 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %45 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  %46 = load i32, i32* %drop_pos, align 4
  call void @gtk_tree_view_set_drag_dest_row(%struct._GtkTreeView* %44, %struct._GtkTreePath* %45, i32 %46)
  %47 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %47)
  br label %if.end.49

if.else.47:                                       ; preds = %if.end.43
  %48 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view48 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %48, i32 0, i32 4
  %49 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view48, align 8
  call void @gtk_tree_view_set_drag_dest_row(%struct._GtkTreeView* %49, %struct._GtkTreePath* null, i32 0)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.46
  ret i32 1
}

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_scroll_timeout(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %new_value = alloca double, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 4
  %4 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %5 = bitcast %struct._GtkTreeView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_tree_view_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTreeView*
  %call4 = call %struct._GtkAdjustment* @gtk_tree_view_get_vadjustment(%struct._GtkTreeView* %6)
  store %struct._GtkAdjustment* %call4, %struct._GtkAdjustment** %adj, align 8
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 8
  %8 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %scroll_dir = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %8, i32 0, i32 8
  %9 = load i32, i32* %scroll_dir, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %sub = fsub double %call5, 1.000000e+01
  store double %sub, double* %new_value, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call6 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %11)
  %add = fadd double %call6, 1.000000e+01
  store double %add, double* %new_value, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load double, double* %new_value, align 8
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call7 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %13)
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call8 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %14)
  %sub9 = fsub double %call7, %call8
  %cmp10 = fcmp ogt double %12, %sub9
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call11 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %15)
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call12 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %16)
  %sub13 = fsub double %call11, %call12
  br label %cond.end.19

cond.false:                                       ; preds = %if.end
  %17 = load double, double* %new_value, align 8
  %18 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call14 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %18)
  %cmp15 = fcmp olt double %17, %call14
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.false
  %19 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call17 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %19)
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false
  %20 = load double, double* %new_value, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.16
  %cond = phi double [ %call17, %cond.true.16 ], [ %20, %cond.false.18 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi double [ %sub13, %cond.true ], [ %cond, %cond.end ]
  store double %cond20, double* %new_value, align 8
  %21 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %22 = load double, double* %new_value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %21, double %22)
  %23 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv21 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %23, i32 0, i32 8
  %24 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv21, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %24, i32 0, i32 6
  %25 = load i32, i32* %scroll_timeout_id, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %cond.end.19
  %26 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv23 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %26, i32 0, i32 8
  %27 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv23, align 8
  %scroll_timeout_id24 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %27, i32 0, i32 6
  %28 = load i32, i32* %scroll_timeout_id24, align 4
  %call25 = call i32 @g_source_remove(i32 %28)
  %29 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv26 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %29, i32 0, i32 8
  %30 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv26, align 8
  %scroll_timeout_interval = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %30, i32 0, i32 7
  %31 = load i32, i32* %scroll_timeout_interval, align 4
  %32 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %33 = bitcast %struct._GimpContainerTreeView* %32 to i8*
  %call27 = call i32 @g_timeout_add(i32 %31, i32 (i8*)* @gimp_container_tree_view_scroll_timeout, i8* %33)
  %34 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv28 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %34, i32 0, i32 8
  %35 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv28, align 8
  %scroll_timeout_id29 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %35, i32 0, i32 6
  store i32 %call27, i32* %scroll_timeout_id29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %cond.end.19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_drop_status(%struct._GimpContainerTreeView* %tree_view, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time, %struct._GtkTreePath** %return_path, %struct._GdkAtom** %return_atom, i32* %return_src_type, %struct._GimpViewable** %return_src, %struct._GimpViewable** %return_dest, i32* %return_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %return_path.addr = alloca %struct._GtkTreePath**, align 8
  %return_atom.addr = alloca %struct._GdkAtom**, align 8
  %return_src_type.addr = alloca i32*, align 8
  %return_src.addr = alloca %struct._GimpViewable**, align 8
  %return_dest.addr = alloca %struct._GimpViewable**, align 8
  %return_pos.addr = alloca i32*, align 8
  %src_viewable = alloca %struct._GimpViewable*, align 8
  %dest_viewable = alloca %struct._GimpViewable*, align 8
  %drop_path = alloca %struct._GtkTreePath*, align 8
  %target_list = alloca %struct._GtkTargetList*, align 8
  %target_atom = alloca %struct._GdkAtom*, align 8
  %src_type = alloca i32, align 4
  %drop_pos = alloca i32, align 4
  %drag_action = alloca i32, align 4
  %src_widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %cell_area = alloca %struct._GdkRectangle, align 4
  %iter88 = alloca %struct._GtkTreeIter, align 8
  %n_children = alloca i32, align 4
  %renderer99 = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store %struct._GtkTreePath** %return_path, %struct._GtkTreePath*** %return_path.addr, align 8
  store %struct._GdkAtom** %return_atom, %struct._GdkAtom*** %return_atom.addr, align 8
  store i32* %return_src_type, i32** %return_src_type.addr, align 8
  store %struct._GimpViewable** %return_src, %struct._GimpViewable*** %return_src.addr, align 8
  store %struct._GimpViewable** %return_dest, %struct._GimpViewable*** %return_dest.addr, align 8
  store i32* %return_pos, i32** %return_pos.addr, align 8
  store %struct._GimpViewable* null, %struct._GimpViewable** %src_viewable, align 8
  store %struct._GimpViewable* null, %struct._GimpViewable** %dest_viewable, align 8
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %drop_path, align 8
  store i32 0, i32* %drop_pos, align 4
  store i32 0, i32* %drag_action, align 4
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %2)
  %tobool = icmp ne %struct._GimpContainer* %call2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %4 = bitcast %struct._GimpContainerTreeView* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_view_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainerView*
  %call5 = call i32 @gimp_container_view_get_reorderable(%struct._GimpContainerView* %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %drop_impossible

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 4
  %7 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %8 = bitcast %struct._GtkTreeView* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget* %9)
  store %struct._GtkTargetList* %call9, %struct._GtkTargetList** %target_list, align 8
  %10 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view10 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %10, i32 0, i32 4
  %11 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view10, align 8
  %12 = bitcast %struct._GtkTreeView* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %14 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %15 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %call13 = call %struct._GdkAtom* @gtk_drag_dest_find_target(%struct._GtkWidget* %13, %struct._GdkDragContext* %14, %struct._GtkTargetList* %15)
  store %struct._GdkAtom* %call13, %struct._GdkAtom** %target_atom, align 8
  %16 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %17 = load %struct._GdkAtom*, %struct._GdkAtom** %target_atom, align 8
  %call14 = call i32 @gtk_target_list_find(%struct._GtkTargetList* %16, %struct._GdkAtom* %17, i32* %src_type)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end
  br label %drop_impossible

if.end.17:                                        ; preds = %if.end
  %18 = load i32, i32* %src_type, align 4
  switch i32 %18, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 8, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.17, %if.end.17, %if.end.17, %if.end.17, %if.end.17, %if.end.17, %if.end.17, %if.end.17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.17
  %19 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %call18 = call %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext* %19)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %src_widget, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %src_widget, align 8
  %tobool19 = icmp ne %struct._GtkWidget* %20, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %sw.default
  br label %drop_impossible

if.end.21:                                        ; preds = %sw.default
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %src_widget, align 8
  %call22 = call %struct._GimpViewable* @gimp_dnd_get_drag_data(%struct._GtkWidget* %21)
  store %struct._GimpViewable* %call22, %struct._GimpViewable** %src_viewable, align 8
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable, align 8
  %23 = bitcast %struct._GimpViewable* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst, align 8
  %call23 = call i64 @gimp_viewable_get_type() #4
  store i64 %call23, i64* %__t, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool24, label %if.else, label %if.then.25

if.then.25:                                       ; preds = %if.end.21
  store i32 0, i32* %__r, align 4
  br label %if.end.32

if.else:                                          ; preds = %if.end.21
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool26, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %if.else
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type, align 8
  %30 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %29, %30
  br i1 %cmp, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true, %if.else
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %32 = load i64, i64* %__t, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #5
  store i32 %call30, i32* %__r, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.25
  %33 = load i32, i32* %__r, align 4
  store i32 %33, i32* %tmp
  %34 = load i32, i32* %tmp
  %tobool33 = icmp ne i32 %34, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.32
  br label %drop_impossible

if.end.35:                                        ; preds = %if.end.32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.35, %sw.bb
  %35 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view36 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %35, i32 0, i32 4
  %36 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view36, align 8
  %37 = load i32, i32* %x.addr, align 4
  %38 = load i32, i32* %y.addr, align 4
  %call37 = call i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView* %36, i32 %37, i32 %38, %struct._GtkTreePath** %drop_path, %struct._GtkTreeViewColumn** null, i32* null, i32* null)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.86

if.then.39:                                       ; preds = %sw.epilog
  %39 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %39, i32 0, i32 1
  %40 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %41 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  %call43 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %40, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %41)
  %42 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model44 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %42, i32 0, i32 1
  %43 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model44, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %43, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %44 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %44, i32 0, i32 3
  %45 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  store %struct._GimpViewable* %45, %struct._GimpViewable** %dest_viewable, align 8
  %46 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %47 = bitcast %struct._GimpViewRenderer* %46 to i8*
  call void @g_object_unref(i8* %47)
  %48 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view45 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %48, i32 0, i32 4
  %49 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view45, align 8
  %50 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  call void @gtk_tree_view_get_cell_area(%struct._GtkTreeView* %49, %struct._GtkTreePath* %50, %struct._GtkTreeViewColumn* null, %struct._GdkRectangle* %cell_area)
  %51 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %call46 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %51)
  %tobool47 = icmp ne %struct._GimpContainer* %call46, null
  br i1 %tobool47, label %if.then.48, label %if.else.76

if.then.48:                                       ; preds = %if.then.39
  %52 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view49 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %52, i32 0, i32 4
  %53 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view49, align 8
  %54 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  %call50 = call i32 @gtk_tree_view_row_expanded(%struct._GtkTreeView* %53, %struct._GtkTreePath* %54)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.58

if.then.52:                                       ; preds = %if.then.48
  %55 = load i32, i32* %y.addr, align 4
  %y53 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_area, i32 0, i32 1
  %56 = load i32, i32* %y53, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_area, i32 0, i32 3
  %57 = load i32, i32* %height, align 4
  %div = sdiv i32 %57, 2
  %add = add nsw i32 %56, %div
  %cmp54 = icmp sge i32 %55, %add
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.52
  store i32 3, i32* %drop_pos, align 4
  br label %if.end.57

if.else.56:                                       ; preds = %if.then.52
  store i32 0, i32* %drop_pos, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.75

if.else.58:                                       ; preds = %if.then.48
  %58 = load i32, i32* %y.addr, align 4
  %y59 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_area, i32 0, i32 1
  %59 = load i32, i32* %y59, align 4
  %height60 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_area, i32 0, i32 3
  %60 = load i32, i32* %height60, align 4
  %div61 = sdiv i32 %60, 3
  %mul = mul nsw i32 2, %div61
  %add62 = add nsw i32 %59, %mul
  %cmp63 = icmp sge i32 %58, %add62
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.58
  store i32 1, i32* %drop_pos, align 4
  br label %if.end.74

if.else.65:                                       ; preds = %if.else.58
  %61 = load i32, i32* %y.addr, align 4
  %y66 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_area, i32 0, i32 1
  %62 = load i32, i32* %y66, align 4
  %height67 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_area, i32 0, i32 3
  %63 = load i32, i32* %height67, align 4
  %div68 = sdiv i32 %63, 3
  %add69 = add nsw i32 %62, %div68
  %cmp70 = icmp sle i32 %61, %add69
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.65
  store i32 0, i32* %drop_pos, align 4
  br label %if.end.73

if.else.72:                                       ; preds = %if.else.65
  store i32 3, i32* %drop_pos, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.64
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.57
  br label %if.end.85

if.else.76:                                       ; preds = %if.then.39
  %64 = load i32, i32* %y.addr, align 4
  %y77 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_area, i32 0, i32 1
  %65 = load i32, i32* %y77, align 4
  %height78 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_area, i32 0, i32 3
  %66 = load i32, i32* %height78, align 4
  %div79 = sdiv i32 %66, 2
  %add80 = add nsw i32 %65, %div79
  %cmp81 = icmp sge i32 %64, %add80
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.else.76
  store i32 1, i32* %drop_pos, align 4
  br label %if.end.84

if.else.83:                                       ; preds = %if.else.76
  store i32 0, i32* %drop_pos, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.75
  br label %if.end.105

if.else.86:                                       ; preds = %sw.epilog
  %67 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model90 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %67, i32 0, i32 1
  %68 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model90, align 8
  %call91 = call i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel* %68, %struct._GtkTreeIter* null)
  store i32 %call91, i32* %n_children, align 4
  %69 = load i32, i32* %n_children, align 4
  %cmp92 = icmp sgt i32 %69, 0
  br i1 %cmp92, label %land.lhs.true.93, label %if.end.104

land.lhs.true.93:                                 ; preds = %if.else.86
  %70 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model94 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %70, i32 0, i32 1
  %71 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model94, align 8
  %72 = load i32, i32* %n_children, align 4
  %sub = sub nsw i32 %72, 1
  %call95 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %71, %struct._GtkTreeIter* %iter88, %struct._GtkTreeIter* null, i32 %sub)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.104

if.then.97:                                       ; preds = %land.lhs.true.93
  %73 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model100 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %73, i32 0, i32 1
  %74 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model100, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %74, %struct._GtkTreeIter* %iter88, i32 0, %struct._GimpViewRenderer** %renderer99, i32 -1)
  %75 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model101 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %75, i32 0, i32 1
  %76 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model101, align 8
  %call102 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %76, %struct._GtkTreeIter* %iter88)
  store %struct._GtkTreePath* %call102, %struct._GtkTreePath** %drop_path, align 8
  %77 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer99, align 8
  %viewable103 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %77, i32 0, i32 3
  %78 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable103, align 8
  store %struct._GimpViewable* %78, %struct._GimpViewable** %dest_viewable, align 8
  store i32 1, i32* %drop_pos, align 4
  %79 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer99, align 8
  %80 = bitcast %struct._GimpViewRenderer* %79 to i8*
  call void @g_object_unref(i8* %80)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.97, %land.lhs.true.93, %if.else.86
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.85
  %81 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %tobool106 = icmp ne %struct._GimpViewable* %81, null
  br i1 %tobool106, label %if.then.109, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.end.105
  %82 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %82, i32 0, i32 8
  %83 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %dnd_drop_to_empty = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %83, i32 0, i32 9
  %84 = load i32, i32* %dnd_drop_to_empty, align 4
  %tobool108 = icmp ne i32 %84, 0
  br i1 %tobool108, label %if.then.109, label %if.end.131

if.then.109:                                      ; preds = %lor.lhs.false.107, %if.end.105
  %85 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %86 = bitcast %struct._GimpContainerTreeView* %85 to %struct._GTypeInstance*
  %g_class110 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %86, i32 0, i32 0
  %87 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class110, align 8
  %88 = bitcast %struct._GTypeClass* %87 to %struct._GimpContainerTreeViewClass*
  %drop_possible = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %88, i32 0, i32 2
  %89 = load i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)** %drop_possible, align 8
  %90 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %91 = load i32, i32* %src_type, align 4
  %92 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable, align 8
  %93 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %94 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  %95 = load i32, i32* %drop_pos, align 4
  %call111 = call i32 %89(%struct._GimpContainerTreeView* %90, i32 %91, %struct._GimpViewable* %92, %struct._GimpViewable* %93, %struct._GtkTreePath* %94, i32 %95, i32* %drop_pos, i32* %drag_action)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.130

if.then.113:                                      ; preds = %if.then.109
  %96 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %97 = load i32, i32* %drag_action, align 4
  %98 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %96, i32 %97, i32 %98)
  %99 = load %struct._GtkTreePath**, %struct._GtkTreePath*** %return_path.addr, align 8
  %tobool114 = icmp ne %struct._GtkTreePath** %99, null
  br i1 %tobool114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %if.then.113
  %100 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  %101 = load %struct._GtkTreePath**, %struct._GtkTreePath*** %return_path.addr, align 8
  store %struct._GtkTreePath* %100, %struct._GtkTreePath** %101, align 8
  br label %if.end.117

if.else.116:                                      ; preds = %if.then.113
  %102 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %102)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.116, %if.then.115
  %103 = load %struct._GdkAtom**, %struct._GdkAtom*** %return_atom.addr, align 8
  %tobool118 = icmp ne %struct._GdkAtom** %103, null
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.117
  %104 = load %struct._GdkAtom*, %struct._GdkAtom** %target_atom, align 8
  %105 = load %struct._GdkAtom**, %struct._GdkAtom*** %return_atom.addr, align 8
  store %struct._GdkAtom* %104, %struct._GdkAtom** %105, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.117
  %106 = load %struct._GimpViewable**, %struct._GimpViewable*** %return_src.addr, align 8
  %tobool121 = icmp ne %struct._GimpViewable** %106, null
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.120
  %107 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable, align 8
  %108 = load %struct._GimpViewable**, %struct._GimpViewable*** %return_src.addr, align 8
  store %struct._GimpViewable* %107, %struct._GimpViewable** %108, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.120
  %109 = load %struct._GimpViewable**, %struct._GimpViewable*** %return_dest.addr, align 8
  %tobool124 = icmp ne %struct._GimpViewable** %109, null
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.123
  %110 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %111 = load %struct._GimpViewable**, %struct._GimpViewable*** %return_dest.addr, align 8
  store %struct._GimpViewable* %110, %struct._GimpViewable** %111, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.123
  %112 = load i32*, i32** %return_pos.addr, align 8
  %tobool127 = icmp ne i32* %112, null
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.126
  %113 = load i32, i32* %drop_pos, align 4
  %114 = load i32*, i32** %return_pos.addr, align 8
  store i32 %113, i32* %114, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.126
  store i32 1, i32* %retval
  br label %return

if.end.130:                                       ; preds = %if.then.109
  %115 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %115)
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %lor.lhs.false.107
  br label %drop_impossible

drop_impossible:                                  ; preds = %if.end.131, %if.then.34, %if.then.20, %if.then.16, %if.then
  %116 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %117 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %116, i32 0, i32 %117)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %drop_impossible, %if.end.129
  %118 = load i32, i32* %retval
  ret i32 %118
}

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_tree_view_drag_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time, %struct._GimpContainerTreeView* %tree_view) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_type = alloca i32, align 4
  %src_viewable = alloca %struct._GimpViewable*, align 8
  %dest_viewable = alloca %struct._GimpViewable*, align 8
  %target = alloca %struct._GdkAtom*, align 8
  %drop_pos = alloca i32, align 4
  %tree_view_class = alloca %struct._GimpContainerTreeViewClass*, align 8
  %success = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %0, i32 0, i32 8
  %1 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %1, i32 0, i32 6
  %2 = load i32, i32* %scroll_timeout_id, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv1, align 8
  %scroll_timeout_id2 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 6
  %5 = load i32, i32* %scroll_timeout_id2, align 4
  %call = call i32 @g_source_remove(i32 %5)
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 8
  %7 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv3, align 8
  %scroll_timeout_id4 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %7, i32 0, i32 6
  store i32 0, i32* %scroll_timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %9 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %time.addr, align 4
  %call5 = call i32 @gimp_container_tree_view_drop_status(%struct._GimpContainerTreeView* %8, %struct._GdkDragContext* %9, i32 %10, i32 %11, i32 %12, %struct._GtkTreePath** null, %struct._GdkAtom** %target, i32* %src_type, %struct._GimpViewable** %src_viewable, %struct._GimpViewable** %dest_viewable, i32* %drop_pos)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %13 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %14 = bitcast %struct._GimpContainerTreeView* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpContainerTreeViewClass*
  store %struct._GimpContainerTreeViewClass* %16, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable, align 8
  %tobool8 = icmp ne %struct._GimpViewable* %17, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  store i32 1, i32* %success, align 4
  %18 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_viewable = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %18, i32 0, i32 3
  %19 = load void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)** %drop_viewable, align 8
  %20 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable, align 8
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %23 = load i32, i32* %drop_pos, align 4
  call void %19(%struct._GimpContainerTreeView* %20, %struct._GimpViewable* %21, %struct._GimpViewable* %22, i32 %23)
  %24 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %25 = load i32, i32* %success, align 4
  %26 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %24, i32 %25, i32 0, i32 %26)
  br label %if.end.10

if.else:                                          ; preds = %if.then.7
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %28 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %29 = load %struct._GdkAtom*, %struct._GdkAtom** %target, align 8
  %30 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_get_data(%struct._GtkWidget* %27, %struct._GdkDragContext* %28, %struct._GdkAtom* %29, i32 %30)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.end.10
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #1

declare void @gtk_drag_get_data(%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GdkAtom*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_drag_data_received(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %selection_data, i32 %info, i32 %time, %struct._GimpContainerTreeView* %tree_view) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %selection_data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %dest_viewable = alloca %struct._GimpViewable*, align 8
  %drop_pos = alloca i32, align 4
  %success = alloca i32, align 4
  %tree_view_class = alloca %struct._GimpContainerTreeViewClass*, align 8
  %uri_list = alloca %struct._GList*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %stream = alloca i8*, align 8
  %stream_length = alloca i64, align 8
  %image = alloca %struct._GimpImage*, align 8
  %component = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %selection_data, %struct._GtkSelectionData** %selection_data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i32 0, i32* %success, align 4
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i32, i32* %time.addr, align 4
  %call = call i32 @gimp_container_tree_view_drop_status(%struct._GimpContainerTreeView* %0, %struct._GdkDragContext* %1, i32 %2, i32 %3, i32 %4, %struct._GtkTreePath** null, %struct._GdkAtom** null, i32* null, %struct._GimpViewable** null, %struct._GimpViewable** %dest_viewable, i32* %drop_pos)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.48

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %6 = bitcast %struct._GimpContainerTreeView* %5 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %8 = bitcast %struct._GTypeClass* %7 to %struct._GimpContainerTreeViewClass*
  store %struct._GimpContainerTreeViewClass* %8, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %9 = load i32, i32* %info.addr, align 4
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb.8
    i32 6, label %sw.bb.17
    i32 7, label %sw.bb.17
    i32 10, label %sw.bb.26
    i32 8, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  %10 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_uri_list = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %10, i32 0, i32 5
  %11 = load void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)** %drop_uri_list, align 8
  %tobool1 = icmp ne void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)* %11, null
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %sw.bb
  %12 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call3 = call %struct._GList* @gimp_selection_data_get_uri_list(%struct._GtkSelectionData* %12)
  store %struct._GList* %call3, %struct._GList** %uri_list, align 8
  %13 = load %struct._GList*, %struct._GList** %uri_list, align 8
  %tobool4 = icmp ne %struct._GList* %13, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %14 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_uri_list6 = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %14, i32 0, i32 5
  %15 = load void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)** %drop_uri_list6, align 8
  %16 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %17 = load %struct._GList*, %struct._GList** %uri_list, align 8
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %19 = load i32, i32* %drop_pos, align 4
  call void %15(%struct._GimpContainerTreeView* %16, %struct._GList* %17, %struct._GimpViewable* %18, i32 %19)
  %20 = load %struct._GList*, %struct._GList** %uri_list, align 8
  call void @g_list_free_full(%struct._GList* %20, void (i8*)* @g_free)
  store i32 1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %sw.bb
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  %21 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_color = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %21, i32 0, i32 4
  %22 = load void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)** %drop_color, align 8
  %tobool9 = icmp ne void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)* %22, null
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %sw.bb.8
  %23 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call11 = call i32 @gimp_selection_data_get_color(%struct._GtkSelectionData* %23, %struct._GimpRGB* %color)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %24 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_color14 = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %24, i32 0, i32 4
  %25 = load void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)** %drop_color14, align 8
  %26 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %28 = load i32, i32* %drop_pos, align 4
  call void %25(%struct._GimpContainerTreeView* %26, %struct._GimpRGB* %color, %struct._GimpViewable* %27, i32 %28)
  store i32 1, i32* %success, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %sw.bb.8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then, %if.then
  %29 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_svg = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %29, i32 0, i32 6
  %30 = load void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)** %drop_svg, align 8
  %tobool18 = icmp ne void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)* %30, null
  br i1 %tobool18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %sw.bb.17
  %31 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call20 = call i8* @gimp_selection_data_get_stream(%struct._GtkSelectionData* %31, i64* %stream_length)
  store i8* %call20, i8** %stream, align 8
  %32 = load i8*, i8** %stream, align 8
  %tobool21 = icmp ne i8* %32, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.19
  %33 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_svg23 = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %33, i32 0, i32 6
  %34 = load void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)** %drop_svg23, align 8
  %35 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %36 = load i8*, i8** %stream, align 8
  %37 = load i64, i64* %stream_length, align 8
  %38 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %39 = load i32, i32* %drop_pos, align 4
  call void %34(%struct._GimpContainerTreeView* %35, i8* %36, i64 %37, %struct._GimpViewable* %38, i32 %39)
  store i32 1, i32* %success, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %sw.bb.17
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.then
  %40 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_component = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %40, i32 0, i32 7
  %41 = load void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)** %drop_component, align 8
  %tobool27 = icmp ne void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)* %41, null
  br i1 %tobool27, label %if.then.28, label %if.end.38

if.then.28:                                       ; preds = %sw.bb.26
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %42 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %dnd_gimp = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %42, i32 0, i32 7
  %43 = load %struct._Gimp*, %struct._Gimp** %dnd_gimp, align 8
  %tobool29 = icmp ne %struct._Gimp* %43, null
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.28
  %44 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %45 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %dnd_gimp31 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %45, i32 0, i32 7
  %46 = load %struct._Gimp*, %struct._Gimp** %dnd_gimp31, align 8
  %call32 = call %struct._GimpImage* @gimp_selection_data_get_component(%struct._GtkSelectionData* %44, %struct._Gimp* %46, i32* %component)
  store %struct._GimpImage* %call32, %struct._GimpImage** %image, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.then.28
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool34 = icmp ne %struct._GimpImage* %47, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %48 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_component36 = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %48, i32 0, i32 7
  %49 = load void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)** %drop_component36, align 8
  %50 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = load i32, i32* %component, align 4
  %53 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %54 = load i32, i32* %drop_pos, align 4
  call void %49(%struct._GimpContainerTreeView* %50, %struct._GimpImage* %51, i32 %52, %struct._GimpViewable* %53, i32 %54)
  store i32 1, i32* %success, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %sw.bb.26
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.then
  %55 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_pixbuf = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %55, i32 0, i32 8
  %56 = load void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)** %drop_pixbuf, align 8
  %tobool40 = icmp ne void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)* %56, null
  br i1 %tobool40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %sw.bb.39
  %57 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call42 = call %struct._GdkPixbuf* @gtk_selection_data_get_pixbuf(%struct._GtkSelectionData* %57)
  store %struct._GdkPixbuf* %call42, %struct._GdkPixbuf** %pixbuf, align 8
  %58 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool43 = icmp ne %struct._GdkPixbuf* %58, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.41
  %59 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_pixbuf45 = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %59, i32 0, i32 8
  %60 = load void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)** %drop_pixbuf45, align 8
  %61 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %62 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %63 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable, align 8
  %64 = load i32, i32* %drop_pos, align 4
  call void %60(%struct._GimpContainerTreeView* %61, %struct._GdkPixbuf* %62, %struct._GimpViewable* %63, i32 %64)
  %65 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %66 = bitcast %struct._GdkPixbuf* %65 to i8*
  call void @g_object_unref(i8* %66)
  store i32 1, i32* %success, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %sw.bb.39
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.47, %if.end.38, %if.end.25, %if.end.16, %if.end.7
  br label %if.end.48

if.end.48:                                        ; preds = %sw.epilog, %entry
  %67 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %68 = load i32, i32* %success, align 4
  %69 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %67, i32 %68, i32 0, i32 %69)
  ret void
}

declare %struct._GList* @gimp_selection_data_get_uri_list(%struct._GtkSelectionData*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_free(i8*) #1

declare i32 @gimp_selection_data_get_color(%struct._GtkSelectionData*, %struct._GimpRGB*) #1

declare i8* @gimp_selection_data_get_stream(%struct._GtkSelectionData*, i64*) #1

declare %struct._GimpImage* @gimp_selection_data_get_component(%struct._GtkSelectionData*, %struct._Gimp*, i32*) #1

declare %struct._GdkPixbuf* @gtk_selection_data_get_pixbuf(%struct._GtkSelectionData*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_tree_view_real_drop_possible(%struct._GimpContainerTreeView* %tree_view, i32 %src_type, %struct._GimpViewable* %src_viewable, %struct._GimpViewable* %dest_viewable, %struct._GtkTreePath* %drop_path, i32 %drop_pos, i32* %return_drop_pos, i32* %return_drag_action) #0 {
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
  %view = alloca %struct._GimpContainerView*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %src_container = alloca %struct._GimpContainer*, align 8
  %dest_container = alloca %struct._GimpContainer*, align 8
  %src_index = alloca i32, align 4
  %dest_index = alloca i32, align 4
  %parent = alloca %struct._GimpViewable*, align 8
  %parent22 = alloca %struct._GimpViewable*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i32 %src_type, i32* %src_type.addr, align 4
  store %struct._GimpViewable* %src_viewable, %struct._GimpViewable** %src_viewable.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store %struct._GtkTreePath* %drop_path, %struct._GtkTreePath** %drop_path.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  store i32* %return_drop_pos, i32** %return_drop_pos.addr, align 8
  store i32* %return_drag_action, i32** %return_drag_action.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %3)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  store %struct._GimpContainer* null, %struct._GimpContainer** %src_container, align 8
  store %struct._GimpContainer* null, %struct._GimpContainer** %dest_container, align 8
  store i32 -1, i32* %src_index, align 4
  store i32 -1, i32* %dest_index, align 4
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %4, null
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %call3 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %5)
  store %struct._GimpViewable* %call3, %struct._GimpViewable** %parent, align 8
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %tobool4 = icmp ne %struct._GimpViewable* %6, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %call6 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %7)
  store %struct._GimpContainer* %call6, %struct._GimpContainer** %src_container, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %10 = bitcast %struct._GimpViewable* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %call9 = call i32 @gimp_container_have(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  store %struct._GimpContainer* %12, %struct._GimpContainer** %src_container, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.5
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %tobool13 = icmp ne %struct._GimpContainer* %13, null
  br i1 %tobool13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.12
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %16 = bitcast %struct._GimpViewable* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  %call17 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %14, %struct._GimpObject* %17)
  store i32 %call17, i32* %src_index, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.end.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %tobool20 = icmp ne %struct._GimpViewable* %18, null
  br i1 %tobool20, label %if.then.21, label %if.end.47

if.then.21:                                       ; preds = %if.end.19
  %19 = load i32, i32* %drop_pos.addr, align 4
  %cmp = icmp eq i32 %19, 3
  br i1 %cmp, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %if.then.21
  %20 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %call23 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %20)
  %tobool24 = icmp ne %struct._GimpContainer* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  store %struct._GimpViewable* %21, %struct._GimpViewable** %parent22, align 8
  br label %if.end.28

if.else.26:                                       ; preds = %land.lhs.true, %if.then.21
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %call27 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %22)
  store %struct._GimpViewable* %call27, %struct._GimpViewable** %parent22, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  %23 = load %struct._GimpViewable*, %struct._GimpViewable** %parent22, align 8
  %tobool29 = icmp ne %struct._GimpViewable* %23, null
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.end.28
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %parent22, align 8
  %call31 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %24)
  store %struct._GimpContainer* %call31, %struct._GimpContainer** %dest_container, align 8
  br label %if.end.39

if.else.32:                                       ; preds = %if.end.28
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %26 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %27 = bitcast %struct._GimpViewable* %26 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_object_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call33)
  %28 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpObject*
  %call35 = call i32 @gimp_container_have(%struct._GimpContainer* %25, %struct._GimpObject* %28)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.32
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  store %struct._GimpContainer* %29, %struct._GimpContainer** %dest_container, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.30
  %30 = load %struct._GimpViewable*, %struct._GimpViewable** %parent22, align 8
  %31 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %cmp40 = icmp eq %struct._GimpViewable* %30, %31
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.39
  store i32 0, i32* %dest_index, align 4
  br label %if.end.46

if.else.42:                                       ; preds = %if.end.39
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %dest_container, align 8
  %33 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %34 = bitcast %struct._GimpViewable* %33 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_object_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call43)
  %35 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpObject*
  %call45 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %32, %struct._GimpObject* %35)
  store i32 %call45, i32* %dest_index, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.19
  %36 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %tobool48 = icmp ne %struct._GimpViewable* %36, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.65

land.lhs.true.49:                                 ; preds = %if.end.47
  %37 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %38 = bitcast %struct._GimpViewable* %37 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type, align 8
  %41 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call50 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %41)
  %call51 = call i32 @g_type_is_a(i64 %40, i64 %call50)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %land.lhs.true.49
  %42 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %43 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %cmp54 = icmp eq %struct._GimpViewable* %42, %43
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.53
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.53
  %44 = load i32, i32* %src_index, align 4
  %cmp57 = icmp eq i32 %44, -1
  br i1 %cmp57, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.56
  %45 = load i32, i32* %dest_index, align 4
  %cmp58 = icmp eq i32 %45, -1
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false, %if.end.56
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %lor.lhs.false
  %46 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %47 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %call61 = call i32 @gimp_viewable_is_ancestor(%struct._GimpViewable* %46, %struct._GimpViewable* %47)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true.49, %if.end.47
  %48 = load %struct._GimpContainer*, %struct._GimpContainer** %src_container, align 8
  %49 = load %struct._GimpContainer*, %struct._GimpContainer** %dest_container, align 8
  %cmp66 = icmp eq %struct._GimpContainer* %48, %49
  br i1 %cmp66, label %if.then.67, label %if.end.81

if.then.67:                                       ; preds = %if.end.65
  %50 = load i32, i32* %drop_pos.addr, align 4
  %cmp68 = icmp eq i32 %50, 0
  br i1 %cmp68, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %if.then.67
  %51 = load i32, i32* %dest_index, align 4
  %52 = load i32, i32* %src_index, align 4
  %add = add nsw i32 %52, 1
  %cmp70 = icmp eq i32 %51, %add
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.69
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.69
  br label %if.end.80

if.else.73:                                       ; preds = %if.then.67
  %53 = load i32, i32* %drop_pos.addr, align 4
  %cmp74 = icmp eq i32 %53, 1
  br i1 %cmp74, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.else.73
  %54 = load i32, i32* %dest_index, align 4
  %55 = load i32, i32* %src_index, align 4
  %sub = sub nsw i32 %55, 1
  %cmp76 = icmp eq i32 %54, %sub
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.75
  store i32 0, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.then.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.else.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.72
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.65
  %56 = load i32*, i32** %return_drop_pos.addr, align 8
  %tobool82 = icmp ne i32* %56, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.81
  %57 = load i32, i32* %drop_pos.addr, align 4
  %58 = load i32*, i32** %return_drop_pos.addr, align 8
  store i32 %57, i32* %58, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.81
  %59 = load i32*, i32** %return_drag_action.addr, align 8
  %tobool85 = icmp ne i32* %59, null
  br i1 %tobool85, label %if.then.86, label %if.end.97

if.then.86:                                       ; preds = %if.end.84
  %60 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %tobool87 = icmp ne %struct._GimpViewable* %60, null
  br i1 %tobool87, label %land.lhs.true.88, label %if.else.95

land.lhs.true.88:                                 ; preds = %if.then.86
  %61 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %62 = bitcast %struct._GimpViewable* %61 to %struct._GTypeInstance*
  %g_class89 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class89, align 8
  %g_type90 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %63, i32 0, i32 0
  %64 = load i64, i64* %g_type90, align 8
  %65 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call91 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %65)
  %call92 = call i32 @g_type_is_a(i64 %64, i64 %call91)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %land.lhs.true.88
  %66 = load i32*, i32** %return_drag_action.addr, align 8
  store i32 4, i32* %66, align 4
  br label %if.end.96

if.else.95:                                       ; preds = %land.lhs.true.88, %if.then.86
  %67 = load i32*, i32** %return_drag_action.addr, align 8
  store i32 2, i32* %67, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.95, %if.then.94
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.84
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.then.77, %if.then.71, %if.then.63, %if.then.59, %if.then.55
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare i32 @gimp_viewable_is_ancestor(%struct._GimpViewable*, %struct._GimpViewable*) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_real_drop_viewable(%struct._GimpContainerTreeView* %tree_view, %struct._GimpViewable* %src_viewable, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #0 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_viewable.addr = alloca %struct._GimpViewable*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %view = alloca %struct._GimpContainerView*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %src_index = alloca i32, align 4
  %dest_index = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GimpViewable* %src_viewable, %struct._GimpViewable** %src_viewable.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %3)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %6 = bitcast %struct._GimpViewable* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %4, %struct._GimpObject* %7)
  store i32 %call5, i32* %src_index, align 4
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %10 = bitcast %struct._GimpViewable* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  store i32 %call8, i32* %dest_index, align 4
  %12 = load i32, i32* %drop_pos.addr, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %src_index, align 4
  %14 = load i32, i32* %dest_index, align 4
  %cmp9 = icmp sgt i32 %13, %14
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, i32* %dest_index, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %dest_index, align 4
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load i32, i32* %drop_pos.addr, align 4
  %cmp10 = icmp eq i32 %16, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %if.else
  %17 = load i32, i32* %src_index, align 4
  %18 = load i32, i32* %dest_index, align 4
  %cmp12 = icmp slt i32 %17, %18
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true.11
  %19 = load i32, i32* %dest_index, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %dest_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true.11, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %22 = bitcast %struct._GimpViewable* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  %24 = load i32, i32* %dest_index, align 4
  %call17 = call i32 @gimp_container_reorder(%struct._GimpContainer* %20, %struct._GimpObject* %23, i32 %24)
  ret void
}

declare i32 @gimp_container_reorder(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

declare %struct._GtkAdjustment* @gtk_tree_view_get_vadjustment(%struct._GtkTreeView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare i32 @gimp_container_view_get_reorderable(%struct._GimpContainerView*) #1

declare %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GdkAtom* @gtk_drag_dest_find_target(%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkTargetList*) #1

declare i32 @gtk_target_list_find(%struct._GtkTargetList*, %struct._GdkAtom*, i32*) #1

declare %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext*) #1

declare %struct._GimpViewable* @gimp_dnd_get_drag_data(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView*, i32, i32, %struct._GtkTreePath**, %struct._GtkTreeViewColumn**, i32*, i32*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_tree_view_get_cell_area(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, %struct._GdkRectangle*) #1

declare i32 @gtk_tree_view_row_expanded(%struct._GtkTreeView*, %struct._GtkTreePath*) #1

declare i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gdk_drag_status(%struct._GdkDragContext*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
