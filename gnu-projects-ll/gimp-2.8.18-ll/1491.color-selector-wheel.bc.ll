; ModuleID = './modules/color-selector-wheel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpModuleInfo = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._ColorselWheelClass = type { %struct._GimpColorSelectorClass }
%struct._GimpColorSelectorClass = type { %struct._GtkBoxClass, i8*, i8*, i8*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)*, void (%struct._GimpColorSelector*, i32)*, void (%struct._GimpColorSelector*, %struct._GimpColorConfig*)*, void ()*, void ()*, void ()* }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpColorConfig = type opaque
%struct._ColorselWheel = type { %struct._GimpColorSelector, %struct._GtkWidget* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpColorWheel = type { %struct._GtkWidget, i8* }

@colorsel_wheel_info = internal constant %struct._GimpModuleInfo { i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"HSV color wheel\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v1.0\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"(c) 2008, released under the GPL\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"08 Aug 2008\00", align 1
@colorsel_wheel_register_type.g_define_type_info = internal constant %struct._GTypeInfo { i16 936, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (i8*)* @colorsel_wheel_class_intern_init to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (%struct._ColorselWheelClass*)* @colorsel_wheel_class_finalize to void (i8*, i8*)*), i8* null, i16 224, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._ColorselWheel*)* @colorsel_wheel_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"ColorselWheel\00", align 1
@colorsel_wheel_type_id = internal global i64 0, align 8
@colorsel_wheel_parent_class = internal global i8* null, align 8
@ColorselWheel_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Wheel\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"gimp-colorselector-triangle\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"gimp-color-triangle\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"changed\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_query(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  ret %struct._GimpModuleInfo* @colorsel_wheel_info
}

; Function Attrs: nounwind uwtable
define i32 @gimp_module_register(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @color_wheel_register_type(%struct._GTypeModule* %0)
  %1 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @colorsel_wheel_register_type(%struct._GTypeModule* %1)
  ret i32 1
}

declare void @color_wheel_register_type(%struct._GTypeModule*) #1

