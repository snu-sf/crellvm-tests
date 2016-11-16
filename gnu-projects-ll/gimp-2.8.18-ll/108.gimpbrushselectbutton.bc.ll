; ModuleID = './libgimp/gimpbrushselectbutton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrushSelectButtonClass = type { %struct._GimpSelectButtonClass, void (%struct._GimpBrushSelectButton*, i8*, double, i32, i32, i32, i32, i8*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpSelectButtonClass = type { %struct._GtkBoxClass, i8*, void (i8*)*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpBrushSelectButton = type { %struct._GimpSelectButton }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpBrushSelectButtonPrivate = type { i8*, i8*, double, i32, i32, i32, i32, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }

@gimp_brush_select_button_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpBrushSelectButton\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"brush-name\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"brush-opacity\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"brush-spacing\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"brush-paint-mode\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_brush_select_button_get_brush = private unnamed_addr constant [35 x i8] c"gimp_brush_select_button_get_brush\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"GIMP_IS_BRUSH_SELECT_BUTTON (button)\00", align 1
@__func__.gimp_brush_select_button_set_brush = private unnamed_addr constant [35 x i8] c"gimp_brush_select_button_set_brush\00", align 1
@gimp_brush_select_button_parent_class = internal global i8* null, align 8
@GimpBrushSelectButton_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"The title to be used for the brush selection popup dialog\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Brush Selection\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Brush name\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"The name of the currently selected brush\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Brush opacity\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"The opacity of the currently selected brush\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Brush spacing\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"The spacing of the currently selected brush\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Brush paint mode\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"The paint mode of the currently selected brush\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"brush-set\00", align 1
@brush_button_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.21 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"gimpbrushselectbutton.c\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@target = internal constant %struct._GtkTargetEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 0 }, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"drag-data-received\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"_Browse...\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"application/x-gimp-brush-name\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"%s: received invalid brush data\00", align 1
@__func__.gimp_brush_select_drag_data_received = private unnamed_addr constant [37 x i8] c"gimp_brush_select_drag_data_received\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"%i:%p:%n\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_select_button_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_select_button_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_select_button_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_select_button_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 936, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_select_button_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushSelectButton*)* @gimp_brush_select_button_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_select_button_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brush_select_button_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_select_button_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_select_button_parent_class, align 8
  %1 = load i32, i32* @GimpBrushSelectButton_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushSelectButton_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushSelectButtonClass*
  call void @gimp_brush_select_button_class_init(%struct._GimpBrushSelectButtonClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_init(%struct._GimpBrushSelectButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  %mask_bpp = alloca i32, align 4
  %mask_data_size = alloca i32, align 4
  %color_bpp = alloca i32, align 4
  %color_data_size = alloca i32, align 4
  %color_data = alloca i8*, align 8
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %2, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %call2 = call i8* @gimp_context_get_brush()
  %3 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %3, i32 0, i32 1
  store i8* %call2, i8** %brush_name, align 8
  %4 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name3 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %4, i32 0, i32 1
  %5 = load i8*, i8** %brush_name3, align 8
  %6 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %6, i32 0, i32 5
  %7 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %7, i32 0, i32 6
  %8 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %mask_data = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %8, i32 0, i32 7
  %call4 = call i32 @gimp_brush_get_pixels(i8* %5, i32* %width, i32* %height, i32* %mask_bpp, i32* %mask_data_size, i8** %mask_data, i32* %color_bpp, i32* %color_data_size, i8** %color_data)
  %9 = load i8*, i8** %color_data, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %color_data, align 8
  call void @g_free(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %call5 = call %struct._GtkWidget* @gimp_brush_select_button_create_inside(%struct._GimpBrushSelectButton* %11)
  %12 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %inside = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %12, i32 0, i32 8
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %inside, align 8
  %13 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %14 = bitcast %struct._GimpBrushSelectButton* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  %16 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %inside8 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %16, i32 0, i32 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %inside8, align 8
  call void @gtk_container_add(%struct._GtkContainer* %15, %struct._GtkWidget* %17)
  %18 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %18, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %popup, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_brush_select_button_new(i8* %title, i8* %brush_name, double %opacity, i32 %spacing, i32 %paint_mode) #3 {
entry:
  %title.addr = alloca i8*, align 8
  %brush_name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %spacing.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %brush_name, i8** %brush_name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  %0 = load i8*, i8** %title.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %1 = load i8*, i8** %title.addr, align 8
  %2 = load i8*, i8** %brush_name.addr, align 8
  %3 = load double, double* %opacity.addr, align 8
  %4 = load i32, i32* %spacing.addr, align 4
  %5 = load i32, i32* %paint_mode.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), double %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %5, i8* null)
  %6 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %button, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i64 @gimp_brush_select_button_get_type() #7
  %7 = load i8*, i8** %brush_name.addr, align 8
  %8 = load double, double* %opacity.addr, align 8
  %9 = load i32, i32* %spacing.addr, align 4
  %10 = load i32, i32* %paint_mode.addr, align 4
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), double %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %10, i8* null)
  %11 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %11, %struct._GtkWidget** %button, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %12
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_brush_select_button_get_brush(%struct._GimpBrushSelectButton* %button, double* %opacity, i32* %spacing, i32* %paint_mode) #3 {
entry:
  %retval = alloca i8*, align 8
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %opacity.addr = alloca double*, align 8
  %spacing.addr = alloca i32*, align 8
  %paint_mode.addr = alloca i32*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  store double* %opacity, double** %opacity.addr, align 8
  store i32* %spacing, i32** %spacing.addr, align 8
  store i32* %paint_mode, i32** %paint_mode.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_select_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_brush_select_button_get_brush, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %14 = bitcast %struct._GimpBrushSelectButton* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_brush_select_button_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %15, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %16 = load double*, double** %opacity.addr, align 8
  %tobool13 = icmp ne double* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %opacity15 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %17, i32 0, i32 2
  %18 = load double, double* %opacity15, align 8
  %19 = load double*, double** %opacity.addr, align 8
  store double %18, double* %19, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.end
  %20 = load i32*, i32** %spacing.addr, align 8
  %tobool17 = icmp ne i32* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %21 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %spacing19 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %21, i32 0, i32 3
  %22 = load i32, i32* %spacing19, align 4
  %23 = load i32*, i32** %spacing.addr, align 8
  store i32 %22, i32* %23, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %24 = load i32*, i32** %paint_mode.addr, align 8
  %tobool21 = icmp ne i32* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %25 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %paint_mode23 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %25, i32 0, i32 4
  %26 = load i32, i32* %paint_mode23, align 4
  %27 = load i32*, i32** %paint_mode.addr, align 8
  store i32 %26, i32* %27, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %28 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %28, i32 0, i32 1
  %29 = load i8*, i8** %brush_name, align 8
  store i8* %29, i8** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else.9
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_select_button_set_brush(%struct._GimpBrushSelectButton* %button, i8* %brush_name, double %opacity, i32 %spacing, i32 %paint_mode) #3 {
entry:
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %brush_name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %spacing.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %select_button = alloca %struct._GimpSelectButton*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %name = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %mask_data_size = alloca i32, align 4
  %mask_data = alloca i8*, align 8
  %color_bpp = alloca i32, align 4
  %color_data_size = alloca i32, align 4
  %color_data = alloca i8*, align 8
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  store i8* %brush_name, i8** %brush_name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_select_button_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_brush_select_button_set_brush, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.57

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %14 = bitcast %struct._GimpBrushSelectButton* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_select_button_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %15, %struct._GimpSelectButton** %select_button, align 8
  %16 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %16, i32 0, i32 1
  %17 = load i8*, i8** %temp_callback, align 8
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback15 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %18, i32 0, i32 1
  %19 = load i8*, i8** %temp_callback15, align 8
  %20 = load i8*, i8** %brush_name.addr, align 8
  %21 = load double, double* %opacity.addr, align 8
  %22 = load i32, i32* %spacing.addr, align 4
  %23 = load i32, i32* %paint_mode.addr, align 4
  %call16 = call i32 @gimp_brushes_set_popup(i8* %19, i8* %20, double %21, i32 %22, i32 %23)
  br label %if.end.57

