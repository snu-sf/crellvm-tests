; ModuleID = './libgimpwidgets/gimpcolorarea.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorAreaClass = type { %struct._GtkDrawingAreaClass, void (%struct._GimpColorArea*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkDrawingAreaClass = type { %struct._GtkWidgetClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._cairo = type opaque
%struct._cairo_surface = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_color_area_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpColorArea\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"drag-mask\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_area_set_color = private unnamed_addr constant [26 x i8] c"gimp_color_area_set_color\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GIMP_IS_COLOR_AREA (area)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@gimp_color_area_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_color_area_get_color = private unnamed_addr constant [26 x i8] c"gimp_color_area_get_color\00", align 1
@__func__.gimp_color_area_has_alpha = private unnamed_addr constant [26 x i8] c"gimp_color_area_has_alpha\00", align 1
@__func__.gimp_color_area_set_type = private unnamed_addr constant [25 x i8] c"gimp_color_area_set_type\00", align 1
@__func__.gimp_color_area_set_draw_border = private unnamed_addr constant [32 x i8] c"gimp_color_area_set_draw_border\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"draw-border\00", align 1
@gimp_color_area_parent_class = internal global i8* null, align 8
@GimpColorArea_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"gimpcolorarea.c\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@target = internal constant %struct._GtkTargetEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0 }, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"application/x-color\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"gimp-color-area-drag-window\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"%s: received invalid color data\00", align 1
@__func__.gimp_color_area_drag_data_received = private unnamed_addr constant [35 x i8] c"gimp_color_area_drag_data_received\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_area_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_area_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_area_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_drawing_area_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 792, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_area_class_intern_init to void (i8*, i8*)*), i32 168, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorArea*)* @gimp_color_area_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_area_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_area_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_drawing_area_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_area_parent_class, align 8
  %1 = load i32, i32* @GimpColorArea_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorArea_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorAreaClass*
  call void @gimp_color_area_class_init(%struct._GimpColorAreaClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_init(%struct._GimpColorArea* %area) #3 {
entry:
  %area.addr = alloca %struct._GimpColorArea*, align 8
  store %struct._GimpColorArea* %area, %struct._GimpColorArea** %area.addr, align 8
  %0 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %buf = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %0, i32 0, i32 1
  store i8* null, i8** %buf, align 8
  %1 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %width = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %1, i32 0, i32 2
  store i32 0, i32* %width, align 4
  %2 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %height = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %2, i32 0, i32 3
  store i32 0, i32* %height, align 4
  %3 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %3, i32 0, i32 4
  store i32 0, i32* %rowstride, align 4
  %4 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %draw_border = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %4, i32 0, i32 7
  %bf.load = load i8, i8* %draw_border, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %draw_border, align 8
  %5 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %6 = bitcast %struct._GimpColorArea* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %7, i32 7, %struct._GtkTargetEntry* @target, i32 1, i32 2)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %color, i32 %type, i32 %drag_mask) #3 {
entry:
  %color.addr = alloca %struct._GimpRGB*, align 8
  %type.addr = alloca i32, align 4
  %drag_mask.addr = alloca i32, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %drag_mask, i32* %drag_mask.addr, align 4
  %call = call i64 @gimp_color_area_get_type() #6
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %1 = load i32, i32* %type.addr, align 4
  %2 = load i32, i32* %drag_mask.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._GimpRGB* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %2, i8* null)
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %3
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_area_set_color(%struct._GimpColorArea* %area, %struct._GimpRGB* %color) #3 {
entry:
  %area.addr = alloca %struct._GimpColorArea*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorArea* %area, %struct._GimpColorArea** %area.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %1 = bitcast %struct._GimpColorArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_area_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_color_area_set_color, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_color_area_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %color17 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %14, i32 0, i32 6
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call18 = call double @gimp_rgba_distance(%struct._GimpRGB* %color17, %struct._GimpRGB* %15)
  %cmp19 = fcmp olt double %call18, 1.000000e-06
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end.16
  br label %return

if.end.21:                                        ; preds = %do.end.16
  %16 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %color22 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %16, i32 0, i32 6
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %18 = bitcast %struct._GimpRGB* %color22 to i8*
  %19 = bitcast %struct._GimpRGB* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %20, i32 0, i32 7
  %bf.load = load i8, i8* %needs_render, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %needs_render, align 8
  %21 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %22 = bitcast %struct._GimpColorArea* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %23)
  %24 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %25 = bitcast %struct._GimpColorArea* %24 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %27 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %28 = bitcast %struct._GimpColorArea* %27 to i8*
  %29 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_area_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %28, i32 %29, i32 0)
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_area_get_color(%struct._GimpColorArea* %area, %struct._GimpRGB* %color) #3 {
entry:
  %area.addr = alloca %struct._GimpColorArea*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorArea* %area, %struct._GimpColorArea** %area.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %1 = bitcast %struct._GimpColorArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_area_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_color_area_get_color, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_color_area_get_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %15 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %color17 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %15, i32 0, i32 6
  %16 = bitcast %struct._GimpRGB* %14 to i8*
  %17 = bitcast %struct._GimpRGB* %color17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_color_area_has_alpha(%struct._GimpColorArea* %area) #3 {
