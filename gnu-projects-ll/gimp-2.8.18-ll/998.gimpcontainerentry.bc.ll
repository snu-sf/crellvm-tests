; ModuleID = './app/widgets/gimpcontainerentry.bc'
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
%struct._GimpContainerEntryClass = type { %struct._GtkEntryClass }
%struct._GtkEntryClass = type { %struct._GtkWidgetClass, void (%struct._GtkEntry*, %struct._GtkMenu*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*, i32, i32, i32)*, void (%struct._GtkEntry*, i8*)*, void (%struct._GtkEntry*, i32, i32)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*)*, void (%struct._GtkEntry*, i32*, i32*, i32*, i32*)*, void ()*, void ()* }
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
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpContainerEntry = type { %struct._GtkEntry }
%struct._GtkEntryCompletion = type { %struct._GObject, %struct._GtkEntryCompletionPrivate* }
%struct._GtkEntryCompletionPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeStore = type { %struct._GtkTreeStore }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkCellLayout = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque

@gimp_container_entry_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpContainerEntry\00", align 1
@gimp_container_entry_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_container_entry_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_entry_new = private unnamed_addr constant [25 x i8] c"gimp_container_entry_new\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"container == NULL || GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@gimp_container_entry_parent_class = internal global i8* null, align 8
@GimpContainerEntry_private_offset = internal global i32 0, align 4
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"inline-completion\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"popup-single-match\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"popup-set-width\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"match-selected\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_entry_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_entry_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_entry_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_entry_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_entry_class_intern_init to void (i8*, i8*)*), i32 208, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainerEntry*)* @gimp_container_entry_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_container_entry_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_entry_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_container_entry_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_entry_parent_class, align 8
  %1 = load i32, i32* @GimpContainerEntry_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainerEntry_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerEntryClass*
  call void @gimp_container_entry_class_init(%struct._GimpContainerEntryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_init(%struct._GimpContainerEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpContainerEntry*, align 8
  %completion = alloca %struct._GtkEntryCompletion*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %types = alloca [5 x i64], align 16
  %n_types = alloca i32, align 4
  store %struct._GimpContainerEntry* %entry1, %struct._GimpContainerEntry** %entry.addr, align 8
  store i32 0, i32* %n_types, align 4
  %call = call i64 @gtk_entry_completion_get_type() #5
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* null)
  %0 = bitcast i8* %call2 to %struct._GtkEntryCompletion*
  store %struct._GtkEntryCompletion* %0, %struct._GtkEntryCompletion** %completion, align 8
  %arraydecay = getelementptr inbounds [5 x i64], [5 x i64]* %types, i32 0, i32 0
  call void @gimp_container_tree_store_columns_init(i64* %arraydecay, i32* %n_types)
  %1 = load %struct._GimpContainerEntry*, %struct._GimpContainerEntry** %entry.addr, align 8
  %2 = bitcast %struct._GimpContainerEntry* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_view_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainerView*
  %4 = load i32, i32* %n_types, align 4
  %arraydecay5 = getelementptr inbounds [5 x i64], [5 x i64]* %types, i32 0, i32 0
  %call6 = call %struct._GtkTreeModel* @gimp_container_tree_store_new(%struct._GimpContainerView* %3, i32 %4, i64* %arraydecay5)
  store %struct._GtkTreeModel* %call6, %struct._GtkTreeModel** %model, align 8
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = bitcast %struct._GtkTreeModel* %5 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_container_tree_store_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call7)
  %7 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpContainerTreeStore*
  call void @gimp_container_tree_store_set_use_name(%struct._GimpContainerTreeStore* %7, i32 1)
  %8 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void @gtk_entry_completion_set_model(%struct._GtkEntryCompletion* %8, %struct._GtkTreeModel* %9)
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %11 = bitcast %struct._GtkTreeModel* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._GimpContainerEntry*, %struct._GimpContainerEntry** %entry.addr, align 8
  %13 = bitcast %struct._GimpContainerEntry* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_entry_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkEntry*
  %15 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_set_completion(%struct._GtkEntry* %14, %struct._GtkEntryCompletion* %15)
  %16 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %17 = bitcast %struct._GtkEntryCompletion* %16 to i8*
  %18 = load %struct._GimpContainerEntry*, %struct._GimpContainerEntry** %entry.addr, align 8
  %19 = bitcast %struct._GimpContainerEntry* %18 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEntryCompletion*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GimpContainerView*)* @gimp_container_entry_match_selected to void ()*), i8* %19, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %21 = bitcast %struct._GtkEntryCompletion* %20 to i8*
  call void @g_object_unref(i8* %21)
  %call12 = call %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new()
  store %struct._GtkCellRenderer* %call12, %struct._GtkCellRenderer** %cell, align 8
  %22 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %23 = bitcast %struct._GtkEntryCompletion* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_cell_layout_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkCellLayout*
  %25 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %24, %struct._GtkCellRenderer* %25, i32 0)
  %26 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %27 = bitcast %struct._GtkEntryCompletion* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_cell_layout_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkCellLayout*
  %29 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %28, %struct._GtkCellRenderer* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* null)
  %30 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %31 = bitcast %struct._GtkTreeModel* %30 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_container_tree_store_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call17)
  %32 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpContainerTreeStore*
  %33 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gimp_container_tree_store_add_renderer_cell(%struct._GimpContainerTreeStore* %32, %struct._GtkCellRenderer* %33)
  %34 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_completion_set_text_column(%struct._GtkEntryCompletion* %34, i32 1)
  %35 = load %struct._GimpContainerEntry*, %struct._GimpContainerEntry** %entry.addr, align 8
  %36 = bitcast %struct._GimpContainerEntry* %35 to i8*
  %37 = load %struct._GimpContainerEntry*, %struct._GimpContainerEntry** %entry.addr, align 8
  %38 = bitcast %struct._GimpContainerEntry* %37 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkEntry*, %struct._GimpContainerView*)* @gimp_container_entry_changed to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
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
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %5, i32 0, i32 5
  store void (%struct._GimpContainerView*, %struct._GimpContext*)* @gimp_container_entry_set_context, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 7
  store i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)* @gimp_container_entry_insert_item, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %remove_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 9
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_entry_remove_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %remove_item, align 8
  %8 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %reorder_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %8, i32 0, i32 10
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)* @gimp_container_entry_reorder_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)** %reorder_item, align 8
  %9 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %rename_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %9, i32 0, i32 11
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_entry_rename_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %rename_item, align 8
  %10 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %10, i32 0, i32 1
  store i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_entry_select_item, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %11 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %11, i32 0, i32 12
  store void (%struct._GimpContainerView*)* @gimp_container_entry_clear_items, void (%struct._GimpContainerView*)** %clear_items, align 8
  %12 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %12, i32 0, i32 13
  store void (%struct._GimpContainerView*)* @gimp_container_entry_set_view_size, void (%struct._GimpContainerView*)** %set_view_size, align 8
  %13 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_data_free = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %13, i32 0, i32 15
  store void (i8*)* bitcast (void (%struct._GtkTreeIter*)* @gtk_tree_iter_free to void (i8*)*), void (i8*)** %insert_data_free, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_container_entry_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i32 %view_size, i32 %view_border_width) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %entry1 = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst17 = alloca %struct._GTypeInstance*, align 8
  %__t19 = alloca i64, align 8
  %__r22 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.10, label %lor.lhs.false

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
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp4 = icmp eq i64 %8, %9
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8, %do.body
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp14 = icmp eq %struct._GimpContext* %14, null
  br i1 %cmp14, label %if.then.39, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %do.body.13
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %16 = bitcast %struct._GimpContext* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst17, align 8
  %call20 = call i64 @gimp_context_get_type() #5
  store i64 %call20, i64* %__t19, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %tobool23 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false.15
  store i32 0, i32* %__r22, align 4
  br label %if.end.36

