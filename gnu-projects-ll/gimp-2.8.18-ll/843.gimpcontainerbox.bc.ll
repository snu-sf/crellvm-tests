; ModuleID = './app/widgets/gimpcontainerbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpContainerBoxClass = type { %struct._GimpEditorClass }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
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
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpContainerViewInterface = type { %struct._GTypeInterface, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, i32)*, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)*, i32 (%struct._GimpContainerView*, %struct._GList**)*, void (i8*)*, i32 }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpContainerView = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
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
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GimpDocked = type opaque
%struct._GimpUIManager = type opaque
%struct._GtkScrolledWindowClass = type { %struct._GtkBinClass, i32, i32 (%struct._GtkScrolledWindow*, i32, i32)*, void (%struct._GtkScrolledWindow*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque

@gimp_container_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpContainerBox\00", align 1
@gimp_container_box_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_container_box_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_container_box_get_type.g_implement_interface_info.1 = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_container_box_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_box_set_size_request = private unnamed_addr constant [36 x i8] c"gimp_container_box_set_size_request\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GIMP_IS_CONTAINER_BOX (box)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"width <= 0 || width >= view_size\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"height <= 0 || height >= view_size\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"scrollbar-spacing\00", align 1
@gimp_container_box_parent_class = internal global i8* null, align 8
@GimpContainerBox_private_offset = internal global i32 0, align 4
@__func__.gimp_container_box_get_preview = private unnamed_addr constant [31 x i8] c"gimp_container_box_get_preview\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"container != NULL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_editor_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_box_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainerBox*)* @gimp_container_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_container_box_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  %call9 = call i64 @gimp_docked_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %6, i64 %call9, %struct._GInterfaceInfo* @gimp_container_box_get_type.g_implement_interface_info.1)
  %7 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_box_get_type.g_define_type_id__volatile to i8*), i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %8 = load volatile i64, i64* @gimp_container_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %8
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_box_parent_class, align 8
  %1 = load i32, i32* @GimpContainerBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainerBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerBoxClass*
  call void @gimp_container_box_class_init(%struct._GimpContainerBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_box_init(%struct._GimpContainerBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpContainerBox*, align 8
  %sb = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainerBox* %box, %struct._GimpContainerBox** %box.addr, align 8
  %call = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  %0 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %0, i32 0, i32 1
  store %struct._GtkWidget* %call, %struct._GtkWidget** %scrolled_win, align 8
  %1 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %2 = bitcast %struct._GimpContainerBox* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %4 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win3 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %3, %struct._GtkWidget* %5, i32 1, i32 1, i32 0)
  %6 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win4 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win4, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %8 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win5 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %8, i32 0, i32 1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win5, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_scrolled_window_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkScrolledWindow*
  %call8 = call %struct._GtkWidget* @gtk_scrolled_window_get_vscrollbar(%struct._GtkScrolledWindow* %11)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %sb, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %sb, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %12, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_box_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %iface, %struct._GimpContainerViewInterface** %iface.addr, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_box_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %iface, %struct._GimpDockedInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_preview = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %0, i32 0, i32 4
  store %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)* @gimp_container_box_get_preview, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)** %get_preview, align 8
  %1 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %1, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_container_box_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_box_set_size_request(%struct._GimpContainerBox* %box, i32 %width, i32 %height) #3 {
entry:
  %box.addr = alloca %struct._GimpContainerBox*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %view = alloca %struct._GimpContainerView*, align 8
  %sw_class = alloca %struct._GtkScrolledWindowClass*, align 8
  %sw_style = alloca %struct._GtkStyle*, align 8
  %sb = alloca %struct._GtkWidget*, align 8
  %req = alloca %struct._GtkRequisition, align 4
  %view_size = alloca i32, align 4
  %scrollbar_width = alloca i32, align 4
  %border_x = alloca i32, align 4
  %border_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerBox* %box, %struct._GimpContainerBox** %box.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %1 = bitcast %struct._GimpContainerBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_box_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_container_box_set_size_request, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %14 = bitcast %struct._GimpContainerBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_view_interface_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %15, %struct._GimpContainerView** %view, align 8
  %16 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call13 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %16, i32* null)
  store i32 %call13, i32* %view_size, align 4
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %17 = load i32, i32* %width.addr, align 4
  %cmp15 = icmp sle i32 %17, 0
  br i1 %cmp15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.14
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %view_size, align 4
  %cmp16 = icmp sge i32 %18, %19
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %lor.lhs.false, %do.body.14
  br label %if.end.19

