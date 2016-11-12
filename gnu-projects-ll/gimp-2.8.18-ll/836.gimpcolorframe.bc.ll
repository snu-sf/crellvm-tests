; ModuleID = './app/widgets/gimpcolorframe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorFrameClass = type { %struct._GimpFrameClass }
%struct._GimpFrameClass = type { %struct._GtkFrameClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkFrameClass = type { %struct._GtkBinClass, void (%struct._GtkFrame*, %struct._GdkRectangle*)* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
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
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpColorFrame = type { %struct._GimpFrame, i32, i32, %struct._GimpRGB, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*], %struct._PangoLayout* }
%struct._GimpFrame = type { %struct._GtkFrame }
%struct._GimpRGB = type { double, double, double, double }
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpCMYK = type { double, double, double, double, double }
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_color_frame_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpColorFrame\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_color_frame_set_mode = private unnamed_addr constant [26 x i8] c"gimp_color_frame_set_mode\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_COLOR_FRAME (frame)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@__func__.gimp_color_frame_set_has_number = private unnamed_addr constant [32 x i8] c"gimp_color_frame_set_has_number\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"has-number\00", align 1
@__func__.gimp_color_frame_set_number = private unnamed_addr constant [28 x i8] c"gimp_color_frame_set_number\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@__func__.gimp_color_frame_set_has_color_area = private unnamed_addr constant [36 x i8] c"gimp_color_frame_set_has_color_area\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"has-color-area\00", align 1
@__func__.gimp_color_frame_set_color = private unnamed_addr constant [27 x i8] c"gimp_color_frame_set_color\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_color_frame_set_invalid = private unnamed_addr constant [29 x i8] c"gimp_color_frame_set_invalid\00", align 1
@gimp_color_frame_parent_class = internal global i8* null, align 8
@GimpColorFrame_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gimpcolorframe.c\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"drag-mask\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"draw-border\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"height-request\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Index:\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Red:\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Green:\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Blue:\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Value:\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%d %%\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Hex:\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"%.2x%.2x%.2x\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Hue:\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Sat.:\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%d \C2\B0\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Cyan:\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Magenta:\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Yellow:\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Black:\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Alpha:\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_frame_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_frame_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_frame_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_frame_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_frame_class_intern_init to void (i8*, i8*)*), i32 328, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorFrame*)* @gimp_color_frame_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_frame_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_frame_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_frame_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_frame_parent_class, align 8
  %1 = load i32, i32* @GimpColorFrame_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorFrame_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorFrameClass*
  call void @gimp_color_frame_class_init(%struct._GimpColorFrameClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_init(%struct._GimpColorFrame* %frame) #3 {
entry:
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %hbox = alloca %struct._GtkWidget*, align 8
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  %0 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %0, i32 0, i32 1
  store i32 0, i32* %sample_valid, align 4
  %1 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %1, i32 0, i32 2
  store i32 0, i32* %sample_type, align 4
  %2 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %2, i32 0, i32 3
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %call = call i64 @gimp_color_frame_mode_get_type() #7
  %call1 = call %struct._GtkWidget* @gimp_enum_combo_box_new(i64 %call)
  %3 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %menu = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %3, i32 0, i32 9
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %menu, align 8
  %4 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %5 = bitcast %struct._GimpColorFrame* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_frame_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkFrame*
  %7 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %menu4 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %7, i32 0, i32 9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menu4, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %6, %struct._GtkWidget* %8)
  %9 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %menu5 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %9, i32 0, i32 9
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %menu5, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %menu6 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %11, i32 0, i32 9
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %menu6, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %15 = bitcast %struct._GimpColorFrame* %14 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorFrame*)* @gimp_color_frame_menu_callback to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %vbox, align 8
  %16 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %17 = bitcast %struct._GimpColorFrame* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call11 = call i64 @gimp_color_area_get_type() #7
  %21 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color12 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %21, i32 0, i32 3
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %struct._GimpRGB* %color12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i32 20, i8* null)
  %22 = bitcast i8* %call13 to %struct._GtkWidget*
  %23 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %23, i32 0, i32 10
  store %struct._GtkWidget* %22, %struct._GtkWidget** %color_area, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %27 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color_area16 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %27, i32 0, i32 10
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area16, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %vbox2, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call18)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %31, i32 1)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %37 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %37, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call22 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %hbox, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call23)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %call25 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %43 = load i32, i32* %i, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %name_labels = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %44, i32 0, i32 11
  %arrayidx = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %name_labels, i32 0, i64 %idxprom
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %arrayidx, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %45 to i64
  %46 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %name_labels27 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %46, i32 0, i32 11
  %arrayidx28 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %name_labels27, i32 0, i64 %idxprom26
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx28, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_misc_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call29)
  %49 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %49, float 0.000000e+00, float 5.000000e-01)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call31)
  %52 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %53 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %53 to i64
  %54 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %name_labels34 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %54, i32 0, i32 11
  %arrayidx35 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %name_labels34, i32 0, i64 %idxprom33
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx35, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %55, i32 0, i32 0, i32 0)
  %56 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %56 to i64
  %57 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %name_labels37 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %57, i32 0, i32 11
  %arrayidx38 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %name_labels37, i32 0, i64 %idxprom36
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx38, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %call39 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %59 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %59 to i64
  %60 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %value_labels = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %60, i32 0, i32 12
  %arrayidx41 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %value_labels, i32 0, i64 %idxprom40
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %arrayidx41, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %61 to i64
  %62 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %value_labels43 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %62, i32 0, i32 12
  %arrayidx44 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %value_labels43, i32 0, i64 %idxprom42
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx44, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_label_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call45)
  %65 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %65, i32 1)
  %66 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %66 to i64
  %67 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %value_labels48 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %67, i32 0, i32 12
  %arrayidx49 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %value_labels48, i32 0, i64 %idxprom47
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx49, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_misc_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call50)
  %70 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %70, float 1.000000e+00, float 5.000000e-01)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call52)
  %73 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %74 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %74 to i64
  %75 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %value_labels55 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %75, i32 0, i32 12
  %arrayidx56 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %value_labels55, i32 0, i64 %idxprom54
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx56, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %73, %struct._GtkWidget* %76, i32 0, i32 0, i32 0)
  %77 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %77 to i64
  %78 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %value_labels58 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %78, i32 0, i32 12
  %arrayidx59 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %value_labels58, i32 0, i64 %idxprom57
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx59, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %i, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_frame_new() #3 {
entry:
  %call = call i64 @gimp_color_frame_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_frame_set_mode(%struct._GimpColorFrame* %frame, i32 %mode) #3 {