entry:
  %retval = alloca i32, align 4
  %area.addr = alloca %struct._GimpColorArea*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorArea* %area, %struct._GimpColorArea** %area.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %1 = bitcast %struct._GimpColorArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_area_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_color_area_has_alpha, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %type = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %13, i32 0, i32 5
  %14 = load i32, i32* %type, align 4
  %cmp11 = icmp ne i32 %14, 0
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_color_area_set_type(%struct._GimpColorArea* %area, i32 %type) #3 {
entry:
  %area.addr = alloca %struct._GimpColorArea*, align 8
  %type.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorArea* %area, %struct._GimpColorArea** %area.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %1 = bitcast %struct._GimpColorArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_area_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_color_area_set_type, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %type11 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %13, i32 0, i32 5
  %14 = load i32, i32* %type11, align 4
  %15 = load i32, i32* %type.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %type.addr, align 4
  %17 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %type14 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %17, i32 0, i32 5
  store i32 %16, i32* %type14, align 4
  %18 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %18, i32 0, i32 7
  %bf.load = load i8, i8* %needs_render, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %needs_render, align 8
  %19 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %20 = bitcast %struct._GimpColorArea* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %21)
  %22 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %23 = bitcast %struct._GimpColorArea* %22 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_color_area_set_draw_border(%struct._GimpColorArea* %area, i32 %draw_border) #3 {