if.else.25:                                       ; preds = %lor.lhs.false.15
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %tobool27 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.else.33

land.lhs.true.28:                                 ; preds = %if.else.25
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type30, align 8
  %23 = load i64, i64* %__t19, align 8
  %cmp31 = icmp eq i64 %22, %23
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.28
  store i32 1, i32* %__r22, align 4
  br label %if.end.35

if.else.33:                                       ; preds = %land.lhs.true.28, %if.else.25
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %25 = load i64, i64* %__t19, align 8
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call34, i32* %__r22, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  %26 = load i32, i32* %__r22, align 4
  store i32 %26, i32* %tmp37
  %27 = load i32, i32* %tmp37
  %tobool38 = icmp ne i32 %27, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.end.36, %do.body.13
  br label %if.end.41

if.else.40:                                       ; preds = %if.end.36
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_container_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.41:                                        ; preds = %if.then.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %call43 = call i64 @gimp_container_entry_get_type() #5
  %call44 = call i8* (i64, i8*, ...) @g_object_new(i64 %call43, i8* null)
  %28 = bitcast i8* %call44 to %struct._GtkWidget*
  store %struct._GtkWidget* %28, %struct._GtkWidget** %entry1, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_container_view_interface_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call45)
  %31 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %31, %struct._GimpContainerView** %view, align 8
  %32 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %33 = load i32, i32* %view_size.addr, align 4
  %34 = load i32, i32* %view_border_width.addr, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %32, i32 %33, i32 %34)
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool47 = icmp ne %struct._GimpContainer* %35, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end.42
  %36 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %36, %struct._GimpContainer* %37)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %do.end.42
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool50 = icmp ne %struct._GimpContext* %38, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  %39 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %39, %struct._GimpContext* %40)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.49
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  store %struct._GtkWidget* %41, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.else.40, %if.else.11
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %42
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

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_class_init(%struct._GimpContainerEntryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerEntryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpContainerEntryClass* %klass, %struct._GimpContainerEntryClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerEntryClass*, %struct._GimpContainerEntryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerEntryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_view_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_view_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  call void @gimp_container_view_install_properties(%struct._GObjectClass* %5)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare void @gimp_container_view_set_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_container_view_get_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_container_view_install_properties(%struct._GObjectClass*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GtkTreeModel* @gimp_container_entry_get_model(%struct._GimpContainerView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %1, i32 0, i32 5
  %2 = load void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %2(%struct._GimpContainerView* %3, %struct._GimpContext* %4)
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %7 = bitcast %struct._GtkTreeModel* %6 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_tree_store_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call1)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerTreeStore*
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_tree_store_set_context(%struct._GimpContainerTreeStore* %8, %struct._GimpContext* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_container_entry_insert_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %parent_insert_data, i32 %index) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %parent_insert_data.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %parent_insert_data, i8** %parent_insert_data.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GtkTreeModel* @gimp_container_entry_get_model(%struct._GimpContainerView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = bitcast %struct._GtkTreeModel* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_tree_store_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerTreeStore*
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = load i8*, i8** %parent_insert_data.addr, align 8
  %6 = bitcast i8* %5 to %struct._GtkTreeIter*
  %7 = load i32, i32* %index.addr, align 4
  %call3 = call %struct._GtkTreeIter* @gimp_container_tree_store_insert_item(%struct._GimpContainerTreeStore* %3, %struct._GimpViewable* %4, %struct._GtkTreeIter* %6, i32 %7)
  %8 = bitcast %struct._GtkTreeIter* %call3 to i8*
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_remove_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GtkTreeModel* @gimp_container_entry_get_model(%struct._GimpContainerView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = bitcast %struct._GtkTreeModel* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_tree_store_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerTreeStore*
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = load i8*, i8** %insert_data.addr, align 8
  %6 = bitcast i8* %5 to %struct._GtkTreeIter*
  call void @gimp_container_tree_store_remove_item(%struct._GimpContainerTreeStore* %3, %struct._GimpViewable* %4, %struct._GtkTreeIter* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_reorder_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i32 %new_index, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %new_index.addr = alloca i32, align 4
  %insert_data.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GtkTreeModel* @gimp_container_entry_get_model(%struct._GimpContainerView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = bitcast %struct._GtkTreeModel* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_tree_store_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerTreeStore*
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = load i32, i32* %new_index.addr, align 4
  %6 = load i8*, i8** %insert_data.addr, align 8
  %7 = bitcast i8* %6 to %struct._GtkTreeIter*
  call void @gimp_container_tree_store_reorder_item(%struct._GimpContainerTreeStore* %3, %struct._GimpViewable* %4, i32 %5, %struct._GtkTreeIter* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_rename_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GtkTreeModel* @gimp_container_entry_get_model(%struct._GimpContainerView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = bitcast %struct._GtkTreeModel* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_tree_store_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerTreeStore*
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = load i8*, i8** %insert_data.addr, align 8
  %6 = bitcast i8* %5 to %struct._GtkTreeIter*
  %call3 = call i32 @gimp_container_tree_store_rename_item(%struct._GimpContainerTreeStore* %3, %struct._GimpViewable* %4, %struct._GtkTreeIter* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_entry_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %entry1 = alloca %struct._GtkEntry*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  store %struct._GtkEntry* %2, %struct._GtkEntry** %entry1, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %4, %struct._GtkTreeIter** %iter, align 8
  %5 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %6 = bitcast %struct._GtkEntry* %5 to i8*
  %7 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %8 = bitcast %struct._GimpContainerView* %7 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %6, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkEntry*, %struct._GimpContainerView*)* @gimp_container_entry_changed to i8*), i8* %8)
  %9 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %12 = bitcast %struct._GimpViewable* %11 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %12)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  call void @gtk_entry_set_text(%struct._GtkEntry* %9, i8* %cond)
  %13 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %14 = bitcast %struct._GtkEntry* %13 to i8*
  %15 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %16 = bitcast %struct._GimpContainerView* %15 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkEntry*, %struct._GimpContainerView*)* @gimp_container_entry_changed to i8*), i8* %16)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_clear_items(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GtkTreeModel* @gimp_container_entry_get_model(%struct._GimpContainerView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %3 = bitcast %struct._GtkTreeModel* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_tree_store_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerTreeStore*
  call void @gimp_container_tree_store_clear_items(%struct._GimpContainerTreeStore* %4)
  %5 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %5, i32 0, i32 12
  %6 = load void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)** %clear_items, align 8
  %7 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void %6(%struct._GimpContainerView* %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_set_view_size(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GtkTreeModel* @gimp_container_entry_get_model(%struct._GimpContainerView* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = bitcast %struct._GtkTreeModel* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_tree_store_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerTreeStore*
  call void @gimp_container_tree_store_set_view_size(%struct._GimpContainerTreeStore* %3)
  ret void
}

declare void @gtk_tree_iter_free(%struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkTreeModel* @gimp_container_entry_get_model(%struct._GimpContainerView* %view) #3 {
entry:
  %retval = alloca %struct._GtkTreeModel*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %completion = alloca %struct._GtkEntryCompletion*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call %struct._GtkEntryCompletion* @gtk_entry_get_completion(%struct._GtkEntry* %2)
  store %struct._GtkEntryCompletion* %call2, %struct._GtkEntryCompletion** %completion, align 8
  %3 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %tobool = icmp ne %struct._GtkEntryCompletion* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  %call3 = call %struct._GtkTreeModel* @gtk_entry_completion_get_model(%struct._GtkEntryCompletion* %4)
  store %struct._GtkTreeModel* %call3, %struct._GtkTreeModel** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GtkTreeModel* null, %struct._GtkTreeModel** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %retval
  ret %struct._GtkTreeModel* %5
}

declare void @gimp_container_tree_store_set_context(%struct._GimpContainerTreeStore*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_store_get_type() #2

declare %struct._GtkEntryCompletion* @gtk_entry_get_completion(%struct._GtkEntry*) #1

declare %struct._GtkTreeModel* @gtk_entry_completion_get_model(%struct._GtkEntryCompletion*) #1

declare %struct._GtkTreeIter* @gimp_container_tree_store_insert_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*, i32) #1

declare void @gimp_container_tree_store_remove_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*) #1

declare void @gimp_container_tree_store_reorder_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, i32, %struct._GtkTreeIter*) #1

declare i32 @gimp_container_tree_store_rename_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_changed(%struct._GtkEntry* %entry1, %struct._GimpContainerView* %view) #3 {
entry:
  %entry.addr = alloca %struct._GtkEntry*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %object = alloca %struct._GimpObject*, align 8
  %text = alloca i8*, align 8
  store %struct._GtkEntry* %entry1, %struct._GtkEntry** %entry.addr, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %0)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool = icmp ne %struct._GimpContainer* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkEntry*, %struct._GtkEntry** %entry.addr, align 8
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  store i8* %call2, i8** %text, align 8
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %4 = load i8*, i8** %text, align 8
  %call3 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %3, i8* %4)
  store %struct._GimpObject* %call3, %struct._GimpObject** %object, align 8
  %5 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool4 = icmp ne %struct._GimpObject* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %7 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %8 = bitcast %struct._GimpObject* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_viewable_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpViewable*
  %call8 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %6, %struct._GimpViewable* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.5, %if.end
  ret void
}

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

