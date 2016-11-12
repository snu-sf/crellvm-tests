; ModuleID = './app/widgets/gimpcontainereditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpContainerEditorClass = type { %struct._GtkBoxClass, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* }
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
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type { i32, %struct._GimpContainer*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*, i8*, i8* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GtkOrientable = type opaque
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDocked = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_container_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpContainerEditor\00", align 1
@gimp_container_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_container_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_container_editor_parent_class = internal global i8* null, align 8
@GimpContainerEditor_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"view-type\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"view-border-width\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"gimpcontainereditor.c\00", align 1
@__func__.gimp_container_editor_constructed = private unnamed_addr constant [34 x i8] c"gimp_container_editor_constructed\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"GIMP_IS_CONTAINER (editor->priv->container)\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"GIMP_IS_CONTEXT (editor->priv->context)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"activate-item\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"context-item\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 848, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_editor_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainerEditor*)* @gimp_container_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_container_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_container_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_editor_parent_class, align 8
  %1 = load i32, i32* @GimpContainerEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainerEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerEditorClass*
  call void @gimp_container_editor_class_init(%struct._GimpContainerEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_init(%struct._GimpContainerEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpContainerEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpContainerEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_editor_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpContainerEditorPrivate*
  %6 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %6, i32 0, i32 2
  store %struct._GimpContainerEditorPrivate* %5, %struct._GimpContainerEditorPrivate** %priv, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %iface, %struct._GimpDockedInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_preview = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %0, i32 0, i32 4
  store %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)* @gimp_container_editor_get_preview, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)** %get_preview, align 8
  %1 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %1, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_container_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  %2 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_menu = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %2, i32 0, i32 6
  store %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)* @gimp_container_editor_get_menu, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)** %get_menu, align 8
  %3 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %has_button_bar = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %3, i32 0, i32 9
  store i32 (%struct._GimpDocked*)* @gimp_container_editor_has_button_bar, i32 (%struct._GimpDocked*)** %has_button_bar, align 8
  %4 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_show_button_bar = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %4, i32 0, i32 10
  store void (%struct._GimpDocked*, i32)* @gimp_container_editor_set_show_button_bar, void (%struct._GimpDocked*, i32)** %set_show_button_bar, align 8
  %5 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %get_show_button_bar = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %5, i32 0, i32 11
  store i32 (%struct._GimpDocked*)* @gimp_container_editor_get_show_button_bar, i32 (%struct._GimpDocked*)** %get_show_button_bar, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_editor_get_selection_mode(%struct._GimpContainerEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %2 = bitcast %struct._GimpContainerView* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  %call2 = call i32 @gimp_container_view_get_selection_mode(%struct._GimpContainerView* %3)
  ret i32 %call2
}

declare i32 @gimp_container_view_get_selection_mode(%struct._GimpContainerView*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_container_editor_set_selection_mode(%struct._GimpContainerEditor* %editor, i32 %mode) #3 {
entry:
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %mode.addr = alloca i32, align 4
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %2 = bitcast %struct._GimpContainerView* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  %4 = load i32, i32* %mode.addr, align 4
  call void @gimp_container_view_set_selection_mode(%struct._GimpContainerView* %3, i32 %4)
  ret void
}

