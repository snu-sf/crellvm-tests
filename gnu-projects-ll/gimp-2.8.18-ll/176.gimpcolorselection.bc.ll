; ModuleID = './libgimpwidgets/gimpcolorselection.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorSelectionClass = type { %struct._GtkBoxClass, void (%struct._GimpColorSelection*)*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpColorSelection = type { %struct._GtkBox, i32, %struct._GimpHSV, %struct._GimpRGB, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkOrientable = type opaque
%struct._GimpColorSelector = type { %struct._GtkBox, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpColorNotebook = type { %struct._GimpColorSelector, %struct._GtkWidget*, %struct._GList*, %struct._GimpColorSelector* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpColorHexEntry = type { %struct._GtkEntry, %struct._GimpRGB }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }

@gimp_color_selection_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpColorSelection\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_selection_set_show_alpha = private unnamed_addr constant [36 x i8] c"gimp_color_selection_set_show_alpha\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_COLOR_SELECTION (selection)\00", align 1
@__func__.gimp_color_selection_get_show_alpha = private unnamed_addr constant [36 x i8] c"gimp_color_selection_get_show_alpha\00", align 1
@__func__.gimp_color_selection_set_color = private unnamed_addr constant [31 x i8] c"gimp_color_selection_set_color\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_color_selection_get_color = private unnamed_addr constant [31 x i8] c"gimp_color_selection_get_color\00", align 1
@__func__.gimp_color_selection_set_old_color = private unnamed_addr constant [35 x i8] c"gimp_color_selection_set_old_color\00", align 1
@__func__.gimp_color_selection_get_old_color = private unnamed_addr constant [35 x i8] c"gimp_color_selection_get_old_color\00", align 1
@__func__.gimp_color_selection_reset = private unnamed_addr constant [27 x i8] c"gimp_color_selection_reset\00", align 1
@__func__.gimp_color_selection_color_changed = private unnamed_addr constant [35 x i8] c"gimp_color_selection_color_changed\00", align 1
@selection_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_color_selection_set_config = private unnamed_addr constant [32 x i8] c"gimp_color_selection_set_config\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"config == NULL || GIMP_IS_COLOR_CONFIG (config)\00", align 1
@gimp_color_selection_parent_class = internal global i8* null, align 8
@GimpColorSelection_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"gimpcolorselection.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@_gimp_ensure_modules_func = external global void ()*, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"switch-page\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Current:\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Old:\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"channel-changed\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"color-picked\00", align 1
@.str.16 = private unnamed_addr constant [94 x i8] c"Hexadecimal color notation as used in HTML and CSS.  This entry also accepts CSS color names.\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"HTML _notation:\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"color-hex-entry\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_selection_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_selection_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_selection_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_selection_class_intern_init to void (i8*, i8*)*), i32 256, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorSelection*)* @gimp_color_selection_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_selection_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_selection_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_selection_parent_class, align 8
  %1 = load i32, i32* @GimpColorSelection_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorSelection_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorSelectionClass*
  call void @gimp_color_selection_class_init(%struct._GimpColorSelectionClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_init(%struct._GimpColorSelection* %selection) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %new_group = alloca %struct._GtkSizeGroup*, align 8
  %old_group = alloca %struct._GtkSizeGroup*, align 8
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %0, i32 0, i32 1
  store i32 1, i32* %show_alpha, align 4
  %1 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %2 = bitcast %struct._GimpColorSelection* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %3, i32 1)
  %4 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %4, i32 0, i32 3
  call void @gimp_rgba_set(%struct._GimpRGB* %rgb, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %5 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb3 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %5, i32 0, i32 3
  %6 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %6, i32 0, i32 2
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb3, %struct._GimpHSV* %hsv)
  %7 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %channel = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %7, i32 0, i32 4
  store i32 0, i32* %channel, align 4
  %call4 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %main_hbox, align 8
  %8 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %9 = bitcast %struct._GimpColorSelection* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 1, i32 1, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  %13 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %left_vbox = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %13, i32 0, i32 5
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %left_vbox, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %17 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %left_vbox10 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %17, i32 0, i32 5
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox10, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %18, i32 1, i32 1, i32 0)
  %19 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %left_vbox11 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox11, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load void ()*, void ()** @_gimp_ensure_modules_func, align 8
  %tobool = icmp ne void ()* %21, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call12 = call i64 @gimp_color_select_get_type() #7
  %call13 = call i8* @g_type_class_ref(i64 %call12)
  %22 = load void ()*, void ()** @_gimp_ensure_modules_func, align 8
  call void %22()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call14 = call i64 @gimp_color_notebook_get_type() #7
  %23 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb15 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %23, i32 0, i32 3
  %24 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv16 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %24, i32 0, i32 2
  %25 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %channel17 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %25, i32 0, i32 4
  %26 = load i32, i32* %channel17, align 4
  %call18 = call %struct._GtkWidget* @gimp_color_selector_new(i64 %call14, %struct._GimpRGB* %rgb15, %struct._GimpHSV* %hsv16, i32 %26)
  %27 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %27, i32 0, i32 7
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %notebook, align 8
  %28 = load void ()*, void ()** @_gimp_ensure_modules_func, align 8
  %tobool19 = icmp ne void ()* %28, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end
  %call21 = call i64 @gimp_color_select_get_type() #7
  %call22 = call i8* @g_type_class_peek(i64 %call21)
  call void @g_type_class_unref(i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end
  %29 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook24 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %29, i32 0, i32 7
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook24, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_color_selector_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpColorSelector*
  call void @gimp_color_selector_set_toggles_visible(%struct._GimpColorSelector* %32, i32 0)
  %33 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %left_vbox27 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %33, i32 0, i32 5
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox27, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call28)
  %36 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %37 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook30 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %37, i32 0, i32 7
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook30, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %38, i32 1, i32 1, i32 0)
  %39 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook31 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %39, i32 0, i32 7
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook31, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook32 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %41, i32 0, i32 7
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook32, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %45 = bitcast %struct._GimpColorSelection* %44 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorSelection*)* @gimp_color_selection_notebook_changed to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook34 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %46, i32 0, i32 7
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook34, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_color_notebook_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call35)
  %49 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpColorNotebook*
  %notebook37 = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %49, i32 0, i32 1
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook37, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %53 = bitcast %struct._GimpColorSelection* %52 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*, i32, %struct._GimpColorSelection*)* @gimp_color_selection_switch_page to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %call39 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %hbox, align 8
  %54 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %left_vbox40 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %54, i32 0, i32 5
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %left_vbox40, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call41)
  %57 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %call43 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %vbox, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call44)
  %62 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %62, %struct._GtkWidget* %63, i32 0, i32 0, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %call46 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #5
  %call47 = call %struct._GtkWidget* @gtk_label_new(i8* %call46)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %label, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_misc_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call48)
  %67 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %67, float 1.000000e+00, float 5.000000e-01)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call50)
  %70 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 1, i32 1, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %call52 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 2)
  store %struct._GtkSizeGroup* %call52, %struct._GtkSizeGroup** %new_group, align 8
  %73 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %new_group, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %73, %struct._GtkWidget* %74)
  %75 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %new_group, align 8
  %76 = bitcast %struct._GtkSizeGroup* %75 to i8*
  call void @g_object_unref(i8* %76)
  %call53 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  %call54 = call %struct._GtkWidget* @gtk_label_new(i8* %call53)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %label, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_misc_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call55)
  %79 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %79, float 1.000000e+00, float 5.000000e-01)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call57)
  %82 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %82, %struct._GtkWidget* %83, i32 1, i32 1, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %call59 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 2)
  store %struct._GtkSizeGroup* %call59, %struct._GtkSizeGroup** %old_group, align 8
  %85 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %old_group, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %85, %struct._GtkWidget* %86)
  %87 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %old_group, align 8
  %88 = bitcast %struct._GtkSizeGroup* %87 to i8*
  call void @g_object_unref(i8* %88)
  %call60 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %frame, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_frame_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call61)
  %91 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %91, i32 1)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call63)
  %94 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %94, %struct._GtkWidget* %95, i32 1, i32 1, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %call65 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %vbox, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_container_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call66)
  %99 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkContainer*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %99, %struct._GtkWidget* %100)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb68 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %102, i32 0, i32 3
  %103 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha69 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %103, i32 0, i32 1
  %104 = load i32, i32* %show_alpha69, align 4
  %tobool70 = icmp ne i32 %104, 0
  %cond = select i1 %tobool70, i32 1, i32 0
  %call71 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %rgb68, i32 %cond, i32 768)
  %105 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %105, i32 0, i32 9
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %new_color, align 8
  %106 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %new_group, align 8
  %107 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color72 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %107, i32 0, i32 9
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %new_color72, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %106, %struct._GtkWidget* %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_box_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call73)
  %111 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBox*
  %112 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color75 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %112, i32 0, i32 9
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %new_color75, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %111, %struct._GtkWidget* %113, i32 0, i32 0, i32 0)
  %114 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color76 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %114, i32 0, i32 9
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %new_color76, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %116 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color77 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %116, i32 0, i32 9
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %new_color77, align 8
  %118 = bitcast %struct._GtkWidget* %117 to i8*
  %119 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %120 = bitcast %struct._GimpColorSelection* %119 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorSelection*)* @gimp_color_selection_new_color_changed to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 0)
  %121 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb79 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %121, i32 0, i32 3
  %122 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha80 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %122, i32 0, i32 1
  %123 = load i32, i32* %show_alpha80, align 4
  %tobool81 = icmp ne i32 %123, 0
  %cond82 = select i1 %tobool81, i32 1, i32 0
  %call83 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %rgb79, i32 %cond82, i32 768)
  %124 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %124, i32 0, i32 10
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %old_color, align 8
  %125 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color84 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %125, i32 0, i32 10
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %old_color84, align 8
  call void @gtk_drag_dest_unset(%struct._GtkWidget* %126)
  %127 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %old_group, align 8
  %128 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color85 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %128, i32 0, i32 10
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %old_color85, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %127, %struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #7
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call86)
  %132 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %133 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color88 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %133, i32 0, i32 10
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %old_color88, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %132, %struct._GtkWidget* %134, i32 0, i32 0, i32 0)
  %135 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color89 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %135, i32 0, i32 10
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %old_color89, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %call90 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  %137 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %right_vbox = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %137, i32 0, i32 6
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %right_vbox, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_box_get_type() #7
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call91)
  %140 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkBox*
  %141 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %right_vbox93 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %141, i32 0, i32 6
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox93, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %140, %struct._GtkWidget* %142, i32 1, i32 1, i32 0)
  %143 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %right_vbox94 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %143, i32 0, i32 6
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox94, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %144)
  %call95 = call i64 @gimp_color_scales_get_type() #7
  %145 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb96 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %145, i32 0, i32 3
  %146 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv97 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %146, i32 0, i32 2
  %147 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %channel98 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %147, i32 0, i32 4
  %148 = load i32, i32* %channel98, align 4
  %call99 = call %struct._GtkWidget* @gimp_color_selector_new(i64 %call95, %struct._GimpRGB* %rgb96, %struct._GimpHSV* %hsv97, i32 %148)
  %149 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %149, i32 0, i32 8
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %scales, align 8
  %150 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales100 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %150, i32 0, i32 8
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %scales100, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_color_selector_get_type() #7
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call101)
  %153 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpColorSelector*
  call void @gimp_color_selector_set_toggles_visible(%struct._GimpColorSelector* %153, i32 1)
  %154 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales103 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %154, i32 0, i32 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %scales103, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_color_selector_get_type() #7
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call104)
  %157 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpColorSelector*
  %158 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha106 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %158, i32 0, i32 1
  %159 = load i32, i32* %show_alpha106, align 4
  call void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector* %157, i32 %159)
  %160 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %right_vbox107 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %160, i32 0, i32 6
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox107, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_box_get_type() #7
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call108)
  %163 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkBox*
  %164 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales110 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %164, i32 0, i32 8
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %scales110, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %163, %struct._GtkWidget* %165, i32 1, i32 1, i32 0)
  %166 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales111 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %166, i32 0, i32 8
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %scales111, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %167)
  %168 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales112 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %168, i32 0, i32 8
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %scales112, align 8
  %170 = bitcast %struct._GtkWidget* %169 to i8*
  %171 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %172 = bitcast %struct._GimpColorSelection* %171 to i8*
  %call113 = call i64 @g_signal_connect_data(i8* %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorSelector*, i32, %struct._GimpColorSelection*)* @gimp_color_selection_channel_changed to void ()*), i8* %172, void (i8*, %struct._GClosure*)* null, i32 0)
  %173 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales114 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %173, i32 0, i32 8
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %scales114, align 8
  %175 = bitcast %struct._GtkWidget* %174 to i8*
  %176 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %177 = bitcast %struct._GimpColorSelection* %176 to i8*
  %call115 = call i64 @g_signal_connect_data(i8* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorSelection*)* @gimp_color_selection_scales_changed to void ()*), i8* %177, void (i8*, %struct._GClosure*)* null, i32 0)
  %call116 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call116, %struct._GtkWidget** %hbox, align 8
  %178 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %right_vbox117 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %178, i32 0, i32 6
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox117, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_box_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call118)
  %181 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkBox*
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %181, %struct._GtkWidget* %182, i32 0, i32 0, i32 0)
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %183)
  %call120 = call %struct._GtkWidget* @gimp_pick_button_new()
  store %struct._GtkWidget* %call120, %struct._GtkWidget** %button, align 8
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_box_get_type() #7
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call121)
  %186 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkBox*
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %186, %struct._GtkWidget* %187, i32 0, i32 0, i32 0)
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %188)
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %190 = bitcast %struct._GtkWidget* %189 to i8*
  %191 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %192 = bitcast %struct._GimpColorSelection* %191 to i8*
  %call123 = call i64 @g_signal_connect_data(i8* %190, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpColorSelection*)* @gimp_color_selection_color_picked to void ()*), i8* %192, void (i8*, %struct._GClosure*)* null, i32 0)
  %call124 = call %struct._GtkWidget* @gimp_color_hex_entry_new()
  store %struct._GtkWidget* %call124, %struct._GtkWidget** %entry1, align 8
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call125 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.16, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %193, i8* %call125, i8* null)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_box_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call126)
  %196 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkBox*
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %196, %struct._GtkWidget* %197, i32 1, i32 1, i32 0)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %198)
  %call128 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #5
  %call129 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call128)
  store %struct._GtkWidget* %call129, %struct._GtkWidget** %label, align 8
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_label_get_type() #7
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call130)
  %201 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkLabel*
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %201, %struct._GtkWidget* %202)
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %204 = bitcast %struct._GtkWidget* %203 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_box_get_type() #7
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call132)
  %205 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkBox*
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %205, %struct._GtkWidget* %206, i32 0, i32 0, i32 0)
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %207)
  %208 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %209 = bitcast %struct._GimpColorSelection* %208 to %struct._GTypeInstance*
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %209, i64 80)
  %210 = bitcast %struct._GTypeInstance* %call134 to %struct._GObject*
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %212 = bitcast %struct._GtkWidget* %211 to i8*
  call void @g_object_set_data(%struct._GObject* %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* %212)
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %214 = bitcast %struct._GtkWidget* %213 to i8*
  %215 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %216 = bitcast %struct._GimpColorSelection* %215 to i8*
  %call135 = call i64 @g_signal_connect_data(i8* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColorSelection*)* @gimp_color_selection_entry_changed to void ()*), i8* %216, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_selection_new() #3 {
