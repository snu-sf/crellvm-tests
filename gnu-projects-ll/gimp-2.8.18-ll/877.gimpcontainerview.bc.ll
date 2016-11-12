; ModuleID = './app/widgets/gimpcontainerview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpContainerViewInterface = type { %struct._GTypeInterface, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, i32)*, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)*, i32 (%struct._GimpContainerView*, %struct._GList**)*, void (i8*)*, i32 }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpContainerView = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
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
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GimpContainerViewPrivate = type { %struct._GimpContainer*, %struct._GimpContext*, %struct._GHashTable*, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GimpTreeHandler* }
%struct._GHashTable = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GimpTreeHandler = type { %struct._GimpObject, %struct._GimpContainer*, i8*, void ()*, i8* }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._TempBuf = type opaque
%struct._GdkPixbuf = type opaque

@gimp_container_view_interface_get_type.iface_type = internal global i64 0, align 8
@gimp_container_view_interface_get_type.iface_info = internal constant %struct._GTypeInfo { i16 144, void (i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_container_view_iface_base_init to void (i8*)*), void (i8*)* null, void (i8*, i8*)* null, void (i8*, i8*)* null, i8* null, i16 0, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [27 x i8] c"GimpContainerViewInterface\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"selection-mode\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"reorderable\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"view-border-width\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_view_get_container = private unnamed_addr constant [34 x i8] c"gimp_container_view_get_container\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER_VIEW (view)\00", align 1
@__func__.gimp_container_view_set_container = private unnamed_addr constant [34 x i8] c"gimp_container_view_set_container\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"container == NULL || GIMP_IS_CONTAINER (container)\00", align 1
@.str.10 = private unnamed_addr constant [79 x i8] c"g_type_is_a (gimp_container_get_children_type (container), GIMP_TYPE_VIEWABLE)\00", align 1
@__func__.gimp_container_view_get_context = private unnamed_addr constant [32 x i8] c"gimp_container_view_get_context\00", align 1
@__func__.gimp_container_view_set_context = private unnamed_addr constant [32 x i8] c"gimp_container_view_set_context\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_container_view_set_selection_mode = private unnamed_addr constant [39 x i8] c"gimp_container_view_set_selection_mode\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"mode == GTK_SELECTION_SINGLE || mode == GTK_SELECTION_MULTIPLE\00", align 1
@__func__.gimp_container_view_get_view_size = private unnamed_addr constant [34 x i8] c"gimp_container_view_get_view_size\00", align 1
@__func__.gimp_container_view_set_view_size = private unnamed_addr constant [34 x i8] c"gimp_container_view_set_view_size\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.14 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@__func__.gimp_container_view_get_reorderable = private unnamed_addr constant [36 x i8] c"gimp_container_view_get_reorderable\00", align 1
@__func__.gimp_container_view_set_reorderable = private unnamed_addr constant [36 x i8] c"gimp_container_view_set_reorderable\00", align 1
@__func__.gimp_container_view_get_dnd_widget = private unnamed_addr constant [35 x i8] c"gimp_container_view_get_dnd_widget\00", align 1
@__func__.gimp_container_view_set_dnd_widget = private unnamed_addr constant [35 x i8] c"gimp_container_view_set_dnd_widget\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"dnd_widget == NULL || GTK_IS_WIDGET (dnd_widget)\00", align 1
@__func__.gimp_container_view_enable_dnd = private unnamed_addr constant [31 x i8] c"gimp_container_view_enable_dnd\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"GTK_IS_BUTTON (button)\00", align 1
@__func__.gimp_container_view_select_item = private unnamed_addr constant [32 x i8] c"gimp_container_view_select_item\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"viewable == NULL || GIMP_IS_VIEWABLE (viewable)\00", align 1
@view_signals = internal global [3 x i32] zeroinitializer, align 4
@__func__.gimp_container_view_activate_item = private unnamed_addr constant [34 x i8] c"gimp_container_view_activate_item\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"GIMP_IS_VIEWABLE (viewable)\00", align 1
@__func__.gimp_container_view_context_item = private unnamed_addr constant [33 x i8] c"gimp_container_view_context_item\00", align 1
@__func__.gimp_container_view_lookup = private unnamed_addr constant [27 x i8] c"gimp_container_view_lookup\00", align 1
@__func__.gimp_container_view_item_selected = private unnamed_addr constant [34 x i8] c"gimp_container_view_item_selected\00", align 1
@__func__.gimp_container_view_multi_selected = private unnamed_addr constant [35 x i8] c"gimp_container_view_multi_selected\00", align 1
@__func__.gimp_container_view_get_selected = private unnamed_addr constant [33 x i8] c"gimp_container_view_get_selected\00", align 1
@__func__.gimp_container_view_item_activated = private unnamed_addr constant [35 x i8] c"gimp_container_view_item_activated\00", align 1
@__func__.gimp_container_view_item_context = private unnamed_addr constant [33 x i8] c"gimp_container_view_item_context\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"gimpcontainerview.c\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"activate-item\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"context-item\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"%s: select_item() failed (should not happen)\00", align 1
@__func__.gimp_container_view_context_changed = private unnamed_addr constant [36 x i8] c"gimp_container_view_context_changed\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"reorder\00", align 1
@gimp_container_view_get_private.private_key = internal global i32 0, align 4
@__func__.gimp_container_view_get_private = private unnamed_addr constant [32 x i8] c"gimp_container_view_get_private\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"gimp-container-view-private\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_view_interface_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_container_view_interface_get_type.iface_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_container_view_interface_get_type.iface_info, i32 0)
  store i64 %call, i64* @gimp_container_view_interface_get_type.iface_type, align 8
  %1 = load i64, i64* @gimp_container_view_interface_get_type.iface_type, align 8
  %call1 = call i64 @gtk_widget_get_type() #6
  call void @g_type_interface_add_prerequisite(i64 %1, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_container_view_interface_get_type.iface_type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_iface_base_init(%struct._GimpContainerViewInterface* %view_iface) #1 {
entry:
  %view_iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %view_iface, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %0, i32 0, i32 4
  %1 = load void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %tobool = icmp ne void (%struct._GimpContainerView*, %struct._GimpContainer*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %3 = bitcast %struct._GimpContainerViewInterface* %2 to %struct._GTypeInterface*
  %g_type = getelementptr inbounds %struct._GTypeInterface, %struct._GTypeInterface* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %call = call i64 @gimp_object_get_type() #6
  %call1 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i64 %4, i32 2, i32 16, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_BOOLEAN__OBJECT_POINTER, i64 20, i32 2, i64 %call, i64 68)
  store i32 %call1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 0), align 4
  %5 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %6 = bitcast %struct._GimpContainerViewInterface* %5 to %struct._GTypeInterface*
  %g_type2 = getelementptr inbounds %struct._GTypeInterface, %struct._GTypeInterface* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type2, align 8
  %call3 = call i64 @gimp_object_get_type() #6
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i64 %7, i32 1, i32 24, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__OBJECT_POINTER, i64 4, i32 2, i64 %call3, i64 68)
  store i32 %call4, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 1), align 4
  %8 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %9 = bitcast %struct._GimpContainerViewInterface* %8 to %struct._GTypeInterface*
  %g_type5 = getelementptr inbounds %struct._GTypeInterface, %struct._GTypeInterface* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_object_get_type() #6
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i64 %10, i32 1, i32 32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__OBJECT_POINTER, i64 4, i32 2, i64 %call6, i64 68)
  store i32 %call7, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 2), align 4
  %11 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %11, i32 0, i32 1
  store i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* null, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %12 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %activate_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %12, i32 0, i32 2
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* null, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %activate_item, align 8
  %13 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %context_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %13, i32 0, i32 3
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* null, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %context_item, align 8
  %14 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %set_container8 = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %14, i32 0, i32 4
  store void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_container_view_real_set_container, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container8, align 8
  %15 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %15, i32 0, i32 5
  store void (%struct._GimpContainerView*, %struct._GimpContext*)* @gimp_container_view_real_set_context, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %16 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %set_selection_mode = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %16, i32 0, i32 6
  store void (%struct._GimpContainerView*, i32)* @gimp_container_view_real_set_selection_mode, void (%struct._GimpContainerView*, i32)** %set_selection_mode, align 8
  %17 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %17, i32 0, i32 7
  store i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)* null, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %18 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %insert_item_after = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %18, i32 0, i32 8
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* null, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %insert_item_after, align 8
  %19 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %remove_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %19, i32 0, i32 9
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* null, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %remove_item, align 8
  %20 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %reorder_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %20, i32 0, i32 10
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)* null, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)** %reorder_item, align 8
  %21 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %rename_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %21, i32 0, i32 11
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* null, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %rename_item, align 8
  %22 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %22, i32 0, i32 12
  store void (%struct._GimpContainerView*)* @gimp_container_view_real_clear_items, void (%struct._GimpContainerView*)** %clear_items, align 8
  %23 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %23, i32 0, i32 13
  store void (%struct._GimpContainerView*)* null, void (%struct._GimpContainerView*)** %set_view_size, align 8
  %24 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %get_selected = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %24, i32 0, i32 14
  store i32 (%struct._GimpContainerView*, %struct._GList**)* @gimp_container_view_real_get_selected, i32 (%struct._GimpContainerView*, %struct._GList**)** %get_selected, align 8
  %25 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %insert_data_free = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %25, i32 0, i32 15
  store void (i8*)* null, void (i8*)** %insert_data_free, align 8
  %26 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %model_is_tree = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %26, i32 0, i32 16
  store i32 0, i32* %model_is_tree, align 4
  %27 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %28 = bitcast %struct._GimpContainerViewInterface* %27 to i8*
  %call9 = call i64 @gimp_container_get_type() #6
  %call10 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 227)
  call void @g_object_interface_install_property(i8* %28, %struct._GParamSpec* %call10)
  %29 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %30 = bitcast %struct._GimpContainerViewInterface* %29 to i8*
  %call11 = call i64 @gimp_context_get_type() #6
  %call12 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i64 %call11, i32 227)
  call void @g_object_interface_install_property(i8* %30, %struct._GParamSpec* %call12)
  %31 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %32 = bitcast %struct._GimpContainerViewInterface* %31 to i8*
  %call13 = call i64 @gtk_selection_mode_get_type() #6
  %call14 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call13, i32 1, i32 227)
  call void @g_object_interface_install_property(i8* %32, %struct._GParamSpec* %call14)
  %33 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %34 = bitcast %struct._GimpContainerViewInterface* %33 to i8*
  %call15 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_interface_install_property(i8* %34, %struct._GParamSpec* %call15)
  %35 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %36 = bitcast %struct._GimpContainerViewInterface* %35 to i8*
  %call16 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2048, i32 32, i32 231)
  call void @g_object_interface_install_property(i8* %36, %struct._GParamSpec* %call16)
  %37 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %38 = bitcast %struct._GimpContainerViewInterface* %37 to i8*
  %call17 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 16, i32 1, i32 231)
  call void @g_object_interface_install_property(i8* %38, %struct._GParamSpec* %call17)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare void @g_type_interface_add_prerequisite(i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define void @gimp_container_view_install_properties(%struct._GObjectClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GObjectClass*, align 8
  store %struct._GObjectClass* %klass, %struct._GObjectClass** %klass.addr, align 8
  %0 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %0, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %1, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %2 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %2, i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %3, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %4, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  call void @g_object_class_override_property(%struct._GObjectClass* %5, i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare void @g_object_class_override_property(%struct._GObjectClass*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %view) #1 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_get_container, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call11 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %13)
  store %struct._GimpContainerViewPrivate* %call11, %struct._GimpContainerViewPrivate** %private, align 8
  %14 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  store %struct._GimpContainer* %15, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %16
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %view) #1 {
entry:
  %retval = alloca %struct._GimpContainerViewPrivate*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %view_iface = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_container_view_get_private, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpContainerViewPrivate* null, %struct._GimpContainerViewPrivate** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* @gimp_container_view_get_private.private_key, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %call13 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0))
  store i32 %call13, i32* @gimp_container_view_get_private.private_key, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %15 = bitcast %struct._GimpContainerView* %14 to %struct._GObject*
  %16 = load i32, i32* @gimp_container_view_get_private.private_key, align 4
  %call15 = call i8* @g_object_get_qdata(%struct._GObject* %15, i32 %16)
  %17 = bitcast i8* %call15 to %struct._GimpContainerViewPrivate*
  store %struct._GimpContainerViewPrivate* %17, %struct._GimpContainerViewPrivate** %private, align 8
  %18 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %tobool16 = icmp ne %struct._GimpContainerViewPrivate* %18, null
  br i1 %tobool16, label %if.end.25, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %19 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %20 = bitcast %struct._GimpContainerView* %19 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %22 = bitcast %struct._GTypeClass* %21 to i8*
  %call20 = call i64 @gimp_container_view_interface_get_type() #6
  %call21 = call i8* @g_type_interface_peek(i8* %22, i64 %call20)
  %23 = bitcast i8* %call21 to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %23, %struct._GimpContainerViewInterface** %view_iface, align 8
  %call22 = call noalias i8* @g_slice_alloc0(i64 56)
  %24 = bitcast i8* %call22 to %struct._GimpContainerViewPrivate*
  store %struct._GimpContainerViewPrivate* %24, %struct._GimpContainerViewPrivate** %private, align 8
  %25 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %view_border_width = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %25, i32 0, i32 4
  store i32 1, i32* %view_border_width, align 4
  %26 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface, align 8
  %insert_data_free = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %26, i32 0, i32 15
  %27 = load void (i8*)*, void (i8*)** %insert_data_free, align 8
  %call23 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal, void (i8*)* null, void (i8*)* %27)
  %28 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %28, i32 0, i32 2
  store %struct._GHashTable* %call23, %struct._GHashTable** %item_hash, align 8
  %29 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %30 = bitcast %struct._GimpContainerView* %29 to %struct._GObject*
  %31 = load i32, i32* @gimp_container_view_get_private.private_key, align 4
  %32 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %33 = bitcast %struct._GimpContainerViewPrivate* %32 to i8*
  call void @g_object_set_qdata_full(%struct._GObject* %30, i32 %31, i8* %33, void (i8*)* bitcast (void (%struct._GimpContainerViewPrivate*)* @gimp_container_view_private_finalize to void (i8*)*))
  %34 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %35 = bitcast %struct._GimpContainerView* %34 to i8*
  %36 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %37 = bitcast %struct._GimpContainerViewPrivate* %36 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpContainerViewPrivate*)* @gimp_container_view_private_dispose to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.17, %if.end.14
  %38 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  store %struct._GimpContainerViewPrivate* %38, %struct._GimpContainerViewPrivate** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.9
  %39 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %retval
  ret %struct._GimpContainerViewPrivate* %39
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_set_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_set_container, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.60

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp12 = icmp eq %struct._GimpContainer* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_container_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_set_container, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.60

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool40 = icmp ne %struct._GimpContainer* %27, null
  br i1 %tobool40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %do.end.39
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call43 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %28)
  %call44 = call i64 @gimp_viewable_get_type() #6
  %call45 = call i32 @g_type_is_a(i64 %call43, i64 %call44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_set_container, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.60

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.end.39
  %29 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call52 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %29)
  store %struct._GimpContainerViewPrivate* %call52, %struct._GimpContainerViewPrivate** %private, align 8
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %31 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container53 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %31, i32 0, i32 0
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container53, align 8
  %cmp54 = icmp ne %struct._GimpContainer* %30, %32
  br i1 %cmp54, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %if.end.51
  %33 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %34 = bitcast %struct._GimpContainerView* %33 to %struct._GTypeInstance*
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %36 = bitcast %struct._GTypeClass* %35 to i8*
  %call57 = call i64 @gimp_container_view_interface_get_type() #6
  %call58 = call i8* @g_type_interface_peek(i8* %36, i64 %call57)
  %37 = bitcast i8* %call58 to %struct._GimpContainerViewInterface*
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %37, i32 0, i32 4
  %38 = load void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %39 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void %38(%struct._GimpContainerView* %39, %struct._GimpContainer* %40)
  %41 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %42 = bitcast %struct._GimpContainerView* %41 to %struct._GTypeInstance*
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call59 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.9, %if.else.37, %if.else.48, %if.then.55, %if.end.51
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #3