entry:
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %1 = bitcast %struct._GimpColorFrame* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_frame_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_color_frame_set_mode, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %menu = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %13, i32 0, i32 9
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_int_combo_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpIntComboBox*
  %17 = load i32, i32* %mode.addr, align 4
  %call13 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %16, i32 %17)
  %18 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %19 = bitcast %struct._GimpColorFrame* %18 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_frame_set_has_number(%struct._GimpColorFrame* %frame, i32 %has_number) #3 {
entry:
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %has_number.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  store i32 %has_number, i32* %has_number.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %1 = bitcast %struct._GimpColorFrame* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_frame_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_frame_set_has_number, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %has_number.addr, align 4
  %14 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %has_number11 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %14, i32 0, i32 6
  %15 = load i32, i32* %has_number11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %has_number.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %has_number15 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %17, i32 0, i32 6
  store i32 %cond, i32* %has_number15, align 4
  %18 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %19 = bitcast %struct._GimpColorFrame* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %20)
  %21 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %22 = bitcast %struct._GimpColorFrame* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_color_frame_set_number(%struct._GimpColorFrame* %frame, i32 %number) #3 {
entry:
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %number.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %1 = bitcast %struct._GimpColorFrame* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_frame_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_color_frame_set_number, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %number.addr, align 4
  %14 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %number11 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %14, i32 0, i32 7
  %15 = load i32, i32* %number11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %number.addr, align 4
  %17 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %number14 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %17, i32 0, i32 7
  store i32 %16, i32* %number14, align 4
  %18 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %19 = bitcast %struct._GimpColorFrame* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %20)
  %21 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %22 = bitcast %struct._GimpColorFrame* %21 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_frame_set_has_color_area(%struct._GimpColorFrame* %frame, i32 %has_color_area) #3 {
entry:
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %has_color_area.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  store i32 %has_color_area, i32* %has_color_area.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %1 = bitcast %struct._GimpColorFrame* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_frame_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_color_frame_set_has_color_area, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %has_color_area.addr, align 4
  %14 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %has_color_area11 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %14, i32 0, i32 8
  %15 = load i32, i32* %has_color_area11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %has_color_area.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %has_color_area15 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %17, i32 0, i32 8
  store i32 %cond, i32* %has_color_area15, align 4
  %18 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %18, i32 0, i32 10
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %has_color_area16 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %21, i32 0, i32 8
  %22 = load i32, i32* %has_color_area16, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %22, i8* null)
  %23 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %24 = bitcast %struct._GimpColorFrame* %23 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_frame_set_color(%struct._GimpColorFrame* %frame, i32 %sample_type, %struct._GimpRGB* %color, i32 %color_index) #3 {
entry:
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %sample_type.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  store i32 %sample_type, i32* %sample_type.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %color_index, i32* %color_index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %1 = bitcast %struct._GimpColorFrame* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_frame_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_frame_set_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_frame_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %14, i32 0, i32 1
  %15 = load i32, i32* %sample_valid, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.30

land.lhs.true.18:                                 ; preds = %do.end.16
  %16 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type19 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %16, i32 0, i32 2
  %17 = load i32, i32* %sample_type19, align 4
  %18 = load i32, i32* %sample_type.addr, align 4
  %cmp20 = icmp eq i32 %17, %18
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.30

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %19 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color_index22 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %19, i32 0, i32 4
  %20 = load i32, i32* %color_index22, align 4
  %21 = load i32, i32* %color_index.addr, align 4
  %cmp23 = icmp eq i32 %20, %21
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.30

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %22 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color25 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %22, i32 0, i32 3
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call26 = call double @gimp_rgba_distance(%struct._GimpRGB* %color25, %struct._GimpRGB* %23)
  %cmp27 = fcmp olt double %call26, 1.000000e-04
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true.24
  %24 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color29 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %24, i32 0, i32 3
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %26 = bitcast %struct._GimpRGB* %color29 to i8*
  %27 = bitcast %struct._GimpRGB* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  br label %return