entry:
  %call = call i64 @gimp_color_selection_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_selection_set_show_alpha(%struct._GimpColorSelection* %selection, i32 %show_alpha) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %show_alpha.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  store i32 %show_alpha, i32* %show_alpha.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_color_selection_set_show_alpha, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.32

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %show_alpha.addr, align 4
  %14 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha11 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %14, i32 0, i32 1
  %15 = load i32, i32* %show_alpha11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.32

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %show_alpha.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha15 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %17, i32 0, i32 1
  store i32 %cond, i32* %show_alpha15, align 4
  %18 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %18, i32 0, i32 7
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_color_selector_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpColorSelector*
  %22 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha18 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %22, i32 0, i32 1
  %23 = load i32, i32* %show_alpha18, align 4
  call void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector* %21, i32 %23)
  %24 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %24, i32 0, i32 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %scales, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_color_selector_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpColorSelector*
  %28 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha21 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %28, i32 0, i32 1
  %29 = load i32, i32* %show_alpha21, align 4
  call void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector* %27, i32 %29)
  %30 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %30, i32 0, i32 9
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %new_color, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_color_area_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call22)
  %33 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpColorArea*
  %34 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha24 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %34, i32 0, i32 1
  %35 = load i32, i32* %show_alpha24, align 4
  %tobool25 = icmp ne i32 %35, 0
  %cond26 = select i1 %tobool25, i32 1, i32 0
  call void @gimp_color_area_set_type(%struct._GimpColorArea* %33, i32 %cond26)
  %36 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %36, i32 0, i32 10
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %old_color, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_color_area_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call27)
  %39 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpColorArea*
  %40 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha29 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %40, i32 0, i32 1
  %41 = load i32, i32* %show_alpha29, align 4
  %tobool30 = icmp ne i32 %41, 0
  %cond31 = select i1 %tobool30, i32 1, i32 0
  call void @gimp_color_area_set_type(%struct._GimpColorArea* %39, i32 %cond31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_color_selector_set_show_alpha(%struct._GimpColorSelector*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare void @gimp_color_area_set_type(%struct._GimpColorArea*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_color_selection_get_show_alpha(%struct._GimpColorSelection* %selection) #3 {
entry:
  %retval = alloca i32, align 4
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_color_selection_get_show_alpha, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %show_alpha = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %13, i32 0, i32 1
  %14 = load i32, i32* %show_alpha, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_color_selection_set_color(%struct._GimpColorSelection* %selection, %struct._GimpRGB* %color) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_selection_set_color, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_selection_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %14, i32 0, i32 3
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %16 = bitcast %struct._GimpRGB* %rgb to i8*
  %17 = bitcast %struct._GimpRGB* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  %18 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb17 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %18, i32 0, i32 3
  %19 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %19, i32 0, i32 2
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb17, %struct._GimpHSV* %hsv)
  %20 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_update(%struct._GimpColorSelection* %20, i32 15)
  %21 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_color_changed(%struct._GimpColorSelection* %21)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_update(%struct._GimpColorSelection* %selection, i32 %update) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %update.addr = alloca i32, align 4
  %entry21 = alloca %struct._GimpColorHexEntry*, align 8
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  store i32 %update, i32* %update.addr, align 4
  %0 = load i32, i32* %update.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %1, i32 0, i32 7
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %4 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %5 = bitcast %struct._GimpColorSelection* %4 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %3, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorSelection*)* @gimp_color_selection_notebook_changed to i8*), i8* %5)
  %6 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook1 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %6, i32 0, i32 7
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook1, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_selector_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorSelector*
  %10 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %10, i32 0, i32 3
  %11 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %11, i32 0, i32 2
  call void @gimp_color_selector_set_color(%struct._GimpColorSelector* %9, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv)
  %12 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook4 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %12, i32 0, i32 7
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook4, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %16 = bitcast %struct._GimpColorSelection* %15 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorSelection*)* @gimp_color_selection_notebook_changed to i8*), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %update.addr, align 4
  %and6 = and i32 %17, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %if.end
  %18 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %18, i32 0, i32 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %scales, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %22 = bitcast %struct._GimpColorSelection* %21 to i8*
  %call9 = call i32 @g_signal_handlers_block_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorSelection*)* @gimp_color_selection_scales_changed to i8*), i8* %22)
  %23 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales10 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %23, i32 0, i32 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %scales10, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_selector_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call11)
  %26 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorSelector*
  %27 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb13 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %27, i32 0, i32 3
  %28 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv14 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %28, i32 0, i32 2
  call void @gimp_color_selector_set_color(%struct._GimpColorSelector* %26, %struct._GimpRGB* %rgb13, %struct._GimpHSV* %hsv14)
  %29 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales15 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %29, i32 0, i32 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %scales15, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %32 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %33 = bitcast %struct._GimpColorSelection* %32 to i8*
  %call16 = call i32 @g_signal_handlers_unblock_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*, %struct._GimpColorSelection*)* @gimp_color_selection_scales_changed to i8*), i8* %33)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.8, %if.end
  %34 = load i32, i32* %update.addr, align 4
  %and18 = and i32 %34, 4
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.17
  %35 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %36 = bitcast %struct._GimpColorSelection* %35 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %call23 = call i8* @g_object_get_data(%struct._GObject* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0))
  %38 = bitcast i8* %call23 to %struct._GimpColorHexEntry*
  store %struct._GimpColorHexEntry* %38, %struct._GimpColorHexEntry** %entry21, align 8
  %39 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry21, align 8
  %40 = bitcast %struct._GimpColorHexEntry* %39 to i8*
  %41 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %42 = bitcast %struct._GimpColorSelection* %41 to i8*
  %call24 = call i32 @g_signal_handlers_block_matched(i8* %40, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColorSelection*)* @gimp_color_selection_entry_changed to i8*), i8* %42)
  %43 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry21, align 8
  %44 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb25 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %44, i32 0, i32 3
  call void @gimp_color_hex_entry_set_color(%struct._GimpColorHexEntry* %43, %struct._GimpRGB* %rgb25)
  %45 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry21, align 8
  %46 = bitcast %struct._GimpColorHexEntry* %45 to i8*
  %47 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %48 = bitcast %struct._GimpColorSelection* %47 to i8*
  %call26 = call i32 @g_signal_handlers_unblock_matched(i8* %46, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpColorHexEntry*, %struct._GimpColorSelection*)* @gimp_color_selection_entry_changed to i8*), i8* %48)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.20, %if.end.17
  %49 = load i32, i32* %update.addr, align 4
  %and28 = and i32 %49, 8
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.27
  %50 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %50, i32 0, i32 9
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %new_color, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %54 = bitcast %struct._GimpColorSelection* %53 to i8*
  %call31 = call i32 @g_signal_handlers_block_matched(i8* %52, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpColorSelection*)* @gimp_color_selection_new_color_changed to i8*), i8* %54)
  %55 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color32 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %55, i32 0, i32 9
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %new_color32, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_color_area_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call33)
  %58 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpColorArea*
  %59 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb35 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %59, i32 0, i32 3
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %58, %struct._GimpRGB* %rgb35)
  %60 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %new_color36 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %60, i32 0, i32 9
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %new_color36, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %63 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %64 = bitcast %struct._GimpColorSelection* %63 to i8*
  %call37 = call i32 @g_signal_handlers_unblock_matched(i8* %62, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpColorSelection*)* @gimp_color_selection_new_color_changed to i8*), i8* %64)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.30, %if.end.27
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_selection_color_changed(%struct._GimpColorSelection* %selection) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_selection_color_changed, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %14 = bitcast %struct._GimpColorSelection* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @selection_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_selection_get_color(%struct._GimpColorSelection* %selection, %struct._GimpRGB* %color) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_selection_get_color, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_color_selection_get_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %15 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %15, i32 0, i32 3
  %16 = bitcast %struct._GimpRGB* %14 to i8*
  %17 = bitcast %struct._GimpRGB* %rgb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_selection_set_old_color(%struct._GimpColorSelection* %selection, %struct._GimpRGB* %color) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_selection_set_old_color, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_selection_set_old_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %14, i32 0, i32 10
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %old_color, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_color_area_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColorArea*
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %17, %struct._GimpRGB* %18)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_selection_get_old_color(%struct._GimpColorSelection* %selection, %struct._GimpRGB* %color) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_selection_get_old_color, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_selection_get_old_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %14, i32 0, i32 10
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %old_color, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_color_area_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColorArea*
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_area_get_color(%struct._GimpColorArea* %17, %struct._GimpRGB* %18)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_color_area_get_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_selection_reset(%struct._GimpColorSelection* %selection) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_selection_reset, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %old_color = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %13, i32 0, i32 10
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %old_color, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_area_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorArea*
  call void @gimp_color_area_get_color(%struct._GimpColorArea* %16, %struct._GimpRGB* %color)
  %17 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_set_color(%struct._GimpColorSelection* %17, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_selection_set_config(%struct._GimpColorSelection* %selection, %struct._GimpColorConfig* %config) #3 {
entry:
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %config.addr = alloca %struct._GimpColorConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  store %struct._GimpColorConfig* %config, %struct._GimpColorConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpColorSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_selection_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_selection_set_config, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %cmp12 = icmp eq %struct._GimpColorConfig* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpColorConfig* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_color_config_get_type() #7
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_selection_set_config, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %27, i32 0, i32 7
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_color_selector_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call40)
  %30 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpColorSelector*
  %31 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  call void @gimp_color_selector_set_config(%struct._GimpColorSelector* %30, %struct._GimpColorConfig* %31)
  %32 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %32, i32 0, i32 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %scales, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_color_selector_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call42)
  %35 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpColorSelector*
  %36 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %config.addr, align 8
  call void @gimp_color_selector_set_config(%struct._GimpColorSelector* %35, %struct._GimpColorConfig* %36)
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_color_config_get_type() #2