declare i32 @g_type_is_a(i64, i64) #2

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #3

declare i8* @g_type_interface_peek(i8*, i64) #2

declare void @g_object_notify(%struct._GObject*, i8*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %view) #1 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_container_view_get_context, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call11 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %13)
  store %struct._GimpContainerViewPrivate* %call11, %struct._GimpContainerViewPrivate** %private, align 8
  %14 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %14, i32 0, i32 1
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  store %struct._GimpContext* %15, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_container_view_set_context, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.48

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp12 = icmp eq %struct._GimpContext* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_container_view_set_context, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.48

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call40 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %27)
  store %struct._GimpContainerViewPrivate* %call40, %struct._GimpContainerViewPrivate** %private, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context41 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %29, i32 0, i32 1
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context41, align 8
  %cmp42 = icmp ne %struct._GimpContext* %28, %30
  br i1 %cmp42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %do.end.39
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %32 = bitcast %struct._GimpContainerView* %31 to %struct._GTypeInstance*
  %g_class44 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class44, align 8
  %34 = bitcast %struct._GTypeClass* %33 to i8*
  %call45 = call i64 @gimp_container_view_interface_get_type() #6
  %call46 = call i8* @g_type_interface_peek(i8* %34, i64 %call45)
  %35 = bitcast i8* %call46 to %struct._GimpContainerViewInterface*
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %35, i32 0, i32 5
  %36 = load void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %37 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %36(%struct._GimpContainerView* %37, %struct._GimpContext* %38)
  %39 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %40 = bitcast %struct._GimpContainerView* %39 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.9, %if.else.37, %if.then.43, %do.end.39
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #3