if.else.18:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_container_box_set_size_request, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %20 = load i32, i32* %height.addr, align 4
  %cmp22 = icmp sle i32 %20, 0
  br i1 %cmp22, label %if.then.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %do.body.21
  %21 = load i32, i32* %height.addr, align 4
  %22 = load i32, i32* %view_size, align 4
  %cmp24 = icmp sge i32 %21, %22
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %lor.lhs.false.23, %do.body.21
  br label %if.end.27

if.else.26:                                       ; preds = %lor.lhs.false.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_container_box_set_size_request, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %23 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %23, i32 0, i32 1
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %27 = bitcast %struct._GTypeClass* %26 to %struct._GtkScrolledWindowClass*
  store %struct._GtkScrolledWindowClass* %27, %struct._GtkScrolledWindowClass** %sw_class, align 8
  %28 = load %struct._GtkScrolledWindowClass*, %struct._GtkScrolledWindowClass** %sw_class, align 8
  %scrollbar_spacing = getelementptr inbounds %struct._GtkScrolledWindowClass, %struct._GtkScrolledWindowClass* %28, i32 0, i32 1
  %29 = load i32, i32* %scrollbar_spacing, align 4
  %cmp30 = icmp sge i32 %29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %do.end.28
  %30 = load %struct._GtkScrolledWindowClass*, %struct._GtkScrolledWindowClass** %sw_class, align 8
  %scrollbar_spacing32 = getelementptr inbounds %struct._GtkScrolledWindowClass, %struct._GtkScrolledWindowClass* %30, i32 0, i32 1
  %31 = load i32, i32* %scrollbar_spacing32, align 4
  store i32 %31, i32* %scrollbar_width, align 4
  br label %if.end.37

if.else.33:                                       ; preds = %do.end.28
  %32 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win34 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win34, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_widget_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call35)
  %35 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32* %scrollbar_width, i8* null)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.33, %if.then.31
  %36 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win38 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win38, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_scrolled_window_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call39)
  %39 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkScrolledWindow*
  %call41 = call %struct._GtkWidget* @gtk_scrolled_window_get_vscrollbar(%struct._GtkScrolledWindow* %39)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %sb, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %sb, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %40, %struct._GtkRequisition* %req)
  %width42 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %req, i32 0, i32 0
  %41 = load i32, i32* %width42, align 4
  %42 = load i32, i32* %scrollbar_width, align 4
  %add = add nsw i32 %42, %41
  store i32 %add, i32* %scrollbar_width, align 4
  %43 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %44 = bitcast %struct._GimpContainerBox* %43 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call43)
  %45 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  %call45 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %45)
  store i32 %call45, i32* %border_y, align 4
  store i32 %call45, i32* %border_x, align 4
  %46 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win46 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %46, i32 0, i32 1
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win46, align 8
  %call47 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %47)
  store %struct._GtkStyle* %call47, %struct._GtkStyle** %sw_style, align 8
  %48 = load %struct._GtkStyle*, %struct._GtkStyle** %sw_style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %48, i32 0, i32 12
  %49 = load i32, i32* %xthickness, align 4
  %mul = mul nsw i32 %49, 2
  %50 = load i32, i32* %scrollbar_width, align 4
  %add48 = add nsw i32 %mul, %50
  %51 = load i32, i32* %border_x, align 4
  %add49 = add nsw i32 %51, %add48
  store i32 %add49, i32* %border_x, align 4
  %52 = load %struct._GtkStyle*, %struct._GtkStyle** %sw_style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %52, i32 0, i32 13
  %53 = load i32, i32* %ythickness, align 4
  %mul50 = mul nsw i32 %53, 2
  %54 = load i32, i32* %border_y, align 4
  %add51 = add nsw i32 %54, %mul50
  store i32 %add51, i32* %border_y, align 4
  %55 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box.addr, align 8
  %scrolled_win52 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %55, i32 0, i32 1
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win52, align 8
  %57 = load i32, i32* %width.addr, align 4
  %cmp53 = icmp sgt i32 %57, 0
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %58 = load i32, i32* %width.addr, align 4
  %59 = load i32, i32* %border_x, align 4
  %add54 = add nsw i32 %58, %59
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add54, %cond.true ], [ -1, %cond.false ]
  %60 = load i32, i32* %height.addr, align 4
  %cmp55 = icmp sgt i32 %60, 0
  br i1 %cmp55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.end
  %61 = load i32, i32* %height.addr, align 4
  %62 = load i32, i32* %border_y, align 4
  %add57 = add nsw i32 %61, %62
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.56
  %cond60 = phi i32 [ %add57, %cond.true.56 ], [ -1, %cond.false.58 ]
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %56, i32 %cond, i32 %cond60)
  br label %return