if.end.30:                                        ; preds = %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true.18, %do.end.16
  %28 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid31 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %28, i32 0, i32 1
  store i32 1, i32* %sample_valid31, align 4
  %29 = load i32, i32* %sample_type.addr, align 4
  %30 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type32 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %30, i32 0, i32 2
  store i32 %29, i32* %sample_type32, align 4
  %31 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color33 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %31, i32 0, i32 3
  %32 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %33 = bitcast %struct._GimpRGB* %color33 to i8*
  %34 = bitcast %struct._GimpRGB* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  %35 = load i32, i32* %color_index.addr, align 4
  %36 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color_index34 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %36, i32 0, i32 4
  store i32 %35, i32* %color_index34, align 4
  %37 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  call void @gimp_color_frame_update(%struct._GimpColorFrame* %37)
  br label %return

return:                                           ; preds = %if.end.30, %if.then.28, %if.else.14, %if.else.9
  ret void
}

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_update(%struct._GimpColorFrame* %frame) #3 {
entry:
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %names = alloca [5 x i8*], align 16
  %values = alloca [5 x i8*], align 16
  %has_alpha = alloca i32, align 4
  %alpha_row = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %a = alloca i8, align 1
  %i = alloca i32, align 4
  %hsv = alloca %struct._GimpHSV, align 8
  %cmyk = alloca %struct._GimpCMYK, align 8
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  %0 = bitcast [5 x i8*]* %names to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 40, i32 16, i1 false)
  %1 = bitcast [5 x i8*]* %values to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 40, i32 16, i1 false)
  store i32 3, i32* %alpha_row, align 4
  %2 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %2, i32 0, i32 2
  %3 = load i32, i32* %sample_type, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type1 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %4, i32 0, i32 2
  %5 = load i32, i32* %sample_type1, align 4
  %cmp2 = icmp eq i32 %5, 3
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type3 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %6, i32 0, i32 2
  %7 = load i32, i32* %sample_type3, align 4
  %cmp4 = icmp eq i32 %7, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* %has_alpha, align 4
  %9 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %9, i32 0, i32 1
  %10 = load i32, i32* %sample_valid, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %11 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %11, i32 0, i32 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b, i8* %a)
  %12 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %12, i32 0, i32 10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorArea*
  %16 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color6 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %16, i32 0, i32 3
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %15, %struct._GimpRGB* %color6)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %17 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %frame_mode = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %17, i32 0, i32 5
  %18 = load i32, i32* %frame_mode, align 4
  switch i32 %18, label %sw.epilog.173 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.71
    i32 2, label %sw.bb.112
    i32 3, label %sw.bb.139
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type7 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %19, i32 0, i32 2
  %20 = load i32, i32* %sample_type7, align 4
  %cmp8 = icmp eq i32 %20, 0
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %sw.bb
  %21 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type10 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %21, i32 0, i32 2
  %22 = load i32, i32* %sample_type10, align 4
  %cmp11 = icmp eq i32 %22, 1
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.9, %sw.bb
  br label %cond.end.27

cond.false:                                       ; preds = %lor.lhs.false.9
  %23 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type12 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %23, i32 0, i32 2
  %24 = load i32, i32* %sample_type12, align 4
  %cmp13 = icmp eq i32 %24, 2
  br i1 %cmp13, label %cond.true.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %cond.false
  %25 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type15 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %25, i32 0, i32 2
  %26 = load i32, i32* %sample_type15, align 4
  %cmp16 = icmp eq i32 %26, 3
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %lor.lhs.false.14, %cond.false
  br label %cond.end

cond.false.18:                                    ; preds = %lor.lhs.false.14
  %27 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type19 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %27, i32 0, i32 2
  %28 = load i32, i32* %sample_type19, align 4
  %cmp20 = icmp eq i32 %28, 4
  br i1 %cmp20, label %lor.end.24, label %lor.rhs.21

lor.rhs.21:                                       ; preds = %cond.false.18
  %29 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_type22 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %29, i32 0, i32 2
  %30 = load i32, i32* %sample_type22, align 4
  %cmp23 = icmp eq i32 %30, 5
  br label %lor.end.24

lor.end.24:                                       ; preds = %lor.rhs.21, %cond.false.18
  %31 = phi i1 [ true, %cond.false.18 ], [ %cmp23, %lor.rhs.21 ]
  %cond = select i1 %31, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end.24, %cond.true.17
  %cond26 = phi i32 [ 1, %cond.true.17 ], [ %cond, %lor.end.24 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ 0, %cond.true ], [ %cond26, %cond.end ]
  switch i32 %cond28, label %sw.epilog [
    i32 2, label %sw.bb.29
    i32 0, label %sw.bb.42
    i32 1, label %sw.bb.61
  ]