declare void @gimp_container_view_set_selection_mode(%struct._GimpContainerView*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_class_init(%struct._GimpContainerEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpContainerEditorClass* %klass, %struct._GimpContainerEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_container_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_container_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %7, i32 0, i32 1
  store void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* null, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %select_item, align 8
  %8 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass.addr, align 8
  %activate_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %8, i32 0, i32 2
  store void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* null, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item, align 8
  %9 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass.addr, align 8
  %context_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %9, i32 0, i32 3
  store void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* @gimp_container_editor_real_context_item, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %context_item, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_view_type_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call2)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_container_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_context_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call6)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2048, i32 32, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 4, %struct._GParamSpec* %call7)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 0, i32 16, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 5, %struct._GParamSpec* %call8)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i64 @gimp_menu_factory_get_type() #7
  %call10 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 6, %struct._GParamSpec* %call10)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 7, %struct._GParamSpec* %call11)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 8, %struct._GParamSpec* %call12)
  %18 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpContainerEditorClass* %18 to i8*
  call void @g_type_class_add_private(i8* %19, i64 56)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__inst74 = alloca %struct._GTypeInstance*, align 8
  %__t78 = alloca i64, align 8
  %__r81 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %object142 = alloca %struct._GimpObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_container_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_container_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %12, i32 0, i32 2
  %13 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %13, i32 0, i32 1
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_container_get_type() #7
  store i64 %call5, i64* %__t, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %22 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %21, %22
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %24 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %25 = load i32, i32* %__r, align 4
  store i32 %25, i32* %tmp
  %26 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %26, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0)) #9
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %27 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv22 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %27, i32 0, i32 2
  %28 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv22, align 8
  %context = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %28, i32 0, i32 2
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %30 = bitcast %struct._GimpContext* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst21, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.19
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.19
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type35, align 8
  %37 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %36, %37
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %39 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %40 = load i32, i32* %__r27, align 4
  store i32 %40, i32* %tmp42
  %41 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %41, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0)) #9
  unreachable

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %42 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv48 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %42, i32 0, i32 2
  %43 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv48, align 8
  %view_type = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %43, i32 0, i32 0
  %44 = load i32, i32* %view_type, align 4
  switch i32 %44, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %do.end.47
  %45 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv49 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %45, i32 0, i32 2
  %46 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv49, align 8
  %container50 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %46, i32 0, i32 1
  %47 = load %struct._GimpContainer*, %struct._GimpContainer** %container50, align 8
  %48 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv51 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %48, i32 0, i32 2
  %49 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv51, align 8
  %context52 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %49, i32 0, i32 2
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context52, align 8
  %51 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv53 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %51, i32 0, i32 2
  %52 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv53, align 8
  %view_size = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %52, i32 0, i32 3
  %53 = load i32, i32* %view_size, align 4
  %54 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv54 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %54, i32 0, i32 2
  %55 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv54, align 8
  %view_border_width = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %55, i32 0, i32 4
  %56 = load i32, i32* %view_border_width, align 4
  %call55 = call %struct._GtkWidget* @gimp_container_grid_view_new(%struct._GimpContainer* %47, %struct._GimpContext* %50, i32 %53, i32 %56)
  %57 = bitcast %struct._GtkWidget* %call55 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_container_view_interface_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call56)
  %58 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpContainerView*
  %59 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %59, i32 0, i32 1
  store %struct._GimpContainerView* %58, %struct._GimpContainerView** %view, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %do.end.47
  %60 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv59 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %60, i32 0, i32 2
  %61 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv59, align 8
  %container60 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %61, i32 0, i32 1
  %62 = load %struct._GimpContainer*, %struct._GimpContainer** %container60, align 8
  %63 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv61 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %63, i32 0, i32 2
  %64 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv61, align 8
  %context62 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %64, i32 0, i32 2
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context62, align 8
  %66 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv63 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %66, i32 0, i32 2
  %67 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv63, align 8
  %view_size64 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %67, i32 0, i32 3
  %68 = load i32, i32* %view_size64, align 4
  %69 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv65 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %69, i32 0, i32 2
  %70 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv65, align 8
  %view_border_width66 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %70, i32 0, i32 4
  %71 = load i32, i32* %view_border_width66, align 4
  %call67 = call %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer* %62, %struct._GimpContext* %65, i32 %68, i32 %71)
  %72 = bitcast %struct._GtkWidget* %call67 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_container_view_interface_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call68)
  %73 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpContainerView*
  %74 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view70 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %74, i32 0, i32 1
  store %struct._GimpContainerView* %73, %struct._GimpContainerView** %view70, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.47
  br label %do.body.71

do.body.71:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_editor_constructed, i32 0, i32 0), i8* null) #9
  unreachable

