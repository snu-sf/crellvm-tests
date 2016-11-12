; ModuleID = './libgimpwidgets/gimpcolorselect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ColorSelectFill = type { i8*, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, void (%struct._ColorSelectFill*)* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSV = type { double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorSelectClass = type { %struct._GimpColorSelectorClass }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
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
%struct._GimpColorSelector = type { %struct._GtkBox, i32, i32, i32, %struct._GimpRGB, %struct._GimpHSV, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpColorConfig = type opaque
%struct._GimpColorSelect = type { %struct._GimpColorSelector, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, [3 x i32], i32, i32, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._cairo = type opaque

@gimp_color_select_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpColorSelect\00", align 1
@gimp_color_select_parent_class = internal global i8* null, align 8
@GimpColorSelect_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"GIMP\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gimp-colorselector-gimp\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gimp-wilber\00", align 1
@update_procs = internal constant [13 x void (%struct._ColorSelectFill*)*] [void (%struct._ColorSelectFill*)* @color_select_update_hue, void (%struct._ColorSelectFill*)* @color_select_update_saturation, void (%struct._ColorSelectFill*)* @color_select_update_value, void (%struct._ColorSelectFill*)* @color_select_update_red, void (%struct._ColorSelectFill*)* @color_select_update_green, void (%struct._ColorSelectFill*)* @color_select_update_blue, void (%struct._ColorSelectFill*)* null, void (%struct._ColorSelectFill*)* @color_select_update_hue_saturation, void (%struct._ColorSelectFill*)* @color_select_update_hue_value, void (%struct._ColorSelectFill*)* @color_select_update_saturation_value, void (%struct._ColorSelectFill*)* @color_select_update_red_green, void (%struct._ColorSelectFill*)* @color_select_update_red_blue, void (%struct._ColorSelectFill*)* @color_select_update_green_blue], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_select_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_select_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_select_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_color_selector_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 936, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_select_class_intern_init to void (i8*, i8*)*), i32 264, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorSelect*)* @gimp_color_select_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_select_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_select_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_select_parent_class, align 8
  %1 = load i32, i32* @GimpColorSelect_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorSelect_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorSelectClass*
  call void @gimp_color_select_class_init(%struct._GimpColorSelectClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_init(%struct._GimpColorSelect* %select) #3 {
entry:
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %channel = alloca i32, align 4
  %enum_class = alloca %struct._GEnumClass*, align 8
  %group = alloca %struct._GSList*, align 8
  %enum_desc = alloca %struct._GimpEnumDesc*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color_fill = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %0, i32 0, i32 5
  store i32 0, i32* %z_color_fill, align 4
  %1 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color_fill = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %1, i32 0, i32 6
  store i32 9, i32* %xy_color_fill, align 4
  %2 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %2, i32 0, i32 7
  store i32 0, i32* %drag_mode, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %3 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %4 = bitcast %struct._GimpColorSelect* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call3 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_frame_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %10, i32 1)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call8 = call %struct._GtkWidget* @gimp_preview_area_new()
  %16 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %16, i32 0, i32 2
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %xy_color, align 8
  %17 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color9 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %17, i32 0, i32 2
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color9, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %18, i32 150, i32 150)
  %19 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color10 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color10, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %20, i32 4882)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %24 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color13 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %24, i32 0, i32 2
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color13, align 8
  call void @gtk_container_add(%struct._GtkContainer* %23, %struct._GtkWidget* %25)
  %26 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color14 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %26, i32 0, i32 2
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color14, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color15 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %28, i32 0, i32 2
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color15, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %32 = bitcast %struct._GimpColorSelect* %31 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpColorSelect*)* @gimp_color_select_xy_size_allocate to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color17 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %33, i32 0, i32 2
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color17, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %36 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %37 = bitcast %struct._GimpColorSelect* %36 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpColorSelect*)* @gimp_color_select_xy_expose to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 1)
  %38 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color19 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %38, i32 0, i32 2
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color19, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %42 = bitcast %struct._GimpColorSelect* %41 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpColorSelect*)* @gimp_color_select_xy_events to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %call21 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %frame, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_frame_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call22)
  %45 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %45, i32 1)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call24)
  %48 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call26 = call %struct._GtkWidget* @gimp_preview_area_new()
  %51 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %51, i32 0, i32 3
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %z_color, align 8
  %52 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color27 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %52, i32 0, i32 3
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color27, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %53, i32 15, i32 -1)
  %54 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color28 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %54, i32 0, i32 3
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color28, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %55, i32 4882)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call29)
  %58 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %59 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color31 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %59, i32 0, i32 3
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color31, align 8
  call void @gtk_container_add(%struct._GtkContainer* %58, %struct._GtkWidget* %60)
  %61 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color32 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %61, i32 0, i32 3
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color32, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %63 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color33 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %63, i32 0, i32 3
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color33, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %66 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %67 = bitcast %struct._GimpColorSelect* %66 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpColorSelect*)* @gimp_color_select_z_size_allocate to void ()*), i8* %67, void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color35 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %68, i32 0, i32 3
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color35, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %71 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %72 = bitcast %struct._GimpColorSelect* %71 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpColorSelect*)* @gimp_color_select_z_expose to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 1)
  %73 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color37 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %73, i32 0, i32 3
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color37, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %76 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %77 = bitcast %struct._GimpColorSelect* %76 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpColorSelect*)* @gimp_color_select_z_events to void ()*), i8* %77, void (i8*, %struct._GClosure*)* null, i32 0)
  %call39 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  %78 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %toggle_box = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %78, i32 0, i32 1
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %toggle_box, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call40)
  %81 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %82 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %toggle_box42 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %82, i32 0, i32 1
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_box42, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %81, %struct._GtkWidget* %83, i32 0, i32 0, i32 0)
  %84 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %toggle_box43 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %84, i32 0, i32 1
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_box43, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %call44 = call i64 @gimp_color_selector_channel_get_type() #6
  %call45 = call i8* @g_type_class_ref(i64 %call44)
  %86 = bitcast i8* %call45 to %struct._GEnumClass*
  store %struct._GEnumClass* %86, %struct._GEnumClass** %enum_class, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %87 = load i32, i32* %channel, align 4
  %cmp = icmp ult i32 %87, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %89 = load i32, i32* %channel, align 4
  %call46 = call %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass* %88, i32 %89)
  store %struct._GimpEnumDesc* %call46, %struct._GimpEnumDesc** %enum_desc, align 8
  %90 = load %struct._GSList*, %struct._GSList** %group, align 8
  %91 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_desc = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %91, i32 0, i32 1
  %92 = load i8*, i8** %value_desc, align 8
  %call47 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %92) #4
  %call48 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %90, i8* %call47)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %button, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_radio_button_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call49)
  %95 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkRadioButton*
  %call51 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %95)
  store %struct._GSList* %call51, %struct._GSList** %group, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_toggle_button_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call52)
  %98 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_mode(%struct._GtkToggleButton* %98, i32 0)
  %99 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %toggle_box54 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %99, i32 0, i32 1
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_box54, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call55)
  %102 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %102, %struct._GtkWidget* %103, i32 1, i32 1, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 80)
  %107 = bitcast %struct._GTypeInstance* %call57 to %struct._GObject*
  %108 = load i32, i32* %channel, align 4
  %conv = zext i32 %108 to i64
  %109 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* %109)
  %110 = load i32, i32* %channel, align 4
  %cmp58 = icmp eq i32 %110, 0
  br i1 %cmp58, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_toggle_button_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call60)
  %113 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %113, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %115 = load %struct._GimpEnumDesc*, %struct._GimpEnumDesc** %enum_desc, align 8
  %value_help = getelementptr inbounds %struct._GimpEnumDesc, %struct._GimpEnumDesc* %115, i32 0, i32 2
  %116 = load i8*, i8** %value_help, align 8
  %call62 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %116) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %114, i8* %call62, i8* null)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %118 = bitcast %struct._GtkWidget* %117 to i8*
  %119 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %120 = bitcast %struct._GimpColorSelect* %119 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpColorSelect*)* @gimp_color_select_channel_toggled to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %121 = load i32, i32* %channel, align 4
  %inc = add i32 %121, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %122 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %123 = bitcast %struct._GEnumClass* %122 to i8*
  call void @g_type_class_unref(i8* %123)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_class_init(%struct._GimpColorSelectClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorSelectClass*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._GimpColorSelectClass* %klass, %struct._GimpColorSelectClass** %klass.addr, align 8
  %0 = load %struct._GimpColorSelectClass*, %struct._GimpColorSelectClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorSelectClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %2, %struct._GimpColorSelectorClass** %selector_class, align 8
  %3 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %name, align 8
  %4 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8** %help_id, align 8
  %5 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8** %stock_id, align 8
  %6 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_visible = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %6, i32 0, i32 4
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_select_togg_visible, void (%struct._GimpColorSelector*, i32)** %set_toggles_visible, align 8
  %7 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_toggles_sensitive = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %7, i32 0, i32 5
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_select_togg_sensitive, void (%struct._GimpColorSelector*, i32)** %set_toggles_sensitive, align 8
  %8 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_color = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %8, i32 0, i32 7
  store void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* @gimp_color_select_set_color, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color, align 8
  %9 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_channel = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %9, i32 0, i32 8
  store void (%struct._GimpColorSelector*, i32)* @gimp_color_select_set_channel, void (%struct._GimpColorSelector*, i32)** %set_channel, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_togg_visible(%struct._GimpColorSelector* %selector, i32 %visible) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %visible.addr = alloca i32, align 4
  %select = alloca %struct._GimpColorSelect*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %visible, i32* %visible.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_select_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelect*
  store %struct._GimpColorSelect* %2, %struct._GimpColorSelect** %select, align 8
  %3 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %toggle_box = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_box, align 8
  %5 = load i32, i32* %visible.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_togg_sensitive(%struct._GimpColorSelector* %selector, i32 %sensitive) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %sensitive.addr = alloca i32, align 4
  %select = alloca %struct._GimpColorSelect*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_select_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelect*
  store %struct._GimpColorSelect* %2, %struct._GimpColorSelect** %select, align 8
  %3 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %toggle_box = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle_box, align 8
  %5 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_set_color(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %select = alloca %struct._GimpColorSelect*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_select_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelect*
  store %struct._GimpColorSelect* %2, %struct._GimpColorSelect** %select, align 8
  %3 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  call void @gimp_color_select_update(%struct._GimpColorSelect* %3, i32 14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_set_channel(%struct._GimpColorSelector* %selector, i32 %channel) #3 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %channel.addr = alloca i32, align 4
  %select = alloca %struct._GimpColorSelect*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_select_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelect*
  store %struct._GimpColorSelect* %2, %struct._GimpColorSelect** %select, align 8
  %3 = load i32, i32* %channel.addr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.11
    i32 5, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %z_color_fill = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %4, i32 0, i32 5
  store i32 0, i32* %z_color_fill, align 4
  %5 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %xy_color_fill = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %5, i32 0, i32 6
  store i32 9, i32* %xy_color_fill, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %z_color_fill3 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %6, i32 0, i32 5
  store i32 1, i32* %z_color_fill3, align 4
  %7 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %xy_color_fill4 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %7, i32 0, i32 6
  store i32 8, i32* %xy_color_fill4, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %z_color_fill6 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %8, i32 0, i32 5
  store i32 2, i32* %z_color_fill6, align 4
  %9 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %xy_color_fill7 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %9, i32 0, i32 6
  store i32 7, i32* %xy_color_fill7, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %10 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %z_color_fill9 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %10, i32 0, i32 5
  store i32 3, i32* %z_color_fill9, align 4
  %11 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %xy_color_fill10 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %11, i32 0, i32 6
  store i32 12, i32* %xy_color_fill10, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %12 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %z_color_fill12 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %12, i32 0, i32 5
  store i32 4, i32* %z_color_fill12, align 4
  %13 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %xy_color_fill13 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %13, i32 0, i32 6
  store i32 11, i32* %xy_color_fill13, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %14 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %z_color_fill15 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %14, i32 0, i32 5
  store i32 5, i32* %z_color_fill15, align 4
  %15 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  %xy_color_fill16 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %15, i32 0, i32 6
  store i32 10, i32* %xy_color_fill16, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.14, %sw.bb.11, %sw.bb.8, %sw.bb.5, %sw.bb.2, %sw.bb
  %16 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select, align 8
  call void @gimp_color_select_update(%struct._GimpColorSelect* %16, i32 14)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_update(%struct._GimpColorSelect* %select, i32 %update) #3 {
entry:
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %update.addr = alloca i32, align 4
  %selector = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  store i32 %update, i32* %update.addr, align 4
  %0 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %1 = bitcast %struct._GimpColorSelect* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load i32, i32* %update.addr, align 4
  %and = and i32 %3, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  call void @gimp_color_select_update_pos(%struct._GimpColorSelect* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %update.addr, align 4
  %and2 = and i32 %5, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  call void @gimp_color_select_update_values(%struct._GimpColorSelect* %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %7 = load i32, i32* %update.addr, align 4
  %and6 = and i32 %7, 4
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %8 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color, align 8
  %10 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color_fill = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %10, i32 0, i32 6
  %11 = load i32, i32* %xy_color_fill, align 4
  %12 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %12, i32 0, i32 5
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %13, i32 0, i32 4
  call void @gimp_color_select_image_fill(%struct._GtkWidget* %9, i32 %11, %struct._GimpHSV* %hsv, %struct._GimpRGB* %rgb)
  %14 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color9 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color9, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %16 = load i32, i32* %update.addr, align 4
  %and11 = and i32 %16, 8
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  %17 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %17, i32 0, i32 3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color, align 8
  %19 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color_fill = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %19, i32 0, i32 5
  %20 = load i32, i32* %z_color_fill, align 4
  %21 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv14 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %21, i32 0, i32 5
  %22 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb15 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %22, i32 0, i32 4
  call void @gimp_color_select_image_fill(%struct._GtkWidget* %18, i32 %20, %struct._GimpHSV* %hsv14, %struct._GimpRGB* %rgb15)
  %23 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color16 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %23, i32 0, i32 3
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color16, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.10
  %25 = load i32, i32* %update.addr, align 4
  %and18 = and i32 %25, 64
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %26 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %27 = bitcast %struct._GimpColorSelect* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_color_selector_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpColorSelector*
  call void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %28)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_update_pos(%struct._GimpColorSelect* %select) #3 {
entry:
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %1 = bitcast %struct._GimpColorSelect* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color_fill = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %3, i32 0, i32 5
  %4 = load i32, i32* %z_color_fill, align 4
  switch i32 %4, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.14
    i32 5, label %sw.bb.36
    i32 0, label %sw.bb.58
    i32 1, label %sw.bb.76
    i32 2, label %sw.bb.98
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %5, i32 0, i32 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %mul = fmul double %6, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %7 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %7, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %pos, i32 0, i64 0
  store i32 %conv, i32* %arrayidx, align 4
  %8 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb2 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %8, i32 0, i32 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb2, i32 0, i32 1
  %9 = load double, double* %g, align 8
  %mul3 = fmul double %9, 2.550000e+02
  %add4 = fadd double %mul3, 5.000000e-01
  %conv5 = fptosi double %add4 to i32
  %10 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos6 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %10, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %pos6, i32 0, i64 1
  store i32 %conv5, i32* %arrayidx7, align 4
  %11 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb8 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %11, i32 0, i32 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb8, i32 0, i32 0
  %12 = load double, double* %r, align 8
  %mul9 = fmul double %12, 2.550000e+02
  %add10 = fadd double %mul9, 5.000000e-01
  %conv11 = fptosi double %add10 to i32
  %13 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos12 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %13, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %pos12, i32 0, i64 2
  store i32 %conv11, i32* %arrayidx13, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %14 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb15 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %14, i32 0, i32 4
  %b16 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb15, i32 0, i32 2
  %15 = load double, double* %b16, align 8
  %mul17 = fmul double %15, 2.550000e+02
  %add18 = fadd double %mul17, 5.000000e-01
  %conv19 = fptosi double %add18 to i32
  %16 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos20 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %16, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %pos20, i32 0, i64 0
  store i32 %conv19, i32* %arrayidx21, align 4
  %17 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb22 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %17, i32 0, i32 4
  %r23 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb22, i32 0, i32 0
  %18 = load double, double* %r23, align 8
  %mul24 = fmul double %18, 2.550000e+02
  %add25 = fadd double %mul24, 5.000000e-01
  %conv26 = fptosi double %add25 to i32
  %19 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos27 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %19, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %pos27, i32 0, i64 1
  store i32 %conv26, i32* %arrayidx28, align 4
  %20 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb29 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %20, i32 0, i32 4
  %g30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb29, i32 0, i32 1
  %21 = load double, double* %g30, align 8
  %mul31 = fmul double %21, 2.550000e+02
  %add32 = fadd double %mul31, 5.000000e-01
  %conv33 = fptosi double %add32 to i32
  %22 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos34 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %22, i32 0, i32 4
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %pos34, i32 0, i64 2
  store i32 %conv33, i32* %arrayidx35, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %23 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb37 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %23, i32 0, i32 4
  %g38 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb37, i32 0, i32 1
  %24 = load double, double* %g38, align 8
  %mul39 = fmul double %24, 2.550000e+02
  %add40 = fadd double %mul39, 5.000000e-01
  %conv41 = fptosi double %add40 to i32
  %25 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos42 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %25, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %pos42, i32 0, i64 0
  store i32 %conv41, i32* %arrayidx43, align 4
  %26 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb44 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %26, i32 0, i32 4
  %r45 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb44, i32 0, i32 0
  %27 = load double, double* %r45, align 8
  %mul46 = fmul double %27, 2.550000e+02
  %add47 = fadd double %mul46, 5.000000e-01
  %conv48 = fptosi double %add47 to i32
  %28 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos49 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %28, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %pos49, i32 0, i64 1
  store i32 %conv48, i32* %arrayidx50, align 4
  %29 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb51 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %29, i32 0, i32 4
  %b52 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb51, i32 0, i32 2
  %30 = load double, double* %b52, align 8
  %mul53 = fmul double %30, 2.550000e+02
  %add54 = fadd double %mul53, 5.000000e-01
  %conv55 = fptosi double %add54 to i32
  %31 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos56 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %31, i32 0, i32 4
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %pos56, i32 0, i64 2
  store i32 %conv55, i32* %arrayidx57, align 4
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  %32 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %32, i32 0, i32 5
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %33 = load double, double* %v, align 8
  %mul59 = fmul double %33, 2.550000e+02
  %add60 = fadd double %mul59, 5.000000e-01
  %conv61 = fptosi double %add60 to i32
  %34 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos62 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %34, i32 0, i32 4
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %pos62, i32 0, i64 0
  store i32 %conv61, i32* %arrayidx63, align 4
  %35 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv64 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %35, i32 0, i32 5
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv64, i32 0, i32 1
  %36 = load double, double* %s, align 8
  %mul65 = fmul double %36, 2.550000e+02
  %add66 = fadd double %mul65, 5.000000e-01
  %conv67 = fptosi double %add66 to i32
  %37 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos68 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %37, i32 0, i32 4
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %pos68, i32 0, i64 1
  store i32 %conv67, i32* %arrayidx69, align 4
  %38 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv70 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %38, i32 0, i32 5
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv70, i32 0, i32 0
  %39 = load double, double* %h, align 8
  %mul71 = fmul double %39, 2.550000e+02
  %add72 = fadd double %mul71, 5.000000e-01
  %conv73 = fptosi double %add72 to i32
  %40 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos74 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %40, i32 0, i32 4
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %pos74, i32 0, i64 2
  store i32 %conv73, i32* %arrayidx75, align 4
  br label %sw.epilog

sw.bb.76:                                         ; preds = %entry
  %41 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv77 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %41, i32 0, i32 5
  %v78 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv77, i32 0, i32 2
  %42 = load double, double* %v78, align 8
  %mul79 = fmul double %42, 2.550000e+02
  %add80 = fadd double %mul79, 5.000000e-01
  %conv81 = fptosi double %add80 to i32
  %43 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos82 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %43, i32 0, i32 4
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %pos82, i32 0, i64 0
  store i32 %conv81, i32* %arrayidx83, align 4
  %44 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv84 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %44, i32 0, i32 5
  %h85 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv84, i32 0, i32 0
  %45 = load double, double* %h85, align 8
  %mul86 = fmul double %45, 2.550000e+02
  %add87 = fadd double %mul86, 5.000000e-01
  %conv88 = fptosi double %add87 to i32
  %46 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos89 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %46, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %pos89, i32 0, i64 1
  store i32 %conv88, i32* %arrayidx90, align 4
  %47 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv91 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %47, i32 0, i32 5
  %s92 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv91, i32 0, i32 1
  %48 = load double, double* %s92, align 8
  %mul93 = fmul double %48, 2.550000e+02
  %add94 = fadd double %mul93, 5.000000e-01
  %conv95 = fptosi double %add94 to i32
  %49 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos96 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %49, i32 0, i32 4
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %pos96, i32 0, i64 2
  store i32 %conv95, i32* %arrayidx97, align 4
  br label %sw.epilog

sw.bb.98:                                         ; preds = %entry
  %50 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv99 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %50, i32 0, i32 5
  %s100 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv99, i32 0, i32 1
  %51 = load double, double* %s100, align 8
  %mul101 = fmul double %51, 2.550000e+02
  %add102 = fadd double %mul101, 5.000000e-01
  %conv103 = fptosi double %add102 to i32
  %52 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos104 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %52, i32 0, i32 4
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %pos104, i32 0, i64 0
  store i32 %conv103, i32* %arrayidx105, align 4
  %53 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv106 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %53, i32 0, i32 5
  %h107 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv106, i32 0, i32 0
  %54 = load double, double* %h107, align 8
  %mul108 = fmul double %54, 2.550000e+02
  %add109 = fadd double %mul108, 5.000000e-01
  %conv110 = fptosi double %add109 to i32
  %55 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos111 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %55, i32 0, i32 4
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %pos111, i32 0, i64 1
  store i32 %conv110, i32* %arrayidx112, align 4
  %56 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv113 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %56, i32 0, i32 5
  %v114 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv113, i32 0, i32 2
  %57 = load double, double* %v114, align 8
  %mul115 = fmul double %57, 2.550000e+02
  %add116 = fadd double %mul115, 5.000000e-01
  %conv117 = fptosi double %add116 to i32
  %58 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos118 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %58, i32 0, i32 4
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %pos118, i32 0, i64 2
  store i32 %conv117, i32* %arrayidx119, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.98, %sw.bb.76, %sw.bb.58, %sw.bb.36, %sw.bb.14, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_update_values(%struct._GimpColorSelect* %select) #3 {
entry:
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %1 = bitcast %struct._GimpColorSelect* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_selector_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %2, %struct._GimpColorSelector** %selector, align 8
  %3 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color_fill = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %3, i32 0, i32 5
  %4 = load i32, i32* %z_color_fill, align 4
  switch i32 %4, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.31
    i32 0, label %sw.bb.50
    i32 1, label %sw.bb.65
    i32 2, label %sw.bb.84
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %pos, i32 0, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 2.550000e+02
  %7 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %7, i32 0, i32 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  store double %div, double* %b, align 8
  %8 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos2 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %8, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %pos2, i32 0, i64 1
  %9 = load i32, i32* %arrayidx3, align 4
  %conv4 = sitofp i32 %9 to double
  %div5 = fdiv double %conv4, 2.550000e+02
  %10 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb6 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %10, i32 0, i32 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb6, i32 0, i32 1
  store double %div5, double* %g, align 8
  %11 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos7 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %11, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %pos7, i32 0, i64 2
  %12 = load i32, i32* %arrayidx8, align 4
  %conv9 = sitofp i32 %12 to double
  %div10 = fdiv double %conv9, 2.550000e+02
  %13 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb11 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %13, i32 0, i32 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb11, i32 0, i32 0
  store double %div10, double* %r, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %14 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos13 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %14, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %pos13, i32 0, i64 0
  %15 = load i32, i32* %arrayidx14, align 4
  %conv15 = sitofp i32 %15 to double
  %div16 = fdiv double %conv15, 2.550000e+02
  %16 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb17 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %16, i32 0, i32 4
  %b18 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb17, i32 0, i32 2
  store double %div16, double* %b18, align 8
  %17 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos19 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %17, i32 0, i32 4
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %pos19, i32 0, i64 1
  %18 = load i32, i32* %arrayidx20, align 4
  %conv21 = sitofp i32 %18 to double
  %div22 = fdiv double %conv21, 2.550000e+02
  %19 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb23 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %19, i32 0, i32 4
  %r24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb23, i32 0, i32 0
  store double %div22, double* %r24, align 8
  %20 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos25 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %20, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %pos25, i32 0, i64 2
  %21 = load i32, i32* %arrayidx26, align 4
  %conv27 = sitofp i32 %21 to double
  %div28 = fdiv double %conv27, 2.550000e+02
  %22 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb29 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %22, i32 0, i32 4
  %g30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb29, i32 0, i32 1
  store double %div28, double* %g30, align 8
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %23 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos32 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %23, i32 0, i32 4
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %pos32, i32 0, i64 0
  %24 = load i32, i32* %arrayidx33, align 4
  %conv34 = sitofp i32 %24 to double
  %div35 = fdiv double %conv34, 2.550000e+02
  %25 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb36 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %25, i32 0, i32 4
  %g37 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb36, i32 0, i32 1
  store double %div35, double* %g37, align 8
  %26 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos38 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %26, i32 0, i32 4
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %pos38, i32 0, i64 1
  %27 = load i32, i32* %arrayidx39, align 4
  %conv40 = sitofp i32 %27 to double
  %div41 = fdiv double %conv40, 2.550000e+02
  %28 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb42 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %28, i32 0, i32 4
  %r43 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb42, i32 0, i32 0
  store double %div41, double* %r43, align 8
  %29 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos44 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %29, i32 0, i32 4
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %pos44, i32 0, i64 2
  %30 = load i32, i32* %arrayidx45, align 4
  %conv46 = sitofp i32 %30 to double
  %div47 = fdiv double %conv46, 2.550000e+02
  %31 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb48 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %31, i32 0, i32 4
  %b49 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb48, i32 0, i32 2
  store double %div47, double* %b49, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %32 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos51 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %32, i32 0, i32 4
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %pos51, i32 0, i64 0
  %33 = load i32, i32* %arrayidx52, align 4
  %conv53 = sitofp i32 %33 to double
  %div54 = fdiv double %conv53, 2.550000e+02
  %34 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %34, i32 0, i32 5
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  store double %div54, double* %v, align 8
  %35 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos55 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %35, i32 0, i32 4
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %pos55, i32 0, i64 1
  %36 = load i32, i32* %arrayidx56, align 4
  %conv57 = sitofp i32 %36 to double
  %div58 = fdiv double %conv57, 2.550000e+02
  %37 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv59 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %37, i32 0, i32 5
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv59, i32 0, i32 1
  store double %div58, double* %s, align 8
  %38 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos60 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %38, i32 0, i32 4
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %pos60, i32 0, i64 2
  %39 = load i32, i32* %arrayidx61, align 4
  %conv62 = sitofp i32 %39 to double
  %div63 = fdiv double %conv62, 2.550000e+02
  %40 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv64 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %40, i32 0, i32 5
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv64, i32 0, i32 0
  store double %div63, double* %h, align 8
  br label %sw.epilog

sw.bb.65:                                         ; preds = %entry
  %41 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos66 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %41, i32 0, i32 4
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %pos66, i32 0, i64 0
  %42 = load i32, i32* %arrayidx67, align 4
  %conv68 = sitofp i32 %42 to double
  %div69 = fdiv double %conv68, 2.550000e+02
  %43 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv70 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %43, i32 0, i32 5
  %v71 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv70, i32 0, i32 2
  store double %div69, double* %v71, align 8
  %44 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos72 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %44, i32 0, i32 4
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %pos72, i32 0, i64 1
  %45 = load i32, i32* %arrayidx73, align 4
  %conv74 = sitofp i32 %45 to double
  %div75 = fdiv double %conv74, 2.550000e+02
  %46 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv76 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %46, i32 0, i32 5
  %h77 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv76, i32 0, i32 0
  store double %div75, double* %h77, align 8
  %47 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos78 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %47, i32 0, i32 4
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %pos78, i32 0, i64 2
  %48 = load i32, i32* %arrayidx79, align 4
  %conv80 = sitofp i32 %48 to double
  %div81 = fdiv double %conv80, 2.550000e+02
  %49 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv82 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %49, i32 0, i32 5
  %s83 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv82, i32 0, i32 1
  store double %div81, double* %s83, align 8
  br label %sw.epilog

sw.bb.84:                                         ; preds = %entry
  %50 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos85 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %50, i32 0, i32 4
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %pos85, i32 0, i64 0
  %51 = load i32, i32* %arrayidx86, align 4
  %conv87 = sitofp i32 %51 to double
  %div88 = fdiv double %conv87, 2.550000e+02
  %52 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv89 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %52, i32 0, i32 5
  %s90 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv89, i32 0, i32 1
  store double %div88, double* %s90, align 8
  %53 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos91 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %53, i32 0, i32 4
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %pos91, i32 0, i64 1
  %54 = load i32, i32* %arrayidx92, align 4
  %conv93 = sitofp i32 %54 to double
  %div94 = fdiv double %conv93, 2.550000e+02
  %55 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv95 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %55, i32 0, i32 5
  %h96 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv95, i32 0, i32 0
  store double %div94, double* %h96, align 8
  %56 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos97 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %56, i32 0, i32 4
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %pos97, i32 0, i64 2
  %57 = load i32, i32* %arrayidx98, align 4
  %conv99 = sitofp i32 %57 to double
  %div100 = fdiv double %conv99, 2.550000e+02
  %58 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv101 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %58, i32 0, i32 5
  %v102 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv101, i32 0, i32 2
  store double %div100, double* %v102, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.84, %sw.bb.65, %sw.bb.50, %sw.bb.31, %sw.bb.12, %sw.bb
  %59 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color_fill103 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %59, i32 0, i32 5
  %60 = load i32, i32* %z_color_fill103, align 4
  switch i32 %60, label %sw.default.110 [
    i32 3, label %sw.bb.104
    i32 4, label %sw.bb.104
    i32 5, label %sw.bb.104
    i32 0, label %sw.bb.107
    i32 1, label %sw.bb.107
    i32 2, label %sw.bb.107
  ]

sw.bb.104:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %61 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb105 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %61, i32 0, i32 4
  %62 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv106 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %62, i32 0, i32 5
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb105, %struct._GimpHSV* %hsv106)
  br label %sw.epilog.111

sw.bb.107:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %63 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %hsv108 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %63, i32 0, i32 5
  %64 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %rgb109 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %64, i32 0, i32 4
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv108, %struct._GimpRGB* %rgb109)
  br label %sw.epilog.111

sw.default.110:                                   ; preds = %sw.epilog
  br label %sw.epilog.111

sw.epilog.111:                                    ; preds = %sw.default.110, %sw.bb.107, %sw.bb.104
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_image_fill(%struct._GtkWidget* %preview, i32 %fill_type, %struct._GimpHSV* %hsv, %struct._GimpRGB* %rgb) #3 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %fill_type.addr = alloca i32, align 4
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %csf = alloca %struct._ColorSelectFill, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i32 %fill_type, i32* %fill_type.addr, align 4
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  %1 = load i32, i32* %fill_type.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x void (%struct._ColorSelectFill*)*], [13 x void (%struct._ColorSelectFill*)*]* @update_procs, i32 0, i64 %idxprom
  %2 = load void (%struct._ColorSelectFill*)*, void (%struct._ColorSelectFill*)** %arrayidx, align 8
  %update = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 6
  store void (%struct._ColorSelectFill*)* %2, void (%struct._ColorSelectFill*)** %update, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %3 = load i32, i32* %width, align 4
  %width1 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 2
  store i32 %3, i32* %width1, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %4 = load i32, i32* %height, align 4
  %height2 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 3
  store i32 %4, i32* %height2, align 4
  %hsv3 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 5
  %5 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %6 = bitcast %struct._GimpHSV* %hsv3 to i8*
  %7 = bitcast %struct._GimpHSV* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %rgb4 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 4
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %9 = bitcast %struct._GimpRGB* %rgb4 to i8*
  %10 = bitcast %struct._GimpRGB* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %width5 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 2
  %11 = load i32, i32* %width5, align 4
  %mul = mul nsw i32 %11, 3
  %conv = sext i32 %mul to i64
  %12 = alloca i8, i64 %conv
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 0
  store i8* %12, i8** %buffer, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 1
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %y6 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 1
  %13 = load i32, i32* %y6, align 4
  %height7 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 3
  %14 = load i32, i32* %height7, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %update9 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 6
  %15 = load void (%struct._ColorSelectFill*)*, void (%struct._ColorSelectFill*)** %update9, align 8
  %tobool = icmp ne void (%struct._ColorSelectFill*)* %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %update10 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 6
  %16 = load void (%struct._ColorSelectFill*)*, void (%struct._ColorSelectFill*)** %update10, align 8
  call void %16(%struct._ColorSelectFill* %csf)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPreviewArea*
  %y12 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 1
  %20 = load i32, i32* %y12, align 4
  %width13 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 2
  %21 = load i32, i32* %width13, align 4
  %buffer14 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 0
  %22 = load i8*, i8** %buffer14, align 8
  %width15 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 2
  %23 = load i32, i32* %width15, align 4
  %mul16 = mul nsw i32 %23, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %19, i32 0, i32 %20, i32 %21, i32 1, i32 0, i8* %22, i32 %mul16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %y17 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %csf, i32 0, i32 1
  %24 = load i32, i32* %y17, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %y17, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @gimp_color_selector_color_changed(%struct._GimpColorSelector*) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @color_select_update_hue(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %h = alloca float, align 4
  %f = alloca float, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %conv = sitofp i32 %3 to double
  %mul = fmul double %conv, 3.600000e+02
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %conv1 = sitofp i32 %5 to double
  %div = fdiv double %mul, %conv1
  %conv2 = fptrunc double %div to float
  store float %conv2, float* %h, align 4
  %6 = load float, float* %h, align 4
  %sub = fsub float 3.600000e+02, %6
  %cmp = fcmp ogt float %sub, 3.600000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.10

cond.false:                                       ; preds = %entry
  %7 = load float, float* %h, align 4
  %sub4 = fsub float 3.600000e+02, %7
  %cmp5 = fcmp olt float %sub4, 0.000000e+00
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %8 = load float, float* %h, align 4
  %sub9 = fsub float 3.600000e+02, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi float [ 0.000000e+00, %cond.true.7 ], [ %sub9, %cond.false.8 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi float [ 3.600000e+02, %cond.true ], [ %cond, %cond.end ]
  store float %cond11, float* %h, align 4
  %9 = load float, float* %h, align 4
  %div12 = fdiv float %9, 6.000000e+01
  store float %div12, float* %h, align 4
  %10 = load float, float* %h, align 4
  %11 = load float, float* %h, align 4
  %conv13 = fptosi float %11 to i32
  %conv14 = sitofp i32 %conv13 to float
  %sub15 = fsub float %10, %conv14
  %mul16 = fmul float %sub15, 2.550000e+02
  store float %mul16, float* %f, align 4
  store i32 0, i32* %b, align 4
  store i32 0, i32* %g, align 4
  store i32 0, i32* %r, align 4
  %12 = load float, float* %h, align 4
  %conv17 = fptosi float %12 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.19
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.24
    i32 4, label %sw.bb.27
    i32 5, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %cond.end.10
  store i32 255, i32* %r, align 4
  %13 = load float, float* %f, align 4
  %conv18 = fptosi float %13 to i32
  store i32 %conv18, i32* %g, align 4
  store i32 0, i32* %b, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %cond.end.10
  %14 = load float, float* %f, align 4
  %sub20 = fsub float 2.550000e+02, %14
  %conv21 = fptosi float %sub20 to i32
  store i32 %conv21, i32* %r, align 4
  store i32 255, i32* %g, align 4
  store i32 0, i32* %b, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %cond.end.10
  store i32 0, i32* %r, align 4
  store i32 255, i32* %g, align 4
  %15 = load float, float* %f, align 4
  %conv23 = fptosi float %15 to i32
  store i32 %conv23, i32* %b, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %cond.end.10
  store i32 0, i32* %r, align 4
  %16 = load float, float* %f, align 4
  %sub25 = fsub float 2.550000e+02, %16
  %conv26 = fptosi float %sub25 to i32
  store i32 %conv26, i32* %g, align 4
  store i32 255, i32* %b, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %cond.end.10
  %17 = load float, float* %f, align 4
  %conv28 = fptosi float %17 to i32
  store i32 %conv28, i32* %r, align 4
  store i32 0, i32* %g, align 4
  store i32 255, i32* %b, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %cond.end.10
  store i32 255, i32* %r, align 4
  store i32 0, i32* %g, align 4
  %18 = load float, float* %f, align 4
  %sub30 = fsub float 2.550000e+02, %18
  %conv31 = fptosi float %sub30 to i32
  store i32 %conv31, i32* %b, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.10, %sw.bb.29, %sw.bb.27, %sw.bb.24, %sw.bb.22, %sw.bb.19, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %19 = load i32, i32* %i, align 4
  %20 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %20, i32 0, i32 2
  %21 = load i32, i32* %width, align 4
  %cmp32 = icmp slt i32 %19, %21
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %r, align 4
  %conv34 = trunc i32 %22 to i8
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv34, i8* %23, align 1
  %24 = load i32, i32* %g, align 4
  %conv35 = trunc i32 %24 to i8
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8
  store i8 %conv35, i8* %25, align 1
  %26 = load i32, i32* %b, align 4
  %conv37 = trunc i32 %26 to i8
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr38, i8** %p, align 8
  store i8 %conv37, i8* %27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_saturation(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %3, 255
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %div = sdiv i32 %mul, %5
  store i32 %div, i32* %s, align 4
  %6 = load i32, i32* %s, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %s, align 4
  %cmp1 = icmp sgt i32 %7, 255
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 255, i32* %s, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %8 = load i32, i32* %s, align 4
  %sub = sub nsw i32 255, %8
  store i32 %sub, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %9 = load i32, i32* %i, align 4
  %10 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %10, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %s, align 4
  %conv = trunc i32 %12 to i8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load i32, i32* %s, align 4
  %conv5 = trunc i32 %14 to i8
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 %conv5, i8* %15, align 1
  %16 = load i32, i32* %s, align 4
  %conv7 = trunc i32 %16 to i8
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 %conv7, i8* %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_value(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %3, 255
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %div = sdiv i32 %mul, %5
  store i32 %div, i32* %v, align 4
  %6 = load i32, i32* %v, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %v, align 4
  %cmp1 = icmp sgt i32 %7, 255
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 255, i32* %v, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %8 = load i32, i32* %v, align 4
  %sub = sub nsw i32 255, %8
  store i32 %sub, i32* %v, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %9 = load i32, i32* %i, align 4
  %10 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %10, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %v, align 4
  %conv = trunc i32 %12 to i8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load i32, i32* %v, align 4
  %conv5 = trunc i32 %14 to i8
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 %conv5, i8* %15, align 1
  %16 = load i32, i32* %v, align 4
  %conv7 = trunc i32 %16 to i8
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 %conv7, i8* %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_red(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 3
  %3 = load i32, i32* %height, align 4
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %3, %5
  %add = add nsw i32 %sub, 1
  %mul = mul nsw i32 %add, 255
  %6 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height1 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %6, i32 0, i32 3
  %7 = load i32, i32* %height1, align 4
  %div = sdiv i32 %mul, %7
  store i32 %div, i32* %r, align 4
  %8 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %r, align 4
  %cmp2 = icmp sgt i32 %9, 255
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 255, i32* %r, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %10 = load i32, i32* %i, align 4
  %11 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %11, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %cmp5 = icmp slt i32 %10, %12
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %r, align 4
  %conv = trunc i32 %13 to i8
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %14, align 1
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 0, i8* %16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_green(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %g = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 3
  %3 = load i32, i32* %height, align 4
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %3, %5
  %add = add nsw i32 %sub, 1
  %mul = mul nsw i32 %add, 255
  %6 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height1 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %6, i32 0, i32 3
  %7 = load i32, i32* %height1, align 4
  %div = sdiv i32 %mul, %7
  store i32 %div, i32* %g, align 4
  %8 = load i32, i32* %g, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %g, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %g, align 4
  %cmp2 = icmp sgt i32 %9, 255
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 255, i32* %g, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %10 = load i32, i32* %i, align 4
  %11 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %11, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %cmp5 = icmp slt i32 %10, %12
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %13, align 1
  %14 = load i32, i32* %g, align 4
  %conv = trunc i32 %14 to i8
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 %conv, i8* %15, align 1
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 0, i8* %16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_blue(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 3
  %3 = load i32, i32* %height, align 4
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %3, %5
  %add = add nsw i32 %sub, 1
  %mul = mul nsw i32 %add, 255
  %6 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height1 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %6, i32 0, i32 3
  %7 = load i32, i32* %height1, align 4
  %div = sdiv i32 %mul, %7
  store i32 %div, i32* %b, align 4
  %8 = load i32, i32* %b, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %b, align 4
  %cmp2 = icmp sgt i32 %9, 255
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 255, i32* %b, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %10 = load i32, i32* %i, align 4
  %11 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %11, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %cmp5 = icmp slt i32 %10, %12
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* %b, align 4
  %conv = trunc i32 %15 to i8
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 %conv, i8* %16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_hue_saturation(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %h = alloca float, align 4
  %v = alloca float, align 4
  %s = alloca float, align 4
  %ds = alloca float, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %3, 360
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %div = sdiv i32 %mul, %5
  %sub = sub nsw i32 360, %div
  %conv = sitofp i32 %sub to float
  store float %conv, float* %h, align 4
  %6 = load float, float* %h, align 4
  %cmp = fcmp olt float %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load float, float* %h, align 4
  %cmp2 = fcmp ogt float %7, 3.590000e+02
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store float 3.590000e+02, float* %h, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load float, float* %h, align 4
  %div6 = fdiv float %8, 6.000000e+01
  store float %div6, float* %h, align 4
  %9 = load float, float* %h, align 4
  %10 = load float, float* %h, align 4
  %conv7 = fptosi float %10 to i32
  %conv8 = sitofp i32 %conv7 to float
  %sub9 = fsub float %9, %conv8
  %mul10 = fmul float %sub9, 2.550000e+02
  %conv11 = fptosi float %mul10 to i32
  store i32 %conv11, i32* %f, align 4
  store float 0.000000e+00, float* %s, align 4
  %11 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %11, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %conv12 = sitofp i32 %12 to double
  %div13 = fdiv double 1.000000e+00, %conv12
  %conv14 = fptrunc double %div13 to float
  store float %conv14, float* %ds, align 4
  %13 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %hsv = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %13, i32 0, i32 5
  %v15 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  %14 = load double, double* %v15, align 8
  %conv16 = fptrunc double %14 to float
  store float %conv16, float* %v, align 4
  %15 = load float, float* %h, align 4
  %conv17 = fptosi float %15 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.35
    i32 2, label %sw.bb.59
    i32 3, label %sw.bb.84
    i32 4, label %sw.bb.108
    i32 5, label %sw.bb.133
  ]

sw.bb:                                            ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width18 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %17, i32 0, i32 2
  %18 = load i32, i32* %width18, align 4
  %cmp19 = icmp slt i32 %16, %18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load float, float* %v, align 4
  %mul21 = fmul float %19, 2.550000e+02
  %conv22 = fptoui float %mul21 to i8
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv22, i8* %20, align 1
  %21 = load float, float* %v, align 4
  %22 = load float, float* %s, align 4
  %23 = load i32, i32* %f, align 4
  %sub23 = sub nsw i32 255, %23
  %conv24 = sitofp i32 %sub23 to float
  %mul25 = fmul float %22, %conv24
  %sub26 = fsub float 2.550000e+02, %mul25
  %mul27 = fmul float %21, %sub26
  %conv28 = fptoui float %mul27 to i8
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8
  store i8 %conv28, i8* %24, align 1
  %25 = load float, float* %v, align 4
  %mul30 = fmul float %25, 2.550000e+02
  %26 = load float, float* %s, align 4
  %sub31 = fsub float 1.000000e+00, %26
  %mul32 = fmul float %mul30, %sub31
  %conv33 = fptoui float %mul32 to i8
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr34, i8** %p, align 8
  store i8 %conv33, i8* %27, align 1
  %28 = load float, float* %ds, align 4
  %29 = load float, float* %s, align 4
  %add = fadd float %29, %28
  store float %add, float* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.56, %sw.bb.35
  %31 = load i32, i32* %i, align 4
  %32 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width37 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %32, i32 0, i32 2
  %33 = load i32, i32* %width37, align 4
  %cmp38 = icmp slt i32 %31, %33
  br i1 %cmp38, label %for.body.40, label %for.end.58

for.body.40:                                      ; preds = %for.cond.36
  %34 = load float, float* %v, align 4
  %35 = load float, float* %s, align 4
  %36 = load i32, i32* %f, align 4
  %conv41 = sitofp i32 %36 to float
  %mul42 = fmul float %35, %conv41
  %sub43 = fsub float 2.550000e+02, %mul42
  %mul44 = fmul float %34, %sub43
  %conv45 = fptoui float %mul44 to i8
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  store i8 %conv45, i8* %37, align 1
  %38 = load float, float* %v, align 4
  %mul47 = fmul float %38, 2.550000e+02
  %conv48 = fptoui float %mul47 to i8
  %39 = load i8*, i8** %p, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr49, i8** %p, align 8
  store i8 %conv48, i8* %39, align 1
  %40 = load float, float* %v, align 4
  %mul50 = fmul float %40, 2.550000e+02
  %41 = load float, float* %s, align 4
  %sub51 = fsub float 1.000000e+00, %41
  %mul52 = fmul float %mul50, %sub51
  %conv53 = fptoui float %mul52 to i8
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  store i8 %conv53, i8* %42, align 1
  %43 = load float, float* %ds, align 4
  %44 = load float, float* %s, align 4
  %add55 = fadd float %44, %43
  store float %add55, float* %s, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.40
  %45 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %45, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.36

for.end.58:                                       ; preds = %for.cond.36
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.81, %sw.bb.59
  %46 = load i32, i32* %i, align 4
  %47 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width61 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %47, i32 0, i32 2
  %48 = load i32, i32* %width61, align 4
  %cmp62 = icmp slt i32 %46, %48
  br i1 %cmp62, label %for.body.64, label %for.end.83

for.body.64:                                      ; preds = %for.cond.60
  %49 = load float, float* %v, align 4
  %mul65 = fmul float %49, 2.550000e+02
  %50 = load float, float* %s, align 4
  %sub66 = fsub float 1.000000e+00, %50
  %mul67 = fmul float %mul65, %sub66
  %conv68 = fptoui float %mul67 to i8
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr69, i8** %p, align 8
  store i8 %conv68, i8* %51, align 1
  %52 = load float, float* %v, align 4
  %mul70 = fmul float %52, 2.550000e+02
  %conv71 = fptoui float %mul70 to i8
  %53 = load i8*, i8** %p, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr72, i8** %p, align 8
  store i8 %conv71, i8* %53, align 1
  %54 = load float, float* %v, align 4
  %55 = load float, float* %s, align 4
  %56 = load i32, i32* %f, align 4
  %sub73 = sub nsw i32 255, %56
  %conv74 = sitofp i32 %sub73 to float
  %mul75 = fmul float %55, %conv74
  %sub76 = fsub float 2.550000e+02, %mul75
  %mul77 = fmul float %54, %sub76
  %conv78 = fptoui float %mul77 to i8
  %57 = load i8*, i8** %p, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr79, i8** %p, align 8
  store i8 %conv78, i8* %57, align 1
  %58 = load float, float* %ds, align 4
  %59 = load float, float* %s, align 4
  %add80 = fadd float %59, %58
  store float %add80, float* %s, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.64
  %60 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %60, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.60

for.end.83:                                       ; preds = %for.cond.60
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.105, %sw.bb.84
  %61 = load i32, i32* %i, align 4
  %62 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width86 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %62, i32 0, i32 2
  %63 = load i32, i32* %width86, align 4
  %cmp87 = icmp slt i32 %61, %63
  br i1 %cmp87, label %for.body.89, label %for.end.107

for.body.89:                                      ; preds = %for.cond.85
  %64 = load float, float* %v, align 4
  %mul90 = fmul float %64, 2.550000e+02
  %65 = load float, float* %s, align 4
  %sub91 = fsub float 1.000000e+00, %65
  %mul92 = fmul float %mul90, %sub91
  %conv93 = fptoui float %mul92 to i8
  %66 = load i8*, i8** %p, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr94, i8** %p, align 8
  store i8 %conv93, i8* %66, align 1
  %67 = load float, float* %v, align 4
  %68 = load float, float* %s, align 4
  %69 = load i32, i32* %f, align 4
  %conv95 = sitofp i32 %69 to float
  %mul96 = fmul float %68, %conv95
  %sub97 = fsub float 2.550000e+02, %mul96
  %mul98 = fmul float %67, %sub97
  %conv99 = fptoui float %mul98 to i8
  %70 = load i8*, i8** %p, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr100, i8** %p, align 8
  store i8 %conv99, i8* %70, align 1
  %71 = load float, float* %v, align 4
  %mul101 = fmul float %71, 2.550000e+02
  %conv102 = fptoui float %mul101 to i8
  %72 = load i8*, i8** %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr103, i8** %p, align 8
  store i8 %conv102, i8* %72, align 1
  %73 = load float, float* %ds, align 4
  %74 = load float, float* %s, align 4
  %add104 = fadd float %74, %73
  store float %add104, float* %s, align 4
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.89
  %75 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %75, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.85

for.end.107:                                      ; preds = %for.cond.85
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.130, %sw.bb.108
  %76 = load i32, i32* %i, align 4
  %77 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width110 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %77, i32 0, i32 2
  %78 = load i32, i32* %width110, align 4
  %cmp111 = icmp slt i32 %76, %78
  br i1 %cmp111, label %for.body.113, label %for.end.132

for.body.113:                                     ; preds = %for.cond.109
  %79 = load float, float* %v, align 4
  %80 = load float, float* %s, align 4
  %81 = load i32, i32* %f, align 4
  %sub114 = sub nsw i32 255, %81
  %conv115 = sitofp i32 %sub114 to float
  %mul116 = fmul float %80, %conv115
  %sub117 = fsub float 2.550000e+02, %mul116
  %mul118 = fmul float %79, %sub117
  %conv119 = fptoui float %mul118 to i8
  %82 = load i8*, i8** %p, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr120, i8** %p, align 8
  store i8 %conv119, i8* %82, align 1
  %83 = load float, float* %v, align 4
  %84 = load float, float* %s, align 4
  %sub121 = fsub float 1.000000e+00, %84
  %mul122 = fmul float 2.550000e+02, %sub121
  %mul123 = fmul float %83, %mul122
  %conv124 = fptoui float %mul123 to i8
  %85 = load i8*, i8** %p, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr125, i8** %p, align 8
  store i8 %conv124, i8* %85, align 1
  %86 = load float, float* %v, align 4
  %mul126 = fmul float %86, 2.550000e+02
  %conv127 = fptoui float %mul126 to i8
  %87 = load i8*, i8** %p, align 8
  %incdec.ptr128 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr128, i8** %p, align 8
  store i8 %conv127, i8* %87, align 1
  %88 = load float, float* %ds, align 4
  %89 = load float, float* %s, align 4
  %add129 = fadd float %89, %88
  store float %add129, float* %s, align 4
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.113
  %90 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %90, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.109

for.end.132:                                      ; preds = %for.cond.109
  br label %sw.epilog

sw.bb.133:                                        ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.154, %sw.bb.133
  %91 = load i32, i32* %i, align 4
  %92 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width135 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %92, i32 0, i32 2
  %93 = load i32, i32* %width135, align 4
  %cmp136 = icmp slt i32 %91, %93
  br i1 %cmp136, label %for.body.138, label %for.end.156

for.body.138:                                     ; preds = %for.cond.134
  %94 = load float, float* %v, align 4
  %mul139 = fmul float %94, 2.550000e+02
  %conv140 = fptoui float %mul139 to i8
  %95 = load i8*, i8** %p, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr141, i8** %p, align 8
  store i8 %conv140, i8* %95, align 1
  %96 = load float, float* %v, align 4
  %mul142 = fmul float %96, 2.550000e+02
  %97 = load float, float* %s, align 4
  %sub143 = fsub float 1.000000e+00, %97
  %mul144 = fmul float %mul142, %sub143
  %conv145 = fptoui float %mul144 to i8
  %98 = load i8*, i8** %p, align 8
  %incdec.ptr146 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr146, i8** %p, align 8
  store i8 %conv145, i8* %98, align 1
  %99 = load float, float* %v, align 4
  %100 = load float, float* %s, align 4
  %101 = load i32, i32* %f, align 4
  %conv147 = sitofp i32 %101 to float
  %mul148 = fmul float %100, %conv147
  %sub149 = fsub float 2.550000e+02, %mul148
  %mul150 = fmul float %99, %sub149
  %conv151 = fptoui float %mul150 to i8
  %102 = load i8*, i8** %p, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr152, i8** %p, align 8
  store i8 %conv151, i8* %102, align 1
  %103 = load float, float* %ds, align 4
  %104 = load float, float* %s, align 4
  %add153 = fadd float %104, %103
  store float %add153, float* %s, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.138
  %105 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %105, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.134

for.end.156:                                      ; preds = %for.cond.134
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.5, %for.end.156, %for.end.132, %for.end.107, %for.end.83, %for.end.58, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_hue_value(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %h = alloca float, align 4
  %v = alloca float, align 4
  %dv = alloca float, align 4
  %s = alloca float, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %3, 360
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %div = sdiv i32 %mul, %5
  %sub = sub nsw i32 360, %div
  %conv = sitofp i32 %sub to float
  store float %conv, float* %h, align 4
  %6 = load float, float* %h, align 4
  %cmp = fcmp olt float %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load float, float* %h, align 4
  %cmp2 = fcmp ogt float %7, 3.590000e+02
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store float 3.590000e+02, float* %h, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load float, float* %h, align 4
  %div6 = fdiv float %8, 6.000000e+01
  store float %div6, float* %h, align 4
  %9 = load float, float* %h, align 4
  %10 = load float, float* %h, align 4
  %conv7 = fptosi float %10 to i32
  %conv8 = sitofp i32 %conv7 to float
  %sub9 = fsub float %9, %conv8
  %mul10 = fmul float %sub9, 2.550000e+02
  %conv11 = fptosi float %mul10 to i32
  store i32 %conv11, i32* %f, align 4
  store float 0.000000e+00, float* %v, align 4
  %11 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %11, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %conv12 = sitofp i32 %12 to double
  %div13 = fdiv double 1.000000e+00, %conv12
  %conv14 = fptrunc double %div13 to float
  store float %conv14, float* %dv, align 4
  %13 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %hsv = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %13, i32 0, i32 5
  %s15 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  %14 = load double, double* %s15, align 8
  %conv16 = fptrunc double %14 to float
  store float %conv16, float* %s, align 4
  %15 = load float, float* %h, align 4
  %conv17 = fptosi float %15 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.35
    i32 2, label %sw.bb.59
    i32 3, label %sw.bb.84
    i32 4, label %sw.bb.108
    i32 5, label %sw.bb.133
  ]

sw.bb:                                            ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width18 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %17, i32 0, i32 2
  %18 = load i32, i32* %width18, align 4
  %cmp19 = icmp slt i32 %16, %18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load float, float* %v, align 4
  %mul21 = fmul float %19, 2.550000e+02
  %conv22 = fptoui float %mul21 to i8
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv22, i8* %20, align 1
  %21 = load float, float* %v, align 4
  %22 = load float, float* %s, align 4
  %23 = load i32, i32* %f, align 4
  %sub23 = sub nsw i32 255, %23
  %conv24 = sitofp i32 %sub23 to float
  %mul25 = fmul float %22, %conv24
  %sub26 = fsub float 2.550000e+02, %mul25
  %mul27 = fmul float %21, %sub26
  %conv28 = fptoui float %mul27 to i8
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8
  store i8 %conv28, i8* %24, align 1
  %25 = load float, float* %v, align 4
  %mul30 = fmul float %25, 2.550000e+02
  %26 = load float, float* %s, align 4
  %sub31 = fsub float 1.000000e+00, %26
  %mul32 = fmul float %mul30, %sub31
  %conv33 = fptoui float %mul32 to i8
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr34, i8** %p, align 8
  store i8 %conv33, i8* %27, align 1
  %28 = load float, float* %dv, align 4
  %29 = load float, float* %v, align 4
  %add = fadd float %29, %28
  store float %add, float* %v, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.56, %sw.bb.35
  %31 = load i32, i32* %i, align 4
  %32 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width37 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %32, i32 0, i32 2
  %33 = load i32, i32* %width37, align 4
  %cmp38 = icmp slt i32 %31, %33
  br i1 %cmp38, label %for.body.40, label %for.end.58

for.body.40:                                      ; preds = %for.cond.36
  %34 = load float, float* %v, align 4
  %35 = load float, float* %s, align 4
  %36 = load i32, i32* %f, align 4
  %conv41 = sitofp i32 %36 to float
  %mul42 = fmul float %35, %conv41
  %sub43 = fsub float 2.550000e+02, %mul42
  %mul44 = fmul float %34, %sub43
  %conv45 = fptoui float %mul44 to i8
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  store i8 %conv45, i8* %37, align 1
  %38 = load float, float* %v, align 4
  %mul47 = fmul float %38, 2.550000e+02
  %conv48 = fptoui float %mul47 to i8
  %39 = load i8*, i8** %p, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr49, i8** %p, align 8
  store i8 %conv48, i8* %39, align 1
  %40 = load float, float* %v, align 4
  %mul50 = fmul float %40, 2.550000e+02
  %41 = load float, float* %s, align 4
  %sub51 = fsub float 1.000000e+00, %41
  %mul52 = fmul float %mul50, %sub51
  %conv53 = fptoui float %mul52 to i8
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  store i8 %conv53, i8* %42, align 1
  %43 = load float, float* %dv, align 4
  %44 = load float, float* %v, align 4
  %add55 = fadd float %44, %43
  store float %add55, float* %v, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.40
  %45 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %45, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.36

for.end.58:                                       ; preds = %for.cond.36
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.81, %sw.bb.59
  %46 = load i32, i32* %i, align 4
  %47 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width61 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %47, i32 0, i32 2
  %48 = load i32, i32* %width61, align 4
  %cmp62 = icmp slt i32 %46, %48
  br i1 %cmp62, label %for.body.64, label %for.end.83

for.body.64:                                      ; preds = %for.cond.60
  %49 = load float, float* %v, align 4
  %mul65 = fmul float %49, 2.550000e+02
  %50 = load float, float* %s, align 4
  %sub66 = fsub float 1.000000e+00, %50
  %mul67 = fmul float %mul65, %sub66
  %conv68 = fptoui float %mul67 to i8
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr69, i8** %p, align 8
  store i8 %conv68, i8* %51, align 1
  %52 = load float, float* %v, align 4
  %mul70 = fmul float %52, 2.550000e+02
  %conv71 = fptoui float %mul70 to i8
  %53 = load i8*, i8** %p, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr72, i8** %p, align 8
  store i8 %conv71, i8* %53, align 1
  %54 = load float, float* %v, align 4
  %55 = load float, float* %s, align 4
  %56 = load i32, i32* %f, align 4
  %sub73 = sub nsw i32 255, %56
  %conv74 = sitofp i32 %sub73 to float
  %mul75 = fmul float %55, %conv74
  %sub76 = fsub float 2.550000e+02, %mul75
  %mul77 = fmul float %54, %sub76
  %conv78 = fptoui float %mul77 to i8
  %57 = load i8*, i8** %p, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr79, i8** %p, align 8
  store i8 %conv78, i8* %57, align 1
  %58 = load float, float* %dv, align 4
  %59 = load float, float* %v, align 4
  %add80 = fadd float %59, %58
  store float %add80, float* %v, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.64
  %60 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %60, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.60

for.end.83:                                       ; preds = %for.cond.60
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.105, %sw.bb.84
  %61 = load i32, i32* %i, align 4
  %62 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width86 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %62, i32 0, i32 2
  %63 = load i32, i32* %width86, align 4
  %cmp87 = icmp slt i32 %61, %63
  br i1 %cmp87, label %for.body.89, label %for.end.107

for.body.89:                                      ; preds = %for.cond.85
  %64 = load float, float* %v, align 4
  %mul90 = fmul float %64, 2.550000e+02
  %65 = load float, float* %s, align 4
  %sub91 = fsub float 1.000000e+00, %65
  %mul92 = fmul float %mul90, %sub91
  %conv93 = fptoui float %mul92 to i8
  %66 = load i8*, i8** %p, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr94, i8** %p, align 8
  store i8 %conv93, i8* %66, align 1
  %67 = load float, float* %v, align 4
  %68 = load float, float* %s, align 4
  %69 = load i32, i32* %f, align 4
  %conv95 = sitofp i32 %69 to float
  %mul96 = fmul float %68, %conv95
  %sub97 = fsub float 2.550000e+02, %mul96
  %mul98 = fmul float %67, %sub97
  %conv99 = fptoui float %mul98 to i8
  %70 = load i8*, i8** %p, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr100, i8** %p, align 8
  store i8 %conv99, i8* %70, align 1
  %71 = load float, float* %v, align 4
  %mul101 = fmul float %71, 2.550000e+02
  %conv102 = fptoui float %mul101 to i8
  %72 = load i8*, i8** %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr103, i8** %p, align 8
  store i8 %conv102, i8* %72, align 1
  %73 = load float, float* %dv, align 4
  %74 = load float, float* %v, align 4
  %add104 = fadd float %74, %73
  store float %add104, float* %v, align 4
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.89
  %75 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %75, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.85

for.end.107:                                      ; preds = %for.cond.85
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.130, %sw.bb.108
  %76 = load i32, i32* %i, align 4
  %77 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width110 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %77, i32 0, i32 2
  %78 = load i32, i32* %width110, align 4
  %cmp111 = icmp slt i32 %76, %78
  br i1 %cmp111, label %for.body.113, label %for.end.132

for.body.113:                                     ; preds = %for.cond.109
  %79 = load float, float* %v, align 4
  %80 = load float, float* %s, align 4
  %81 = load i32, i32* %f, align 4
  %sub114 = sub nsw i32 255, %81
  %conv115 = sitofp i32 %sub114 to float
  %mul116 = fmul float %80, %conv115
  %sub117 = fsub float 2.550000e+02, %mul116
  %mul118 = fmul float %79, %sub117
  %conv119 = fptoui float %mul118 to i8
  %82 = load i8*, i8** %p, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr120, i8** %p, align 8
  store i8 %conv119, i8* %82, align 1
  %83 = load float, float* %v, align 4
  %84 = load float, float* %s, align 4
  %sub121 = fsub float 1.000000e+00, %84
  %mul122 = fmul float 2.550000e+02, %sub121
  %mul123 = fmul float %83, %mul122
  %conv124 = fptoui float %mul123 to i8
  %85 = load i8*, i8** %p, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr125, i8** %p, align 8
  store i8 %conv124, i8* %85, align 1
  %86 = load float, float* %v, align 4
  %mul126 = fmul float %86, 2.550000e+02
  %conv127 = fptoui float %mul126 to i8
  %87 = load i8*, i8** %p, align 8
  %incdec.ptr128 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr128, i8** %p, align 8
  store i8 %conv127, i8* %87, align 1
  %88 = load float, float* %dv, align 4
  %89 = load float, float* %v, align 4
  %add129 = fadd float %89, %88
  store float %add129, float* %v, align 4
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.113
  %90 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %90, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.109

for.end.132:                                      ; preds = %for.cond.109
  br label %sw.epilog

sw.bb.133:                                        ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.154, %sw.bb.133
  %91 = load i32, i32* %i, align 4
  %92 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width135 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %92, i32 0, i32 2
  %93 = load i32, i32* %width135, align 4
  %cmp136 = icmp slt i32 %91, %93
  br i1 %cmp136, label %for.body.138, label %for.end.156

for.body.138:                                     ; preds = %for.cond.134
  %94 = load float, float* %v, align 4
  %mul139 = fmul float %94, 2.550000e+02
  %conv140 = fptoui float %mul139 to i8
  %95 = load i8*, i8** %p, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr141, i8** %p, align 8
  store i8 %conv140, i8* %95, align 1
  %96 = load float, float* %v, align 4
  %mul142 = fmul float %96, 2.550000e+02
  %97 = load float, float* %s, align 4
  %sub143 = fsub float 1.000000e+00, %97
  %mul144 = fmul float %mul142, %sub143
  %conv145 = fptoui float %mul144 to i8
  %98 = load i8*, i8** %p, align 8
  %incdec.ptr146 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr146, i8** %p, align 8
  store i8 %conv145, i8* %98, align 1
  %99 = load float, float* %v, align 4
  %100 = load float, float* %s, align 4
  %101 = load i32, i32* %f, align 4
  %conv147 = sitofp i32 %101 to float
  %mul148 = fmul float %100, %conv147
  %sub149 = fsub float 2.550000e+02, %mul148
  %mul150 = fmul float %99, %sub149
  %conv151 = fptoui float %mul150 to i8
  %102 = load i8*, i8** %p, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr152, i8** %p, align 8
  store i8 %conv151, i8* %102, align 1
  %103 = load float, float* %dv, align 4
  %104 = load float, float* %v, align 4
  %add153 = fadd float %104, %103
  store float %add153, float* %v, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.138
  %105 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %105, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.134

for.end.156:                                      ; preds = %for.cond.134
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.5, %for.end.156, %for.end.132, %for.end.107, %for.end.83, %for.end.58, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_saturation_value(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %h = alloca float, align 4
  %v = alloca float, align 4
  %dv = alloca float, align 4
  %s = alloca float, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 1
  %3 = load i32, i32* %y, align 4
  %conv = sitofp i32 %3 to float
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %conv1 = sitofp i32 %5 to float
  %div = fdiv float %conv, %conv1
  store float %div, float* %s, align 4
  %6 = load float, float* %s, align 4
  %cmp = fcmp olt float %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load float, float* %s, align 4
  %cmp3 = fcmp ogt float %7, 1.000000e+00
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store float 1.000000e+00, float* %s, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load float, float* %s, align 4
  %sub = fsub float 1.000000e+00, %8
  store float %sub, float* %s, align 4
  %9 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %hsv = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %9, i32 0, i32 5
  %h7 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %10 = load double, double* %h7, align 8
  %conv8 = fptrunc double %10 to float
  %conv9 = fpext float %conv8 to double
  %mul = fmul double %conv9, 3.600000e+02
  %conv10 = fptrunc double %mul to float
  store float %conv10, float* %h, align 4
  %11 = load float, float* %h, align 4
  %cmp11 = fcmp oge float %11, 3.600000e+02
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.6
  %12 = load float, float* %h, align 4
  %sub14 = fsub float %12, 3.600000e+02
  store float %sub14, float* %h, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.6
  %13 = load float, float* %h, align 4
  %div16 = fdiv float %13, 6.000000e+01
  store float %div16, float* %h, align 4
  %14 = load float, float* %h, align 4
  %15 = load float, float* %h, align 4
  %conv17 = fptosi float %15 to i32
  %conv18 = sitofp i32 %conv17 to float
  %sub19 = fsub float %14, %conv18
  %mul20 = fmul float %sub19, 2.550000e+02
  %conv21 = fptosi float %mul20 to i32
  store i32 %conv21, i32* %f, align 4
  store float 0.000000e+00, float* %v, align 4
  %16 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %16, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %conv22 = sitofp i32 %17 to double
  %div23 = fdiv double 1.000000e+00, %conv22
  %conv24 = fptrunc double %div23 to float
  store float %conv24, float* %dv, align 4
  %18 = load float, float* %h, align 4
  %conv25 = fptosi float %18 to i32
  switch i32 %conv25, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.43
    i32 2, label %sw.bb.67
    i32 3, label %sw.bb.92
    i32 4, label %sw.bb.116
    i32 5, label %sw.bb.141
  ]

sw.bb:                                            ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %19 = load i32, i32* %i, align 4
  %20 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width26 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %20, i32 0, i32 2
  %21 = load i32, i32* %width26, align 4
  %cmp27 = icmp slt i32 %19, %21
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load float, float* %v, align 4
  %mul29 = fmul float %22, 2.550000e+02
  %conv30 = fptoui float %mul29 to i8
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv30, i8* %23, align 1
  %24 = load float, float* %v, align 4
  %25 = load float, float* %s, align 4
  %26 = load i32, i32* %f, align 4
  %sub31 = sub nsw i32 255, %26
  %conv32 = sitofp i32 %sub31 to float
  %mul33 = fmul float %25, %conv32
  %sub34 = fsub float 2.550000e+02, %mul33
  %mul35 = fmul float %24, %sub34
  %conv36 = fptoui float %mul35 to i8
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8
  store i8 %conv36, i8* %27, align 1
  %28 = load float, float* %v, align 4
  %mul38 = fmul float %28, 2.550000e+02
  %29 = load float, float* %s, align 4
  %sub39 = fsub float 1.000000e+00, %29
  %mul40 = fmul float %mul38, %sub39
  %conv41 = fptoui float %mul40 to i8
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr42, i8** %p, align 8
  store i8 %conv41, i8* %30, align 1
  %31 = load float, float* %dv, align 4
  %32 = load float, float* %v, align 4
  %add = fadd float %32, %31
  store float %add, float* %v, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.64, %sw.bb.43
  %34 = load i32, i32* %i, align 4
  %35 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width45 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %35, i32 0, i32 2
  %36 = load i32, i32* %width45, align 4
  %cmp46 = icmp slt i32 %34, %36
  br i1 %cmp46, label %for.body.48, label %for.end.66

for.body.48:                                      ; preds = %for.cond.44
  %37 = load float, float* %v, align 4
  %38 = load float, float* %s, align 4
  %39 = load i32, i32* %f, align 4
  %conv49 = sitofp i32 %39 to float
  %mul50 = fmul float %38, %conv49
  %sub51 = fsub float 2.550000e+02, %mul50
  %mul52 = fmul float %37, %sub51
  %conv53 = fptoui float %mul52 to i8
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  store i8 %conv53, i8* %40, align 1
  %41 = load float, float* %v, align 4
  %mul55 = fmul float %41, 2.550000e+02
  %conv56 = fptoui float %mul55 to i8
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr57, i8** %p, align 8
  store i8 %conv56, i8* %42, align 1
  %43 = load float, float* %v, align 4
  %mul58 = fmul float %43, 2.550000e+02
  %44 = load float, float* %s, align 4
  %sub59 = fsub float 1.000000e+00, %44
  %mul60 = fmul float %mul58, %sub59
  %conv61 = fptoui float %mul60 to i8
  %45 = load i8*, i8** %p, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr62, i8** %p, align 8
  store i8 %conv61, i8* %45, align 1
  %46 = load float, float* %dv, align 4
  %47 = load float, float* %v, align 4
  %add63 = fadd float %47, %46
  store float %add63, float* %v, align 4
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.48
  %48 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %48, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.44

for.end.66:                                       ; preds = %for.cond.44
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.89, %sw.bb.67
  %49 = load i32, i32* %i, align 4
  %50 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width69 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %50, i32 0, i32 2
  %51 = load i32, i32* %width69, align 4
  %cmp70 = icmp slt i32 %49, %51
  br i1 %cmp70, label %for.body.72, label %for.end.91

for.body.72:                                      ; preds = %for.cond.68
  %52 = load float, float* %v, align 4
  %mul73 = fmul float %52, 2.550000e+02
  %53 = load float, float* %s, align 4
  %sub74 = fsub float 1.000000e+00, %53
  %mul75 = fmul float %mul73, %sub74
  %conv76 = fptoui float %mul75 to i8
  %54 = load i8*, i8** %p, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr77, i8** %p, align 8
  store i8 %conv76, i8* %54, align 1
  %55 = load float, float* %v, align 4
  %mul78 = fmul float %55, 2.550000e+02
  %conv79 = fptoui float %mul78 to i8
  %56 = load i8*, i8** %p, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr80, i8** %p, align 8
  store i8 %conv79, i8* %56, align 1
  %57 = load float, float* %v, align 4
  %58 = load float, float* %s, align 4
  %59 = load i32, i32* %f, align 4
  %sub81 = sub nsw i32 255, %59
  %conv82 = sitofp i32 %sub81 to float
  %mul83 = fmul float %58, %conv82
  %sub84 = fsub float 2.550000e+02, %mul83
  %mul85 = fmul float %57, %sub84
  %conv86 = fptoui float %mul85 to i8
  %60 = load i8*, i8** %p, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr87, i8** %p, align 8
  store i8 %conv86, i8* %60, align 1
  %61 = load float, float* %dv, align 4
  %62 = load float, float* %v, align 4
  %add88 = fadd float %62, %61
  store float %add88, float* %v, align 4
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.72
  %63 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %63, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.68

for.end.91:                                       ; preds = %for.cond.68
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.113, %sw.bb.92
  %64 = load i32, i32* %i, align 4
  %65 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width94 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %65, i32 0, i32 2
  %66 = load i32, i32* %width94, align 4
  %cmp95 = icmp slt i32 %64, %66
  br i1 %cmp95, label %for.body.97, label %for.end.115

for.body.97:                                      ; preds = %for.cond.93
  %67 = load float, float* %v, align 4
  %mul98 = fmul float %67, 2.550000e+02
  %68 = load float, float* %s, align 4
  %sub99 = fsub float 1.000000e+00, %68
  %mul100 = fmul float %mul98, %sub99
  %conv101 = fptoui float %mul100 to i8
  %69 = load i8*, i8** %p, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr102, i8** %p, align 8
  store i8 %conv101, i8* %69, align 1
  %70 = load float, float* %v, align 4
  %71 = load float, float* %s, align 4
  %72 = load i32, i32* %f, align 4
  %conv103 = sitofp i32 %72 to float
  %mul104 = fmul float %71, %conv103
  %sub105 = fsub float 2.550000e+02, %mul104
  %mul106 = fmul float %70, %sub105
  %conv107 = fptoui float %mul106 to i8
  %73 = load i8*, i8** %p, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr108, i8** %p, align 8
  store i8 %conv107, i8* %73, align 1
  %74 = load float, float* %v, align 4
  %mul109 = fmul float %74, 2.550000e+02
  %conv110 = fptoui float %mul109 to i8
  %75 = load i8*, i8** %p, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr111, i8** %p, align 8
  store i8 %conv110, i8* %75, align 1
  %76 = load float, float* %dv, align 4
  %77 = load float, float* %v, align 4
  %add112 = fadd float %77, %76
  store float %add112, float* %v, align 4
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.97
  %78 = load i32, i32* %i, align 4
  %inc114 = add nsw i32 %78, 1
  store i32 %inc114, i32* %i, align 4
  br label %for.cond.93

for.end.115:                                      ; preds = %for.cond.93
  br label %sw.epilog

sw.bb.116:                                        ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.138, %sw.bb.116
  %79 = load i32, i32* %i, align 4
  %80 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width118 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %80, i32 0, i32 2
  %81 = load i32, i32* %width118, align 4
  %cmp119 = icmp slt i32 %79, %81
  br i1 %cmp119, label %for.body.121, label %for.end.140

for.body.121:                                     ; preds = %for.cond.117
  %82 = load float, float* %v, align 4
  %83 = load float, float* %s, align 4
  %84 = load i32, i32* %f, align 4
  %sub122 = sub nsw i32 255, %84
  %conv123 = sitofp i32 %sub122 to float
  %mul124 = fmul float %83, %conv123
  %sub125 = fsub float 2.550000e+02, %mul124
  %mul126 = fmul float %82, %sub125
  %conv127 = fptoui float %mul126 to i8
  %85 = load i8*, i8** %p, align 8
  %incdec.ptr128 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr128, i8** %p, align 8
  store i8 %conv127, i8* %85, align 1
  %86 = load float, float* %v, align 4
  %87 = load float, float* %s, align 4
  %sub129 = fsub float 1.000000e+00, %87
  %mul130 = fmul float 2.550000e+02, %sub129
  %mul131 = fmul float %86, %mul130
  %conv132 = fptoui float %mul131 to i8
  %88 = load i8*, i8** %p, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr133, i8** %p, align 8
  store i8 %conv132, i8* %88, align 1
  %89 = load float, float* %v, align 4
  %mul134 = fmul float %89, 2.550000e+02
  %conv135 = fptoui float %mul134 to i8
  %90 = load i8*, i8** %p, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr136, i8** %p, align 8
  store i8 %conv135, i8* %90, align 1
  %91 = load float, float* %dv, align 4
  %92 = load float, float* %v, align 4
  %add137 = fadd float %92, %91
  store float %add137, float* %v, align 4
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.body.121
  %93 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %93, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.cond.117

for.end.140:                                      ; preds = %for.cond.117
  br label %sw.epilog

sw.bb.141:                                        ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.162, %sw.bb.141
  %94 = load i32, i32* %i, align 4
  %95 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width143 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %95, i32 0, i32 2
  %96 = load i32, i32* %width143, align 4
  %cmp144 = icmp slt i32 %94, %96
  br i1 %cmp144, label %for.body.146, label %for.end.164

for.body.146:                                     ; preds = %for.cond.142
  %97 = load float, float* %v, align 4
  %mul147 = fmul float %97, 2.550000e+02
  %conv148 = fptoui float %mul147 to i8
  %98 = load i8*, i8** %p, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr149, i8** %p, align 8
  store i8 %conv148, i8* %98, align 1
  %99 = load float, float* %v, align 4
  %mul150 = fmul float %99, 2.550000e+02
  %100 = load float, float* %s, align 4
  %sub151 = fsub float 1.000000e+00, %100
  %mul152 = fmul float %mul150, %sub151
  %conv153 = fptoui float %mul152 to i8
  %101 = load i8*, i8** %p, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr154, i8** %p, align 8
  store i8 %conv153, i8* %101, align 1
  %102 = load float, float* %v, align 4
  %103 = load float, float* %s, align 4
  %104 = load i32, i32* %f, align 4
  %conv155 = sitofp i32 %104 to float
  %mul156 = fmul float %103, %conv155
  %sub157 = fsub float 2.550000e+02, %mul156
  %mul158 = fmul float %102, %sub157
  %conv159 = fptoui float %mul158 to i8
  %105 = load i8*, i8** %p, align 8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr160, i8** %p, align 8
  store i8 %conv159, i8* %105, align 1
  %106 = load float, float* %dv, align 4
  %107 = load float, float* %v, align 4
  %add161 = fadd float %107, %106
  store float %add161, float* %v, align 4
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.146
  %108 = load i32, i32* %i, align 4
  %inc163 = add nsw i32 %108, 1
  store i32 %inc163, i32* %i, align 4
  br label %for.cond.142

for.end.164:                                      ; preds = %for.cond.142
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.15, %for.end.164, %for.end.140, %for.end.115, %for.end.91, %for.end.66, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_red_green(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %g = alloca float, align 4
  %dg = alloca float, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %rgb = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 4
  %b1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %3 = load double, double* %b1, align 8
  %mul = fmul double %3, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %b, align 4
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %6 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %6, i32 0, i32 1
  %7 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %5, %7
  %add2 = add nsw i32 %sub, 1
  %mul3 = mul nsw i32 %add2, 255
  %8 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height4 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %8, i32 0, i32 3
  %9 = load i32, i32* %height4, align 4
  %div = sdiv i32 %mul3, %9
  store i32 %div, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %r, align 4
  %cmp6 = icmp sgt i32 %11, 255
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 255, i32* %r, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  store float 0.000000e+00, float* %g, align 4
  %12 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %12, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %conv10 = sitofp i32 %13 to double
  %div11 = fdiv double 2.550000e+02, %conv10
  %conv12 = fptrunc double %div11 to float
  store float %conv12, float* %dg, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %14 = load i32, i32* %i, align 4
  %15 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width13 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %15, i32 0, i32 2
  %16 = load i32, i32* %width13, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %r, align 4
  %conv16 = trunc i32 %17 to i8
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv16, i8* %18, align 1
  %19 = load float, float* %g, align 4
  %conv17 = fptoui float %19 to i8
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 %conv17, i8* %20, align 1
  %21 = load i32, i32* %b, align 4
  %conv19 = trunc i32 %21 to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 %conv19, i8* %22, align 1
  %23 = load float, float* %dg, align 4
  %24 = load float, float* %g, align 4
  %add21 = fadd float %24, %23
  store float %add21, float* %g, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_red_blue(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca float, align 4
  %db = alloca float, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %rgb = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 4
  %g1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %3 = load double, double* %g1, align 8
  %mul = fmul double %3, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %g, align 4
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %6 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %6, i32 0, i32 1
  %7 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %5, %7
  %add2 = add nsw i32 %sub, 1
  %mul3 = mul nsw i32 %add2, 255
  %8 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height4 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %8, i32 0, i32 3
  %9 = load i32, i32* %height4, align 4
  %div = sdiv i32 %mul3, %9
  store i32 %div, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %r, align 4
  %cmp6 = icmp sgt i32 %11, 255
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 255, i32* %r, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  store float 0.000000e+00, float* %b, align 4
  %12 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %12, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %conv10 = sitofp i32 %13 to double
  %div11 = fdiv double 2.550000e+02, %conv10
  %conv12 = fptrunc double %div11 to float
  store float %conv12, float* %db, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %14 = load i32, i32* %i, align 4
  %15 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width13 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %15, i32 0, i32 2
  %16 = load i32, i32* %width13, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %r, align 4
  %conv16 = trunc i32 %17 to i8
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv16, i8* %18, align 1
  %19 = load i32, i32* %g, align 4
  %conv17 = trunc i32 %19 to i8
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 %conv17, i8* %20, align 1
  %21 = load float, float* %b, align 4
  %conv19 = fptoui float %21 to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 %conv19, i8* %22, align 1
  %23 = load float, float* %db, align 4
  %24 = load float, float* %b, align 4
  %add21 = fadd float %24, %23
  store float %add21, float* %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_select_update_green_blue(%struct._ColorSelectFill* %csf) #3 {
entry:
  %csf.addr = alloca %struct._ColorSelectFill*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %g = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca float, align 4
  %db = alloca float, align 4
  store %struct._ColorSelectFill* %csf, %struct._ColorSelectFill** %csf.addr, align 8
  %0 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %buffer = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %rgb = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %2, i32 0, i32 4
  %r1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %3 = load double, double* %r1, align 8
  %mul = fmul double %3, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %r, align 4
  %4 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  %6 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %y = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %6, i32 0, i32 1
  %7 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %5, %7
  %add2 = add nsw i32 %sub, 1
  %mul3 = mul nsw i32 %add2, 255
  %8 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %height4 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %8, i32 0, i32 3
  %9 = load i32, i32* %height4, align 4
  %div = sdiv i32 %mul3, %9
  store i32 %div, i32* %g, align 4
  %10 = load i32, i32* %g, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %g, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %g, align 4
  %cmp6 = icmp sgt i32 %11, 255
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 255, i32* %g, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  store float 0.000000e+00, float* %b, align 4
  %12 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %12, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %conv10 = sitofp i32 %13 to double
  %div11 = fdiv double 2.550000e+02, %conv10
  %conv12 = fptrunc double %div11 to float
  store float %conv12, float* %db, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %14 = load i32, i32* %i, align 4
  %15 = load %struct._ColorSelectFill*, %struct._ColorSelectFill** %csf.addr, align 8
  %width13 = getelementptr inbounds %struct._ColorSelectFill, %struct._ColorSelectFill* %15, i32 0, i32 2
  %16 = load i32, i32* %width13, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %r, align 4
  %conv16 = trunc i32 %17 to i8
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv16, i8* %18, align 1
  %19 = load i32, i32* %g, align 4
  %conv17 = trunc i32 %19 to i8
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 %conv17, i8* %20, align 1
  %21 = load float, float* %b, align 4
  %conv19 = fptoui float %21 to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 %conv19, i8* %22, align 1
  %23 = load float, float* %db, align 4
  %24 = load float, float* %b, align 4
  %add21 = fadd float %24, %23
  store float %add21, float* %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_xy_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpColorSelect* %select) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  call void @gimp_color_select_update(%struct._GimpColorSelect* %0, i32 4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_select_xy_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpColorSelect* %select) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %2)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %3 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %4 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %4, i32 0, i32 4
  %5 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %3, %struct._GdkRegion* %5)
  %6 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %6)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %7, 1
  %8 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %8, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %pos, i32 0, i64 0
  %9 = load i32, i32* %arrayidx, align 4
  %mul = mul nsw i32 %sub, %9
  %div = sdiv i32 %mul, 255
  store i32 %div, i32* %x, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %10 = load i32, i32* %height, align 4
  %sub2 = sub nsw i32 %10, 1
  %height3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %11 = load i32, i32* %height3, align 4
  %sub4 = sub nsw i32 %11, 1
  %12 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos5 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %12, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %pos5, i32 0, i64 1
  %13 = load i32, i32* %arrayidx6, align 4
  %mul7 = mul nsw i32 %sub4, %13
  %div8 = sdiv i32 %mul7, 255
  %sub9 = sub nsw i32 %sub2, %div8
  store i32 %sub9, i32* %y, align 4
  %14 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %15 = load i32, i32* %y, align 4
  %conv = sitofp i32 %15 to double
  %add = fadd double %conv, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %14, double 0.000000e+00, double %add)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %17 = load i32, i32* %width10, align 4
  %conv11 = sitofp i32 %17 to double
  %18 = load i32, i32* %y, align 4
  %conv12 = sitofp i32 %18 to double
  %add13 = fadd double %conv12, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %16, double %conv11, double %add13)
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %20 = load i32, i32* %x, align 4
  %conv14 = sitofp i32 %20 to double
  %add15 = fadd double %conv14, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %19, double %add15, double 0.000000e+00)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %22 = load i32, i32* %x, align 4
  %conv16 = sitofp i32 %22 to double
  %add17 = fadd double %conv16, 5.000000e-01
  %height18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %23 = load i32, i32* %height18, align 4
  %conv19 = sitofp i32 %23 to double
  call void @cairo_line_to(%struct._cairo* %21, double %add17, double %conv19)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %24, double 3.000000e+00)
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %25, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %26)
  %27 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %27, double 1.000000e+00)
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %28, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %29 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %29)
  %30 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %30)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_select_xy_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpColorSelect* %select) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bevent = alloca %struct._GdkEventButton*, align 8
  %bevent7 = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.6
    i32 3, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %bevent, align 8
  %4 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %4, i32 0, i32 7
  %5 = load i32, i32* %drag_mode, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 8
  %7 = load i32, i32* %button, align 4
  %cmp1 = icmp ne i32 %7, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 4
  %9 = load double, double* %x2, align 8
  %conv = fptosi double %9 to i32
  store i32 %conv, i32* %x, align 4
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y3 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 5
  %11 = load double, double* %y3, align 8
  %conv4 = fptosi double %11 to i32
  store i32 %conv4, i32* %y, align 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %12)
  %13 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode5 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %13, i32 0, i32 7
  store i32 1, i32* %drag_mode5, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %14 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %15 = bitcast %union._GdkEvent* %14 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %15, %struct._GdkEventButton** %bevent7, align 8
  %16 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode8 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %16, i32 0, i32 7
  %17 = load i32, i32* %drag_mode8, align 4
  %cmp9 = icmp ne i32 %17, 1
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %sw.bb.6
  %18 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent7, align 8
  %button12 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %18, i32 0, i32 8
  %19 = load i32, i32* %button12, align 4
  %cmp13 = icmp ne i32 %19, 1
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.11, %sw.bb.6
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.11
  %20 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent7, align 8
  %x17 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %20, i32 0, i32 4
  %21 = load double, double* %x17, align 8
  %conv18 = fptosi double %21 to i32
  store i32 %conv18, i32* %x, align 4
  %22 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent7, align 8
  %y19 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %22, i32 0, i32 5
  %23 = load double, double* %y19, align 8
  %conv20 = fptosi double %23 to i32
  store i32 %conv20, i32* %y, align 4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %24)
  %25 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode21 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %25, i32 0, i32 7
  store i32 0, i32* %drag_mode21, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %26 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %27 = bitcast %union._GdkEvent* %26 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %27, %struct._GdkEventMotion** %mevent, align 8
  %28 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode23 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %28, i32 0, i32 7
  %29 = load i32, i32* %drag_mode23, align 4
  %cmp24 = icmp ne i32 %29, 1
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.22
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %sw.bb.22
  %30 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x28 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %30, i32 0, i32 4
  %31 = load double, double* %x28, align 8
  %conv29 = fptosi double %31 to i32
  store i32 %conv29, i32* %x, align 4
  %32 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y30 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %32, i32 0, i32 5
  %33 = load double, double* %y30, align 8
  %conv31 = fptosi double %33 to i32
  store i32 %conv31, i32* %y, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.27, %if.end.16, %if.end
  %34 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %34, i32 0, i32 2
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %35, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %36 = load i32, i32* %width, align 4
  %cmp32 = icmp sgt i32 %36, 1
  br i1 %cmp32, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %sw.epilog
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %37 = load i32, i32* %height, align 4
  %cmp34 = icmp sgt i32 %37, 1
  br i1 %cmp34, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %38, 255
  %width37 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %39 = load i32, i32* %width37, align 4
  %sub = sub nsw i32 %39, 1
  %div = sdiv i32 %mul, %sub
  %40 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %40, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %pos, i32 0, i64 0
  store i32 %div, i32* %arrayidx, align 4
  %41 = load i32, i32* %y, align 4
  %mul38 = mul nsw i32 %41, 255
  %height39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %42 = load i32, i32* %height39, align 4
  %sub40 = sub nsw i32 %42, 1
  %div41 = sdiv i32 %mul38, %sub40
  %sub42 = sub nsw i32 255, %div41
  %43 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos43 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %43, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %pos43, i32 0, i64 1
  store i32 %sub42, i32* %arrayidx44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.36, %land.lhs.true, %sw.epilog
  %44 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos46 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %44, i32 0, i32 4
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %pos46, i32 0, i64 0
  %45 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp sgt i32 %45, 255
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  br label %cond.end.58