sw.bb.29:                                         ; preds = %cond.end.27
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #5
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 4
  store i8* %call30, i8** %arrayidx, align 8
  %32 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid31 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %32, i32 0, i32 1
  %33 = load i32, i32* %sample_valid31, align 4
  %tobool32 = icmp ne i32 %33, 0
  br i1 %tobool32, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %sw.bb.29
  %34 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color_index = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %34, i32 0, i32 4
  %35 = load i32, i32* %color_index, align 4
  %cmp34 = icmp slt i32 %35, 0
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.33
  %arrayidx36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 4
  store i8* null, i8** %arrayidx36, align 8
  br label %if.end.40

if.else:                                          ; preds = %if.then.33
  %36 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color_index37 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %36, i32 0, i32 4
  %37 = load i32, i32* %color_index37, align 4
  %call38 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %37)
  %arrayidx39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 4
  store i8* %call38, i8** %arrayidx39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.35
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %sw.bb.29
  br label %sw.bb.42

sw.bb.42:                                         ; preds = %cond.end.27, %if.end.41
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #5
  %arrayidx44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 0
  store i8* %call43, i8** %arrayidx44, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #5
  %arrayidx46 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 1
  store i8* %call45, i8** %arrayidx46, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #5
  %arrayidx48 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 2
  store i8* %call47, i8** %arrayidx48, align 8
  %38 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid49 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %38, i32 0, i32 1
  %39 = load i32, i32* %sample_valid49, align 4
  %tobool50 = icmp ne i32 %39, 0
  br i1 %tobool50, label %if.then.51, label %if.end.60

if.then.51:                                       ; preds = %sw.bb.42
  %40 = load i8, i8* %r, align 1
  %conv = zext i8 %40 to i32
  %call52 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %conv)
  %arrayidx53 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 0
  store i8* %call52, i8** %arrayidx53, align 8
  %41 = load i8, i8* %g, align 1
  %conv54 = zext i8 %41 to i32
  %call55 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %conv54)
  %arrayidx56 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 1
  store i8* %call55, i8** %arrayidx56, align 8
  %42 = load i8, i8* %b, align 1
  %conv57 = zext i8 %42 to i32
  %call58 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %conv57)
  %arrayidx59 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 2
  store i8* %call58, i8** %arrayidx59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.51, %sw.bb.42
  store i32 3, i32* %alpha_row, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %cond.end.27
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #5
  %arrayidx63 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 0
  store i8* %call62, i8** %arrayidx63, align 8
  %43 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid64 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %43, i32 0, i32 1
  %44 = load i32, i32* %sample_valid64, align 4
  %tobool65 = icmp ne i32 %44, 0
  br i1 %tobool65, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %sw.bb.61
  %45 = load i8, i8* %r, align 1
  %conv67 = zext i8 %45 to i32
  %call68 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %conv67)
  %arrayidx69 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 0
  store i8* %call68, i8** %arrayidx69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %sw.bb.61
  store i32 1, i32* %alpha_row, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.27, %if.end.70, %if.end.60
  br label %sw.epilog.173

sw.bb.71:                                         ; preds = %if.end
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #5
  %arrayidx73 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 0
  store i8* %call72, i8** %arrayidx73, align 8
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #5
  %arrayidx75 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 1
  store i8* %call74, i8** %arrayidx75, align 8
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #5
  %arrayidx77 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 2
  store i8* %call76, i8** %arrayidx77, align 8
  %46 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid78 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %46, i32 0, i32 1
  %47 = load i32, i32* %sample_valid78, align 4
  %tobool79 = icmp ne i32 %47, 0
  br i1 %tobool79, label %if.then.80, label %if.end.100

if.then.80:                                       ; preds = %sw.bb.71
  %48 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color81 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %48, i32 0, i32 3
  %r82 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color81, i32 0, i32 0
  %49 = load double, double* %r82, align 8
  %mul = fmul double %49, 1.000000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv83 = fptosi double %add to i32
  %call84 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv83)
  %arrayidx85 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 0
  store i8* %call84, i8** %arrayidx85, align 8
  %50 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color86 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %50, i32 0, i32 3
  %g87 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color86, i32 0, i32 1
  %51 = load double, double* %g87, align 8
  %mul88 = fmul double %51, 1.000000e+02
  %add89 = fadd double %mul88, 5.000000e-01
  %conv90 = fptosi double %add89 to i32
  %call91 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv90)
  %arrayidx92 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 1
  store i8* %call91, i8** %arrayidx92, align 8
  %52 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color93 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %52, i32 0, i32 3
  %b94 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color93, i32 0, i32 2
  %53 = load double, double* %b94, align 8
  %mul95 = fmul double %53, 1.000000e+02
  %add96 = fadd double %mul95, 5.000000e-01
  %conv97 = fptosi double %add96 to i32
  %call98 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv97)
  %arrayidx99 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 2
  store i8* %call98, i8** %arrayidx99, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.80, %sw.bb.71
  store i32 3, i32* %alpha_row, align 4
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)) #5
  %arrayidx102 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 4
  store i8* %call101, i8** %arrayidx102, align 8
  %54 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid103 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %54, i32 0, i32 1
  %55 = load i32, i32* %sample_valid103, align 4
  %tobool104 = icmp ne i32 %55, 0
  br i1 %tobool104, label %if.then.105, label %if.end.111