entry:
  %area.addr = alloca %struct._GimpColorArea*, align 8
  %draw_border.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorArea* %area, %struct._GimpColorArea** %area.addr, align 8
  store i32 %draw_border, i32* %draw_border.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %1 = bitcast %struct._GimpColorArea* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_area_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_color_area_set_draw_border, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %draw_border.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  store i32 %cond, i32* %draw_border.addr, align 4
  %14 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %draw_border12 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %14, i32 0, i32 7
  %bf.load = load i8, i8* %draw_border12, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %15 = load i32, i32* %draw_border.addr, align 4
  %cmp13 = icmp ne i32 %bf.cast, %15
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %do.end
  %16 = load i32, i32* %draw_border.addr, align 4
  %17 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %draw_border15 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %17, i32 0, i32 7
  %18 = trunc i32 %16 to i8
  %bf.load16 = load i8, i8* %draw_border15, align 8
  %bf.value = and i8 %18, 1
  %bf.clear17 = and i8 %bf.load16, -2
  %bf.set = or i8 %bf.clear17, %bf.value
  store i8 %bf.set, i8* %draw_border15, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %19 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %20 = bitcast %struct._GimpColorArea* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %21)
  %22 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %23 = bitcast %struct._GimpColorArea* %22 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_class_init(%struct._GimpColorAreaClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorAreaClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorAreaClass* %klass, %struct._GimpColorAreaClass** %klass.addr, align 8
  %0 = load %struct._GimpColorAreaClass*, %struct._GimpColorAreaClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorAreaClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorAreaClass*, %struct._GimpColorAreaClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorAreaClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpColorAreaClass*, %struct._GimpColorAreaClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorAreaClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i64 %8, i32 1, i32 752, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_area_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_area_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_area_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_area_finalize, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_color_area_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %state_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 14
  store void (%struct._GtkWidget*, i32)* @gimp_color_area_state_changed, void (%struct._GtkWidget*, i32)** %state_changed, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_color_area_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_begin = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 53
  store void (%struct._GtkWidget*, %struct._GdkDragContext*)* @gimp_color_area_drag_begin, void (%struct._GtkWidget*, %struct._GdkDragContext*)** %drag_begin, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_end = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 54
  store void (%struct._GtkWidget*, %struct._GdkDragContext*)* @gimp_color_area_drag_end, void (%struct._GtkWidget*, %struct._GdkDragContext*)** %drag_end, align 8
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_data_received = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 60
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_color_area_drag_data_received, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)** %drag_data_received, align 8
  %18 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_data_get = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %18, i32 0, i32 55
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)* @gimp_color_area_drag_data_get, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)** %drag_data_get, align 8
  %19 = load %struct._GimpColorAreaClass*, %struct._GimpColorAreaClass** %klass.addr, align 8
  %color_changed = getelementptr inbounds %struct._GimpColorAreaClass, %struct._GimpColorAreaClass* %19, i32 0, i32 1
  store void (%struct._GimpColorArea*)* null, void (%struct._GimpColorArea*)** %color_changed, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 1, %struct._GimpRGB* %color, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 1, %struct._GParamSpec* %call4)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_color_area_type_get_type() #6
  %call6 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 2, %struct._GParamSpec* %call6)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gdk_modifier_type_get_type() #6
  %call8 = call %struct._GParamSpec* @g_param_spec_flags(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 0, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 3, %struct._GParamSpec* %call8)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 4, %struct._GParamSpec* %call9)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %area = alloca %struct._GimpColorArea*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  store %struct._GimpColorArea* %2, %struct._GimpColorArea** %area, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 4, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %color = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %5, i32 0, i32 6
  %6 = bitcast %struct._GimpRGB* %color to i8*
  call void @g_value_set_boxed(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %type = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %8, i32 0, i32 5
  %9 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %draw_border = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %11, i32 0, i32 7
  %bf.load = load i8, i8* %draw_border, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  call void @g_value_set_boolean(%struct._GValue* %10, i32 %bf.cast)
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
  %call4 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %15, i8* %17, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %area = alloca %struct._GimpColorArea*, align 8
  %drag_mask = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  store %struct._GimpColorArea* %2, %struct._GimpColorArea** %area, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_boxed(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpRGB*
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %4, %struct._GimpRGB* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_enum(%struct._GValue* %8)
  call void @gimp_color_area_set_type(%struct._GimpColorArea* %7, i32 %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_flags(%struct._GValue* %9)
  %and = and i32 %call6, 1792
  store i32 %and, i32* %drag_mask, align 4
  %10 = load i32, i32* %drag_mask, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  %11 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %12 = bitcast %struct._GimpColorArea* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %14 = load i32, i32* %drag_mask, align 4
  call void @gtk_drag_source_set(%struct._GtkWidget* %13, i32 %14, %struct._GtkTargetEntry* @target, i32 1, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.5
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %16)
  call void @gimp_color_area_set_draw_border(%struct._GimpColorArea* %15, i32 %call10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %17, %struct._GObject** %_glib__object, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %18, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = load i32, i32* %property_id.addr, align 4
  store i32 %19, i32* %_glib__property_id, align 4
  %20 = load i32, i32* %_glib__property_id, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call11 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %20, i8* %22, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.9, %if.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %area = alloca %struct._GimpColorArea*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  store %struct._GimpColorArea* %2, %struct._GimpColorArea** %area, align 8
  %3 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %buf = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %buf2 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %5, i32 0, i32 1
  %6 = load i8*, i8** %buf2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %buf3 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %7, i32 0, i32 1
  store i8* null, i8** %buf3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_color_area_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %area = alloca %struct._GimpColorArea*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  store %struct._GimpColorArea* %2, %struct._GimpColorArea** %area, align 8
  %3 = load i8*, i8** @gimp_color_area_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 13
  %6 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, %struct._GdkRectangle*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_color_area_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %size_allocate6 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 13
  %10 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate6, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %10(%struct._GtkWidget* %11, %struct._GdkRectangle* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i32 0, i32 2
  %14 = load i32, i32* %width, align 4
  %15 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %width7 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %15, i32 0, i32 2
  %16 = load i32, i32* %width7, align 4
  %cmp = icmp ne i32 %14, %16
  br i1 %cmp, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %17, i32 0, i32 3
  %18 = load i32, i32* %height, align 4
  %19 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %height8 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %19, i32 0, i32 3
  %20 = load i32, i32* %height8, align 4
  %cmp9 = icmp ne i32 %18, %20
  br i1 %cmp9, label %if.then.10, label %if.end.21

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 2
  %22 = load i32, i32* %width11, align 4
  %23 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %width12 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %23, i32 0, i32 2
  store i32 %22, i32* %width12, align 4
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 3
  %25 = load i32, i32* %height13, align 4
  %26 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %height14 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %26, i32 0, i32 3
  store i32 %25, i32* %height14, align 4
  %27 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %width15 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %27, i32 0, i32 2
  %28 = load i32, i32* %width15, align 4
  %mul = mul i32 %28, 4
  %add = add i32 %mul, 4
  %29 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %29, i32 0, i32 4
  store i32 %add, i32* %rowstride, align 4
  %30 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %buf = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %30, i32 0, i32 1
  %31 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %rowstride16 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %32, i32 0, i32 4
  %33 = load i32, i32* %rowstride16, align 4
  %34 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %height17 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %34, i32 0, i32 3
  %35 = load i32, i32* %height17, align 4
  %mul18 = mul i32 %33, %35
  %conv = zext i32 %mul18 to i64
  %call19 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %36 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %buf20 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %36, i32 0, i32 1
  store i8* %call19, i8** %buf20, align 8
  %37 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %37, i32 0, i32 7
  %bf.load = load i8, i8* %needs_render, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %needs_render, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.10, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_state_changed(%struct._GtkWidget* %widget, i32 %previous_state) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %previous_state.addr = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %previous_state, i32* %previous_state.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_get_state(%struct._GtkWidget* %0)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %previous_state.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_area_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorArea*
  %needs_render = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %4, i32 0, i32 7
  %bf.load = load i8, i8* %needs_render, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %needs_render, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i8*, i8** @gimp_color_area_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call4)
  %7 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %state_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %7, i32 0, i32 14
  %8 = load void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)** %state_changed, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, i32)* %8, null
  br i1 %tobool, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %9 = load i8*, i8** @gimp_color_area_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call7)
  %11 = bitcast %struct._GTypeClass* %call8 to %struct._GtkWidgetClass*
  %state_changed9 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 14
  %12 = load void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)** %state_changed9, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load i32, i32* %previous_state.addr, align 4
  call void %12(%struct._GtkWidget* %13, i32 %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_area_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %area = alloca %struct._GimpColorArea*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %cr = alloca %struct._cairo*, align 8
  %buffer = alloca %struct._cairo_surface*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  store %struct._GimpColorArea* %2, %struct._GimpColorArea** %area, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %buf = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %4, i32 0, i32 1
  %5 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %7, i32 0, i32 7
  %bf.load = load i8, i8* %needs_render, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  call void @gimp_color_area_render(%struct._GimpColorArea* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call8 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %9)
  %call9 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call8)
  store %struct._cairo* %call9, %struct._cairo** %cr, align 8
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %11 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %11, i32 0, i32 4
  %12 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %10, %struct._GdkRegion* %12)
  %13 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %13)
  %14 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %buf10 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %14, i32 0, i32 1
  %15 = load i8*, i8** %buf10, align 8
  %16 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %width = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %16, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %18 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %height = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %18, i32 0, i32 3
  %19 = load i32, i32* %height, align 4
  %20 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %20, i32 0, i32 4
  %21 = load i32, i32* %rowstride, align 4
  %call11 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %15, i32 1, i32 %17, i32 %19, i32 %21)
  store %struct._cairo_surface* %call11, %struct._cairo_surface** %buffer, align 8
  %22 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %23 = load %struct._cairo_surface*, %struct._cairo_surface** %buffer, align 8
  call void @cairo_set_source_surface(%struct._cairo* %22, %struct._cairo_surface* %23, double 0.000000e+00, double 0.000000e+00)
  %24 = load %struct._cairo_surface*, %struct._cairo_surface** %buffer, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %24)
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %25)
  %26 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %draw_border = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %26, i32 0, i32 7
  %bf.load12 = load i8, i8* %draw_border, align 8
  %bf.clear13 = and i8 %bf.load12, 1
  %bf.cast14 = zext i8 %bf.clear13 to i32
  %tobool15 = icmp ne i32 %bf.cast14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.end.7
  %27 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %27, double 1.000000e+00)
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call17 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %29)
  %idxprom = zext i32 %call17 to i64
  %30 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %30, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %28, %struct._GdkColor* %arrayidx)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %32 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %width18 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %32, i32 0, i32 2
  %33 = load i32, i32* %width18, align 4
  %sub = sub i32 %33, 1
  %conv = uitofp i32 %sub to double
  %34 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %height19 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %34, i32 0, i32 3
  %35 = load i32, i32* %height19, align 4
  %sub20 = sub i32 %35, 1
  %conv21 = uitofp i32 %sub20 to double
  call void @cairo_rectangle(%struct._cairo* %31, double 5.000000e-01, double 5.000000e-01, double %conv, double %conv21)
  %36 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %36)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %if.end.7
  %37 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %37)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_drag_begin(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %window = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %color_area = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @gtk_window_new(i32 1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %window, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  call void @gtk_window_set_type_hint(%struct._GtkWindow* %2, i32 13)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call5 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %6)
  call void @gtk_window_set_screen(%struct._GtkWindow* %5, %struct._GdkScreen* %call5)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_realize(%struct._GtkWidget* %7)
  %call6 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_frame_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %10, i32 2)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %13, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_area_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorArea*
  call void @gimp_color_area_get_color(%struct._GimpColorArea* %17, %struct._GimpRGB* %color)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_color_area_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpColorArea*
  %type = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %20, i32 0, i32 5
  %21 = load i32, i32* %type, align 4
  %call15 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %color, i32 %21, i32 0)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %color_area, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %22, i32 32, i32 32)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %25, %struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  call void @g_object_set_data_full(%struct._GObject* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i8* %33, void (i8*)* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void (i8*)*))
  %34 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_drag_set_icon_widget(%struct._GdkDragContext* %34, %struct._GtkWidget* %35, i32 -8, i32 -8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_drag_end(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_drag_data_received(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %selection_data, i32 %info, i32 %time) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %selection_data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %area = alloca %struct._GimpColorArea*, align 8
  %vals = alloca i16*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %selection_data, %struct._GtkSelectionData** %selection_data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  store %struct._GimpColorArea* %2, %struct._GimpColorArea** %area, align 8
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call2 = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %3)
  %cmp = icmp ne i32 %call2, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call3 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %4)
  %cmp4 = icmp ne i32 %call3, 16
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_area_drag_data_received, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call5 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %5)
  %6 = bitcast i8* %call5 to i16*
  store i16* %6, i16** %vals, align 8
  %7 = load i16*, i16** %vals, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx, align 2
  %conv = uitofp i16 %8 to double
  %div = fdiv double %conv, 6.553500e+04
  %9 = load i16*, i16** %vals, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %9, i64 1
  %10 = load i16, i16* %arrayidx6, align 2
  %conv7 = uitofp i16 %10 to double
  %div8 = fdiv double %conv7, 6.553500e+04
  %11 = load i16*, i16** %vals, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %11, i64 2
  %12 = load i16, i16* %arrayidx9, align 2
  %conv10 = uitofp i16 %12 to double
  %div11 = fdiv double %conv10, 6.553500e+04
  %13 = load i16*, i16** %vals, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %13, i64 3
  %14 = load i16, i16* %arrayidx12, align 2
  %conv13 = uitofp i16 %14 to double
  %div14 = fdiv double %conv13, 6.553500e+04
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double %div, double %div8, double %div11, double %div14)
  %15 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %15, %struct._GimpRGB* %color)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_drag_data_get(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, %struct._GtkSelectionData* %selection_data, i32 %info, i32 %time) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %selection_data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %area = alloca %struct._GimpColorArea*, align 8
  %vals = alloca [4 x i16], align 2
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store %struct._GtkSelectionData* %selection_data, %struct._GtkSelectionData** %selection_data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_area_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorArea*
  store %struct._GimpColorArea* %2, %struct._GimpColorArea** %area, align 8
  %3 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %color = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %3, i32 0, i32 6
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %4 = load double, double* %r, align 8
  %mul = fmul double %4, 6.553500e+04
  %conv = fptoui double %mul to i16
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 0
  store i16 %conv, i16* %arrayidx, align 2
  %5 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %color2 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %5, i32 0, i32 6
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 1
  %6 = load double, double* %g, align 8
  %mul3 = fmul double %6, 6.553500e+04
  %conv4 = fptoui double %mul3 to i16
  %arrayidx5 = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 1
  store i16 %conv4, i16* %arrayidx5, align 2
  %7 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %color6 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %7, i32 0, i32 6
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color6, i32 0, i32 2
  %8 = load double, double* %b, align 8
  %mul7 = fmul double %8, 6.553500e+04
  %conv8 = fptoui double %mul7 to i16
  %arrayidx9 = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 2
  store i16 %conv8, i16* %arrayidx9, align 2
  %9 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %type = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %9, i32 0, i32 5
  %10 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx11 = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 3
  store i16 -1, i16* %arrayidx11, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area, align 8
  %color12 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %11, i32 0, i32 6
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color12, i32 0, i32 3
  %12 = load double, double* %a, align 8
  %mul13 = fmul double %12, 6.553500e+04
  %conv14 = fptoui double %mul13 to i16
  %arrayidx15 = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 3
  store i16 %conv14, i16* %arrayidx15, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %call16 = call %struct._GdkAtom* @gdk_atom_intern(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0)
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i32 0
  %14 = bitcast i16* %arraydecay to i8*
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %13, %struct._GdkAtom* %call16, i32 16, i8* %14, i32 8)
  ret void
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_flags(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_modifier_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_flags(%struct._GValue*) #1

declare void @gtk_drag_source_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_render(%struct._GimpColorArea* %area) #3 {
entry:
  %area.addr = alloca %struct._GimpColorArea*, align 8
  store %struct._GimpColorArea* %area, %struct._GimpColorArea** %area.addr, align 8
  %0 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %buf = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %0, i32 0, i32 1
  %1 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %3 = bitcast %struct._GimpColorArea* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %5 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %6 = bitcast %struct._GimpColorArea* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %call4 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %7)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  %8 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %type = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %8, i32 0, i32 5
  %9 = load i32, i32* %type, align 4
  %10 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %buf6 = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %10, i32 0, i32 1
  %11 = load i8*, i8** %buf6, align 8
  %12 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %width = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %12, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %14 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %height = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %14, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  %16 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %16, i32 0, i32 4
  %17 = load i32, i32* %rowstride, align 4
  %18 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %color = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %18, i32 0, i32 6
  call void @gimp_color_area_render_buf(%struct._GtkWidget* %4, i32 %lnot.ext, i32 %9, i8* %11, i32 %13, i32 %15, i32 %17, %struct._GimpRGB* %color)
  %19 = load %struct._GimpColorArea*, %struct._GimpColorArea** %area.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorArea, %struct._GimpColorArea* %19, i32 0, i32 7
  %bf.load = load i8, i8* %needs_render, align 8
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %needs_render, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_area_render_buf(%struct._GtkWidget* %widget, i32 %insensitive, i32 %type, i8* %buf, i32 %width, i32 %height, i32 %rowstride, %struct._GimpRGB* %color) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %insensitive.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %check_size = alloca i32, align 4
  %light = alloca [3 x i8], align 1
  %dark = alloca [3 x i8], align 1
  %opaque = alloca [3 x i8], align 1
  %insens = alloca [3 x i8], align 1
  %p = alloca i8*, align 8
  %frac = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %insensitive, i32* %insensitive.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %rowstride, i32* %rowstride.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  store i32 0, i32* %check_size, align 4
  %1 = load i32, i32* %type.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %check_size, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 4, i32* %check_size, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 8, i32* %check_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 1
  %arraydecay4 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i32 0
  %add.ptr5 = getelementptr inbounds i8, i8* %arraydecay4, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %2, i8* %arraydecay, i8* %add.ptr, i8* %add.ptr5)
  %3 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %3, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 4
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx, i32 0, i32 1
  %4 = load i16, i16* %red, align 2
  %conv = zext i16 %4 to i32
  %shr = ashr i32 %conv, 8
  %conv6 = trunc i32 %shr to i8
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %insens, i32 0, i64 0
  store i8 %conv6, i8* %arrayidx7, align 1
  %5 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg8 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %5, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg8, i32 0, i64 4
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx9, i32 0, i32 2
  %6 = load i16, i16* %green, align 2
  %conv10 = zext i16 %6 to i32
  %shr11 = ashr i32 %conv10, 8
  %conv12 = trunc i32 %shr11 to i8
  %arrayidx13 = getelementptr inbounds [3 x i8], [3 x i8]* %insens, i32 0, i64 1
  store i8 %conv12, i8* %arrayidx13, align 1
  %7 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg14 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %7, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg14, i32 0, i64 4
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx15, i32 0, i32 3
  %8 = load i16, i16* %blue, align 2
  %conv16 = zext i16 %8 to i32
  %shr17 = ashr i32 %conv16, 8
  %conv18 = trunc i32 %shr17 to i8
  %arrayidx19 = getelementptr inbounds [3 x i8], [3 x i8]* %insens, i32 0, i64 2
  store i8 %conv18, i8* %arrayidx19, align 1
  %9 = load i32, i32* %insensitive.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %10 = load i32, i32* %check_size, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 3
  %12 = load double, double* %a, align 8
  %cmp22 = fcmp oeq double %12, 1.000000e+00
  br i1 %cmp22, label %if.then, label %if.end.52

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false, %sw.epilog
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %if.then
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %height.addr, align 4
  %cmp24 = icmp ult i32 %13, %14
  br i1 %cmp24, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %buf.addr, align 8
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %rowstride.addr, align 4
  %mul = mul i32 %16, %17
  %idx.ext = zext i32 %mul to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr26, i8** %p, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %width.addr, align 4
  %cmp28 = icmp ult i32 %18, %19
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %20 = load i32, i32* %insensitive.addr, align 4
  %tobool31 = icmp ne i32 %20, 0
  br i1 %tobool31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.30
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %y, align 4
  %add = add i32 %21, %22
  %rem = urem i32 %add, 2
  %tobool32 = icmp ne i32 %rem, 0
  br i1 %tobool32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.33
  %arrayidx34 = getelementptr inbounds [3 x i8], [3 x i8]* %insens, i32 0, i64 2
  %23 = load i8, i8* %arrayidx34, align 1
  %24 = load i8*, i8** %p, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %23, i8* %arrayidx35, align 1
  %arrayidx36 = getelementptr inbounds [3 x i8], [3 x i8]* %insens, i32 0, i64 1
  %25 = load i8, i8* %arrayidx36, align 1
  %26 = load i8*, i8** %p, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [3 x i8], [3 x i8]* %insens, i32 0, i64 0
  %27 = load i8, i8* %arrayidx38, align 1
  %28 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %28, i64 2
  store i8 %27, i8* %arrayidx39, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body.30
  br label %do.body.40