declare void @gimp_color_selector_set_config(%struct._GimpColorSelector*, %struct._GimpColorConfig*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_class_init(%struct._GimpColorSelectionClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorSelectionClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpColorSelectionClass* %klass, %struct._GimpColorSelectionClass** %klass.addr, align 8
  %0 = load %struct._GimpColorSelectionClass*, %struct._GimpColorSelectionClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorSelectionClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_selection_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GimpColorSelectionClass*, %struct._GimpColorSelectionClass** %klass.addr, align 8
  %color_changed = getelementptr inbounds %struct._GimpColorSelectionClass, %struct._GimpColorSelectionClass* %4, i32 0, i32 1
  store void (%struct._GimpColorSelection*)* null, void (%struct._GimpColorSelection*)** %color_changed, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_color_config_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 2)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call2)
  %6 = load %struct._GimpColorSelectionClass*, %struct._GimpColorSelectionClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorSelectionClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i64 %8, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @selection_signals, i32 0, i64 0), align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %selection = alloca %struct._GimpColorSelection*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selection_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelection*
  store %struct._GimpColorSelection* %2, %struct._GimpColorSelection** %selection, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpColorConfig*
  call void @gimp_color_selection_set_config(%struct._GimpColorSelection* %4, %struct._GimpColorConfig* %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_select_get_type() #2

declare %struct._GtkWidget* @gimp_color_selector_new(i64, %struct._GimpRGB*, %struct._GimpHSV*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_notebook_get_type() #2

declare void @g_type_class_unref(i8*) #1

declare i8* @g_type_class_peek(i64) #1

declare void @gimp_color_selector_set_toggles_visible(%struct._GimpColorSelector*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_notebook_changed(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv, %struct._GimpColorSelection* %selection) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv1 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %0, i32 0, i32 2
  %1 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %2 = bitcast %struct._GimpHSV* %hsv1 to i8*
  %3 = bitcast %struct._GimpHSV* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  %4 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb2 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %4, i32 0, i32 3
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %6 = bitcast %struct._GimpRGB* %rgb2 to i8*
  %7 = bitcast %struct._GimpRGB* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_update(%struct._GimpColorSelection* %8, i32 14)
  %9 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_color_changed(%struct._GimpColorSelection* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_switch_page(%struct._GtkWidget* %widget, i8* %page, i32 %page_num, %struct._GimpColorSelection* %selection) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %page.addr = alloca i8*, align 8
  %page_num.addr = alloca i32, align 4
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  %notebook = alloca %struct._GimpColorNotebook*, align 8
  %sensitive = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  store i32 %page_num, i32* %page_num.addr, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook1 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %0, i32 0, i32 7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook1, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_notebook_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorNotebook*
  store %struct._GimpColorNotebook* %3, %struct._GimpColorNotebook** %notebook, align 8
  %4 = load %struct._GimpColorNotebook*, %struct._GimpColorNotebook** %notebook, align 8
  %cur_page = getelementptr inbounds %struct._GimpColorNotebook, %struct._GimpColorNotebook* %4, i32 0, i32 3
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %cur_page, align 8
  %6 = bitcast %struct._GimpColorSelector* %5 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %8 = bitcast %struct._GTypeClass* %7 to %struct._GimpColorSelectorClass*
  %set_channel = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %8, i32 0, i32 8
  %9 = load void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)** %set_channel, align 8
  %cmp = icmp ne void (%struct._GimpColorSelector*, i32)* %9, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %sensitive, align 4
  %10 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %scales = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %10, i32 0, i32 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %scales, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_selector_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorSelector*
  %14 = load i32, i32* %sensitive, align 4
  call void @gimp_color_selector_set_toggles_sensitive(%struct._GimpColorSelector* %13, i32 %14)
  ret void
}

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_new_color_changed(%struct._GtkWidget* %widget, %struct._GimpColorSelection* %selection) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  %3 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %3, i32 0, i32 3
  call void @gimp_color_area_get_color(%struct._GimpColorArea* %2, %struct._GimpRGB* %rgb)
  %4 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb2 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %4, i32 0, i32 3
  %5 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %5, i32 0, i32 2
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb2, %struct._GimpHSV* %hsv)
  %6 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_update(%struct._GimpColorSelection* %6, i32 7)
  %7 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_color_changed(%struct._GimpColorSelection* %7)
  ret void
}