if.then.105:                                      ; preds = %if.end.100
  %56 = load i8, i8* %r, align 1
  %conv106 = zext i8 %56 to i32
  %57 = load i8, i8* %g, align 1
  %conv107 = zext i8 %57 to i32
  %58 = load i8, i8* %b, align 1
  %conv108 = zext i8 %58 to i32
  %call109 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 %conv106, i32 %conv107, i32 %conv108)
  %arrayidx110 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 4
  store i8* %call109, i8** %arrayidx110, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.105, %if.end.100
  br label %sw.epilog.173

sw.bb.112:                                        ; preds = %if.end
  %call113 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #5
  %arrayidx114 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 0
  store i8* %call113, i8** %arrayidx114, align 8
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #5
  %arrayidx116 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 1
  store i8* %call115, i8** %arrayidx116, align 8
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #5
  %arrayidx118 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 2
  store i8* %call117, i8** %arrayidx118, align 8
  %59 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid119 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %59, i32 0, i32 1
  %60 = load i32, i32* %sample_valid119, align 4
  %tobool120 = icmp ne i32 %60, 0
  br i1 %tobool120, label %if.then.121, label %if.end.138

if.then.121:                                      ; preds = %sw.bb.112
  %61 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color122 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %61, i32 0, i32 3
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %color122, %struct._GimpHSV* %hsv)
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %62 = load double, double* %h, align 8
  %mul123 = fmul double %62, 3.600000e+02
  %add124 = fadd double %mul123, 5.000000e-01
  %conv125 = fptosi double %add124 to i32
  %call126 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %conv125)
  %arrayidx127 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 0
  store i8* %call126, i8** %arrayidx127, align 8
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  %63 = load double, double* %s, align 8
  %mul128 = fmul double %63, 1.000000e+02
  %add129 = fadd double %mul128, 5.000000e-01
  %conv130 = fptosi double %add129 to i32
  %call131 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv130)
  %arrayidx132 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 1
  store i8* %call131, i8** %arrayidx132, align 8
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %64 = load double, double* %v, align 8
  %mul133 = fmul double %64, 1.000000e+02
  %add134 = fadd double %mul133, 5.000000e-01
  %conv135 = fptosi double %add134 to i32
  %call136 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv135)
  %arrayidx137 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 2
  store i8* %call136, i8** %arrayidx137, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.121, %sw.bb.112
  store i32 3, i32* %alpha_row, align 4
  br label %sw.epilog.173

sw.bb.139:                                        ; preds = %if.end
  %call140 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)) #5
  %arrayidx141 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 0
  store i8* %call140, i8** %arrayidx141, align 8
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0)) #5
  %arrayidx143 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 1
  store i8* %call142, i8** %arrayidx143, align 8
  %call144 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #5
  %arrayidx145 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 2
  store i8* %call144, i8** %arrayidx145, align 8
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #5
  %arrayidx147 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 3
  store i8* %call146, i8** %arrayidx147, align 8
  %65 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid148 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %65, i32 0, i32 1
  %66 = load i32, i32* %sample_valid148, align 4
  %tobool149 = icmp ne i32 %66, 0
  br i1 %tobool149, label %if.then.150, label %if.end.172

if.then.150:                                      ; preds = %sw.bb.139
  %67 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color151 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %67, i32 0, i32 3
  call void @gimp_rgb_to_cmyk(%struct._GimpRGB* %color151, double 1.000000e+00, %struct._GimpCMYK* %cmyk)
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk, i32 0, i32 0
  %68 = load double, double* %c, align 8
  %mul152 = fmul double %68, 1.000000e+02
  %add153 = fadd double %mul152, 5.000000e-01
  %conv154 = fptosi double %add153 to i32
  %call155 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv154)
  %arrayidx156 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 0
  store i8* %call155, i8** %arrayidx156, align 8
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk, i32 0, i32 1
  %69 = load double, double* %m, align 8
  %mul157 = fmul double %69, 1.000000e+02
  %add158 = fadd double %mul157, 5.000000e-01
  %conv159 = fptosi double %add158 to i32
  %call160 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv159)
  %arrayidx161 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 1
  store i8* %call160, i8** %arrayidx161, align 8
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk, i32 0, i32 2
  %70 = load double, double* %y, align 8
  %mul162 = fmul double %70, 1.000000e+02
  %add163 = fadd double %mul162, 5.000000e-01
  %conv164 = fptosi double %add163 to i32
  %call165 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv164)
  %arrayidx166 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 2
  store i8* %call165, i8** %arrayidx166, align 8
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %cmyk, i32 0, i32 3
  %71 = load double, double* %k, align 8
  %mul167 = fmul double %71, 1.000000e+02
  %add168 = fadd double %mul167, 5.000000e-01
  %conv169 = fptosi double %add168 to i32
  %call170 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv169)
  %arrayidx171 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 3
  store i8* %call170, i8** %arrayidx171, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.150, %sw.bb.139
  store i32 4, i32* %alpha_row, align 4
  br label %sw.epilog.173

sw.epilog.173:                                    ; preds = %if.end, %if.end.172, %if.end.138, %if.end.111, %sw.epilog
  %72 = load i32, i32* %has_alpha, align 4
  %tobool174 = icmp ne i32 %72, 0
  br i1 %tobool174, label %if.then.175, label %if.end.199