return:                                           ; preds = %cond.end.59, %if.else.26, %if.else.18, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gtk_scrolled_window_get_vscrollbar(%struct._GtkScrolledWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_box_class_init(%struct._GimpContainerBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpContainerBoxClass* %klass, %struct._GimpContainerBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerBoxClass*, %struct._GimpContainerBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_container_box_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_view_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_view_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  call void @gimp_container_view_install_properties(%struct._GObjectClass* %6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_box_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpContainerBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerBox*
  store %struct._GimpContainerBox* %2, %struct._GimpContainerBox** %box, align 8
  %3 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %4 = bitcast %struct._GimpContainerBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %6 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  call void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView* %5, %struct._GtkWidget* %7)
  %8 = load i8*, i8** @gimp_container_box_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 9
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i8*, i8** @gimp_container_box_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 9
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_container_view_set_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_container_view_get_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_container_view_install_properties(%struct._GObjectClass*) #1

declare void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_container_box_get_preview(%struct._GimpDocked* %docked, %struct._GimpContext* %context, i32 %size) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %size.addr = alloca i32, align 4
  %box = alloca %struct._GimpContainerBox*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %border_width = alloca i32, align 4
  %prop_name = alloca i8*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerBox*
  store %struct._GimpContainerBox* %2, %struct._GimpContainerBox** %box, align 8
  %3 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %4 = bitcast %struct._GimpDocked* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %5, %struct._GimpContainerView** %view, align 8
  store i32 1, i32* %border_width, align 4
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call4 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %6)
  store %struct._GimpContainer* %call4, %struct._GimpContainer** %container, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %cmp = icmp ne %struct._GimpContainer* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_container_box_get_preview, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %9 = bitcast %struct._GimpContainerBox* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  %call7 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %10)
  %11 = load i32, i32* %size.addr, align 4
  %call8 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %call7, i32 %11, i32* %width, i32* %height)
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call9 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %12)
  %call10 = call i8* @gimp_context_type_to_prop_name(i64 %call9)
  store i8* %call10, i8** %prop_name, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %16 = load i8*, i8** %prop_name, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = load i32, i32* %height, align 4
  %call12 = call %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject* %15, i8* %16, %struct._GimpContext* %17, i32 %18)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %preview, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_view_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %21, i32 0, i32 3
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %size15 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %22, i32 0, i32 14
  store i32 -1, i32* %size15, align 4
  %23 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call16 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %23, i32* %border_width)
  %24 = load i32, i32* %border_width, align 4
  %cmp17 = icmp slt i32 1, %24
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %25 = load i32, i32* %border_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* %border_width, align 4
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_view_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpView*
  %renderer20 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %28, i32 0, i32 3
  %29 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer20, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %height, align 4
  %32 = load i32, i32* %border_width, align 4
  call void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer* %29, i32 %30, i32 %31, i32 %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  store %struct._GtkWidget* %33, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %34
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_box_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %2, %struct._GimpContext* %3)
  ret void
}

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare i8* @gimp_context_type_to_prop_name(i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject*, i8*, %struct._GimpContext*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare void @gimp_view_renderer_set_size_full(%struct._GimpViewRenderer*, i32, i32, i32) #1

declare void @gimp_container_view_set_context(%struct._GimpContainerView*, %struct._GimpContext*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