; Function Attrs: nounwind uwtable
define i32 @gimp_container_view_get_selection_mode(%struct._GimpContainerView* %view) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %selection_mode = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %1, i32 0, i32 6
  %2 = load i32, i32* %selection_mode, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_set_selection_mode(%struct._GimpContainerView* %view, i32 %mode) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_view_set_selection_mode, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %mode.addr, align 4
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i32, i32* %mode.addr, align 4
  %cmp13 = icmp eq i32 %14, 3
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_view_set_selection_mode, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %16 = bitcast %struct._GimpContainerView* %15 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %18 = bitcast %struct._GTypeClass* %17 to i8*
  %call19 = call i64 @gimp_container_view_interface_get_type() #6
  %call20 = call i8* @g_type_interface_peek(i8* %18, i64 %call19)
  %19 = bitcast i8* %call20 to %struct._GimpContainerViewInterface*
  %set_selection_mode = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %19, i32 0, i32 6
  %20 = load void (%struct._GimpContainerView*, i32)*, void (%struct._GimpContainerView*, i32)** %set_selection_mode, align 8
  %21 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %22 = load i32, i32* %mode.addr, align 4
  call void %20(%struct._GimpContainerView* %21, i32 %22)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %view, i32* %view_border_width) #1 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %view_border_width.addr = alloca i32*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store i32* %view_border_width, i32** %view_border_width.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_get_view_size, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call11 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %13)
  store %struct._GimpContainerViewPrivate* %call11, %struct._GimpContainerViewPrivate** %private, align 8
  %14 = load i32*, i32** %view_border_width.addr, align 8
  %tobool12 = icmp ne i32* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %view_border_width14 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %15, i32 0, i32 4
  %16 = load i32, i32* %view_border_width14, align 4
  %17 = load i32*, i32** %view_border_width.addr, align 8
  store i32 %16, i32* %17, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %18 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %view_size = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %18, i32 0, i32 3
  %19 = load i32, i32* %view_size, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_set_view_size(%struct._GimpContainerView* %view, i32 %view_size, i32 %view_border_width) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_set_view_size, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.42

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_set_view_size, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.42

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %15 = load i32, i32* %view_border_width.addr, align 4
  %cmp20 = icmp sge i32 %15, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %16 = load i32, i32* %view_border_width.addr, align 4
  %cmp22 = icmp sle i32 %16, 16
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_set_view_size, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.42

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %17 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call27 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %17)
  store %struct._GimpContainerViewPrivate* %call27, %struct._GimpContainerViewPrivate** %private, align 8
  %18 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %view_size28 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %18, i32 0, i32 3
  %19 = load i32, i32* %view_size28, align 4
  %20 = load i32, i32* %view_size.addr, align 4
  %cmp29 = icmp ne i32 %19, %20
  br i1 %cmp29, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.26
  %21 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %view_border_width30 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %21, i32 0, i32 4
  %22 = load i32, i32* %view_border_width30, align 4
  %23 = load i32, i32* %view_border_width.addr, align 4
  %cmp31 = icmp ne i32 %22, %23
  br i1 %cmp31, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %lor.lhs.false, %do.end.26
  %24 = load i32, i32* %view_size.addr, align 4
  %25 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %view_size33 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %25, i32 0, i32 3
  store i32 %24, i32* %view_size33, align 4
  %26 = load i32, i32* %view_border_width.addr, align 4
  %27 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %view_border_width34 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %27, i32 0, i32 4
  store i32 %26, i32* %view_border_width34, align 4
  %28 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %29 = bitcast %struct._GimpContainerView* %28 to %struct._GTypeInstance*
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %31 = bitcast %struct._GTypeClass* %30 to i8*
  %call36 = call i64 @gimp_container_view_interface_get_type() #6
  %call37 = call i8* @g_type_interface_peek(i8* %31, i64 %call36)
  %32 = bitcast i8* %call37 to %struct._GimpContainerViewInterface*
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %32, i32 0, i32 13
  %33 = load void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)** %set_view_size, align 8
  %34 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void %33(%struct._GimpContainerView* %34)
  %35 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %36 = bitcast %struct._GimpContainerView* %35 to %struct._GTypeInstance*
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call38 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %37)
  %38 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %39 = bitcast %struct._GimpContainerView* %38 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %41 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %42 = bitcast %struct._GimpContainerView* %41 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  %44 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %45 = bitcast %struct._GimpContainerView* %44 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %46)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.9, %if.else.16, %if.else.24, %if.then.32, %lor.lhs.false
  ret void
}

declare void @g_object_freeze_notify(%struct._GObject*) #2