if.then.175:                                      ; preds = %sw.epilog.173
  %call176 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #5
  %73 = load i32, i32* %alpha_row, align 4
  %idxprom = sext i32 %73 to i64
  %arrayidx177 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 %idxprom
  store i8* %call176, i8** %arrayidx177, align 8
  %74 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid178 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %74, i32 0, i32 1
  %75 = load i32, i32* %sample_valid178, align 4
  %tobool179 = icmp ne i32 %75, 0
  br i1 %tobool179, label %if.then.180, label %if.end.198

if.then.180:                                      ; preds = %if.then.175
  %76 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %frame_mode181 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %76, i32 0, i32 5
  %77 = load i32, i32* %frame_mode181, align 4
  %cmp182 = icmp eq i32 %77, 0
  br i1 %cmp182, label %if.then.184, label %if.else.189

if.then.184:                                      ; preds = %if.then.180
  %78 = load i8, i8* %a, align 1
  %conv185 = zext i8 %78 to i32
  %call186 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %conv185)
  %79 = load i32, i32* %alpha_row, align 4
  %idxprom187 = sext i32 %79 to i64
  %arrayidx188 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 %idxprom187
  store i8* %call186, i8** %arrayidx188, align 8
  br label %if.end.197

if.else.189:                                      ; preds = %if.then.180
  %80 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %color190 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %80, i32 0, i32 3
  %a191 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color190, i32 0, i32 3
  %81 = load double, double* %a191, align 8
  %mul192 = fmul double %81, 1.000000e+02
  %conv193 = fptosi double %mul192 to i32
  %call194 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv193)
  %82 = load i32, i32* %alpha_row, align 4
  %idxprom195 = sext i32 %82 to i64
  %arrayidx196 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 %idxprom195
  store i8* %call194, i8** %arrayidx196, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.189, %if.then.184
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.then.175
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %sw.epilog.173
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.199
  %83 = load i32, i32* %i, align 4
  %cmp200 = icmp slt i32 %83, 5
  br i1 %cmp200, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %84 to i64
  %arrayidx203 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 %idxprom202
  %85 = load i8*, i8** %arrayidx203, align 8
  %tobool204 = icmp ne i8* %85, null
  br i1 %tobool204, label %if.then.205, label %if.else.229

if.then.205:                                      ; preds = %for.body
  %86 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %86 to i64
  %87 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %name_labels = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %87, i32 0, i32 11
  %arrayidx207 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %name_labels, i32 0, i64 %idxprom206
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx207, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call208 = call i64 @gtk_label_get_type() #7
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call208)
  %90 = bitcast %struct._GTypeInstance* %call209 to %struct._GtkLabel*
  %91 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %91 to i64
  %arrayidx211 = getelementptr inbounds [5 x i8*], [5 x i8*]* %names, i32 0, i64 %idxprom210
  %92 = load i8*, i8** %arrayidx211, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %90, i8* %92)
  %93 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid212 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %93, i32 0, i32 1
  %94 = load i32, i32* %sample_valid212, align 4
  %tobool213 = icmp ne i32 %94, 0
  br i1 %tobool213, label %if.then.214, label %if.else.221

if.then.214:                                      ; preds = %if.then.205
  %95 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %95 to i64
  %96 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %value_labels = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %96, i32 0, i32 12
  %arrayidx216 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %value_labels, i32 0, i64 %idxprom215
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx216, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call217 = call i64 @gtk_label_get_type() #7
  %call218 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call217)
  %99 = bitcast %struct._GTypeInstance* %call218 to %struct._GtkLabel*
  %100 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %100 to i64
  %arrayidx220 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 %idxprom219
  %101 = load i8*, i8** %arrayidx220, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %99, i8* %101)
  br label %if.end.228

if.else.221:                                      ; preds = %if.then.205
  %102 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %102 to i64
  %103 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %value_labels223 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %103, i32 0, i32 12
  %arrayidx224 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %value_labels223, i32 0, i64 %idxprom222
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx224, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call225 = call i64 @gtk_label_get_type() #7
  %call226 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call225)
  %106 = bitcast %struct._GTypeInstance* %call226 to %struct._GtkLabel*
  %call227 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0)) #5
  call void @gtk_label_set_text(%struct._GtkLabel* %106, i8* %call227)
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.221, %if.then.214
  br label %if.end.240

if.else.229:                                      ; preds = %for.body
  %107 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %107 to i64
  %108 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %name_labels231 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %108, i32 0, i32 11
  %arrayidx232 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %name_labels231, i32 0, i64 %idxprom230
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx232, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call233 = call i64 @gtk_label_get_type() #7
  %call234 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call233)
  %111 = bitcast %struct._GTypeInstance* %call234 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %112 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %112 to i64
  %113 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %value_labels236 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %113, i32 0, i32 12
  %arrayidx237 = getelementptr inbounds [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*]* %value_labels236, i32 0, i64 %idxprom235
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx237, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call238 = call i64 @gtk_label_get_type() #7
  %call239 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call238)
  %116 = bitcast %struct._GTypeInstance* %call239 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.229, %if.end.228
  %117 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %117 to i64
  %arrayidx242 = getelementptr inbounds [5 x i8*], [5 x i8*]* %values, i32 0, i64 %idxprom241
  %118 = load i8*, i8** %arrayidx242, align 8
  call void @g_free(i8* %118)
  br label %for.inc