do.body.40:                                       ; preds = %if.else
  %arrayidx41 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 2
  %29 = load i8, i8* %arrayidx41, align 1
  %30 = load i8*, i8** %p, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %29, i8* %arrayidx42, align 1
  %arrayidx43 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 1
  %31 = load i8, i8* %arrayidx43, align 1
  %32 = load i8*, i8** %p, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %31, i8* %arrayidx44, align 1
  %arrayidx45 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 0
  %33 = load i8, i8* %arrayidx45, align 1
  %34 = load i8*, i8** %p, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %33, i8* %arrayidx46, align 1
  br label %do.end.47

do.end.47:                                        ; preds = %do.body.40
  br label %if.end

if.end:                                           ; preds = %do.end.47, %do.end
  %35 = load i8*, i8** %p, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %35, i64 4
  store i8* %add.ptr48, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i32, i32* %x, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end
  %37 = load i32, i32* %y, align 4
  %inc50 = add i32 %37, 1
  store i32 %inc50, i32* %y, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  br label %for.end.232

if.end.52:                                        ; preds = %lor.lhs.false.21
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %38, i32 0, i32 0
  %39 = load double, double* %r, align 8
  %sub = fsub double %39, 6.000000e-01
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a53 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %40, i32 0, i32 3
  %41 = load double, double* %a53, align 8
  %mul54 = fmul double %sub, %41
  %add55 = fadd double 6.000000e-01, %mul54
  %mul56 = fmul double %add55, 2.559990e+02
  %conv57 = fptoui double %mul56 to i8
  %arrayidx58 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 0
  store i8 %conv57, i8* %arrayidx58, align 1
  %42 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %42, i32 0, i32 1
  %43 = load double, double* %g, align 8
  %sub59 = fsub double %43, 6.000000e-01
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a60 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %44, i32 0, i32 3
  %45 = load double, double* %a60, align 8
  %mul61 = fmul double %sub59, %45
  %add62 = fadd double 6.000000e-01, %mul61
  %mul63 = fmul double %add62, 2.559990e+02
  %conv64 = fptoui double %mul63 to i8
  %arrayidx65 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 1
  store i8 %conv64, i8* %arrayidx65, align 1
  %46 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %46, i32 0, i32 2
  %47 = load double, double* %b, align 8
  %sub66 = fsub double %47, 6.000000e-01
  %48 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a67 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %48, i32 0, i32 3
  %49 = load double, double* %a67, align 8
  %mul68 = fmul double %sub66, %49
  %add69 = fadd double 6.000000e-01, %mul68
  %mul70 = fmul double %add69, 2.559990e+02
  %conv71 = fptoui double %mul70 to i8
  %arrayidx72 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 2
  store i8 %conv71, i8* %arrayidx72, align 1
  %50 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r73 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %50, i32 0, i32 0
  %51 = load double, double* %r73, align 8
  %sub74 = fsub double %51, 4.000000e-01
  %52 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a75 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %52, i32 0, i32 3
  %53 = load double, double* %a75, align 8
  %mul76 = fmul double %sub74, %53
  %add77 = fadd double 4.000000e-01, %mul76
  %mul78 = fmul double %add77, 2.559990e+02
  %conv79 = fptoui double %mul78 to i8
  %arrayidx80 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 0
  store i8 %conv79, i8* %arrayidx80, align 1
  %54 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g81 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %54, i32 0, i32 1
  %55 = load double, double* %g81, align 8
  %sub82 = fsub double %55, 4.000000e-01
  %56 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a83 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %56, i32 0, i32 3
  %57 = load double, double* %a83, align 8
  %mul84 = fmul double %sub82, %57
  %add85 = fadd double 4.000000e-01, %mul84
  %mul86 = fmul double %add85, 2.559990e+02
  %conv87 = fptoui double %mul86 to i8
  %arrayidx88 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 1
  store i8 %conv87, i8* %arrayidx88, align 1
  %58 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b89 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %58, i32 0, i32 2
  %59 = load double, double* %b89, align 8
  %sub90 = fsub double %59, 4.000000e-01
  %60 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a91 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %60, i32 0, i32 3
  %61 = load double, double* %a91, align 8
  %mul92 = fmul double %sub90, %61
  %add93 = fadd double 4.000000e-01, %mul92
  %mul94 = fmul double %add93, 2.559990e+02
  %conv95 = fptoui double %mul94 to i8
  %arrayidx96 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 2
  store i8 %conv95, i8* %arrayidx96, align 1
  store i32 0, i32* %y, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.230, %if.end.52
  %62 = load i32, i32* %y, align 4
  %63 = load i32, i32* %height.addr, align 4
  %cmp98 = icmp ult i32 %62, %63
  br i1 %cmp98, label %for.body.100, label %for.end.232