declare void @gtk_drag_dest_unset(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_scales_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_channel_changed(%struct._GimpColorSelector* %selector, i32 %channel, %struct._GimpColorSelection* %selection) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %channel.addr = alloca i32, align 4
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  %0 = load i32, i32* %channel.addr, align 4
  %1 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %channel1 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %1, i32 0, i32 4
  store i32 %0, i32* %channel1, align 4
  %2 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %notebook = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %2, i32 0, i32 7
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorSelector*
  %6 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %channel3 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %6, i32 0, i32 4
  %7 = load i32, i32* %channel3, align 4
  call void @gimp_color_selector_set_channel(%struct._GimpColorSelector* %5, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_scales_changed(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv, %struct._GimpColorSelection* %selection) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb1 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %0, i32 0, i32 3
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %2 = bitcast %struct._GimpRGB* %rgb1 to i8*
  %3 = bitcast %struct._GimpRGB* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  %4 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv2 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %4, i32 0, i32 2
  %5 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %6 = bitcast %struct._GimpHSV* %hsv2 to i8*
  %7 = bitcast %struct._GimpHSV* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_update(%struct._GimpColorSelection* %8, i32 13)
  %9 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_color_changed(%struct._GimpColorSelection* %9)
  ret void
}

declare %struct._GtkWidget* @gimp_pick_button_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_color_picked(%struct._GtkWidget* %widget, %struct._GimpRGB* %rgb, %struct._GimpColorSelection* %selection) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  %0 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_color_selection_set_color(%struct._GimpColorSelection* %0, %struct._GimpRGB* %1)
  ret void
}