if.else.17:                                       ; preds = %do.end
  %24 = load i8*, i8** %brush_name.addr, align 8
  %tobool27 = icmp ne i8* %24, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.else.32

land.lhs.true.28:                                 ; preds = %if.else.17
  %25 = load i8*, i8** %brush_name.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv = sext i8 %26 to i32
  %tobool29 = icmp ne i32 %conv, 0
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %land.lhs.true.28
  %27 = load i8*, i8** %brush_name.addr, align 8
  %call31 = call noalias i8* @g_strdup(i8* %27)
  store i8* %call31, i8** %name, align 8
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.28, %if.else.17
  %call33 = call i8* @gimp_context_get_brush()
  store i8* %call33, i8** %name, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.30
  %28 = load i8*, i8** %name, align 8
  %call35 = call i32 @gimp_brush_get_pixels(i8* %28, i32* %width, i32* %height, i32* %bytes, i32* %mask_data_size, i8** %mask_data, i32* %color_bpp, i32* %color_data_size, i8** %color_data)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.56

if.then.37:                                       ; preds = %if.end.34
  %29 = load i8*, i8** %color_data, align 8
  %tobool38 = icmp ne i8* %29, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.37
  %30 = load i8*, i8** %color_data, align 8
  call void @g_free(i8* %30)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.37
  %31 = load double, double* %opacity.addr, align 8
  %cmp41 = fcmp olt double %31, 0.000000e+00
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %call44 = call double @gimp_context_get_opacity()
  store double %call44, double* %opacity.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.40
  %32 = load i32, i32* %spacing.addr, align 4
  %cmp46 = icmp eq i32 %32, -1
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.45
  %33 = load i8*, i8** %name, align 8
  %call49 = call i32 @gimp_brush_get_spacing(i8* %33, i32* %spacing.addr)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.45
  %34 = load i32, i32* %paint_mode.addr, align 4
  %cmp51 = icmp eq i32 %34, -1
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.50
  %call54 = call i32 @gimp_context_get_paint_mode()
  store i32 %call54, i32* %paint_mode.addr, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.50
  %35 = load i8*, i8** %name, align 8
  %36 = load double, double* %opacity.addr, align 8
  %37 = load i32, i32* %spacing.addr, align 4
  %38 = load i32, i32* %paint_mode.addr, align 4
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %height, align 4
  %41 = load i8*, i8** %mask_data, align 8
  %42 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %43 = bitcast %struct._GimpBrushSelectButton* %42 to i8*
  call void @gimp_brush_select_button_callback(i8* %35, double %36, i32 %37, i32 %38, i32 %39, i32 %40, i8* %41, i32 0, i8* %43)
  %44 = load i8*, i8** %mask_data, align 8
  call void @g_free(i8* %44)
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.34
  %45 = load i8*, i8** %name, align 8
  call void @g_free(i8* %45)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.9, %if.end.56, %if.then.14
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_brushes_set_popup(i8*, i8*, double, i32, i32) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_context_get_brush() #1