for.inc:                                          ; preds = %if.end.240
  %119 = load i32, i32* %i, align 4
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_frame_set_invalid(%struct._GimpColorFrame* %frame) #3 {
entry:
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %1 = bitcast %struct._GimpColorFrame* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_frame_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_frame_set_invalid, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %13, i32 0, i32 1
  %14 = load i32, i32* %sample_valid, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %sample_valid14 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %15, i32 0, i32 1
  store i32 0, i32* %sample_valid14, align 4
  %16 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  call void @gimp_color_frame_update(%struct._GimpColorFrame* %16)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_class_init(%struct._GimpColorFrameClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorFrameClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpColorFrameClass* %klass, %struct._GimpColorFrameClass** %klass.addr, align 8
  %0 = load %struct._GimpColorFrameClass*, %struct._GimpColorFrameClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorFrameClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorFrameClass*, %struct._GimpColorFrameClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorFrameClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_frame_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_frame_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_frame_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_color_frame_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_color_frame_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_color_frame_mode_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call5)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 0, i32 256, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call6)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 4, %struct._GParamSpec* %call7)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %frame = alloca %struct._GimpColorFrame*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_frame_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorFrame*
  store %struct._GimpColorFrame* %2, %struct._GimpColorFrame** %frame, align 8
  %3 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %3, i32 0, i32 13
  %4 = load %struct._PangoLayout*, %struct._PangoLayout** %number_layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout2 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %5, i32 0, i32 13
  %6 = load %struct._PangoLayout*, %struct._PangoLayout** %number_layout2, align 8
  %7 = bitcast %struct._PangoLayout* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout3 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %8, i32 0, i32 13
  store %struct._PangoLayout* null, %struct._PangoLayout** %number_layout3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_color_frame_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %frame = alloca %struct._GimpColorFrame*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_frame_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorFrame*
  store %struct._GimpColorFrame* %2, %struct._GimpColorFrame** %frame, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %frame_mode = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %5, i32 0, i32 5
  %6 = load i32, i32* %frame_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %has_number = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %8, i32 0, i32 6
  %9 = load i32, i32* %has_number, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %11, i32 0, i32 7
  %12 = load i32, i32* %number, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %has_color_area = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %14, i32 0, i32 8
  %15 = load i32, i32* %has_color_area, align 4
  call void @g_value_set_boolean(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %19, i8* %21, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %frame = alloca %struct._GimpColorFrame*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_frame_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorFrame*
  store %struct._GimpColorFrame* %2, %struct._GimpColorFrame** %frame, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %5)
  call void @gimp_color_frame_set_mode(%struct._GimpColorFrame* %4, i32 %call2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %7)
  call void @gimp_color_frame_set_has_number(%struct._GimpColorFrame* %6, i32 %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %9)
  call void @gimp_color_frame_set_number(%struct._GimpColorFrame* %8, i32 %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %11)
  call void @gimp_color_frame_set_has_color_area(%struct._GimpColorFrame* %10, i32 %call8)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %15, i8* %17, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %frame = alloca %struct._GimpColorFrame*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_frame_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorFrame*
  store %struct._GimpColorFrame* %2, %struct._GimpColorFrame** %frame, align 8
  %3 = load i8*, i8** @gimp_color_frame_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %9, i32 0, i32 13
  %10 = load %struct._PangoLayout*, %struct._PangoLayout** %number_layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout4 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %11, i32 0, i32 13
  %12 = load %struct._PangoLayout*, %struct._PangoLayout** %number_layout4, align 8
  %13 = bitcast %struct._PangoLayout* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout5 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %14, i32 0, i32 13
  store %struct._PangoLayout* null, %struct._PangoLayout** %number_layout5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_frame_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %eevent) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %frame = alloca %struct._GimpColorFrame*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %menu_allocation = alloca %struct._GdkRectangle, align 4
  %color_area_allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %buf = alloca [8 x i8], align 1
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %scale = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_frame_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorFrame*
  store %struct._GimpColorFrame* %2, %struct._GimpColorFrame** %frame, align 8
  %3 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %has_number = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %3, i32 0, i32 6
  %4 = load i32, i32* %has_number, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %5)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %6, %struct._GdkRectangle* %allocation)
  %7 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %menu = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %7, i32 0, i32 9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %8, %struct._GdkRectangle* %menu_allocation)
  %9 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %color_area = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %9, i32 0, i32 10
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %10, %struct._GdkRectangle* %color_area_allocation)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %11)
  %call4 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call3)
  store %struct._cairo* %call4, %struct._cairo** %cr, align 8
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %13 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %13, i32 0, i32 4
  %14 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %12, %struct._GdkRegion* %14)
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %15)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %17 = load i32, i32* %x, align 4
  %conv = sitofp i32 %17 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %18 = load i32, i32* %y, align 4
  %conv5 = sitofp i32 %18 to double
  call void @cairo_translate(%struct._cairo* %16, double %conv, double %conv5)
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %20 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %light = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %20, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %light, i32 0, i64 0
  call void @gdk_cairo_set_source_color(%struct._cairo* %19, %struct._GdkColor* %arrayidx)
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %21 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %21, i32 0, i32 7
  %22 = load i32, i32* %number, align 4
  %call6 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %22)
  %23 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %23, i32 0, i32 13
  %24 = load %struct._PangoLayout*, %struct._PangoLayout** %number_layout, align 8
  %tobool7 = icmp ne %struct._PangoLayout* %24, null
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %25, i8* null)
  %26 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout10 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %26, i32 0, i32 13
  store %struct._PangoLayout* %call9, %struct._PangoLayout** %number_layout10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %27 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout11 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %27, i32 0, i32 13
  %28 = load %struct._PangoLayout*, %struct._PangoLayout** %number_layout11, align 8
  %arraydecay12 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  call void @pango_layout_set_text(%struct._PangoLayout* %28, i8* %arraydecay12, i32 -1)
  %29 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout13 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %29, i32 0, i32 13
  %30 = load %struct._PangoLayout*, %struct._PangoLayout** %number_layout13, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %30, i32* %w, i32* %h)
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %31 = load i32, i32* %height, align 4
  %height14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %menu_allocation, i32 0, i32 3
  %32 = load i32, i32* %height14, align 4
  %sub = sub nsw i32 %31, %32
  %height15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %color_area_allocation, i32 0, i32 3
  %33 = load i32, i32* %height15, align 4
  %sub16 = sub nsw i32 %sub, %33
  %conv17 = sitofp i32 %sub16 to double
  %34 = load i32, i32* %h, align 4
  %conv18 = sitofp i32 %34 to double
  %div = fdiv double %conv17, %conv18
  store double %div, double* %scale, align 8
  %35 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %36 = load double, double* %scale, align 8
  %37 = load double, double* %scale, align 8
  call void @cairo_scale(%struct._cairo* %35, double %36, double %37)
  %38 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %39 = load i32, i32* %width, align 4
  %conv19 = sitofp i32 %39 to double
  %div20 = fdiv double %conv19, 2.000000e+00
  %40 = load double, double* %scale, align 8
  %div21 = fdiv double %div20, %40
  %41 = load i32, i32* %w, align 4
  %conv22 = sitofp i32 %41 to double
  %div23 = fdiv double %conv22, 2.000000e+00
  %sub24 = fsub double %div21, %div23
  %height25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %42 = load i32, i32* %height25, align 4
  %conv26 = sitofp i32 %42 to double
  %div27 = fdiv double %conv26, 2.000000e+00
  %height28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %menu_allocation, i32 0, i32 3
  %43 = load i32, i32* %height28, align 4
  %conv29 = sitofp i32 %43 to double
  %div30 = fdiv double %conv29, 2.000000e+00
  %add = fadd double %div27, %div30
  %height31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %color_area_allocation, i32 0, i32 3
  %44 = load i32, i32* %height31, align 4
  %conv32 = sitofp i32 %44 to double
  %div33 = fdiv double %conv32, 2.000000e+00
  %add34 = fadd double %add, %div33
  %45 = load double, double* %scale, align 8
  %div35 = fdiv double %add34, %45
  %46 = load i32, i32* %h, align 4
  %conv36 = sitofp i32 %46 to double
  %div37 = fdiv double %conv36, 2.000000e+00
  %sub38 = fsub double %div35, %div37
  call void @cairo_move_to(%struct._cairo* %38, double %sub24, double %sub38)
  %47 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %48 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame, align 8
  %number_layout39 = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %48, i32 0, i32 13
  %49 = load %struct._PangoLayout*, %struct._PangoLayout** %number_layout39, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %47, %struct._PangoLayout* %49)
  %50 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %50)
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %entry
  %51 = load i8*, i8** @gimp_color_frame_parent_class, align 8
  %52 = bitcast i8* %51 to %struct._GTypeClass*
  %call41 = call i64 @gtk_widget_get_type() #7
  %call42 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %52, i64 %call41)
  %53 = bitcast %struct._GTypeClass* %call42 to %struct._GtkWidgetClass*
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %53, i32 0, i32 31
  %54 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %56 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %call43 = call i32 %54(%struct._GtkWidget* %55, %struct._GdkEventExpose* %56)
  ret i32 %call43
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_frame_mode_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_object_unref(i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare %struct._GtkWidget* @gimp_enum_combo_box_new(i64) #1

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_frame_menu_callback(%struct._GtkWidget* %widget, %struct._GimpColorFrame* %frame) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %frame.addr = alloca %struct._GimpColorFrame*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorFrame* %frame, %struct._GimpColorFrame** %frame.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4
  %4 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  %frame_mode = getelementptr inbounds %struct._GimpColorFrame, %struct._GimpColorFrame* %4, i32 0, i32 5
  store i32 %3, i32* %frame_mode, align 4
  %5 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %frame.addr, align 8
  call void @gimp_color_frame_update(%struct._GimpColorFrame* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_label_set_selectable(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_rgb_to_cmyk(%struct._GimpRGB*, double, %struct._GimpCMYK*) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare void @g_free(i8*) #1

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