for.body.100:                                     ; preds = %for.cond.97
  %64 = load i8*, i8** %buf.addr, align 8
  %65 = load i32, i32* %y, align 4
  %66 = load i32, i32* %rowstride.addr, align 4
  %mul101 = mul i32 %65, %66
  %idx.ext102 = zext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %64, i64 %idx.ext102
  store i8* %add.ptr103, i8** %p, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.227, %for.body.100
  %67 = load i32, i32* %x, align 4
  %68 = load i32, i32* %width.addr, align 4
  %cmp105 = icmp ult i32 %67, %68
  br i1 %cmp105, label %for.body.107, label %for.end.229

for.body.107:                                     ; preds = %for.cond.104
  %69 = load i32, i32* %width.addr, align 4
  %70 = load i32, i32* %x, align 4
  %sub108 = sub i32 %69, %70
  %71 = load i32, i32* %height.addr, align 4
  %mul109 = mul i32 %sub108, %71
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %width.addr, align 4
  %mul110 = mul i32 %72, %73
  %cmp111 = icmp ugt i32 %mul109, %mul110
  br i1 %cmp111, label %if.then.113, label %if.end.123

if.then.113:                                      ; preds = %for.body.107
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %arrayidx115 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 2
  %74 = load i8, i8* %arrayidx115, align 1
  %75 = load i8*, i8** %p, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 %74, i8* %arrayidx116, align 1
  %arrayidx117 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 1
  %76 = load i8, i8* %arrayidx117, align 1
  %77 = load i8*, i8** %p, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 %76, i8* %arrayidx118, align 1
  %arrayidx119 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 0
  %78 = load i8, i8* %arrayidx119, align 1
  %79 = load i8*, i8** %p, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %79, i64 2
  store i8 %78, i8* %arrayidx120, align 1
  br label %do.end.121