; Function Attrs: nounwind uwtable
define internal void @colorsel_wheel_register_type(%struct._GTypeModule* %type_module) #0 {
entry:
  %type_module.addr = alloca %struct._GTypeModule*, align 8
  %g_define_type_id = alloca i64, align 8
  store %struct._GTypeModule* %type_module, %struct._GTypeModule** %type_module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %type_module.addr, align 8
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call i64 @g_type_module_register_type(%struct._GTypeModule* %0, i64 %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @colorsel_wheel_register_type.g_define_type_info, i32 0)
  store i64 %call1, i64* @colorsel_wheel_type_id, align 8
  %1 = load i64, i64* @colorsel_wheel_type_id, align 8
  store i64 %1, i64* %g_define_type_id, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_wheel_class_intern_init(i8* %klass) #0 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @colorsel_wheel_parent_class, align 8
  %1 = load i32, i32* @ColorselWheel_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @ColorselWheel_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._ColorselWheelClass*
  call void @colorsel_wheel_class_init(%struct._ColorselWheelClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_wheel_class_finalize(%struct._ColorselWheelClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ColorselWheelClass*, align 8
  store %struct._ColorselWheelClass* %klass, %struct._ColorselWheelClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorsel_wheel_init(%struct._ColorselWheel* %wheel) #0 {
entry:
  %wheel.addr = alloca %struct._ColorselWheel*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._ColorselWheel* %wheel, %struct._ColorselWheel** %wheel.addr, align 8
  %call = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %3 = load %struct._ColorselWheel*, %struct._ColorselWheel** %wheel.addr, align 8
  %4 = bitcast %struct._ColorselWheel* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call5 = call %struct._GtkWidget* @gimp_color_wheel_new()
  %8 = load %struct._ColorselWheel*, %struct._ColorselWheel** %wheel.addr, align 8
  %hsv = getelementptr inbounds %struct._ColorselWheel, %struct._ColorselWheel* %8, i32 0, i32 1
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %hsv, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  %12 = load %struct._ColorselWheel*, %struct._ColorselWheel** %wheel.addr, align 8
  %hsv8 = getelementptr inbounds %struct._ColorselWheel, %struct._ColorselWheel* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hsv8, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %13)
  %14 = load %struct._ColorselWheel*, %struct._ColorselWheel** %wheel.addr, align 8
  %hsv9 = getelementptr inbounds %struct._ColorselWheel, %struct._ColorselWheel* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hsv9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._ColorselWheel*, %struct._ColorselWheel** %wheel.addr, align 8
  %hsv10 = getelementptr inbounds %struct._ColorselWheel, %struct._ColorselWheel* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hsv10, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct._ColorselWheel*, %struct._ColorselWheel** %wheel.addr, align 8
  %20 = bitcast %struct._ColorselWheel* %19 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorWheel*, %struct._GimpColorSelector*)* @colorsel_wheel_changed to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare i64 @g_type_module_register_type(%struct._GTypeModule*, i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @colorsel_wheel_class_init(%struct._ColorselWheelClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ColorselWheelClass*, align 8
  %selector_class = alloca %struct._GimpColorSelectorClass*, align 8
  store %struct._ColorselWheelClass* %klass, %struct._ColorselWheelClass** %klass.addr, align 8
  %0 = load %struct._ColorselWheelClass*, %struct._ColorselWheelClass** %klass.addr, align 8
  %1 = bitcast %struct._ColorselWheelClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_color_selector_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpColorSelectorClass*
  store %struct._GimpColorSelectorClass* %2, %struct._GimpColorSelectorClass** %selector_class, align 8
  %call2 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #5
  %3 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %name = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %3, i32 0, i32 1
  store i8* %call2, i8** %name, align 8
  %4 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8** %help_id, align 8
  %5 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8** %stock_id, align 8
  %6 = load %struct._GimpColorSelectorClass*, %struct._GimpColorSelectorClass** %selector_class, align 8
  %set_color = getelementptr inbounds %struct._GimpColorSelectorClass, %struct._GimpColorSelectorClass* %6, i32 0, i32 7
  store void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)* @colorsel_wheel_set_color, void (%struct._GimpColorSelector*, %struct._GimpRGB*, %struct._GimpHSV*)** %set_color, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @colorsel_wheel_set_color(%struct._GimpColorSelector* %selector, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #0 {
entry:
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %wheel = alloca %struct._ColorselWheel*, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  %0 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %1 = bitcast %struct._GimpColorSelector* %0 to %struct._GTypeInstance*
  %call = call i64 @colorsel_wheel_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ColorselWheel*
  store %struct._ColorselWheel* %2, %struct._ColorselWheel** %wheel, align 8
  %3 = load %struct._ColorselWheel*, %struct._ColorselWheel** %wheel, align 8
  %hsv2 = getelementptr inbounds %struct._ColorselWheel, %struct._ColorselWheel* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %hsv2, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_wheel_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorWheel*
  %7 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %7, i32 0, i32 0
  %8 = load double, double* %h, align 8
  %9 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %9, i32 0, i32 1
  %10 = load double, double* %s, align 8
  %11 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %11, i32 0, i32 2
  %12 = load double, double* %v, align 8
  call void @gimp_color_wheel_set_color(%struct._GimpColorWheel* %6, double %8, double %10, double %12)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @colorsel_wheel_get_type() #0 {
entry:
  %0 = load i64, i64* @colorsel_wheel_type_id, align 8
  ret i64 %0
}

declare void @gimp_color_wheel_set_color(%struct._GimpColorWheel*, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_wheel_get_type() #2

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_color_wheel_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @colorsel_wheel_changed(%struct._GimpColorWheel* %hsv, %struct._GimpColorSelector* %selector) #0 {
entry:
  %hsv.addr = alloca %struct._GimpColorWheel*, align 8
  %selector.addr = alloca %struct._GimpColorSelector*, align 8
  store %struct._GimpColorWheel* %hsv, %struct._GimpColorWheel** %hsv.addr, align 8
  store %struct._GimpColorSelector* %selector, %struct._GimpColorSelector** %selector.addr, align 8
  %0 = load %struct._GimpColorWheel*, %struct._GimpColorWheel** %hsv.addr, align 8
  %1 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %hsv1 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %1, i32 0, i32 5
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv1, i32 0, i32 0
  %2 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %hsv2 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %2, i32 0, i32 5
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv2, i32 0, i32 1
  %3 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %hsv3 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %3, i32 0, i32 5
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv3, i32 0, i32 2
  call void @gimp_color_wheel_get_color(%struct._GimpColorWheel* %0, double* %h, double* %s, double* %v)
  %4 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %hsv4 = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %4, i32 0, i32 5
  %5 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorSelector, %struct._GimpColorSelector* %5, i32 0, i32 4
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv4, %struct._GimpRGB* %rgb)
  %6 = load %struct._GimpColorSelector*, %struct._GimpColorSelector** %selector.addr, align 8
  call void @gimp_color_selector_color_changed(%struct._GimpColorSelector* %6)
  ret void
}

declare void @gimp_color_wheel_get_color(%struct._GimpColorWheel*, double*, double*, double*) #1

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

declare void @gimp_color_selector_color_changed(%struct._GimpColorSelector*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