declare i32 @gimp_brush_get_pixels(i8*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i8**) #1

declare void @g_free(i8*) #1

declare double @gimp_context_get_opacity() #1

declare i32 @gimp_brush_get_spacing(i8*, i32*) #1

declare i32 @gimp_context_get_paint_mode() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_callback(i8* %name, double %opacity, i32 %spacing, i32 %paint_mode, i32 %width, i32 %height, i8* %mask_data, i32 %dialog_closing, i8* %data) #3 {
entry:
  %name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %spacing.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mask_data.addr = alloca i8*, align 8
  %dialog_closing.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %button = alloca %struct._GimpBrushSelectButton*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  %select_button = alloca %struct._GimpSelectButton*, align 8
  store i8* %name, i8** %name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %mask_data, i8** %mask_data.addr, align 8
  store i32 %dialog_closing, i32* %dialog_closing.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushSelectButton*
  store %struct._GimpBrushSelectButton* %2, %struct._GimpBrushSelectButton** %button, align 8
  %3 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button, align 8
  %4 = bitcast %struct._GimpBrushSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %5, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %6 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button, align 8
  %7 = bitcast %struct._GimpBrushSelectButton* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_select_button_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %8, %struct._GimpSelectButton** %select_button, align 8
  %9 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %9, i32 0, i32 1
  %10 = load i8*, i8** %brush_name, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %mask_data6 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %11, i32 0, i32 7
  %12 = load i8*, i8** %mask_data6, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %name.addr, align 8
  %call7 = call noalias i8* @g_strdup(i8* %13)
  %14 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name8 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %14, i32 0, i32 1
  store i8* %call7, i8** %brush_name8, align 8
  %15 = load i32, i32* %width.addr, align 4
  %16 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width9 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %16, i32 0, i32 5
  store i32 %15, i32* %width9, align 4
  %17 = load i32, i32* %height.addr, align 4
  %18 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height10 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %18, i32 0, i32 6
  store i32 %17, i32* %height10, align 4
  %19 = load i8*, i8** %mask_data.addr, align 8
  %20 = load i32, i32* %width.addr, align 4
  %21 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %20, %21
  %call11 = call noalias i8* @g_memdup(i8* %19, i32 %mul)
  %22 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %mask_data12 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %22, i32 0, i32 7
  store i8* %call11, i8** %mask_data12, align 8
  %23 = load double, double* %opacity.addr, align 8
  %24 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %opacity13 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %24, i32 0, i32 2
  store double %23, double* %opacity13, align 8
  %25 = load i32, i32* %spacing.addr, align 4
  %26 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %spacing14 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %26, i32 0, i32 3
  store i32 %25, i32* %spacing14, align 4
  %27 = load i32, i32* %paint_mode.addr, align 4
  %28 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %paint_mode15 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %28, i32 0, i32 4
  store i32 %27, i32* %paint_mode15, align 4
  %29 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %29, i32 0, i32 9
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %height.addr, align 4
  %33 = load i8*, i8** %mask_data.addr, align 8
  call void @gimp_brush_select_preview_update(%struct._GtkWidget* %30, i32 %31, i32 %32, i8* %33)
  %34 = load i32, i32* %dialog_closing.addr, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %35 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %35, i32 0, i32 1
  store i8* null, i8** %temp_callback, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button, align 8
  %37 = bitcast %struct._GimpBrushSelectButton* %36 to i8*
  %38 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @brush_button_signals, i32 0, i64 0), align 4
  %39 = load i8*, i8** %name.addr, align 8
  %40 = load double, double* %opacity.addr, align 8
  %41 = load i32, i32* %spacing.addr, align 4
  %42 = load i32, i32* %paint_mode.addr, align 4
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %height.addr, align 4
  %45 = load i8*, i8** %mask_data.addr, align 8
  %46 = load i32, i32* %dialog_closing.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %37, i32 %38, i32 0, i8* %39, double %40, i32 %41, i32 %42, i32 %43, i32 %44, i8* %45, i32 %46)
  %47 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button, align 8
  %48 = bitcast %struct._GimpBrushSelectButton* %47 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_class_init(%struct._GimpBrushSelectButtonClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushSelectButtonClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %select_button_class = alloca %struct._GimpSelectButtonClass*, align 8
  store %struct._GimpBrushSelectButtonClass* %klass, %struct._GimpBrushSelectButtonClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushSelectButtonClass*, %struct._GimpBrushSelectButtonClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButtonClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrushSelectButtonClass*, %struct._GimpBrushSelectButtonClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrushSelectButtonClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_select_button_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpSelectButtonClass*
  store %struct._GimpSelectButtonClass* %5, %struct._GimpSelectButtonClass** %select_button_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_brush_select_button_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_select_button_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_select_button_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpSelectButtonClass*, %struct._GimpSelectButtonClass** %select_button_class, align 8
  %select_destroy = getelementptr inbounds %struct._GimpSelectButtonClass, %struct._GimpSelectButtonClass* %9, i32 0, i32 2
  store void (i8*)* @gimp_brush_select_destroy, void (i8*)** %select_destroy, align 8
  %10 = load %struct._GimpBrushSelectButtonClass*, %struct._GimpBrushSelectButtonClass** %klass.addr, align 8
  %brush_set = getelementptr inbounds %struct._GimpBrushSelectButtonClass, %struct._GimpBrushSelectButtonClass* %10, i32 0, i32 1
  store void (%struct._GimpBrushSelectButton*, i8*, double, i32, i32, i32, i32, i8*, i32)* null, void (%struct._GimpBrushSelectButton*, i8*, double, i32, i32, i32, i32, i8*, i32)** %brush_set, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)) #6
  %call4 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i32 0, i32 0), i8* %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), double -1.000000e+00, double 1.000000e+02, double -1.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0), i32 -2147483647, i32 1000, i32 -1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 4, %struct._GParamSpec* %call7)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 -1, i32 22, i32 -1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 5, %struct._GParamSpec* %call8)
  %16 = load %struct._GimpBrushSelectButtonClass*, %struct._GimpBrushSelectButtonClass** %klass.addr, align 8
  %17 = bitcast %struct._GimpBrushSelectButtonClass* %16 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i64 %18, i32 1, i32 896, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN, i64 4, i32 8, i64 64, i64 60, i64 24, i64 24, i64 24, i64 24, i64 68, i64 20)
  store i32 %call9, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @brush_button_signals, i32 0, i64 0), align 4
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %20 = bitcast %struct._GObjectClass* %19 to i8*
  call void @g_type_class_add_private(i8* %20, i64 72)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %2, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %3, i32 0, i32 1
  %4 = load i8*, i8** %brush_name, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name2 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %5, i32 0, i32 1
  store i8* null, i8** %brush_name2, align 8
  %6 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %mask_data = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %6, i32 0, i32 7
  %7 = load i8*, i8** %mask_data, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %mask_data3 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %8, i32 0, i32 7
  store i8* null, i8** %mask_data3, align 8
  %9 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %9, i32 0, i32 0
  %10 = load i8*, i8** %title, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %title4 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %11, i32 0, i32 0
  store i8* null, i8** %title4, align 8
  %12 = load i8*, i8** @gimp_brush_select_button_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 6
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpBrushSelectButton*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  %opacity = alloca double, align 8
  %spacing = alloca i32, align 4
  %paint_mode = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushSelectButton*
  store %struct._GimpBrushSelectButton* %2, %struct._GimpBrushSelectButton** %button, align 8
  %3 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button, align 8
  %4 = bitcast %struct._GimpBrushSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %5, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_string(%struct._GValue* %7)
  %8 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %8, i32 0, i32 0
  store i8* %call4, i8** %title, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button, align 8
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_string(%struct._GValue* %10)
  call void @gimp_brush_select_button_set_brush(%struct._GimpBrushSelectButton* %9, i8* %call6, double -1.000000e+00, i32 -1, i32 -1)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %11)
  store double %call8, double* %opacity, align 8
  %12 = load double, double* %opacity, align 8
  %cmp = fcmp oge double %12, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.7
  %13 = load double, double* %opacity, align 8
  %14 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %opacity9 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %14, i32 0, i32 2
  store double %13, double* %opacity9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.7
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call i32 @g_value_get_int(%struct._GValue* %15)
  store i32 %call11, i32* %spacing, align 4
  %16 = load i32, i32* %spacing, align 4
  %cmp12 = icmp ne i32 %16, -1
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %sw.bb.10
  %17 = load i32, i32* %spacing, align 4
  %18 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %spacing14 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %18, i32 0, i32 3
  store i32 %17, i32* %spacing14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %sw.bb.10
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call17 = call i32 @g_value_get_int(%struct._GValue* %19)
  store i32 %call17, i32* %paint_mode, align 4
  %20 = load i32, i32* %paint_mode, align 4
  %cmp18 = icmp ne i32 %20, -1
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %sw.bb.16
  %21 = load i32, i32* %paint_mode, align 4
  %22 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %paint_mode20 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %22, i32 0, i32 4
  store i32 %21, i32* %paint_mode20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %sw.bb.16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %23, %struct._GObject** %_glib__object, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %24, %struct._GParamSpec** %_glib__pspec, align 8
  %25 = load i32, i32* %property_id.addr, align 4
  store i32 %25, i32* %_glib__property_id, align 4
  %26 = load i32, i32* %_glib__property_id, align 4
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 1
  %28 = load i8*, i8** %name, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = bitcast %struct._GParamSpec* %29 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type, align 8
  %call22 = call i8* @g_type_name(i64 %32)
  %33 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %34 = bitcast %struct._GObject* %33 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %g_type24 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type24, align 8
  %call25 = call i8* @g_type_name(i64 %36)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i32 534, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %26, i8* %28, i8* %call22, i8* %call25)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.21, %if.end.15, %if.end, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GimpBrushSelectButton*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushSelectButton*
  store %struct._GimpBrushSelectButton* %2, %struct._GimpBrushSelectButton** %button, align 8
  %3 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button, align 8
  %4 = bitcast %struct._GimpBrushSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_select_button_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %5, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %8, i32 0, i32 0
  %9 = load i8*, i8** %title, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %11, i32 0, i32 1
  %12 = load i8*, i8** %brush_name, align 8
  call void @g_value_set_string(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %opacity = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %14, i32 0, i32 2
  %15 = load double, double* %opacity, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %spacing = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %17, i32 0, i32 3
  %18 = load i32, i32* %spacing, align 4
  call void @g_value_set_int(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %paint_mode = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %20, i32 0, i32 4
  %21 = load i32, i32* %paint_mode, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %22, %struct._GObject** %_glib__object, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %23, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = load i32, i32* %property_id.addr, align 4
  store i32 %24, i32* %_glib__property_id, align 4
  %25 = load i32, i32* %_glib__property_id, align 4
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = bitcast %struct._GParamSpec* %28 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type, align 8
  %call8 = call i8* @g_type_name(i64 %31)
  %32 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %33 = bitcast %struct._GObject* %32 to %struct._GTypeInstance*
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type10, align 8
  %call11 = call i8* @g_type_name(i64 %35)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i32 568, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %25, i8* %27, i8* %call8, i8* %call11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  ret void
}

declare void @gimp_brush_select_destroy(i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_brush_select_button_create_inside(%struct._GimpBrushSelectButton* %brush_button) #3 {
entry:
  %brush_button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  store %struct._GimpBrushSelectButton* %brush_button, %struct._GimpBrushSelectButton** %brush_button.addr, align 8
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %brush_button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %2, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  call void @gtk_widget_push_composite_child()
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %call3 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_frame_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %5, i32 1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %call8 = call %struct._GtkWidget* @gimp_preview_area_new()
  %10 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %10, i32 0, i32 9
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %preview, align 8
  %11 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview9 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %11, i32 0, i32 9
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %preview9, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %12, i32 768)
  %13 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview10 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %13, i32 0, i32 9
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %preview10, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %14, i32 20, i32 20)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %18 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview13 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %18, i32 0, i32 9
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %preview13, align 8
  call void @gtk_container_add(%struct._GtkContainer* %17, %struct._GtkWidget* %19)
  %20 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview14 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %20, i32 0, i32 9
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview14, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %brush_button.addr, align 8
  %24 = bitcast %struct._GimpBrushSelectButton* %23 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrushSelectButton*)* @gimp_brush_select_preview_resize to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 2)
  %25 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview16 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %25, i32 0, i32 9
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview16, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %brush_button.addr, align 8
  %29 = bitcast %struct._GimpBrushSelectButton* %28 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpBrushSelectButton*)* @gimp_brush_select_preview_events to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview18 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %30, i32 0, i32 9
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %preview18, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %33, i32 7, %struct._GtkTargetEntry* @target, i32 1, i32 2)
  %34 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview21 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %34, i32 0, i32 9
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %preview21, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %brush_button.addr, align 8
  %38 = bitcast %struct._GimpBrushSelectButton* %37 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrushSelectButton*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_brush_select_drag_data_received to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 2)
  %call23 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #6
  %call24 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call23)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %button, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call25)
  %41 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 1, i32 1, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %45 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %brush_button.addr, align 8
  %46 = bitcast %struct._GimpBrushSelectButton* %45 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrushSelectButton*)* @gimp_brush_select_button_clicked to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %47)
  call void @gtk_widget_pop_composite_child()
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  ret %struct._GtkWidget* %48
}

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_push_composite_child() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_preview_resize(%struct._GimpBrushSelectButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %2, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %3, i32 0, i32 5
  %4 = load i32, i32* %width, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %5, i32 0, i32 6
  %6 = load i32, i32* %height, align 4
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %7, i32 0, i32 9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %9 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width3 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %9, i32 0, i32 5
  %10 = load i32, i32* %width3, align 4
  %11 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height4 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %11, i32 0, i32 6
  %12 = load i32, i32* %height4, align 4
  %13 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %mask_data = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %13, i32 0, i32 7
  %14 = load i8*, i8** %mask_data, align 8
  call void @gimp_brush_select_preview_update(%struct._GtkWidget* %8, i32 %10, i32 %12, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brush_select_preview_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpBrushSelectButton* %button) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %2, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %mask_data = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %3, i32 0, i32 7
  %4 = load i8*, i8** %mask_data, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %5 to i32*
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.then
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %8 = bitcast %union._GdkEvent* %7 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %8, %struct._GdkEventButton** %bevent, align 8
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 8
  %10 = load i32, i32* %button2, align 4
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %sw.bb
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %11)
  %12 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 4
  %14 = load double, double* %x, align 8
  %conv = fptosi double %14 to i32
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %15, i32 0, i32 5
  %16 = load double, double* %y, align 8
  %conv4 = fptosi double %16 to i32
  call void @gimp_brush_select_button_open_popup(%struct._GimpBrushSelectButton* %12, i32 %conv, i32 %conv4)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  %17 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %18 = bitcast %union._GdkEvent* %17 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %18, %struct._GdkEventButton** %bevent, align 8
  %19 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button6 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %19, i32 0, i32 8
  %20 = load i32, i32* %button6, align 4
  %cmp7 = icmp eq i32 %20, 1
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb.5
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %21)
  %22 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  call void @gimp_brush_select_button_close_popup(%struct._GimpBrushSelectButton* %22)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.bb.5
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.10, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %sw.epilog, %entry
  ret i32 0
}

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_drag_data_received(%struct._GimpBrushSelectButton* %button, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %selection, i32 %info, i32 %time) #3 {
entry:
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %str = alloca i8*, align 8
  %pid = alloca i32, align 4
  %unused = alloca i8*, align 8
  %name_offset = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %0)
  store i32 %call, i32* %length, align 4
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %1)
  %cmp = icmp ne i32 %call1, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %length, align 4
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_brush_select_drag_data_received, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call3 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %3)
  %4 = load i32, i32* %length, align 4
  %conv = sext i32 %4 to i64
  %call4 = call noalias i8* @g_strndup(i8* %call3, i64 %conv)
  store i8* %call4, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call5 = call i32 @g_utf8_validate(i8* %5, i64 -1, i8** null)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %name_offset, align 4
  %6 = load i8*, i8** %str, align 8
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32* %pid, i8** %unused, i32* %name_offset) #6
  %cmp8 = icmp sge i32 %call7, 2
  br i1 %cmp8, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.6
  %7 = load i32, i32* %pid, align 4
  %call10 = call i32 @gimp_getpid()
  %cmp11 = icmp eq i32 %7, %call10
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %8 = load i32, i32* %name_offset, align 4
  %cmp14 = icmp sgt i32 %8, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13
  %9 = load i8*, i8** %str, align 8
  %10 = load i32, i32* %name_offset, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %name, align 8
  %11 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %12 = load i8*, i8** %name, align 8
  call void @gimp_brush_select_button_set_brush(%struct._GimpBrushSelectButton* %11, i8* %12, double -1.000000e+00, i32 -1, i32 -1)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true.13, %land.lhs.true, %if.then.6
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %13 = load i8*, i8** %str, align 8
  call void @g_free(i8* %13)
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_clicked(%struct._GimpBrushSelectButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  %select_button = alloca %struct._GimpSelectButton*, align 8
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %2, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %4 = bitcast %struct._GimpBrushSelectButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_select_button_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSelectButton*
  store %struct._GimpSelectButton* %5, %struct._GimpSelectButton** %select_button, align 8
  %6 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %6, i32 0, i32 1
  %7 = load i8*, i8** %temp_callback, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback4 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %8, i32 0, i32 1
  %9 = load i8*, i8** %temp_callback4, align 8
  %10 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %10, i32 0, i32 1
  %11 = load i8*, i8** %brush_name, align 8
  %12 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %opacity = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %12, i32 0, i32 2
  %13 = load double, double* %opacity, align 8
  %14 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %spacing = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %14, i32 0, i32 3
  %15 = load i32, i32* %spacing, align 4
  %16 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %paint_mode = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %16, i32 0, i32 4
  %17 = load i32, i32* %paint_mode, align 4
  %call5 = call i32 @gimp_brushes_set_popup(i8* %9, i8* %11, double %13, i32 %15, i32 %17)
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %title = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %18, i32 0, i32 0
  %19 = load i8*, i8** %title, align 8
  %20 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %brush_name6 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %20, i32 0, i32 1
  %21 = load i8*, i8** %brush_name6, align 8
  %22 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %opacity7 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %22, i32 0, i32 2
  %23 = load double, double* %opacity7, align 8
  %24 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %spacing8 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %24, i32 0, i32 3
  %25 = load i32, i32* %spacing8, align 4
  %26 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %paint_mode9 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %26, i32 0, i32 4
  %27 = load i32, i32* %paint_mode9, align 4
  %28 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %29 = bitcast %struct._GimpBrushSelectButton* %28 to i8*
  %call10 = call i8* @gimp_brush_select_new(i8* %19, i8* %21, double %23, i32 %25, i32 %27, void (i8*, double, i32, i32, i32, i32, i8*, i32, i8*)* @gimp_brush_select_button_callback, i8* %29)
  %30 = load %struct._GimpSelectButton*, %struct._GimpSelectButton** %select_button, align 8
  %temp_callback11 = getelementptr inbounds %struct._GimpSelectButton, %struct._GimpSelectButton* %30, i32 0, i32 1
  store i8* %call10, i8** %temp_callback11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare void @gtk_widget_pop_composite_child() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_preview_update(%struct._GtkWidget* %preview, i32 %brush_width, i32 %brush_height, i8* %mask_data) #3 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %brush_width.addr = alloca i32, align 4
  %brush_height.addr = alloca i32, align 4
  %mask_data.addr = alloca i8*, align 8
  %area = alloca %struct._GimpPreviewArea*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i32 %brush_width, i32* %brush_width.addr, align 4
  store i32 %brush_height, i32* %brush_height.addr, align 4
  store i8* %mask_data, i8** %mask_data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %2, %struct._GimpPreviewArea** %area, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load i32, i32* %brush_width.addr, align 4
  %width2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %5 = load i32, i32* %width2, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %brush_width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %width3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %8 = load i32, i32* %brush_height.addr, align 4
  %height4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %9 = load i32, i32* %height4, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  %10 = load i32, i32* %brush_height.addr, align 4
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %height8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %11 = load i32, i32* %height8, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.6
  %cond10 = phi i32 [ %10, %cond.true.6 ], [ %11, %cond.false.7 ]
  store i32 %cond10, i32* %height, align 4
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %12 = load i32, i32* %width11, align 4
  %13 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %12, %13
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %x, align 4
  %height12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %14 = load i32, i32* %height12, align 4
  %15 = load i32, i32* %height, align 4
  %sub13 = sub nsw i32 %14, %15
  %div14 = sdiv i32 %sub13, 2
  store i32 %div14, i32* %y, align 4
  %16 = load i32, i32* %x, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.9
  %17 = load i32, i32* %y, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end.9
  %18 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %width16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %19 = load i32, i32* %width16, align 4
  %height17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %20 = load i32, i32* %height17, align 4
  call void @gimp_preview_area_fill(%struct._GimpPreviewArea* %18, i32 0, i32 0, i32 %19, i32 %20, i8 zeroext -1, i8 zeroext -1, i8 zeroext -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %21 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  %26 = load i8*, i8** %mask_data.addr, align 8
  %27 = load i32, i32* %brush_width.addr, align 4
  call void @gimp_brush_select_preview_draw(%struct._GimpPreviewArea* %21, i32 %22, i32 %23, i32 %24, i32 %25, i8* %26, i32 %27)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gimp_preview_area_fill(%struct._GimpPreviewArea*, i32, i32, i32, i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_preview_draw(%struct._GimpPreviewArea* %area, i32 %x, i32 %y, i32 %width, i32 %height, i8* %mask_data, i32 %rowstride) #3 {
entry:
  %area.addr = alloca %struct._GimpPreviewArea*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mask_data.addr = alloca i8*, align 8
  %rowstride.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct._GimpPreviewArea* %area, %struct._GimpPreviewArea** %area.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %mask_data, i8** %mask_data.addr, align 8
  store i32 %rowstride, i32* %rowstride.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %mask_data.addr, align 8
  store i8* %2, i8** %src, align 8
  %3 = load i8*, i8** %buf, align 8
  store i8* %3, i8** %dest, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %src, align 8
  store i8* %6, i8** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %sub = sub nsw i32 255, %conv6
  %conv7 = trunc i32 %sub to i8
  %11 = load i8*, i8** %dest, align 8
  store i8 %conv7, i8* %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %13 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %14 = load i8*, i8** %dest, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr8, i8** %dest, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %15 = load i32, i32* %rowstride.addr, align 4
  %16 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %18 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area.addr, align 8
  %19 = load i32, i32* %x.addr, align 4
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* %width.addr, align 4
  %22 = load i32, i32* %height.addr, align 4
  %23 = load i8*, i8** %buf, align 8
  %24 = load i32, i32* %width.addr, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 2, i8* %23, i32 %24)
  %25 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %25)
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_open_popup(%struct._GimpBrushSelectButton* %button, i32 %x, i32 %y) #3 {
entry:
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %x_org = alloca i32, align 4
  %y_org = alloca i32, align 4
  %scr_w = alloca i32, align 4
  %scr_h = alloca i32, align 4
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %2, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %3, i32 0, i32 10
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %popup, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  call void @gimp_brush_select_button_close_popup(%struct._GimpBrushSelectButton* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %6, i32 0, i32 5
  %7 = load i32, i32* %width, align 4
  %cmp = icmp sle i32 %7, 20
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %8, i32 0, i32 6
  %9 = load i32, i32* %height, align 4
  %cmp2 = icmp sle i32 %9, 20
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %11 = bitcast %struct._GimpBrushSelectButton* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  %call7 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %12)
  store %struct._GdkScreen* %call7, %struct._GdkScreen** %screen, align 8
  %call8 = call %struct._GtkWidget* @gtk_window_new(i32 1)
  %13 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup9 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %13, i32 0, i32 10
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %popup9, align 8
  %14 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup10 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %14, i32 0, i32 10
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %popup10, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWindow*
  call void @gtk_window_set_type_hint(%struct._GtkWindow* %17, i32 13)
  %18 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup13 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %18, i32 0, i32 10
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %popup13, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  %22 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  call void @gtk_window_set_screen(%struct._GtkWindow* %21, %struct._GdkScreen* %22)
  %call16 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %frame, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_frame_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %25, i32 2)
  %26 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup19 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %26, i32 0, i32 10
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %popup19, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %29, %struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %call22 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %preview, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %33 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width23 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %33, i32 0, i32 5
  %34 = load i32, i32* %width23, align 4
  %35 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height24 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %35, i32 0, i32 6
  %36 = load i32, i32* %height24, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %32, i32 %34, i32 %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_container_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkContainer*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %39, %struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %42 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %preview27 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %42, i32 0, i32 9
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %preview27, align 8
  %call28 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %43)
  %call29 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call28, i32* %x_org, i32* %y_org)
  %44 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call30 = call i32 @gdk_screen_get_width(%struct._GdkScreen* %44)
  store i32 %call30, i32* %scr_w, align 4
  %45 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call31 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %45)
  store i32 %call31, i32* %scr_h, align 4
  %46 = load i32, i32* %x_org, align 4
  %47 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %46, %47
  %48 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width32 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %48, i32 0, i32 5
  %49 = load i32, i32* %width32, align 4
  %div = sdiv i32 %49, 2
  %sub = sub nsw i32 %add, %div
  store i32 %sub, i32* %x.addr, align 4
  %50 = load i32, i32* %y_org, align 4
  %51 = load i32, i32* %y.addr, align 4
  %add33 = add nsw i32 %50, %51
  %52 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height34 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %52, i32 0, i32 6
  %53 = load i32, i32* %height34, align 4
  %div35 = sdiv i32 %53, 2
  %sub36 = sub nsw i32 %add33, %div35
  store i32 %sub36, i32* %y.addr, align 4
  %54 = load i32, i32* %x.addr, align 4
  %cmp37 = icmp slt i32 %54, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %55 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %55, %cond.false ]
  store i32 %cond, i32* %x.addr, align 4
  %56 = load i32, i32* %y.addr, align 4
  %cmp38 = icmp slt i32 %56, 0
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.end
  %57 = load i32, i32* %y.addr, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i32 [ 0, %cond.true.39 ], [ %57, %cond.false.40 ]
  store i32 %cond42, i32* %y.addr, align 4
  %58 = load i32, i32* %x.addr, align 4
  %59 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width43 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %59, i32 0, i32 5
  %60 = load i32, i32* %width43, align 4
  %add44 = add nsw i32 %58, %60
  %61 = load i32, i32* %scr_w, align 4
  %cmp45 = icmp sgt i32 %add44, %61
  br i1 %cmp45, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.end.41
  %62 = load i32, i32* %scr_w, align 4
  %63 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width47 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %63, i32 0, i32 5
  %64 = load i32, i32* %width47, align 4
  %sub48 = sub nsw i32 %62, %64
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end.41
  %65 = load i32, i32* %x.addr, align 4
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.46
  %cond51 = phi i32 [ %sub48, %cond.true.46 ], [ %65, %cond.false.49 ]
  store i32 %cond51, i32* %x.addr, align 4
  %66 = load i32, i32* %y.addr, align 4
  %67 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height52 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %67, i32 0, i32 6
  %68 = load i32, i32* %height52, align 4
  %add53 = add nsw i32 %66, %68
  %69 = load i32, i32* %scr_h, align 4
  %cmp54 = icmp sgt i32 %add53, %69
  br i1 %cmp54, label %cond.true.55, label %cond.false.58