do.end.121:                                       ; preds = %do.body.114
  %80 = load i8*, i8** %p, align 8
  %add.ptr122 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %add.ptr122, i8** %p, align 8
  br label %for.inc.227

if.end.123:                                       ; preds = %for.body.107
  %81 = load i32, i32* %y, align 4
  %conv124 = uitofp i32 %81 to double
  %82 = load i32, i32* %width.addr, align 4
  %83 = load i32, i32* %x, align 4
  %sub125 = sub i32 %82, %83
  %84 = load i32, i32* %height.addr, align 4
  %mul126 = mul i32 %sub125, %84
  %conv127 = uitofp i32 %mul126 to double
  %85 = load i32, i32* %width.addr, align 4
  %conv128 = uitofp i32 %85 to double
  %div = fdiv double %conv127, %conv128
  %sub129 = fsub double %conv124, %div
  store double %sub129, double* %frac, align 8
  %86 = load i32, i32* %x, align 4
  %87 = load i32, i32* %check_size, align 4
  %div130 = udiv i32 %86, %87
  %88 = load i32, i32* %y, align 4
  %89 = load i32, i32* %check_size, align 4
  %div131 = udiv i32 %88, %89
  %xor = xor i32 %div130, %div131
  %and = and i32 %xor, 1
  %tobool132 = icmp ne i32 %and, 0
  br i1 %tobool132, label %if.then.133, label %if.else.179