declare void @g_object_thaw_notify(%struct._GObject*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_container_view_get_reorderable(%struct._GimpContainerView* %view) #1 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_container_view_get_reorderable, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call11 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %13)
  store %struct._GimpContainerViewPrivate* %call11, %struct._GimpContainerViewPrivate** %private, align 8
  %14 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %reorderable = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %14, i32 0, i32 5
  %15 = load i32, i32* %reorderable, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_set_reorderable(%struct._GimpContainerView* %view, i32 %reorderable) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %reorderable.addr = alloca i32, align 4
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store i32 %reorderable, i32* %reorderable.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_container_view_set_reorderable, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call11 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %13)
  store %struct._GimpContainerViewPrivate* %call11, %struct._GimpContainerViewPrivate** %private, align 8
  %14 = load i32, i32* %reorderable.addr, align 4
  %tobool12 = icmp ne i32 %14, 0
  %cond = select i1 %tobool12, i32 1, i32 0
  %15 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %reorderable13 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %15, i32 0, i32 5
  store i32 %cond, i32* %reorderable13, align 4
  %16 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %17 = bitcast %struct._GimpContainerView* %16 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_container_view_get_dnd_widget(%struct._GimpContainerView* %view) #1 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_view_get_dnd_widget, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call11 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %13)
  store %struct._GimpContainerViewPrivate* %call11, %struct._GimpContainerViewPrivate** %private, align 8
  %14 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %dnd_widget = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %14, i32 0, i32 7
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView* %view, %struct._GtkWidget* %dnd_widget) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %dnd_widget.addr = alloca %struct._GtkWidget*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GtkWidget* %dnd_widget, %struct._GtkWidget** %dnd_widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_view_set_dnd_widget, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget.addr, align 8
  %cmp12 = icmp eq %struct._GtkWidget* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_widget_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_view_set_dnd_widget, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call40 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %27)
  store %struct._GimpContainerViewPrivate* %call40, %struct._GimpContainerViewPrivate** %private, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget.addr, align 8
  %29 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %dnd_widget41 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %29, i32 0, i32 7
  store %struct._GtkWidget* %28, %struct._GtkWidget** %dnd_widget41, align 8
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %view, %struct._GtkButton* %button, i64 %children_type) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %button.addr = alloca %struct._GtkButton*, align 8
  %children_type.addr = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  store i64 %children_type, i64* %children_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_view_enable_dnd, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %14 = bitcast %struct._GtkButton* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_button_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_view_enable_dnd, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %27 = bitcast %struct._GtkButton* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_widget_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkWidget*
  %29 = load i64, i64* %children_type.addr, align 8
  %30 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %31 = bitcast %struct._GimpContainerView* %30 to i8*
  %call41 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %28, i64 %29, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_container_view_button_viewable_dropped, i8* %31)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #3

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_button_viewable_dropped(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call2 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %4, %struct._GimpViewable* %5)
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call4 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %6, %struct._GimpViewable* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_button_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_view_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable) #1 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %success = alloca i32, align 4
  %insert_data = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 0, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_container_view_select_item, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp12 = icmp eq %struct._GimpViewable* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_viewable_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_container_view_select_item, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call40 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %27)
  store %struct._GimpContainerViewPrivate* %call40, %struct._GimpContainerViewPrivate** %private, align 8
  %28 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %28, i32 0, i32 2
  %29 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %30 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %31 = bitcast %struct._GimpViewable* %30 to i8*
  %call41 = call i8* @g_hash_table_lookup(%struct._GHashTable* %29, i8* %31)
  store i8* %call41, i8** %insert_data, align 8
  %32 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %33 = bitcast %struct._GimpContainerView* %32 to i8*
  %34 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 0), align 4
  %35 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %36 = load i8*, i8** %insert_data, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %33, i32 %34, i32 0, %struct._GimpViewable* %35, i8* %36, i32* %success)
  %37 = load i32, i32* %success, align 4
  store i32 %37, i32* %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare void @g_signal_emit(i8*, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @gimp_container_view_activate_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %insert_data = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_activate_item, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_viewable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_activate_item, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call39 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %26)
  store %struct._GimpContainerViewPrivate* %call39, %struct._GimpContainerViewPrivate** %private, align 8
  %27 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %27, i32 0, i32 2
  %28 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %29 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %30 = bitcast %struct._GimpViewable* %29 to i8*
  %call40 = call i8* @g_hash_table_lookup(%struct._GHashTable* %28, i8* %30)
  store i8* %call40, i8** %insert_data, align 8
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %32 = bitcast %struct._GimpContainerView* %31 to i8*
  %33 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 1), align 4
  %34 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %35 = load i8*, i8** %insert_data, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %32, i32 %33, i32 0, %struct._GimpViewable* %34, i8* %35)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_context_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %insert_data = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_container_view_context_item, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_viewable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_container_view_context_item, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call39 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %26)
  store %struct._GimpContainerViewPrivate* %call39, %struct._GimpContainerViewPrivate** %private, align 8
  %27 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %27, i32 0, i32 2
  %28 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %29 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %30 = bitcast %struct._GimpViewable* %29 to i8*
  %call40 = call i8* @g_hash_table_lookup(%struct._GHashTable* %28, i8* %30)
  store i8* %call40, i8** %insert_data, align 8
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %32 = bitcast %struct._GimpContainerView* %31 to i8*
  %33 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 2), align 4
  %34 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %35 = load i8*, i8** %insert_data, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %32, i32 %33, i32 0, %struct._GimpViewable* %34, i8* %35)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_container_view_lookup(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable) #1 {
entry:
  %retval = alloca i8*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_container_view_lookup, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp12 = icmp eq %struct._GimpViewable* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_viewable_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_container_view_lookup, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool40 = icmp ne %struct._GimpViewable* %27, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %do.end.39
  store i8* null, i8** %retval
  br label %return

if.end.42:                                        ; preds = %do.end.39
  %28 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call43 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %28)
  store %struct._GimpContainerViewPrivate* %call43, %struct._GimpContainerViewPrivate** %private, align 8
  %29 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %29, i32 0, i32 2
  %30 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %31 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %32 = bitcast %struct._GimpViewable* %31 to i8*
  %call44 = call i8* @g_hash_table_lookup(%struct._GHashTable* %30, i8* %32)
  store i8* %call44, i8** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.41, %if.else.37, %if.else.9
  %33 = load i8*, i8** %retval
  ret i8* %33
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable) #1 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %children_type = alloca i64, align 8
  %signal_name = alloca i8*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_item_selected, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_viewable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_item_selected, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call39 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %26)
  store %struct._GimpContainerViewPrivate* %call39, %struct._GimpContainerViewPrivate** %private, align 8
  %27 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %27, i32 0, i32 0
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool40 = icmp ne %struct._GimpContainer* %28, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.55

land.lhs.true.41:                                 ; preds = %do.end.38
  %29 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %29, i32 0, i32 1
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool42 = icmp ne %struct._GimpContext* %30, null
  br i1 %tobool42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %land.lhs.true.41
  %31 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container46 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %31, i32 0, i32 0
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container46, align 8
  %call47 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %32)
  store i64 %call47, i64* %children_type, align 8
  %33 = load i64, i64* %children_type, align 8
  %call48 = call i8* @gimp_context_type_to_signal_name(i64 %33)
  store i8* %call48, i8** %signal_name, align 8
  %34 = load i8*, i8** %signal_name, align 8
  %tobool49 = icmp ne i8* %34, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.then.43
  %35 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context51 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %35, i32 0, i32 1
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context51, align 8
  %37 = load i64, i64* %children_type, align 8
  %38 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %39 = bitcast %struct._GimpViewable* %38 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_object_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call52)
  %40 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpObject*
  call void @gimp_context_set_by_type(%struct._GimpContext* %36, i64 %37, %struct._GimpObject* %40)
  store i32 1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.43
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true.41, %do.end.38
  %41 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %42 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call56 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %41, %struct._GimpViewable* %42)
  store i32 %call56, i32* %success, align 4
  %43 = load i32, i32* %success, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.50, %if.else.36, %if.else.9
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i8* @gimp_context_type_to_signal_name(i64) #2

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #3

; Function Attrs: nounwind uwtable
define i32 @gimp_container_view_multi_selected(%struct._GimpContainerView* %view, %struct._GList* %items) #1 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %items.addr = alloca %struct._GList*, align 8
  %selected_count = alloca i32, align 4
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GList* %items, %struct._GList** %items.addr, align 8
  store i32 0, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_view_multi_selected, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GList*, %struct._GList** %items.addr, align 8
  %call11 = call i32 @g_list_length(%struct._GList* %13)
  store i32 %call11, i32* %selected_count, align 4
  %14 = load i32, i32* %selected_count, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.end
  br label %if.end.20

if.else.14:                                       ; preds = %do.end
  %15 = load i32, i32* %selected_count, align 4
  %cmp15 = icmp eq i32 %15, 1
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else.14
  %16 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %17 = load %struct._GList*, %struct._GList** %items.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpViewable*
  %call17 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %16, %struct._GimpViewable* %19)
  store i32 %call17, i32* %success, align 4
  br label %if.end.19