do.end.72:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.72, %sw.bb.58, %sw.bb
  %75 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv75 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %75, i32 0, i32 2
  %76 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv75, align 8
  %container76 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %76, i32 0, i32 1
  %77 = load %struct._GimpContainer*, %struct._GimpContainer** %container76, align 8
  %78 = bitcast %struct._GimpContainer* %77 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %78, %struct._GTypeInstance** %__inst74, align 8
  %call79 = call i64 @gimp_list_get_type() #7
  store i64 %call79, i64* %__t78, align 8
  %79 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst74, align 8
  %tobool82 = icmp ne %struct._GTypeInstance* %79, null
  br i1 %tobool82, label %if.else.84, label %if.then.83

if.then.83:                                       ; preds = %sw.epilog
  store i32 0, i32* %__r81, align 4
  br label %if.end.95

if.else.84:                                       ; preds = %sw.epilog
  %80 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst74, align 8
  %g_class85 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %80, i32 0, i32 0
  %81 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class85, align 8
  %tobool86 = icmp ne %struct._GTypeClass* %81, null
  br i1 %tobool86, label %land.lhs.true.87, label %if.else.92

land.lhs.true.87:                                 ; preds = %if.else.84
  %82 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst74, align 8
  %g_class88 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %82, i32 0, i32 0
  %83 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class88, align 8
  %g_type89 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %83, i32 0, i32 0
  %84 = load i64, i64* %g_type89, align 8
  %85 = load i64, i64* %__t78, align 8
  %cmp90 = icmp eq i64 %84, %85
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %land.lhs.true.87
  store i32 1, i32* %__r81, align 4
  br label %if.end.94

if.else.92:                                       ; preds = %land.lhs.true.87, %if.else.84
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst74, align 8
  %87 = load i64, i64* %__t78, align 8
  %call93 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %86, i64 %87) #8
  store i32 %call93, i32* %__r81, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.91
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.83
  %88 = load i32, i32* %__r81, align 4
  store i32 %88, i32* %tmp96
  %89 = load i32, i32* %tmp96
  %tobool97 = icmp ne i32 %89, 0
  br i1 %tobool97, label %if.then.98, label %if.end.107

if.then.98:                                       ; preds = %if.end.95
  %90 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view99 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %90, i32 0, i32 1
  %91 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view99, align 8
  %92 = bitcast %struct._GimpContainerView* %91 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_container_view_interface_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call100)
  %93 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpContainerView*
  %94 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv102 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %94, i32 0, i32 2
  %95 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv102, align 8
  %container103 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %95, i32 0, i32 1
  %96 = load %struct._GimpContainer*, %struct._GimpContainer** %container103, align 8
  %97 = bitcast %struct._GimpContainer* %96 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_list_get_type() #7
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call104)
  %98 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpList*
  %sort_func = getelementptr inbounds %struct._GimpList, %struct._GimpList* %98, i32 0, i32 3
  %99 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_func, align 8
  %tobool106 = icmp ne i32 (i8*, i8*)* %99, null
  %lnot = xor i1 %tobool106, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gimp_container_view_set_reorderable(%struct._GimpContainerView* %93, i32 %lnot.ext)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.98, %if.end.95
  %100 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv108 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %100, i32 0, i32 2
  %101 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv108, align 8
  %menu_factory = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %101, i32 0, i32 5
  %102 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %tobool109 = icmp ne %struct._GimpMenuFactory* %102, null
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.126

land.lhs.true.110:                                ; preds = %if.end.107
  %103 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv111 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %103, i32 0, i32 2
  %104 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv111, align 8
  %menu_identifier = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %104, i32 0, i32 6
  %105 = load i8*, i8** %menu_identifier, align 8
  %tobool112 = icmp ne i8* %105, null
  br i1 %tobool112, label %land.lhs.true.113, label %if.end.126

land.lhs.true.113:                                ; preds = %land.lhs.true.110
  %106 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv114 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %106, i32 0, i32 2
  %107 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv114, align 8
  %ui_path = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %107, i32 0, i32 7
  %108 = load i8*, i8** %ui_path, align 8
  %tobool115 = icmp ne i8* %108, null
  br i1 %tobool115, label %if.then.116, label %if.end.126