declare i32 @gimp_container_view_item_selected(%struct._GimpContainerView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_container_tree_store_clear_items(%struct._GimpContainerTreeStore*) #1

declare void @gimp_container_tree_store_set_view_size(%struct._GimpContainerTreeStore*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_completion_get_type() #2

declare void @gimp_container_tree_store_columns_init(i64*, i32*) #1

declare %struct._GtkTreeModel* @gimp_container_tree_store_new(%struct._GimpContainerView*, i32, i64*) #1

declare void @gimp_container_tree_store_set_use_name(%struct._GimpContainerTreeStore*, i32) #1

declare void @gtk_entry_completion_set_model(%struct._GtkEntryCompletion*, %struct._GtkTreeModel*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_entry_set_completion(%struct._GtkEntry*, %struct._GtkEntryCompletion*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_entry_match_selected(%struct._GtkEntryCompletion* %widget, %struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, %struct._GimpContainerView* %view) #3 {
entry:
  %widget.addr = alloca %struct._GtkEntryCompletion*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GtkEntryCompletion* %widget, %struct._GtkEntryCompletion** %widget.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %2 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 3
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %2, %struct._GimpViewable* %4)
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %6 = bitcast %struct._GimpViewRenderer* %5 to i8*
  call void @g_object_unref(i8* %6)
  ret void
}

declare %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new() #1

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

declare void @gtk_cell_layout_set_attributes(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) #1

declare void @gimp_container_tree_store_add_renderer_cell(%struct._GimpContainerTreeStore*, %struct._GtkCellRenderer*) #1

declare void @gtk_entry_completion_set_text_column(%struct._GtkEntryCompletion*, i32) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