cond.false:                                       ; preds = %if.end.45
  %46 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos50 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %46, i32 0, i32 4
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %pos50, i32 0, i64 0
  %47 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp slt i32 %47, 0
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false
  br label %cond.end

cond.false.55:                                    ; preds = %cond.false
  %48 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos56 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %48, i32 0, i32 4
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %pos56, i32 0, i64 0
  %49 = load i32, i32* %arrayidx57, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.55, %cond.true.54
  %cond = phi i32 [ 0, %cond.true.54 ], [ %49, %cond.false.55 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end, %cond.true
  %cond59 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %50 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos60 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %50, i32 0, i32 4
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %pos60, i32 0, i64 0
  store i32 %cond59, i32* %arrayidx61, align 4
  %51 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos62 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %51, i32 0, i32 4
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %pos62, i32 0, i64 1
  %52 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp sgt i32 %52, 255
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %cond.end.58
  br label %cond.end.78

cond.false.67:                                    ; preds = %cond.end.58
  %53 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos68 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %53, i32 0, i32 4
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %pos68, i32 0, i64 1
  %54 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp slt i32 %54, 0
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.false.67
  br label %cond.end.76

cond.false.73:                                    ; preds = %cond.false.67
  %55 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos74 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %55, i32 0, i32 4
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %pos74, i32 0, i64 1
  %56 = load i32, i32* %arrayidx75, align 4
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.73, %cond.true.72
  %cond77 = phi i32 [ 0, %cond.true.72 ], [ %56, %cond.false.73 ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end.76, %cond.true.66
  %cond79 = phi i32 [ 255, %cond.true.66 ], [ %cond77, %cond.end.76 ]
  %57 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos80 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %57, i32 0, i32 4
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %pos80, i32 0, i64 1
  store i32 %cond79, i32* %arrayidx81, align 4
  %58 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %xy_color82 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %58, i32 0, i32 2
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %xy_color82, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %59)
  %60 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  call void @gimp_color_select_update(%struct._GimpColorSelect* %60, i32 65)
  %61 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %62 = bitcast %union._GdkEvent* %61 to %struct._GdkEventMotion*
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %62)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.78, %sw.default, %if.then.26, %if.then.15, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_z_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation, %struct._GimpColorSelect* %select) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  call void @gimp_color_select_update(%struct._GimpColorSelect* %0, i32 8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_select_z_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpColorSelect* %select) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %1)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %3 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %3, i32 0, i32 4
  %4 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %2, %struct._GdkRegion* %4)
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %5)
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %6 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %6, 1
  %height2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %7 = load i32, i32* %height2, align 4
  %sub3 = sub nsw i32 %7, 1
  %8 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %8, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %pos, i32 0, i64 2
  %9 = load i32, i32* %arrayidx, align 4
  %mul = mul nsw i32 %sub3, %9
  %div = sdiv i32 %mul, 255
  %sub4 = sub nsw i32 %sub, %div
  store i32 %sub4, i32* %y, align 4
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %11 = load i32, i32* %y, align 4
  %conv = sitofp i32 %11 to double
  %add = fadd double %conv, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %10, double 0.000000e+00, double %add)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %conv5 = sitofp i32 %13 to double
  %14 = load i32, i32* %y, align 4
  %conv6 = sitofp i32 %14 to double
  %add7 = fadd double %conv6, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %12, double %conv5, double %add7)
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %15, double 3.000000e+00)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %16, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %17)
  %18 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %18, double 1.000000e+00)
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %19, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %21)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_select_z_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpColorSelect* %select) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %z = alloca i32, align 4
  %bevent = alloca %struct._GdkEventButton*, align 8
  %bevent4 = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.3
    i32 3, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %bevent, align 8
  %4 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %4, i32 0, i32 7
  %5 = load i32, i32* %drag_mode, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 8
  %7 = load i32, i32* %button, align 4
  %cmp1 = icmp ne i32 %7, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 5
  %9 = load double, double* %y, align 8
  %conv = fptosi double %9 to i32
  store i32 %conv, i32* %z, align 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %10)
  %11 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode2 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %11, i32 0, i32 7
  store i32 2, i32* %drag_mode2, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %13 = bitcast %union._GdkEvent* %12 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %13, %struct._GdkEventButton** %bevent4, align 8
  %14 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode5 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %14, i32 0, i32 7
  %15 = load i32, i32* %drag_mode5, align 4
  %cmp6 = icmp ne i32 %15, 2
  br i1 %cmp6, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %sw.bb.3
  %16 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent4, align 8
  %button9 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %16, i32 0, i32 8
  %17 = load i32, i32* %button9, align 4
  %cmp10 = icmp ne i32 %17, 1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.8, %sw.bb.3
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.8
  %18 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent4, align 8
  %y14 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %18, i32 0, i32 5
  %19 = load double, double* %y14, align 8
  %conv15 = fptosi double %19 to i32
  store i32 %conv15, i32* %z, align 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %20)
  %21 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode16 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %21, i32 0, i32 7
  store i32 0, i32* %drag_mode16, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %22 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %23 = bitcast %union._GdkEvent* %22 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %23, %struct._GdkEventMotion** %mevent, align 8
  %24 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %drag_mode18 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %24, i32 0, i32 7
  %25 = load i32, i32* %drag_mode18, align 4
  %cmp19 = icmp ne i32 %25, 2
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb.17
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %sw.bb.17
  %26 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y23 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %26, i32 0, i32 5
  %27 = load double, double* %y23, align 8
  %conv24 = fptosi double %27 to i32
  store i32 %conv24, i32* %z, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.22, %if.end.13, %if.end
  %28 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %28, i32 0, i32 3
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %29, %struct._GdkRectangle* %allocation)
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %30 = load i32, i32* %height, align 4
  %cmp25 = icmp sgt i32 %30, 1
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %sw.epilog
  %31 = load i32, i32* %z, align 4
  %mul = mul nsw i32 %31, 255
  %height28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %32 = load i32, i32* %height28, align 4
  %sub = sub nsw i32 %32, 1
  %div = sdiv i32 %mul, %sub
  %sub29 = sub nsw i32 255, %div
  %33 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %33, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %pos, i32 0, i64 2
  store i32 %sub29, i32* %arrayidx, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %sw.epilog
  %34 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos31 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %34, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %pos31, i32 0, i64 2
  %35 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp sgt i32 %35, 255
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  br label %cond.end.43