if.then.116:                                      ; preds = %land.lhs.true.113
  %109 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view117 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %109, i32 0, i32 1
  %110 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view117, align 8
  %111 = bitcast %struct._GimpContainerView* %110 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_editor_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call118)
  %112 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpEditor*
  %113 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv120 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %113, i32 0, i32 2
  %114 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv120, align 8
  %menu_factory121 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %114, i32 0, i32 5
  %115 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory121, align 8
  %116 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv122 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %116, i32 0, i32 2
  %117 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv122, align 8
  %menu_identifier123 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %117, i32 0, i32 6
  %118 = load i8*, i8** %menu_identifier123, align 8
  %119 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv124 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %119, i32 0, i32 2
  %120 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv124, align 8
  %ui_path125 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %120, i32 0, i32 7
  %121 = load i8*, i8** %ui_path125, align 8
  %122 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %123 = bitcast %struct._GimpContainerEditor* %122 to i8*
  call void @gimp_editor_create_menu(%struct._GimpEditor* %112, %struct._GimpMenuFactory* %115, i8* %118, i8* %121, i8* %123)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.116, %land.lhs.true.113, %land.lhs.true.110, %if.end.107
  %124 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %125 = bitcast %struct._GimpContainerEditor* %124 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_box_get_type() #7
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call127)
  %126 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkBox*
  %127 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view129 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %127, i32 0, i32 1
  %128 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view129, align 8
  %129 = bitcast %struct._GimpContainerView* %128 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_widget_get_type() #7
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call130)
  %130 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkWidget*
  call void @gtk_box_pack_start(%struct._GtkBox* %126, %struct._GtkWidget* %130, i32 1, i32 1, i32 0)
  %131 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view132 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %131, i32 0, i32 1
  %132 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view132, align 8
  %133 = bitcast %struct._GimpContainerView* %132 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_widget_get_type() #7
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call133)
  %134 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %135 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view135 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %135, i32 0, i32 1
  %136 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view135, align 8
  %137 = bitcast %struct._GimpContainerView* %136 to i8*
  %138 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %139 = bitcast %struct._GimpContainerEditor* %138 to i8*
  %call136 = call i64 @g_signal_connect_object(i8* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GimpViewable*, i8*, %struct._GimpContainerEditor*)* @gimp_container_editor_select_item to void ()*), i8* %139, i32 0)
  %140 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view137 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %140, i32 0, i32 1
  %141 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view137, align 8
  %142 = bitcast %struct._GimpContainerView* %141 to i8*
  %143 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %144 = bitcast %struct._GimpContainerEditor* %143 to i8*
  %call138 = call i64 @g_signal_connect_object(i8* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpViewable*, i8*, %struct._GimpContainerEditor*)* @gimp_container_editor_activate_item to void ()*), i8* %144, i32 0)
  %145 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view139 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %145, i32 0, i32 1
  %146 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view139, align 8
  %147 = bitcast %struct._GimpContainerView* %146 to i8*
  %148 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %149 = bitcast %struct._GimpContainerEditor* %148 to i8*
  %call140 = call i64 @g_signal_connect_object(i8* %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpViewable*, i8*, %struct._GimpContainerEditor*)* @gimp_container_editor_context_item to void ()*), i8* %149, i32 0)
  %150 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv143 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %150, i32 0, i32 2
  %151 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv143, align 8
  %context144 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %151, i32 0, i32 2
  %152 = load %struct._GimpContext*, %struct._GimpContext** %context144, align 8
  %153 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv145 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %153, i32 0, i32 2
  %154 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv145, align 8
  %container146 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %154, i32 0, i32 1
  %155 = load %struct._GimpContainer*, %struct._GimpContainer** %container146, align 8
  %call147 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %155)
  %call148 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %152, i64 %call147)
  store %struct._GimpObject* %call148, %struct._GimpObject** %object142, align 8
  %156 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view149 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %156, i32 0, i32 1
  %157 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view149, align 8
  %158 = bitcast %struct._GimpContainerView* %157 to %struct._GTypeInstance*
  %call150 = call i64 @gtk_widget_get_type() #7
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call150)
  %159 = bitcast %struct._GTypeInstance* %call151 to %struct._GtkWidget*
  %160 = load %struct._GimpObject*, %struct._GimpObject** %object142, align 8
  %161 = bitcast %struct._GimpObject* %160 to %struct._GimpViewable*
  %162 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %call152 = call i32 @gimp_container_editor_select_item(%struct._GtkWidget* %159, %struct._GimpViewable* %161, i8* null, %struct._GimpContainerEditor* %162)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %4, i32 0, i32 1
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool = icmp ne %struct._GimpContainer* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv2 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %6, i32 0, i32 2
  %7 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv2, align 8
  %container3 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %7, i32 0, i32 1
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container3, align 8
  %9 = bitcast %struct._GimpContainer* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv4 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %10, i32 0, i32 2
  %11 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv4, align 8
  %container5 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %11, i32 0, i32 1
  store %struct._GimpContainer* null, %struct._GimpContainer** %container5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv6 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %12, i32 0, i32 2
  %13 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv6, align 8
  %context = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %13, i32 0, i32 2
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool7 = icmp ne %struct._GimpContext* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv9 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv9, align 8
  %context10 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %16, i32 0, i32 2
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %18 = bitcast %struct._GimpContext* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv11 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %19, i32 0, i32 2
  %20 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv11, align 8
  %context12 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %20, i32 0, i32 2
  store %struct._GimpContext* null, %struct._GimpContext** %context12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %21 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv14 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %21, i32 0, i32 2
  %22 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv14, align 8
  %menu_factory = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %22, i32 0, i32 5
  %23 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %tobool15 = icmp ne %struct._GimpMenuFactory* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %24 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv17 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %24, i32 0, i32 2
  %25 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv17, align 8
  %menu_factory18 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %25, i32 0, i32 5
  %26 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory18, align 8
  %27 = bitcast %struct._GimpMenuFactory* %26 to i8*
  call void @g_object_unref(i8* %27)
  %28 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv19 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %28, i32 0, i32 2
  %29 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv19, align 8
  %menu_factory20 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %29, i32 0, i32 5
  store %struct._GimpMenuFactory* null, %struct._GimpMenuFactory** %menu_factory20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.13
  %30 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv22 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %30, i32 0, i32 2
  %31 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv22, align 8
  %menu_identifier = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %31, i32 0, i32 6
  %32 = load i8*, i8** %menu_identifier, align 8
  %tobool23 = icmp ne i8* %32, null
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.21
  %33 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv25 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %33, i32 0, i32 2
  %34 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv25, align 8
  %menu_identifier26 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %34, i32 0, i32 6
  %35 = load i8*, i8** %menu_identifier26, align 8
  call void @g_free(i8* %35)
  %36 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv27 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %36, i32 0, i32 2
  %37 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv27, align 8
  %menu_identifier28 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %37, i32 0, i32 6
  store i8* null, i8** %menu_identifier28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end.21
  %38 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv30 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %38, i32 0, i32 2
  %39 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv30, align 8
  %ui_path = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %39, i32 0, i32 7
  %40 = load i8*, i8** %ui_path, align 8
  %tobool31 = icmp ne i8* %40, null
  br i1 %tobool31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end.29
  %41 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv33 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %41, i32 0, i32 2
  %42 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv33, align 8
  %ui_path34 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %42, i32 0, i32 7
  %43 = load i8*, i8** %ui_path34, align 8
  call void @g_free(i8* %43)
  %44 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv35 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %44, i32 0, i32 2
  %45 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv35, align 8
  %ui_path36 = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %45, i32 0, i32 7
  store i8* null, i8** %ui_path36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.end.29
  %46 = load i8*, i8** @gimp_container_editor_parent_class, align 8
  %47 = bitcast i8* %46 to %struct._GTypeClass*
  %call38 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %47, i64 80)
  %48 = bitcast %struct._GTypeClass* %call38 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %48, i32 0, i32 5
  %49 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %50 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %49(%struct._GObject* %50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.12
    i32 6, label %sw.bb.15
    i32 7, label %sw.bb.18
    i32 8, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv, align 8
  %view_type = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %6, i32 0, i32 0
  store i32 %call2, i32* %view_type, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GimpContainer*
  %9 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv5 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %9, i32 0, i32 2
  %10 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv5, align 8
  %container = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %10, i32 0, i32 1
  store %struct._GimpContainer* %8, %struct._GimpContainer** %container, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i8* @g_value_dup_object(%struct._GValue* %11)
  %12 = bitcast i8* %call7 to %struct._GimpContext*
  %13 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv8 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %13, i32 0, i32 2
  %14 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv8, align 8
  %context = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %14, i32 0, i32 2
  store %struct._GimpContext* %12, %struct._GimpContext** %context, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_int(%struct._GValue* %15)
  %16 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv11 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %16, i32 0, i32 2
  %17 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv11, align 8
  %view_size = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %17, i32 0, i32 3
  store i32 %call10, i32* %view_size, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call13 = call i32 @g_value_get_int(%struct._GValue* %18)
  %19 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv14 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %19, i32 0, i32 2
  %20 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv14, align 8
  %view_border_width = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %20, i32 0, i32 4
  store i32 %call13, i32* %view_border_width, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i8* @g_value_dup_object(%struct._GValue* %21)
  %22 = bitcast i8* %call16 to %struct._GimpMenuFactory*
  %23 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv17 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %23, i32 0, i32 2
  %24 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv17, align 8
  %menu_factory = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %24, i32 0, i32 5
  store %struct._GimpMenuFactory* %22, %struct._GimpMenuFactory** %menu_factory, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call i8* @g_value_dup_string(%struct._GValue* %25)
  %26 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv20 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %26, i32 0, i32 2
  %27 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv20, align 8
  %menu_identifier = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %27, i32 0, i32 6
  store i8* %call19, i8** %menu_identifier, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i8* @g_value_dup_string(%struct._GValue* %28)
  %29 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv23 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %29, i32 0, i32 2
  %30 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv23, align 8
  %ui_path = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %30, i32 0, i32 7
  store i8* %call22, i8** %ui_path, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %31, %struct._GObject** %_glib__object, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %32, %struct._GParamSpec** %_glib__pspec, align 8
  %33 = load i32, i32* %property_id.addr, align 4
  store i32 %33, i32* %_glib__property_id, align 4
  %34 = load i32, i32* %_glib__property_id, align 4
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %35, i32 0, i32 1
  %36 = load i8*, i8** %name, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %38 = bitcast %struct._GParamSpec* %37 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type, align 8
  %call24 = call i8* @g_type_name(i64 %40)
  %41 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %42 = bitcast %struct._GObject* %41 to %struct._GTypeInstance*
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type26, align 8
  %call27 = call i8* @g_type_name(i64 %44)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 382, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %34, i8* %36, i8* %call24, i8* %call27)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.21, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.9, %sw.bb.6, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.8
    i32 6, label %sw.bb.10
    i32 7, label %sw.bb.12
    i32 8, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv, align 8
  %view_type = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %6, i32 0, i32 0
  %7 = load i32, i32* %view_type, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %9, i32 0, i32 2
  %10 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv3, align 8
  %container = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %10, i32 0, i32 1
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %12 = bitcast %struct._GimpContainer* %11 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv5 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %14, i32 0, i32 2
  %15 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv5, align 8
  %context = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %17 = bitcast %struct._GimpContext* %16 to i8*
  call void @g_value_set_object(%struct._GValue* %13, i8* %17)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %19 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv7 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %19, i32 0, i32 2
  %20 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv7, align 8
  %view_size = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %20, i32 0, i32 3
  %21 = load i32, i32* %view_size, align 4
  call void @g_value_set_int(%struct._GValue* %18, i32 %21)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv9 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %23, i32 0, i32 2
  %24 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv9, align 8
  %view_border_width = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %24, i32 0, i32 4
  %25 = load i32, i32* %view_border_width, align 4
  call void @g_value_set_int(%struct._GValue* %22, i32 %25)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %27 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv11 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %27, i32 0, i32 2
  %28 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv11, align 8
  %menu_factory = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %28, i32 0, i32 5
  %29 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory, align 8
  %30 = bitcast %struct._GimpMenuFactory* %29 to i8*
  call void @g_value_set_object(%struct._GValue* %26, i8* %30)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv13 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %32, i32 0, i32 2
  %33 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv13, align 8
  %menu_identifier = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %33, i32 0, i32 6
  %34 = load i8*, i8** %menu_identifier, align 8
  call void @g_value_set_string(%struct._GValue* %31, i8* %34)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %36 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %priv15 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %36, i32 0, i32 2
  %37 = load %struct._GimpContainerEditorPrivate*, %struct._GimpContainerEditorPrivate** %priv15, align 8
  %ui_path = getelementptr inbounds %struct._GimpContainerEditorPrivate, %struct._GimpContainerEditorPrivate* %37, i32 0, i32 7
  %38 = load i8*, i8** %ui_path, align 8
  call void @g_value_set_string(%struct._GValue* %35, i8* %38)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %39 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %39, %struct._GObject** %_glib__object, align 8
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %40, %struct._GParamSpec** %_glib__pspec, align 8
  %41 = load i32, i32* %property_id.addr, align 4
  store i32 %41, i32* %_glib__property_id, align 4
  %42 = load i32, i32* %_glib__property_id, align 4
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %43, i32 0, i32 1
  %44 = load i8*, i8** %name, align 8
  %45 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %46 = bitcast %struct._GParamSpec* %45 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type, align 8
  %call16 = call i8* @g_type_name(i64 %48)
  %49 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %50 = bitcast %struct._GObject* %49 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type18 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type18, align 8
  %call19 = call i8* @g_type_name(i64 %52)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 430, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %42, i8* %44, i8* %call16, i8* %call19)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_real_context_item(%struct._GimpContainerEditor* %editor, %struct._GimpViewable* %viewable) #3 {
