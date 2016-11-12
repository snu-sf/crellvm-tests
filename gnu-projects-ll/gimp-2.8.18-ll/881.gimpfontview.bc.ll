; ModuleID = './app/widgets/gimpfontview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFontViewClass = type { %struct._GimpContainerEditorClass }
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
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpFontView = type { %struct._GimpContainerEditor, %struct._GtkWidget* }
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
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque

@gimp_font_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpFontView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_font_view_new = private unnamed_addr constant [19 x i8] c"gimp_font_view_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"menu_factory == NULL || GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"view-type\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"view-size\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"view-border-width\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"<Fonts>\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"/fonts-popup\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"fonts-refresh\00", align 1
@gimp_font_view_parent_class = internal global i8* null, align 8
@GimpFontView_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_font_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_font_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_font_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_container_editor_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 848, void (i8*, i8*)* bitcast (void (i8*)* @gimp_font_view_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFontView*)* @gimp_font_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_font_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_font_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_font_view_parent_class, align 8
  %1 = load i32, i32* @GimpFontView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFontView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFontViewClass*
  call void @gimp_font_view_class_init(%struct._GimpFontViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_font_view_init(%struct._GimpFontView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpFontView*, align 8
  store %struct._GimpFontView* %view, %struct._GimpFontView** %view.addr, align 8
  %0 = load %struct._GimpFontView*, %struct._GimpFontView** %view.addr, align 8
  %refresh_button = getelementptr inbounds %struct._GimpFontView, %struct._GimpFontView* %0, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %refresh_button, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_font_view_new(i32 %view_type, %struct._GimpContainer* %container, %struct._GimpContext* %context, i32 %view_size, i32 %view_border_width, %struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %view_type.addr = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %font_view = alloca %struct._GimpFontView*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst58 = alloca %struct._GTypeInstance*, align 8
  %__t60 = alloca i64, align 8
  %__r63 = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  store i32 %view_type, i32* %view_type.addr, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_font_view_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_font_view_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* %view_size.addr, align 4
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.44

land.lhs.true.41:                                 ; preds = %do.body.39
  %27 = load i32, i32* %view_size.addr, align 4
  %cmp42 = icmp sle i32 %27, 2048
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.41
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true.41, %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_font_view_new, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %28 = load i32, i32* %view_border_width.addr, align 4
  %cmp48 = icmp sge i32 %28, 0
  br i1 %cmp48, label %land.lhs.true.49, label %if.else.52

land.lhs.true.49:                                 ; preds = %do.body.47
  %29 = load i32, i32* %view_border_width.addr, align 4
  %cmp50 = icmp sle i32 %29, 16
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %land.lhs.true.49
  br label %if.end.53

if.else.52:                                       ; preds = %land.lhs.true.49, %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_font_view_new, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %30 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %cmp56 = icmp eq %struct._GimpMenuFactory* %30, null
  br i1 %cmp56, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.55
  %31 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %32 = bitcast %struct._GimpMenuFactory* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst58, align 8
  %call61 = call i64 @gimp_menu_factory_get_type() #5
  store i64 %call61, i64* %__t60, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %tobool64 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r63, align 4
  br label %if.end.77

if.else.66:                                       ; preds = %lor.lhs.false
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class67 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class67, align 8
  %tobool68 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool68, label %land.lhs.true.69, label %if.else.74

land.lhs.true.69:                                 ; preds = %if.else.66
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class70 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class70, align 8
  %g_type71 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type71, align 8
  %39 = load i64, i64* %__t60, align 8
  %cmp72 = icmp eq i64 %38, %39
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %land.lhs.true.69
  store i32 1, i32* %__r63, align 4
  br label %if.end.76

if.else.74:                                       ; preds = %land.lhs.true.69, %if.else.66
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %41 = load i64, i64* %__t60, align 8
  %call75 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #6
  store i32 %call75, i32* %__r63, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.73
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.65
  %42 = load i32, i32* %__r63, align 4
  store i32 %42, i32* %tmp78
  %43 = load i32, i32* %tmp78
  %tobool79 = icmp ne i32 %43, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.end.77, %do.body.55
  br label %if.end.82

if.else.81:                                       ; preds = %if.end.77
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_font_view_new, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.82:                                        ; preds = %if.then.80
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  %call84 = call i64 @gimp_font_view_get_type() #5
  %44 = load i32, i32* %view_type.addr, align 4
  %45 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %47 = load i32, i32* %view_size.addr, align 4
  %48 = load i32, i32* %view_border_width.addr, align 4
  %49 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call85 = call i8* (i64, i8*, ...) @g_object_new(i64 %call84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct._GimpContainer* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._GimpContext* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), %struct._GimpMenuFactory* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* null)
  %50 = bitcast i8* %call85 to %struct._GimpFontView*
  store %struct._GimpFontView* %50, %struct._GimpFontView** %font_view, align 8
  %51 = load %struct._GimpFontView*, %struct._GimpFontView** %font_view, align 8
  %52 = bitcast %struct._GimpFontView* %51 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_container_editor_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call86)
  %53 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %53, %struct._GimpContainerEditor** %editor, align 8
  %54 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %54, i32 0, i32 1
  %55 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %56 = bitcast %struct._GimpContainerView* %55 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_container_view_interface_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call88)
  %57 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpContainerView*
  call void @gimp_container_view_set_reorderable(%struct._GimpContainerView* %57, i32 0)
  %58 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view90 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %58, i32 0, i32 1
  %59 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view90, align 8
  %60 = bitcast %struct._GimpContainerView* %59 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_editor_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call91)
  %61 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpEditor*
  %call93 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* null)
  %62 = load %struct._GimpFontView*, %struct._GimpFontView** %font_view, align 8
  %refresh_button = getelementptr inbounds %struct._GimpFontView, %struct._GimpFontView* %62, i32 0, i32 1
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %refresh_button, align 8
  %63 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view94 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %63, i32 0, i32 1
  %64 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view94, align 8
  %65 = bitcast %struct._GimpContainerView* %64 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_editor_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call95)
  %66 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpEditor*
  %call97 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %66)
  %67 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %68 = bitcast %struct._GimpContainerEditor* %67 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call97, i8* %68)
  %69 = load %struct._GimpFontView*, %struct._GimpFontView** %font_view, align 8
  %70 = bitcast %struct._GimpFontView* %69 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_widget_get_type() #5
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call98)
  %71 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkWidget*
  store %struct._GtkWidget* %71, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.83, %if.else.81, %if.else.52, %if.else.44, %if.else.36, %if.else.9
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %72
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_container_view_set_reorderable(%struct._GimpContainerView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_view_class_init(%struct._GimpFontViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFontViewClass*, align 8
  %editor_class = alloca %struct._GimpContainerEditorClass*, align 8
  store %struct._GimpFontViewClass* %klass, %struct._GimpFontViewClass** %klass.addr, align 8
  %0 = load %struct._GimpFontViewClass*, %struct._GimpFontViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpFontViewClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_container_editor_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpContainerEditorClass*
  store %struct._GimpContainerEditorClass* %2, %struct._GimpContainerEditorClass** %editor_class, align 8
  %3 = load %struct._GimpContainerEditorClass*, %struct._GimpContainerEditorClass** %editor_class, align 8
  %activate_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %3, i32 0, i32 2
  store void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* @gimp_font_view_activate_item, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_view_activate_item(%struct._GimpContainerEditor* %editor, %struct._GimpViewable* %viewable) #3 {
entry:
  %editor.addr = alloca %struct._GimpContainerEditor*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  store %struct._GimpContainerEditor* %editor, %struct._GimpContainerEditor** %editor.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load i8*, i8** @gimp_font_view_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_container_editor_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpContainerEditorClass*
  %activate_item = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %2, i32 0, i32 2
  %3 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item, align 8
  %tobool = icmp ne void (%struct._GimpContainerEditor*, %struct._GimpViewable*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_font_view_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call2 = call i64 @gimp_container_editor_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call2)
  %6 = bitcast %struct._GTypeClass* %call3 to %struct._GimpContainerEditorClass*
  %activate_item4 = getelementptr inbounds %struct._GimpContainerEditorClass, %struct._GimpContainerEditorClass* %6, i32 0, i32 2
  %7 = load void (%struct._GimpContainerEditor*, %struct._GimpViewable*)*, void (%struct._GimpContainerEditor*, %struct._GimpViewable*)** %activate_item4, align 8
  %8 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor.addr, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %7(%struct._GimpContainerEditor* %8, %struct._GimpViewable* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