cond.false:                                       ; preds = %if.end.30
  %36 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos35 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %36, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %pos35, i32 0, i64 2
  %37 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp slt i32 %37, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false
  br label %cond.end

cond.false.40:                                    ; preds = %cond.false
  %38 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos41 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %38, i32 0, i32 4
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %pos41, i32 0, i64 2
  %39 = load i32, i32* %arrayidx42, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.40, %cond.true.39
  %cond = phi i32 [ 0, %cond.true.39 ], [ %39, %cond.false.40 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end, %cond.true
  %cond44 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %40 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %pos45 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %40, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %pos45, i32 0, i64 2
  store i32 %cond44, i32* %arrayidx46, align 4
  %41 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %z_color47 = getelementptr inbounds %struct._GimpColorSelect, %struct._GimpColorSelect* %41, i32 0, i32 3
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %z_color47, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %42)
  %43 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  call void @gimp_color_select_update(%struct._GimpColorSelect* %43, i32 69)
  %44 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %45 = bitcast %union._GdkEvent* %44 to %struct._GdkEventMotion*
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %45)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.43, %sw.default, %if.then.21, %if.then.12, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_channel_get_type() #2

declare %struct._GimpEnumDesc* @gimp_enum_get_desc(%struct._GEnumClass*, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare void @gtk_toggle_button_set_mode(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_select_channel_toggled(%struct._GtkWidget* %widget, %struct._GimpColorSelect* %select) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %select.addr = alloca %struct._GimpColorSelect*, align 8
  %selector = alloca %struct._GimpColorSelector*, align 8
  %channel = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpColorSelect* %select, %struct._GimpColorSelect** %select.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpColorSelect*, %struct._GimpColorSelect** %select.addr, align 8
  %4 = bitcast %struct._GimpColorSelect* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_selector_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorSelector*
  store %struct._GimpColorSelector* %5, %struct._GimpColorSelector** %selector, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %9 = ptrtoint i8* %call6 to i64
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %channel, align 4
  %10 = load i32, i32* %channel, align 4
  %11 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %channel7 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %11, i32 0, i32 6
  store i32 %10, i32* %channel7, align 4
  %12 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  %13 = load i32, i32* %channel, align 4
  call void @gimp_color_select_set_channel(%struct._GimpColorSelector* %12, i32 %13)
  %14 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector, align 8
  call void @gimp_color_selector_channel_changed(%struct._GimpColorSelector* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_type_class_unref(i8*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gtk_grab_add(%struct._GtkWidget*) #1

declare void @gtk_grab_remove(%struct._GtkWidget*) #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gimp_color_selector_channel_changed(%struct._GimpColorSelector*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