entry:
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %1)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container, align 8
  %2 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  %call3 = call i32 @gimp_container_have(%struct._GimpContainer* %3, %struct._GimpObject* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view5 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view5, align 8
  %9 = bitcast %struct._GimpContainerView* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_editor_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpEditor*
  %call8 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %10, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GtkWidget* @gimp_container_grid_view_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

declare %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare void @gimp_container_view_set_reorderable(%struct._GimpContainerView*, i32) #1

declare void @gimp_editor_create_menu(%struct._GimpEditor*, %struct._GimpMenuFactory*, i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_editor_select_item(%struct._GtkWidget* %widget, %struct._GimpViewable* %viewable, i8* %insert_data, %struct._GimpContainerEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %klass = alloca %struct._GimpContainerEditorClass*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpContainerEditor* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpContainerEditorClass*
  store %struct._GimpContainerEditorClass* %3, %struct._GimpContainerEditorClass** %klass, align 8
  %4 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %4, i32 0, i32 1
  %5 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %select_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass, align 8
  %select_item1 = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %6, i32 0, i32 1
  %7 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %select_item1, align 8
  %8 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %7(%struct._GimpContainerEditor* %8, %struct._GimpViewable* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %10, i32 0, i32 1
  %11 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %12 = bitcast %struct._GimpContainerView* %11 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call)
  %13 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpEditor*
  %call3 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %13)
  %tobool4 = icmp ne %struct._GimpUIManager* %call3, null
  br i1 %tobool4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %14 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view6 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %14, i32 0, i32 1
  %15 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view6, align 8
  %16 = bitcast %struct._GimpContainerView* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_editor_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpEditor*
  %call9 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %17)
  %18 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %view10 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %18, i32 0, i32 1
  %19 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view10, align 8
  %20 = bitcast %struct._GimpContainerView* %19 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_editor_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call11)
  %21 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpEditor*
  %call13 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %21)
  %22 = bitcast i8** %call13 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call9, i8* %22)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.5, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_activate_item(%struct._GtkWidget* %widget, %struct._GimpViewable* %viewable, i8* %insert_data, %struct._GimpContainerEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %klass = alloca %struct._GimpContainerEditorClass*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpContainerEditor* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpContainerEditorClass*
  store %struct._GimpContainerEditorClass* %3, %struct._GimpContainerEditorClass** %klass, align 8
  %4 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass, align 8
  %activate_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %4, i32 0, i32 2
  %5 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass, align 8
  %activate_item1 = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %6, i32 0, i32 2
  %7 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item1, align 8
  %8 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %7(%struct._GimpContainerEditor* %8, %struct._GimpViewable* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_context_item(%struct._GtkWidget* %widget, %struct._GimpViewable* %viewable, i8* %insert_data, %struct._GimpContainerEditor* %editor) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %klass = alloca %struct._GimpContainerEditorClass*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  %0 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpContainerEditor* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpContainerEditorClass*
  store %struct._GimpContainerEditorClass* %3, %struct._GimpContainerEditorClass** %klass, align 8
  %4 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass, align 8
  %context_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %4, i32 0, i32 3
  %5 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %context_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %klass, align 8
  %context_item1 = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %6, i32 0, i32 3
  %7 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %context_item1, align 8
  %8 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %7(%struct._GimpContainerEditor* %8, %struct._GimpViewable* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare i8** @gimp_editor_get_popup_data(%struct._GimpEditor*) #1

declare void @g_object_unref(i8*) #1

declare void @g_free(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_container_editor_get_preview(%struct._GimpDocked* %docked, %struct._GimpContext* %context, i32 %size) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %size.addr = alloca i32, align 4
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = bitcast %struct._GimpContainerView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_docked_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDocked*
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load i32, i32* %size.addr, align 4
  %call4 = call %struct._GtkWidget* @gimp_docked_get_preview(%struct._GimpDocked* %6, %struct._GimpContext* %7, i32 %8)
  ret %struct._GtkWidget* %call4
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = bitcast %struct._GimpContainerView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_docked_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDocked*
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_docked_set_context(%struct._GimpDocked* %6, %struct._GimpContext* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpUIManager* @gimp_container_editor_get_menu(%struct._GimpDocked* %docked, i8** %ui_path, i8** %popup_data) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %ui_path.addr = alloca i8**, align 8
  %popup_data.addr = alloca i8**, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store i8** %ui_path, i8*** %ui_path.addr, align 8
  store i8** %popup_data, i8*** %popup_data.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = bitcast %struct._GimpContainerView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_docked_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDocked*
  %7 = load i8**, i8*** %ui_path.addr, align 8
  %8 = load i8**, i8*** %popup_data.addr, align 8
  %call4 = call %struct._GimpUIManager* @gimp_docked_get_menu(%struct._GimpDocked* %6, i8** %7, i8** %8)
  ret %struct._GimpUIManager* %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_editor_has_button_bar(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = bitcast %struct._GimpContainerView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_docked_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDocked*
  %call4 = call i32 @gimp_docked_has_button_bar(%struct._GimpDocked* %6)
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_editor_set_show_button_bar(%struct._GimpDocked* %docked, i32 %show) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %show.addr = alloca i32, align 4
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = bitcast %struct._GimpContainerView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_docked_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDocked*
  %7 = load i32, i32* %show.addr, align 4
  call void @gimp_docked_set_show_button_bar(%struct._GimpDocked* %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_editor_get_show_button_bar(%struct._GimpDocked* %docked) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = bitcast %struct._GimpContainerView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_docked_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDocked*
  %call4 = call i32 @gimp_docked_get_show_button_bar(%struct._GimpDocked* %6)
  ret i32 %call4
}

declare %struct._GtkWidget* @gimp_docked_get_preview(%struct._GimpDocked*, %struct._GimpContext*, i32) #1

declare void @gimp_docked_set_context(%struct._GimpDocked*, %struct._GimpContext*) #1

declare %struct._GimpUIManager* @gimp_docked_get_menu(%struct._GimpDocked*, i8**, i8**) #1

declare i32 @gimp_docked_has_button_bar(%struct._GimpDocked*) #1

declare void @gimp_docked_set_show_button_bar(%struct._GimpDocked*, i32) #1

declare i32 @gimp_docked_get_show_button_bar(%struct._GimpDocked*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