declare %struct._GtkWidget* @gimp_color_hex_entry_new() #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_selection_entry_changed(%struct._GimpColorHexEntry* %entry1, %struct._GimpColorSelection* %selection) #3 {
entry:
  %entry.addr = alloca %struct._GimpColorHexEntry*, align 8
  %selection.addr = alloca %struct._GimpColorSelection*, align 8
  store %struct._GimpColorHexEntry* %entry1, %struct._GimpColorHexEntry** %entry.addr, align 8
  store %struct._GimpColorSelection* %selection, %struct._GimpColorSelection** %selection.addr, align 8
  %0 = load %struct._GimpColorHexEntry*, %struct._GimpColorHexEntry** %entry.addr, align 8
  %1 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %1, i32 0, i32 3
  call void @gimp_color_hex_entry_get_color(%struct._GimpColorHexEntry* %0, %struct._GimpRGB* %rgb)
  %2 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %rgb2 = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %2, i32 0, i32 3
  %3 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelection, %struct._GimpColorSelection* %3, i32 0, i32 2
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb2, %struct._GimpHSV* %hsv)
  %4 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_update(%struct._GimpColorSelection* %4, i32 11)
  %5 = load %struct._GimpColorSelection*, %struct._GimpColorSelection** %selection.addr, align 8
  call void @gimp_color_selection_color_changed(%struct._GimpColorSelection* %5)
  ret void
}

declare void @gimp_color_selector_set_toggles_sensitive(%struct._GimpColorSelector*, i32) #1

declare void @gimp_color_selector_set_channel(%struct._GimpColorSelector*, i32) #1

declare void @gimp_color_hex_entry_get_color(%struct._GimpColorHexEntry*, %struct._GimpRGB*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_color_selector_set_color(%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gimp_color_hex_entry_set_color(%struct._GimpColorHexEntry*, %struct._GimpRGB*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