if.else.18:                                       ; preds = %if.else.14
  store i32 0, i32* %success, align 4
  %20 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %21 = bitcast %struct._GimpContainerView* %20 to i8*
  %22 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @view_signals, i32 0, i64 0), align 4
  %23 = load %struct._GList*, %struct._GList** %items.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %21, i32 %22, i32 0, i8* null, %struct._GList* %23, i32* %success)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.13
  %24 = load i32, i32* %success, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @g_list_length(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_container_view_get_selected(%struct._GimpContainerView* %view, %struct._GList** %list) #1 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %list.addr = alloca %struct._GList**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GList** %list, %struct._GList*** %list.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_container_view_get_selected, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %14 = bitcast %struct._GimpContainerView* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_container_view_interface_get_type() #6
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpContainerViewInterface*
  %get_selected = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %17, i32 0, i32 14
  %18 = load i32 (%struct._GimpContainerView*, %struct._GList**)*, i32 (%struct._GimpContainerView*, %struct._GList**)** %get_selected, align 8
  %19 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %20 = load %struct._GList**, %struct._GList*** %list.addr, align 8
  %call14 = call i32 %18(%struct._GimpContainerView* %19, %struct._GList** %20)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_item_activated(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_view_item_activated, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_viewable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_container_view_item_activated, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_container_view_activate_item(%struct._GimpContainerView* %26, %struct._GimpViewable* %27)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_item_context(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_container_view_item_context, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %14 = bitcast %struct._GimpViewable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_viewable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_container_view_item_context, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_container_view_context_item(%struct._GimpContainerView* %26, %struct._GimpViewable* %27)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_container_view_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %size = alloca i32, align 4
  %border = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpContainer*
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %4, %struct._GimpContainer* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %8)
  %9 = bitcast i8* %call4 to %struct._GimpContext*
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %7, %struct._GimpContext* %9)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %11)
  call void @gimp_container_view_set_selection_mode(%struct._GimpContainerView* %10, i32 %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %13)
  call void @gimp_container_view_set_reorderable(%struct._GimpContainerView* %12, i32 %call8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry, %entry
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call10 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %14, i32* %border)
  store i32 %call10, i32* %size, align 4
  %15 = load i32, i32* %property_id.addr, align 4
  %cmp = icmp eq i32 %15, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.9
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call i32 @g_value_get_int(%struct._GValue* %16)
  store i32 %call11, i32* %size, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.9
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %17)
  store i32 %call12, i32* %border, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %19 = load i32, i32* %size, align 4
  %20 = load i32, i32* %border, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %18, i32 %19, i32 %20)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %21, %struct._GObject** %_glib__object, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %22, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = load i32, i32* %property_id.addr, align 4
  store i32 %23, i32* %_glib__property_id, align 4
  %24 = load i32, i32* %_glib__property_id, align 4
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %call13 = call i8* @g_type_name(i64 %30)
  %31 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %34)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 898, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %24, i8* %26, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

declare i8* @g_value_get_object(%struct._GValue*) #2

declare i32 @g_value_get_enum(%struct._GValue*) #2

declare i32 @g_value_get_boolean(%struct._GValue*) #2