if.then.133:                                      ; preds = %if.end.123
  %90 = load double, double* %frac, align 8
  %conv134 = fptosi double %90 to i32
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %if.then.136, label %if.else.145

if.then.136:                                      ; preds = %if.then.133
  br label %do.body.137

do.body.137:                                      ; preds = %if.then.136
  %arrayidx138 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 2
  %91 = load i8, i8* %arrayidx138, align 1
  %92 = load i8*, i8** %p, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %92, i64 0
  store i8 %91, i8* %arrayidx139, align 1
  %arrayidx140 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 1
  %93 = load i8, i8* %arrayidx140, align 1
  %94 = load i8*, i8** %p, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %94, i64 1
  store i8 %93, i8* %arrayidx141, align 1
  %arrayidx142 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 0
  %95 = load i8, i8* %arrayidx142, align 1
  %96 = load i8*, i8** %p, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %96, i64 2
  store i8 %95, i8* %arrayidx143, align 1
  br label %do.end.144

do.end.144:                                       ; preds = %do.body.137
  br label %if.end.178

if.else.145:                                      ; preds = %if.then.133
  br label %do.body.146

do.body.146:                                      ; preds = %if.else.145
  %arrayidx147 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 2
  %97 = load i8, i8* %arrayidx147, align 1
  %conv148 = uitofp i8 %97 to double
  %98 = load double, double* %frac, align 8
  %mul149 = fmul double %conv148, %98
  %arrayidx150 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 2
  %99 = load i8, i8* %arrayidx150, align 1
  %conv151 = uitofp i8 %99 to double
  %100 = load double, double* %frac, align 8
  %sub152 = fsub double 1.000000e+00, %100
  %mul153 = fmul double %conv151, %sub152
  %add154 = fadd double %mul149, %mul153
  %conv155 = fptoui double %add154 to i8
  %101 = load i8*, i8** %p, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 %conv155, i8* %arrayidx156, align 1
  %arrayidx157 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 1
  %102 = load i8, i8* %arrayidx157, align 1
  %conv158 = uitofp i8 %102 to double
  %103 = load double, double* %frac, align 8
  %mul159 = fmul double %conv158, %103
  %arrayidx160 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 1
  %104 = load i8, i8* %arrayidx160, align 1
  %conv161 = uitofp i8 %104 to double
  %105 = load double, double* %frac, align 8
  %sub162 = fsub double 1.000000e+00, %105
  %mul163 = fmul double %conv161, %sub162
  %add164 = fadd double %mul159, %mul163
  %conv165 = fptoui double %add164 to i8
  %106 = load i8*, i8** %p, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %106, i64 1
  store i8 %conv165, i8* %arrayidx166, align 1
  %arrayidx167 = getelementptr inbounds [3 x i8], [3 x i8]* %light, i32 0, i64 0
  %107 = load i8, i8* %arrayidx167, align 1
  %conv168 = uitofp i8 %107 to double
  %108 = load double, double* %frac, align 8
  %mul169 = fmul double %conv168, %108
  %arrayidx170 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 0
  %109 = load i8, i8* %arrayidx170, align 1
  %conv171 = uitofp i8 %109 to double
  %110 = load double, double* %frac, align 8
  %sub172 = fsub double 1.000000e+00, %110
  %mul173 = fmul double %conv171, %sub172
  %add174 = fadd double %mul169, %mul173
  %conv175 = fptoui double %add174 to i8
  %111 = load i8*, i8** %p, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 %conv175, i8* %arrayidx176, align 1
  br label %do.end.177