cond.true.55:                                     ; preds = %cond.end.50
  %70 = load i32, i32* %scr_h, align 4
  %71 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height56 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %71, i32 0, i32 6
  %72 = load i32, i32* %height56, align 4
  %sub57 = sub nsw i32 %70, %72
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end.50
  %73 = load i32, i32* %y.addr, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.55
  %cond60 = phi i32 [ %sub57, %cond.true.55 ], [ %73, %cond.false.58 ]
  store i32 %cond60, i32* %y.addr, align 4
  %74 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup61 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %74, i32 0, i32 10
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %popup61, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_window_get_type() #7
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call62)
  %77 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkWindow*
  %78 = load i32, i32* %x.addr, align 4
  %79 = load i32, i32* %y.addr, align 4
  call void @gtk_window_move(%struct._GtkWindow* %77, i32 %78, i32 %79)
  %80 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup64 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %80, i32 0, i32 10
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %popup64, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_preview_area_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call65)
  %84 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpPreviewArea*
  %85 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width67 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %85, i32 0, i32 5
  %86 = load i32, i32* %width67, align 4
  %87 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %height68 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %87, i32 0, i32 6
  %88 = load i32, i32* %height68, align 4
  %89 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %mask_data = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %89, i32 0, i32 7
  %90 = load i8*, i8** %mask_data, align 8
  %91 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %width69 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %91, i32 0, i32 5
  %92 = load i32, i32* %width69, align 4
  call void @gimp_brush_select_preview_draw(%struct._GimpPreviewArea* %84, i32 0, i32 0, i32 %86, i32 %88, i8* %90, i32 %92)
  br label %return