declare i32 @g_value_get_int(%struct._GValue*) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #1 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind uwtable
define void @gimp_container_view_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %size = alloca i32, align 4
  %border = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %5)
  %6 = bitcast %struct._GimpContainer* %call2 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call4 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %8)
  %9 = bitcast %struct._GimpContext* %call4 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call6 = call i32 @gimp_container_view_get_selection_mode(%struct._GimpContainerView* %11)
  call void @g_value_set_enum(%struct._GValue* %10, i32 %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call8 = call i32 @gimp_container_view_get_reorderable(%struct._GimpContainerView* %13)
  call void @g_value_set_boolean(%struct._GValue* %12, i32 %call8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry, %entry
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call10 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %14, i32* %border)
  store i32 %call10, i32* %size, align 4
  %15 = load i32, i32* %property_id.addr, align 4
  %cmp = icmp eq i32 %15, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.9
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load i32, i32* %size, align 4
  call void @g_value_set_int(%struct._GValue* %16, i32 %17)
  br label %if.end

if.else:                                          ; preds = %sw.bb.9
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %19 = load i32, i32* %border, align 4
  call void @g_value_set_int(%struct._GValue* %18, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %20, %struct._GObject** %_glib__object, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %21, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = load i32, i32* %property_id.addr, align 4
  store i32 %22, i32* %_glib__property_id, align 4
  %23 = load i32, i32* %_glib__property_id, align 4
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %24, i32 0, i32 1
  %25 = load i8*, i8** %name, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = bitcast %struct._GParamSpec* %26 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type, align 8
  %call11 = call i8* @g_type_name(i64 %29)
  %30 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %33)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 939, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %23, i8* %25, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

declare void @g_value_set_object(%struct._GValue*, i8*) #2

declare void @g_value_set_enum(%struct._GValue*, i32) #2

declare void @g_value_set_boolean(%struct._GValue*, i32) #2

declare void @g_value_set_int(%struct._GValue*, i32) #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @gimp_marshal_BOOLEAN__OBJECT_POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

declare void @gimp_marshal_VOID__OBJECT_POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_real_set_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container1 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %1, i32 0, i32 0
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container1, align 8
  %tobool = icmp ne %struct._GimpContainer* %2, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool2 = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void @gimp_container_view_disconnect_context(%struct._GimpContainerView* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call4 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %6, %struct._GimpViewable* null)
  %7 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container5 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container5, align 8
  %9 = bitcast %struct._GimpContainer* %8 to i8*
  %10 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %11 = bitcast %struct._GimpContainerView* %10 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_container_view_freeze to i8*), i8* %11)
  %12 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container7 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %12, i32 0, i32 0
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container7, align 8
  %14 = bitcast %struct._GimpContainer* %13 to i8*
  %15 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %16 = bitcast %struct._GimpContainerView* %15 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_container_view_thaw to i8*), i8* %16)
  %17 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container9 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %17, i32 0, i32 0
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %container9, align 8
  %call10 = call i32 @gimp_container_frozen(%struct._GimpContainer* %18)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %19 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %20 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container13 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %20, i32 0, i32 0
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container13, align 8
  call void @gimp_container_view_remove_container(%struct._GimpContainerView* %19, %struct._GimpContainer* %21)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %23 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container16 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %23, i32 0, i32 0
  store %struct._GimpContainer* %22, %struct._GimpContainer** %container16, align 8
  %24 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container17 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %24, i32 0, i32 0
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %container17, align 8
  %tobool18 = icmp ne %struct._GimpContainer* %25, null
  br i1 %tobool18, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %if.end.15
  %26 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container20 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %26, i32 0, i32 0
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container20, align 8
  %call21 = call i32 @gimp_container_frozen(%struct._GimpContainer* %27)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.then.19
  %28 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %29 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container24 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %29, i32 0, i32 0
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %container24, align 8
  call void @gimp_container_view_add_container(%struct._GimpContainerView* %28, %struct._GimpContainer* %30)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.19
  %31 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container26 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %31, i32 0, i32 0
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container26, align 8
  %33 = bitcast %struct._GimpContainer* %32 to i8*
  %34 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %35 = bitcast %struct._GimpContainerView* %34 to i8*
  %call27 = call i64 @g_signal_connect_object(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_container_view_freeze to void ()*), i8* %35, i32 2)
  %36 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container28 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %36, i32 0, i32 0
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %container28, align 8
  %38 = bitcast %struct._GimpContainer* %37 to i8*
  %39 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %40 = bitcast %struct._GimpContainerView* %39 to i8*
  %call29 = call i64 @g_signal_connect_object(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_container_view_thaw to void ()*), i8* %40, i32 2)
  %41 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context30 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %41, i32 0, i32 1
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context30, align 8
  %tobool31 = icmp ne %struct._GimpContext* %42, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.25
  %43 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void @gimp_container_view_connect_context(%struct._GimpContainerView* %43)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_real_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context1 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %1, i32 0, i32 1
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context1, align 8
  %tobool = icmp ne %struct._GimpContext* %2, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool2 = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void @gimp_container_view_disconnect_context(%struct._GimpContainerView* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %6 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context4 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %6, i32 0, i32 1
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %8 = bitcast %struct._GimpContext* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %10 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context6 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %10, i32 0, i32 1
  store %struct._GimpContext* %9, %struct._GimpContext** %context6, align 8
  %11 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context7 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %11, i32 0, i32 1
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %tobool8 = icmp ne %struct._GimpContext* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.5
  %13 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context10 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %13, i32 0, i32 1
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  %call11 = call i8* @g_object_ref(i8* %15)
  %16 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container12 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %16, i32 0, i32 0
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container12, align 8
  %tobool13 = icmp ne %struct._GimpContainer* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.9
  %18 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void @gimp_container_view_connect_context(%struct._GimpContainerView* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_real_set_selection_mode(%struct._GimpContainerView* %view, i32 %mode) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %mode.addr = alloca i32, align 4
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %selection_mode = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %2, i32 0, i32 6
  store i32 %1, i32* %selection_mode, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_real_clear_items(%struct._GimpContainerView* %view) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %1, i32 0, i32 2
  %2 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  call void @g_hash_table_remove_all(%struct._GHashTable* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_view_real_get_selected(%struct._GimpContainerView* %view, %struct._GList** %list) #1 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %list.addr = alloca %struct._GList**, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %children_type = alloca i64, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GList** %list, %struct._GList*** %list.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GList**, %struct._GList*** %list.addr, align 8
  %tobool = icmp ne %struct._GList** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GList**, %struct._GList*** %list.addr, align 8
  store %struct._GList* null, %struct._GList** %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool1 = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool2 = icmp ne %struct._GimpContext* %6, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %7 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container5 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container5, align 8
  %call6 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %8)
  store i64 %call6, i64* %children_type, align 8
  %9 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context7 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %9, i32 0, i32 1
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %11 = load i64, i64* %children_type, align 8
  %call8 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %10, i64 %11)
  store %struct._GimpObject* %call8, %struct._GimpObject** %object, align 8
  %12 = load %struct._GList**, %struct._GList*** %list.addr, align 8
  %tobool9 = icmp ne %struct._GList** %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.4
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool10 = icmp ne %struct._GimpObject* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true
  %14 = load %struct._GList**, %struct._GList*** %list.addr, align 8
  %15 = load %struct._GList*, %struct._GList** %14, align 8
  %16 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %17 = bitcast %struct._GimpObject* %16 to i8*
  %call12 = call %struct._GList* @g_list_append(%struct._GList* %15, i8* %17)
  %18 = load %struct._GList**, %struct._GList*** %list.addr, align 8
  store %struct._GList* %call12, %struct._GList** %18, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true, %if.end.4
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool14 = icmp ne %struct._GimpObject* %19, null
  %cond = select i1 %tobool14, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.3
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @g_object_interface_install_property(i8*, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #2

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_selection_mode_get_type() #3

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_disconnect_context(%struct._GimpContainerView* %view) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %children_type = alloca i64, align 8
  %signal_name = alloca i8*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %1, i32 0, i32 0
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call1 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %2)
  store i64 %call1, i64* %children_type, align 8
  %3 = load i64, i64* %children_type, align 8
  %call2 = call i8* @gimp_context_type_to_signal_name(i64 %3)
  store i8* %call2, i8** %signal_name, align 8
  %4 = load i8*, i8** %signal_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %9 = bitcast %struct._GimpContainerView* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpViewable*, %struct._GimpContainerView*)* @gimp_container_view_context_changed to i8*), i8* %9)
  %10 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %dnd_widget = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %10, i32 0, i32 7
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %12 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %dnd_widget6 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %12, i32 0, i32 7
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget6, align 8
  call void @gtk_drag_dest_unset(%struct._GtkWidget* %13)
  %14 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %dnd_widget7 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %14, i32 0, i32 7
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget7, align 8
  %16 = load i64, i64* %children_type, align 8
  %call8 = call i32 @gimp_dnd_viewable_dest_remove(%struct._GtkWidget* %15, i64 %16)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_freeze(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_container_view_remove_container(%struct._GimpContainerView* %0, %struct._GimpContainer* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_thaw(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %children_type = alloca i64, align 8
  %signal_name = alloca i8*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_container_view_add_container(%struct._GimpContainerView* %1, %struct._GimpContainer* %2)
  %3 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container1 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container1, align 8
  %call2 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %6)
  store i64 %call2, i64* %children_type, align 8
  %7 = load i64, i64* %children_type, align 8
  %call3 = call i8* @gimp_context_type_to_signal_name(i64 %7)
  store i8* %call3, i8** %signal_name, align 8
  %8 = load i8*, i8** %signal_name, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context6 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %9, i32 0, i32 1
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context6, align 8
  %11 = load i64, i64* %children_type, align 8
  %call7 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %10, i64 %11)
  store %struct._GimpObject* %call7, %struct._GimpObject** %object, align 8
  %12 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %14 = bitcast %struct._GimpObject* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  %call10 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %12, %struct._GimpViewable* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

declare i32 @gimp_container_frozen(%struct._GimpContainer*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_remove_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %view_iface = alloca %struct._GimpContainerViewInterface*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to i8*
  %call = call i8* @g_object_ref(i8* %1)
  %2 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %3 = bitcast %struct._GimpContainerView* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to i8*
  %call1 = call i64 @gimp_container_view_interface_get_type() #6
  %call2 = call i8* @g_type_interface_peek(i8* %5, i64 %call1)
  %6 = bitcast i8* %call2 to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %6, %struct._GimpContainerViewInterface** %view_iface, align 8
  %7 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call3 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %7)
  store %struct._GimpContainerViewPrivate* %call3, %struct._GimpContainerViewPrivate** %private, align 8
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = bitcast %struct._GimpContainer* %8 to i8*
  %10 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %11 = bitcast %struct._GimpContainerView* %10 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, %struct._GimpContainer*)* @gimp_container_view_add to i8*), i8* %11)
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %13 = bitcast %struct._GimpContainer* %12 to i8*
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %15 = bitcast %struct._GimpContainerView* %14 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, %struct._GimpContainer*)* @gimp_container_view_remove to i8*), i8* %15)
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %17 = bitcast %struct._GimpContainer* %16 to i8*
  %18 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %19 = bitcast %struct._GimpContainerView* %18 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, %struct._GimpContainer*)* @gimp_container_view_reorder to i8*), i8* %19)
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %21 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container7 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %21, i32 0, i32 0
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container7, align 8
  %cmp = icmp eq %struct._GimpContainer* %20, %22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %name_changed_handler = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %23, i32 0, i32 8
  %24 = load %struct._GimpTreeHandler*, %struct._GimpTreeHandler** %name_changed_handler, align 8
  call void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler* %24)
  %25 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %name_changed_handler8 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %25, i32 0, i32 8
  store %struct._GimpTreeHandler* null, %struct._GimpTreeHandler** %name_changed_handler8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface, align 8
  %model_is_tree = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %26, i32 0, i32 16
  %27 = load i32, i32* %model_is_tree, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %29 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container9 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %29, i32 0, i32 0
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %container9, align 8
  %cmp10 = icmp eq %struct._GimpContainer* %28, %30
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void @gimp_container_view_clear_items(%struct._GimpContainerView* %31)
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %if.end
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %33 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %34 = bitcast %struct._GimpContainerView* %33 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %32, void (i8*, i8*)* bitcast (void (%struct._GimpViewable*, %struct._GimpContainerView*)* @gimp_container_view_remove_foreach to void (i8*, i8*)*), i8* %34)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %36 = bitcast %struct._GimpContainer* %35 to i8*
  call void @g_object_unref(i8* %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_add_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %children_type = alloca i64, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %3 = bitcast %struct._GimpContainerView* %2 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %1, void (i8*, i8*)* bitcast (void (%struct._GimpViewable*, %struct._GimpContainerView*)* @gimp_container_view_add_foreach to void (i8*, i8*)*), i8* %3)
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container1 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container1, align 8
  %cmp = icmp eq %struct._GimpContainer* %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call2 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %7)
  store i64 %call2, i64* %children_type, align 8
  %8 = load i64, i64* %children_type, align 8
  %call3 = call i8* @g_type_class_ref(i64 %8)
  %9 = bitcast i8* %call3 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %9, %struct._GimpViewableClass** %viewable_class, align 8
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %11 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %name_changed_signal = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %11, i32 0, i32 2
  %12 = load i8*, i8** %name_changed_signal, align 8
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %14 = bitcast %struct._GimpContainerView* %13 to i8*
  %call4 = call %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer* %10, i8* %12, void ()* bitcast (void (%struct._GimpViewable*, %struct._GimpContainerView*)* @gimp_container_view_name_changed to void ()*), i8* %14)
  %15 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %name_changed_handler = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %15, i32 0, i32 8
  store %struct._GimpTreeHandler* %call4, %struct._GimpTreeHandler** %name_changed_handler, align 8
  %16 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %17 = bitcast %struct._GimpViewableClass* %16 to i8*
  call void @g_type_class_unref(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %19 = bitcast %struct._GimpContainer* %18 to i8*
  %20 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %21 = bitcast %struct._GimpContainerView* %20 to i8*
  %call5 = call i64 @g_signal_connect_object(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, %struct._GimpContainer*)* @gimp_container_view_add to void ()*), i8* %21, i32 2)
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %23 = bitcast %struct._GimpContainer* %22 to i8*
  %24 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %25 = bitcast %struct._GimpContainerView* %24 to i8*
  %call6 = call i64 @g_signal_connect_object(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, %struct._GimpContainer*)* @gimp_container_view_remove to void ()*), i8* %25, i32 2)
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %27 = bitcast %struct._GimpContainer* %26 to i8*
  %28 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %29 = bitcast %struct._GimpContainerView* %28 to i8*
  %call7 = call i64 @g_signal_connect_object(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, %struct._GimpContainer*)* @gimp_container_view_reorder to void ()*), i8* %29, i32 2)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_connect_context(%struct._GimpContainerView* %view) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %children_type = alloca i64, align 8
  %signal_name = alloca i8*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %1, i32 0, i32 0
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call1 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %2)
  store i64 %call1, i64* %children_type, align 8
  %3 = load i64, i64* %children_type, align 8
  %call2 = call i8* @gimp_context_type_to_signal_name(i64 %3)
  store i8* %call2, i8** %signal_name, align 8
  %4 = load i8*, i8** %signal_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %8 = load i8*, i8** %signal_name, align 8
  %9 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %10 = bitcast %struct._GimpContainerView* %9 to i8*
  %call3 = call i64 @g_signal_connect_object(i8* %7, i8* %8, void ()* bitcast (void (%struct._GimpContext*, %struct._GimpViewable*, %struct._GimpContainerView*)* @gimp_container_view_context_changed to void ()*), i8* %10, i32 0)
  %11 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %dnd_widget = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %11, i32 0, i32 7
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %13 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %dnd_widget6 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %13, i32 0, i32 7
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dnd_widget6, align 8
  %15 = load i64, i64* %children_type, align 8
  %16 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %17 = bitcast %struct._GimpContainerView* %16 to i8*
  %call7 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %14, i64 %15, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_container_view_viewable_dropped, i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %18 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container8 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %container8, align 8
  %call9 = call i32 @gimp_container_frozen(%struct._GimpContainer* %19)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.17, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %20 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %context12 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %20, i32 0, i32 1
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context12, align 8
  %22 = load i64, i64* %children_type, align 8
  %call13 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %21, i64 %22)
  store %struct._GimpObject* %call13, %struct._GimpObject** %object, align 8
  %23 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %24 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %25 = bitcast %struct._GimpObject* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_viewable_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpViewable*
  %call16 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %23, %struct._GimpViewable* %26)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_context_changed(%struct._GimpContext* %context, %struct._GimpViewable* %viewable, %struct._GimpContainerView* %view) #1 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %0, %struct._GimpViewable* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_container_view_context_changed, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_drag_dest_unset(%struct._GtkWidget*) #2