do.end.177:                                       ; preds = %do.body.146
  br label %if.end.178

if.end.178:                                       ; preds = %do.end.177, %do.end.144
  br label %if.end.225

if.else.179:                                      ; preds = %if.end.123
  %112 = load double, double* %frac, align 8
  %conv180 = fptosi double %112 to i32
  %tobool181 = icmp ne i32 %conv180, 0
  br i1 %tobool181, label %if.then.182, label %if.else.191

if.then.182:                                      ; preds = %if.else.179
  br label %do.body.183

do.body.183:                                      ; preds = %if.then.182
  %arrayidx184 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 2
  %113 = load i8, i8* %arrayidx184, align 1
  %114 = load i8*, i8** %p, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %114, i64 0
  store i8 %113, i8* %arrayidx185, align 1
  %arrayidx186 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 1
  %115 = load i8, i8* %arrayidx186, align 1
  %116 = load i8*, i8** %p, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %116, i64 1
  store i8 %115, i8* %arrayidx187, align 1
  %arrayidx188 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 0
  %117 = load i8, i8* %arrayidx188, align 1
  %118 = load i8*, i8** %p, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %118, i64 2
  store i8 %117, i8* %arrayidx189, align 1
  br label %do.end.190

do.end.190:                                       ; preds = %do.body.183
  br label %if.end.224

if.else.191:                                      ; preds = %if.else.179
  br label %do.body.192

do.body.192:                                      ; preds = %if.else.191
  %arrayidx193 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 2
  %119 = load i8, i8* %arrayidx193, align 1
  %conv194 = uitofp i8 %119 to double
  %120 = load double, double* %frac, align 8
  %mul195 = fmul double %conv194, %120
  %arrayidx196 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 2
  %121 = load i8, i8* %arrayidx196, align 1
  %conv197 = uitofp i8 %121 to double
  %122 = load double, double* %frac, align 8
  %sub198 = fsub double 1.000000e+00, %122
  %mul199 = fmul double %conv197, %sub198
  %add200 = fadd double %mul195, %mul199
  %conv201 = fptoui double %add200 to i8
  %123 = load i8*, i8** %p, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %123, i64 0
  store i8 %conv201, i8* %arrayidx202, align 1
  %arrayidx203 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 1
  %124 = load i8, i8* %arrayidx203, align 1
  %conv204 = uitofp i8 %124 to double
  %125 = load double, double* %frac, align 8
  %mul205 = fmul double %conv204, %125
  %arrayidx206 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 1
  %126 = load i8, i8* %arrayidx206, align 1
  %conv207 = uitofp i8 %126 to double
  %127 = load double, double* %frac, align 8
  %sub208 = fsub double 1.000000e+00, %127
  %mul209 = fmul double %conv207, %sub208
  %add210 = fadd double %mul205, %mul209
  %conv211 = fptoui double %add210 to i8
  %128 = load i8*, i8** %p, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %128, i64 1
  store i8 %conv211, i8* %arrayidx212, align 1
  %arrayidx213 = getelementptr inbounds [3 x i8], [3 x i8]* %dark, i32 0, i64 0
  %129 = load i8, i8* %arrayidx213, align 1
  %conv214 = uitofp i8 %129 to double
  %130 = load double, double* %frac, align 8
  %mul215 = fmul double %conv214, %130
  %arrayidx216 = getelementptr inbounds [3 x i8], [3 x i8]* %opaque, i32 0, i64 0
  %131 = load i8, i8* %arrayidx216, align 1
  %conv217 = uitofp i8 %131 to double
  %132 = load double, double* %frac, align 8
  %sub218 = fsub double 1.000000e+00, %132
  %mul219 = fmul double %conv217, %sub218
  %add220 = fadd double %mul215, %mul219
  %conv221 = fptoui double %add220 to i8
  %133 = load i8*, i8** %p, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %133, i64 2
  store i8 %conv221, i8* %arrayidx222, align 1
  br label %do.end.223

do.end.223:                                       ; preds = %do.body.192
  br label %if.end.224

if.end.224:                                       ; preds = %do.end.223, %do.end.190
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.end.178
  %134 = load i8*, i8** %p, align 8
  %add.ptr226 = getelementptr inbounds i8, i8* %134, i64 4
  store i8* %add.ptr226, i8** %p, align 8
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.225, %do.end.121
  %135 = load i32, i32* %x, align 4
  %inc228 = add i32 %135, 1
  store i32 %inc228, i32* %x, align 4
  br label %for.cond.104

for.end.229:                                      ; preds = %for.cond.104
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.end.229
  %136 = load i32, i32* %y, align 4
  %inc231 = add i32 %136, 1
  store i32 %inc231, i32* %y, align 4
  br label %for.cond.97

for.end.232:                                      ; preds = %for.end.51, %for.cond.97
  ret void
}

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_window_new(i32) #1

declare void @gtk_window_set_type_hint(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_widget_realize(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_drag_set_icon_widget(%struct._GdkDragContext*, %struct._GtkWidget*, i32, i32) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare void @gtk_selection_data_set(%struct._GtkSelectionData*, %struct._GdkAtom*, i32, i8*, i32) #1

declare %struct._GdkAtom* @gdk_atom_intern(i8*, i32) #1

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