return:                                           ; preds = %cond.end.59, %if.then.3
  ret void
}

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_select_button_close_popup(%struct._GimpBrushSelectButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpBrushSelectButton*, align 8
  %priv = alloca %struct._GimpBrushSelectButtonPrivate*, align 8
  store %struct._GimpBrushSelectButton* %button, %struct._GimpBrushSelectButton** %button.addr, align 8
  %0 = load %struct._GimpBrushSelectButton*, %struct._GimpBrushSelectButton** %button.addr, align 8
  %1 = bitcast %struct._GimpBrushSelectButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_select_button_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpBrushSelectButtonPrivate*
  store %struct._GimpBrushSelectButtonPrivate* %2, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %3 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %3, i32 0, i32 10
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %popup, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup2 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %5, i32 0, i32 10
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %popup2, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  %7 = load %struct._GimpBrushSelectButtonPrivate*, %struct._GimpBrushSelectButtonPrivate** %priv, align 8
  %popup3 = getelementptr inbounds %struct._GimpBrushSelectButtonPrivate, %struct._GimpBrushSelectButtonPrivate* %7, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %popup3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_window_new(i32) #1

declare void @gtk_window_set_type_hint(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i32 @gdk_screen_get_width(%struct._GdkScreen*) #1

declare i32 @gdk_screen_get_height(%struct._GdkScreen*) #1

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare i32 @gimp_getpid() #1

declare i8* @gimp_brush_select_new(i8*, i8*, double, i32, i32, void (i8*, double, i32, i32, i32, i32, i8*, i32, i8*)*, i8*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