declare i32 @gimp_dnd_viewable_dest_remove(%struct._GtkWidget*, i64) #2

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #2

declare i8* @g_object_ref(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_add(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, %struct._GimpContainer* %container) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %view_iface = alloca %struct._GimpContainerViewInterface*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %parent = alloca %struct._GimpViewable*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %parent_insert_data = alloca i8*, align 8
  %insert_data = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* null, i8** %parent_insert_data, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to i8*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call i8* @g_type_interface_peek(i8* %3, i64 %call)
  %4 = bitcast i8* %call1 to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %4, %struct._GimpContainerViewInterface** %view_iface, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %5)
  store %struct._GimpContainerViewPrivate* %call2, %struct._GimpContainerViewPrivate** %private, align 8
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %8 = bitcast %struct._GimpViewable* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %6, %struct._GimpObject* %9)
  store i32 %call5, i32* %index, align 4
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call6 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %10)
  store %struct._GimpViewable* %call6, %struct._GimpViewable** %parent, align 8
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %tobool = icmp ne %struct._GimpViewable* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %12, i32 0, i32 2
  %13 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %15 = bitcast %struct._GimpViewable* %14 to i8*
  %call7 = call i8* @g_hash_table_lookup(%struct._GHashTable* %13, i8* %15)
  store i8* %call7, i8** %parent_insert_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %16, i32 0, i32 7
  %17 = load i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)*, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %18 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %19 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %20 = load i8*, i8** %parent_insert_data, align 8
  %21 = load i32, i32* %index, align 4
  %call8 = call i8* %17(%struct._GimpContainerView* %18, %struct._GimpViewable* %19, i8* %20, i32 %21)
  store i8* %call8, i8** %insert_data, align 8
  %22 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash9 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %22, i32 0, i32 2
  %23 = load %struct._GHashTable*, %struct._GHashTable** %item_hash9, align 8
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %25 = bitcast %struct._GimpViewable* %24 to i8*
  %26 = load i8*, i8** %insert_data, align 8
  %call10 = call i32 @g_hash_table_insert(%struct._GHashTable* %23, i8* %25, i8* %26)
  %27 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface, align 8
  %insert_item_after = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %27, i32 0, i32 8
  %28 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %insert_item_after, align 8
  %tobool11 = icmp ne void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* %28, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %29 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface, align 8
  %insert_item_after13 = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %29, i32 0, i32 8
  %30 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %insert_item_after13, align 8
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %32 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %33 = load i8*, i8** %insert_data, align 8
  call void %30(%struct._GimpContainerView* %31, %struct._GimpViewable* %32, i8* %33)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %34 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call15 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %34)
  store %struct._GimpContainer* %call15, %struct._GimpContainer** %children, align 8
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool16 = icmp ne %struct._GimpContainer* %35, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %36 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  call void @gimp_container_view_add_container(%struct._GimpContainerView* %36, %struct._GimpContainer* %37)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_remove(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, %struct._GimpContainer* %unused) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %unused.addr = alloca %struct._GimpContainer*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %insert_data = alloca i8*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainer* %unused, %struct._GimpContainer** %unused.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call1 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %1)
  store %struct._GimpContainer* %call1, %struct._GimpContainer** %children, align 8
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool = icmp ne %struct._GimpContainer* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  call void @gimp_container_view_remove_container(%struct._GimpContainerView* %3, %struct._GimpContainer* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %5, i32 0, i32 2
  %6 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %8 = bitcast %struct._GimpViewable* %7 to i8*
  %call2 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* %8)
  store i8* %call2, i8** %insert_data, align 8
  %9 = load i8*, i8** %insert_data, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %10 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %11 = bitcast %struct._GimpContainerView* %10 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %13 = bitcast %struct._GTypeClass* %12 to i8*
  %call5 = call i64 @gimp_container_view_interface_get_type() #6
  %call6 = call i8* @g_type_interface_peek(i8* %13, i64 %call5)
  %14 = bitcast i8* %call6 to %struct._GimpContainerViewInterface*
  %remove_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %14, i32 0, i32 9
  %15 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %remove_item, align 8
  %16 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %18 = load i8*, i8** %insert_data, align 8
  call void %15(%struct._GimpContainerView* %16, %struct._GimpViewable* %17, i8* %18)
  %19 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash7 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %19, i32 0, i32 2
  %20 = load %struct._GHashTable*, %struct._GHashTable** %item_hash7, align 8
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %22 = bitcast %struct._GimpViewable* %21 to i8*
  %call8 = call i32 @g_hash_table_remove(%struct._GHashTable* %20, i8* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_reorder(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i32 %new_index, %struct._GimpContainer* %container) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %new_index.addr = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %insert_data = alloca i8*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %1, i32 0, i32 2
  %2 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %4 = bitcast %struct._GimpViewable* %3 to i8*
  %call1 = call i8* @g_hash_table_lookup(%struct._GHashTable* %2, i8* %4)
  store i8* %call1, i8** %insert_data, align 8
  %5 = load i8*, i8** %insert_data, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %7 = bitcast %struct._GimpContainerView* %6 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %9 = bitcast %struct._GTypeClass* %8 to i8*
  %call2 = call i64 @gimp_container_view_interface_get_type() #6
  %call3 = call i8* @g_type_interface_peek(i8* %9, i64 %call2)
  %10 = bitcast i8* %call3 to %struct._GimpContainerViewInterface*
  %reorder_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %10, i32 0, i32 10
  %11 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)** %reorder_item, align 8
  %12 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %14 = load i32, i32* %new_index.addr, align 4
  %15 = load i8*, i8** %insert_data, align 8
  call void %11(%struct._GimpContainerView* %12, %struct._GimpViewable* %13, i32 %14, i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_tree_handler_disconnect(%struct._GimpTreeHandler*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_clear_items(%struct._GimpContainerView* %view) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to i8*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call i8* @g_type_interface_peek(i8* %3, i64 %call)
  %4 = bitcast i8* %call1 to %struct._GimpContainerViewInterface*
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %4, i32 0, i32 12
  %5 = load void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)** %clear_items, align 8
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void %5(%struct._GimpContainerView* %6)
  ret void
}

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_remove_foreach(%struct._GimpViewable* %viewable, %struct._GimpContainerView* %view) #1 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_container_view_remove(%struct._GimpContainerView* %0, %struct._GimpViewable* %1, %struct._GimpContainer* null)
  ret void
}

declare void @g_object_unref(i8*) #2

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #2

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_add_foreach(%struct._GimpViewable* %viewable, %struct._GimpContainerView* %view) #1 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %view_iface = alloca %struct._GimpContainerViewInterface*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %parent = alloca %struct._GimpViewable*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %parent_insert_data = alloca i8*, align 8
  %insert_data = alloca i8*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store i8* null, i8** %parent_insert_data, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to i8*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call i8* @g_type_interface_peek(i8* %3, i64 %call)
  %4 = bitcast i8* %call1 to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %4, %struct._GimpContainerViewInterface** %view_iface, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %5)
  store %struct._GimpContainerViewPrivate* %call2, %struct._GimpContainerViewPrivate** %private, align 8
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call3 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %6)
  store %struct._GimpViewable* %call3, %struct._GimpViewable** %parent, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %tobool = icmp ne %struct._GimpViewable* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %8, i32 0, i32 2
  %9 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %11 = bitcast %struct._GimpViewable* %10 to i8*
  %call4 = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* %11)
  store i8* %call4, i8** %parent_insert_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %12, i32 0, i32 7
  %13 = load i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)*, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %16 = load i8*, i8** %parent_insert_data, align 8
  %call5 = call i8* %13(%struct._GimpContainerView* %14, %struct._GimpViewable* %15, i8* %16, i32 -1)
  store i8* %call5, i8** %insert_data, align 8
  %17 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash6 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %17, i32 0, i32 2
  %18 = load %struct._GHashTable*, %struct._GHashTable** %item_hash6, align 8
  %19 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %20 = bitcast %struct._GimpViewable* %19 to i8*
  %21 = load i8*, i8** %insert_data, align 8
  %call7 = call i32 @g_hash_table_insert(%struct._GHashTable* %18, i8* %20, i8* %21)
  %22 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface, align 8
  %insert_item_after = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %22, i32 0, i32 8
  %23 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %insert_item_after, align 8
  %tobool8 = icmp ne void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* %23, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %24 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface, align 8
  %insert_item_after10 = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %24, i32 0, i32 8
  %25 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %insert_item_after10, align 8
  %26 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %28 = load i8*, i8** %insert_data, align 8
  call void %25(%struct._GimpContainerView* %26, %struct._GimpViewable* %27, i8* %28)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %29 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call12 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %29)
  store %struct._GimpContainer* %call12, %struct._GimpContainer** %children, align 8
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool13 = icmp ne %struct._GimpContainer* %30, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %31 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  call void @gimp_container_view_add_container(%struct._GimpContainerView* %31, %struct._GimpContainer* %32)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  ret void
}

declare i8* @g_type_class_ref(i64) #2

declare %struct._GimpTreeHandler* @gimp_tree_handler_connect(%struct._GimpContainer*, i8*, void ()*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_name_changed(%struct._GimpViewable* %viewable, %struct._GimpContainerView* %view) #1 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  %insert_data = alloca i8*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %0)
  store %struct._GimpContainerViewPrivate* %call, %struct._GimpContainerViewPrivate** %private, align 8
  %1 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %1, i32 0, i32 2
  %2 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %4 = bitcast %struct._GimpViewable* %3 to i8*
  %call1 = call i8* @g_hash_table_lookup(%struct._GHashTable* %2, i8* %4)
  store i8* %call1, i8** %insert_data, align 8
  %5 = load i8*, i8** %insert_data, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %7 = bitcast %struct._GimpContainerView* %6 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %9 = bitcast %struct._GTypeClass* %8 to i8*
  %call2 = call i64 @gimp_container_view_interface_get_type() #6
  %call3 = call i8* @g_type_interface_peek(i8* %9, i64 %call2)
  %10 = bitcast i8* %call3 to %struct._GimpContainerViewInterface*
  %rename_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %10, i32 0, i32 11
  %11 = load void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %rename_item, align 8
  %12 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %14 = load i8*, i8** %insert_data, align 8
  call void %11(%struct._GimpContainerView* %12, %struct._GimpViewable* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_type_class_unref(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_viewable_dropped(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %private = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContainerViewPrivate* @gimp_container_view_get_private(%struct._GimpContainerView* %3)
  store %struct._GimpContainerViewPrivate* %call2, %struct._GimpContainerViewPrivate** %private, align 8
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool3 = icmp ne %struct._GimpContainer* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %7 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private, align 8
  %container5 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container5, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %10 = bitcast %struct._GimpViewable* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %12 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call10 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %12, %struct._GimpViewable* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #2

declare void @g_hash_table_remove_all(%struct._GHashTable*) #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

declare i32 @g_quark_from_static_string(i8*) #2

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #2

declare noalias i8* @g_slice_alloc0(i64) #2

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #3

declare void @g_object_set_qdata_full(%struct._GObject*, i32, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_private_finalize(%struct._GimpContainerViewPrivate* %private) #1 {
entry:
  %private.addr = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GimpContainerViewPrivate* %private, %struct._GimpContainerViewPrivate** %private.addr, align 8
  %0 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private.addr, align 8
  %item_hash = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %0, i32 0, i32 2
  %1 = load %struct._GHashTable*, %struct._GHashTable** %item_hash, align 8
  %tobool = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private.addr, align 8
  %item_hash1 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %2, i32 0, i32 2
  %3 = load %struct._GHashTable*, %struct._GHashTable** %item_hash1, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %3)
  %4 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private.addr, align 8
  %item_hash2 = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %4, i32 0, i32 2
  store %struct._GHashTable* null, %struct._GHashTable** %item_hash2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private.addr, align 8
  %6 = bitcast %struct._GimpContainerViewPrivate* %5 to i8*
  call void @g_slice_free1(i64 56, i8* %6)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_view_private_dispose(%struct._GimpContainerView* %view, %struct._GimpContainerViewPrivate* %private) #1 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %private.addr = alloca %struct._GimpContainerViewPrivate*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainerViewPrivate* %private, %struct._GimpContainerViewPrivate** %private.addr, align 8
  %0 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private.addr, align 8
  %container = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %0, i32 0, i32 0
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool = icmp ne %struct._GimpContainer* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %2, %struct._GimpContainer* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpContainerViewPrivate*, %struct._GimpContainerViewPrivate** %private.addr, align 8
  %context = getelementptr inbounds %struct._GimpContainerViewPrivate, %struct._GimpContainerViewPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool1 = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %5, %struct._GimpContext* null)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_slice_free1(i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gtk_button_clicked(%struct._GtkButton*) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
