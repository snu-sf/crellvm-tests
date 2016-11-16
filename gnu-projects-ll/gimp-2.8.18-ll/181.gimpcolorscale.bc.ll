; ModuleID = './libgimpwidgets/gimpcolorscale.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorScaleClass = type { %struct._GtkScaleClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkScaleClass = type { %struct._GtkRangeClass, i8* (%struct._GtkScale*, double)*, void (%struct._GtkScale*)*, void (%struct._GtkScale*, i32*, i32*)*, void ()*, void ()*, void ()* }
%struct._GtkRangeClass = type { %struct._GtkWidgetClass, i8*, i8*, void (%struct._GtkRange*)*, void (%struct._GtkRange*, double)*, void (%struct._GtkRange*, i32)*, void (%struct._GtkRange*, %struct._GtkBorder*)*, i32 (%struct._GtkRange*, i32, double)*, void ()*, void ()*, void ()* }
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
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkBorder = type { i32, i32, i32, i32 }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GimpColorScale = type { %struct._GtkScale, i32, %struct._GimpRGB, %struct._GimpHSV, i8*, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSV = type { double, double, double, double }
%struct._GtkOrientable = type opaque
%struct._cairo_surface = type opaque
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_color_scale_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpColorScale\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_scale_set_channel = private unnamed_addr constant [29 x i8] c"gimp_color_scale_set_channel\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_IS_COLOR_SCALE (scale)\00", align 1
@__func__.gimp_color_scale_set_color = private unnamed_addr constant [27 x i8] c"gimp_color_scale_set_color\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"rgb != NULL\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"hsv != NULL\00", align 1
@gimp_color_scale_parent_class = internal global i8* null, align 8
@GimpColorScale_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"gimpcolorscale.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"trough-border\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"focus-line-width\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"focus-padding\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"trough\00", align 1
@gimp_color_scale_render_alpha.light = private unnamed_addr constant [4 x i8] c"\FF\FF\FF\FF", align 1
@gimp_color_scale_render_alpha.dark = private unnamed_addr constant [4 x i8] c"\FF\FF\FF\FF", align 1
@gimp_color_scale_render_stipple.insensitive = private unnamed_addr constant [4 x i8] c"\FF\FF\FF\FF", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_scale_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_scale_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_scale_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_scale_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 880, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_scale_class_intern_init to void (i8*, i8*)*), i32 296, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorScale*)* @gimp_color_scale_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_scale_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_scale_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_scale_parent_class, align 8
  %1 = load i32, i32* @GimpColorScale_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorScale_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorScaleClass*
  call void @gimp_color_scale_class_init(%struct._GimpColorScaleClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_init(%struct._GimpColorScale* %scale) #3 {
entry:
  %scale.addr = alloca %struct._GimpColorScale*, align 8
  %range = alloca %struct._GtkRange*, align 8
  store %struct._GimpColorScale* %scale, %struct._GimpColorScale** %scale.addr, align 8
  %0 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpColorScale* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_range_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkRange*
  store %struct._GtkRange* %2, %struct._GtkRange** %range, align 8
  %3 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  call void @gtk_range_set_slider_size_fixed(%struct._GtkRange* %3, i32 1)
  %4 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %5 = bitcast %struct._GimpColorScale* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_range_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkRange*
  call void @gtk_range_set_flippable(%struct._GtkRange* %6, i32 1)
  %7 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %8 = bitcast %struct._GimpColorScale* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_scale_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %9, i32 0)
  %10 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %channel = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %10, i32 0, i32 1
  store i32 2, i32* %channel, align 4
  %11 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %11, i32 0, i32 8
  store i32 1, i32* %needs_render, align 4
  %12 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %13 = bitcast %struct._GtkRange* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_orientable_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %14, i32 0)
  %15 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rgb = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %15, i32 0, i32 2
  call void @gimp_rgba_set(%struct._GimpRGB* %rgb, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %16 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rgb8 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %16, i32 0, i32 2
  %17 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %hsv = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %17, i32 0, i32 3
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %rgb8, %struct._GimpHSV* %hsv)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_scale_new(i32 %orientation, i32 %channel) #3 {
entry:
  %orientation.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %scale = alloca %struct._GimpColorScale*, align 8
  store i32 %orientation, i32* %orientation.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  %call = call i64 @gimp_color_scale_get_type() #6
  %0 = load i32, i32* %orientation.addr, align 4
  %1 = load i32, i32* %channel.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._GimpColorScale*
  store %struct._GimpColorScale* %2, %struct._GimpColorScale** %scale, align 8
  %3 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %4 = bitcast %struct._GimpColorScale* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_range_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkRange*
  %6 = load i32, i32* %orientation.addr, align 4
  %cmp = icmp eq i32 %6, 0
  %conv = zext i1 %cmp to i32
  call void @gtk_range_set_flippable(%struct._GtkRange* %5, i32 %conv)
  %7 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %8 = bitcast %struct._GimpColorScale* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  ret %struct._GtkWidget* %9
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gtk_range_set_flippable(%struct._GtkRange*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_range_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_color_scale_set_channel(%struct._GimpColorScale* %scale, i32 %channel) #3 {
entry:
  %scale.addr = alloca %struct._GimpColorScale*, align 8
  %channel.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorScale* %scale, %struct._GimpColorScale** %scale.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpColorScale* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_scale_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_scale_set_channel, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %channel.addr, align 4
  %14 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %channel11 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %14, i32 0, i32 1
  %15 = load i32, i32* %channel11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %channel.addr, align 4
  %17 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %channel14 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %17, i32 0, i32 1
  store i32 %16, i32* %channel14, align 4
  %18 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %18, i32 0, i32 8
  store i32 1, i32* %needs_render, align 4
  %19 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %20 = bitcast %struct._GimpColorScale* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %21)
  %22 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %23 = bitcast %struct._GimpColorScale* %22 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_scale_set_color(%struct._GimpColorScale* %scale, %struct._GimpRGB* %rgb, %struct._GimpHSV* %hsv) #3 {
entry:
  %scale.addr = alloca %struct._GimpColorScale*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorScale* %scale, %struct._GimpColorScale** %scale.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpColorScale* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_scale_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_scale_set_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_scale_set_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %cmp18 = icmp ne %struct._GimpHSV* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_color_scale_set_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rgb23 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %15, i32 0, i32 2
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %17 = bitcast %struct._GimpRGB* %rgb23 to i8*
  %18 = bitcast %struct._GimpRGB* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  %19 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %hsv24 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %19, i32 0, i32 3
  %20 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %21 = bitcast %struct._GimpHSV* %hsv24 to i8*
  %22 = bitcast %struct._GimpHSV* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %23, i32 0, i32 8
  store i32 1, i32* %needs_render, align 4
  %24 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %25 = bitcast %struct._GimpColorScale* %24 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_widget_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call25)
  %26 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %26)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_class_init(%struct._GimpColorScaleClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorScaleClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpColorScaleClass* %klass, %struct._GimpColorScaleClass** %klass.addr, align 8
  %0 = load %struct._GimpColorScaleClass*, %struct._GimpColorScaleClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorScaleClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorScaleClass*, %struct._GimpColorScaleClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorScaleClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_scale_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_scale_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_scale_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_color_scale_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %state_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 14
  store void (%struct._GtkWidget*, i32)* @gimp_color_scale_state_changed, void (%struct._GtkWidget*, i32)** %state_changed, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_color_scale_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 26
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_color_scale_button_release, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_color_scale_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_color_selector_channel_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 2, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 1, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %scale = alloca %struct._GimpColorScale*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scale_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScale*
  store %struct._GimpColorScale* %2, %struct._GimpColorScale** %scale, align 8
  %3 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %buf = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %3, i32 0, i32 4
  %4 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %buf2 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %5, i32 0, i32 4
  %6 = load i8*, i8** %buf2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %buf3 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %7, i32 0, i32 4
  store i8* null, i8** %buf3, align 8
  %8 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %width = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %8, i32 0, i32 5
  store i32 0, i32* %width, align 4
  %9 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %height = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %9, i32 0, i32 6
  store i32 0, i32* %height, align 4
  %10 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %10, i32 0, i32 7
  store i32 0, i32* %rowstride, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** @gimp_color_scale_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %scale = alloca %struct._GimpColorScale*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scale_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScale*
  store %struct._GimpColorScale* %2, %struct._GimpColorScale** %scale, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %channel = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %5, i32 0, i32 1
  %6 = load i32, i32* %channel, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
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
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %scale = alloca %struct._GimpColorScale*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scale_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScale*
  store %struct._GimpColorScale* %2, %struct._GimpColorScale** %scale, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %5)
  call void @gimp_color_scale_set_channel(%struct._GimpColorScale* %4, i32 %call2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %scale = alloca %struct._GimpColorScale*, align 8
  %range = alloca %struct._GtkRange*, align 8
  %range_rect = alloca %struct._GdkRectangle, align 4
  %focus = alloca i32, align 4
  %trough_border = alloca i32, align 4
  %scale_width = alloca i32, align 4
  %scale_height = alloca i32, align 4
  %focus_padding = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scale_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScale*
  store %struct._GimpColorScale* %2, %struct._GimpColorScale** %scale, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_range_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkRange*
  store %struct._GtkRange* %5, %struct._GtkRange** %range, align 8
  store i32 0, i32* %focus, align 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32* %trough_border, i8* null)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call i32 @gtk_widget_get_can_focus(%struct._GtkWidget* %7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %focus_padding, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32* %focus, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32* %focus_padding, i8* null)
  %9 = load i32, i32* %focus_padding, align 4
  %10 = load i32, i32* %focus, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %focus, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %12, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %14 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %14, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %16, i32 0, i32 2
  %17 = load i32, i32* %width5, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 3
  %19 = load i32, i32* %height6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %19, %cond.false ]
  %20 = load i32, i32* %focus, align 4
  %mul = mul nsw i32 2, %20
  %sub = sub nsw i32 %cond, %mul
  %div = sdiv i32 %sub, 2
  call void @gtk_range_set_min_slider_size(%struct._GtkRange* %11, i32 %div)
  %21 = load i8*, i8** @gimp_color_scale_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 %call7)
  %23 = bitcast %struct._GTypeClass* %call8 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %23, i32 0, i32 13
  %24 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %tobool9 = icmp ne void (%struct._GtkWidget*, %struct._GdkRectangle*)* %24, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %cond.end
  %25 = load i8*, i8** @gimp_color_scale_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 %call11)
  %27 = bitcast %struct._GTypeClass* %call12 to %struct._GtkWidgetClass*
  %size_allocate13 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %27, i32 0, i32 13
  %28 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate13, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %30 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %28(%struct._GtkWidget* %29, %struct._GdkRectangle* %30)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %cond.end
  %31 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  call void @gtk_range_get_range_rect(%struct._GtkRange* %31, %struct._GdkRectangle* %range_rect)
  %width15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 2
  %32 = load i32, i32* %width15, align 4
  %33 = load i32, i32* %focus, align 4
  %34 = load i32, i32* %trough_border, align 4
  %add16 = add nsw i32 %33, %34
  %mul17 = mul nsw i32 2, %add16
  %sub18 = sub nsw i32 %32, %mul17
  store i32 %sub18, i32* %scale_width, align 4
  %height19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 3
  %35 = load i32, i32* %height19, align 4
  %36 = load i32, i32* %focus, align 4
  %37 = load i32, i32* %trough_border, align 4
  %add20 = add nsw i32 %36, %37
  %mul21 = mul nsw i32 2, %add20
  %sub22 = sub nsw i32 %35, %mul21
  store i32 %sub22, i32* %scale_height, align 4
  %38 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %39 = bitcast %struct._GtkRange* %38 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_orientable_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call23)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkOrientable*
  %call25 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %40)
  switch i32 %call25, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.end.14
  %41 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %call26 = call i32 @gtk_range_get_min_slider_size(%struct._GtkRange* %41)
  %sub27 = sub nsw i32 %call26, 1
  %42 = load i32, i32* %scale_width, align 4
  %sub28 = sub nsw i32 %42, %sub27
  store i32 %sub28, i32* %scale_width, align 4
  %43 = load i32, i32* %scale_height, align 4
  %sub29 = sub nsw i32 %43, 2
  store i32 %sub29, i32* %scale_height, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.14
  %44 = load i32, i32* %scale_width, align 4
  %sub31 = sub nsw i32 %44, 2
  store i32 %sub31, i32* %scale_width, align 4
  %45 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %call32 = call i32 @gtk_range_get_min_slider_size(%struct._GtkRange* %45)
  %sub33 = sub nsw i32 %call32, 1
  %46 = load i32, i32* %scale_height, align 4
  %sub34 = sub nsw i32 %46, %sub33
  store i32 %sub34, i32* %scale_height, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %sw.bb.30, %sw.bb
  %47 = load i32, i32* %scale_width, align 4
  %48 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %width35 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %48, i32 0, i32 5
  %49 = load i32, i32* %width35, align 4
  %cmp36 = icmp ne i32 %47, %49
  br i1 %cmp36, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %50 = load i32, i32* %scale_height, align 4
  %51 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %height37 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %51, i32 0, i32 6
  %52 = load i32, i32* %height37, align 4
  %cmp38 = icmp ne i32 %50, %52
  br i1 %cmp38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %lor.lhs.false, %sw.epilog
  %53 = load i32, i32* %scale_width, align 4
  %54 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %width40 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %54, i32 0, i32 5
  store i32 %53, i32* %width40, align 4
  %55 = load i32, i32* %scale_height, align 4
  %56 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %height41 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %56, i32 0, i32 6
  store i32 %55, i32* %height41, align 4
  %57 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %width42 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %57, i32 0, i32 5
  %58 = load i32, i32* %width42, align 4
  %mul43 = mul i32 %58, 4
  %59 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %59, i32 0, i32 7
  store i32 %mul43, i32* %rowstride, align 4
  %60 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %buf = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %60, i32 0, i32 4
  %61 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %61)
  %62 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %rowstride44 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %62, i32 0, i32 7
  %63 = load i32, i32* %rowstride44, align 4
  %64 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %height45 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %64, i32 0, i32 6
  %65 = load i32, i32* %height45, align 4
  %mul46 = mul i32 %63, %65
  %conv = zext i32 %mul46 to i64
  %call47 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %66 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %buf48 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %66, i32 0, i32 4
  store i8* %call47, i8** %buf48, align 8
  %67 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %67, i32 0, i32 8
  store i32 1, i32* %needs_render, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.39, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_state_changed(%struct._GtkWidget* %widget, i32 %previous_state) #3 {
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
  %call2 = call i64 @gimp_color_scale_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorScale*
  %needs_render = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %4, i32 0, i32 8
  store i32 1, i32* %needs_render, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i8*, i8** @gimp_color_scale_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call4)
  %7 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %state_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %7, i32 0, i32 14
  %8 = load void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)** %state_changed, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, i32)* %8, null
  br i1 %tobool, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %9 = load i8*, i8** @gimp_color_scale_parent_class, align 8
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
define internal i32 @gimp_color_scale_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %my_event = alloca %struct._GdkEventButton*, align 8
  %retval1 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %3 = bitcast %struct._GdkEventButton* %2 to %union._GdkEvent*
  %call = call %union._GdkEvent* @gdk_event_copy(%union._GdkEvent* %3)
  %4 = bitcast %union._GdkEvent* %call to %struct._GdkEventButton*
  store %struct._GdkEventButton* %4, %struct._GdkEventButton** %my_event, align 8
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %my_event, align 8
  %button2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  store i32 2, i32* %button2, align 4
  %6 = load i8*, i8** @gimp_color_scale_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 25
  %9 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %my_event, align 8
  %call5 = call i32 %9(%struct._GtkWidget* %10, %struct._GdkEventButton* %11)
  store i32 %call5, i32* %retval1, align 4
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %my_event, align 8
  %13 = bitcast %struct._GdkEventButton* %12 to %union._GdkEvent*
  call void @gdk_event_free(%union._GdkEvent* %13)
  %14 = load i32, i32* %retval1, align 4
  store i32 %14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** @gimp_color_scale_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call6)
  %17 = bitcast %struct._GTypeClass* %call7 to %struct._GtkWidgetClass*
  %button_press_event8 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 25
  %18 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event8, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %call9 = call i32 %18(%struct._GtkWidget* %19, %struct._GdkEventButton* %20)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_scale_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %my_event = alloca %struct._GdkEventButton*, align 8
  %retval1 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %3 = bitcast %struct._GdkEventButton* %2 to %union._GdkEvent*
  %call = call %union._GdkEvent* @gdk_event_copy(%union._GdkEvent* %3)
  %4 = bitcast %union._GdkEvent* %call to %struct._GdkEventButton*
  store %struct._GdkEventButton* %4, %struct._GdkEventButton** %my_event, align 8
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %my_event, align 8
  %button2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  store i32 2, i32* %button2, align 4
  %6 = load i8*, i8** @gimp_color_scale_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 26
  %9 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %my_event, align 8
  %call5 = call i32 %9(%struct._GtkWidget* %10, %struct._GdkEventButton* %11)
  store i32 %call5, i32* %retval1, align 4
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %my_event, align 8
  %13 = bitcast %struct._GdkEventButton* %12 to %union._GdkEvent*
  call void @gdk_event_free(%union._GdkEvent* %13)
  %14 = load i32, i32* %retval1, align 4
  store i32 %14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** @gimp_color_scale_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call6)
  %17 = bitcast %struct._GTypeClass* %call7 to %struct._GtkWidgetClass*
  %button_release_event8 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 26
  %18 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event8, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %call9 = call i32 %18(%struct._GtkWidget* %19, %struct._GdkEventButton* %20)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_scale_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %scale = alloca %struct._GimpColorScale*, align 8
  %range = alloca %struct._GtkRange*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %sensitive = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %range_rect = alloca %struct._GdkRectangle, align 4
  %area = alloca %struct._GdkRectangle, align 4
  %buffer = alloca %struct._cairo_surface*, align 8
  %focus = alloca i32, align 4
  %trough_border = alloca i32, align 4
  %slider_start = alloca i32, align 4
  %slider_size = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %cr = alloca %struct._cairo*, align 8
  %focus_padding = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_scale_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorScale*
  store %struct._GimpColorScale* %2, %struct._GimpColorScale** %scale, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_range_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkRange*
  store %struct._GtkRange* %5, %struct._GtkRange** %range, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %6)
  store %struct._GtkStyle* %call4, %struct._GtkStyle** %style, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call5 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %7)
  store %struct._GdkDrawable* %call5, %struct._GdkDrawable** %window, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call6 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %8)
  store i32 %call6, i32* %sensitive, align 4
  %9 = bitcast %struct._GdkRectangle* %area to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 4, i1 false)
  store i32 0, i32* %focus, align 4
  %10 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %buf = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %10, i32 0, i32 4
  %11 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %13, %struct._GdkRectangle* %allocation)
  %14 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call9 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %14)
  store %struct._cairo* %call9, %struct._cairo** %cr, align 8
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %16 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %16, i32 0, i32 4
  %17 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %15, %struct._GdkRegion* %17)
  %18 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %19 = load i32, i32* %x10, align 4
  %conv = sitofp i32 %19 to double
  %y11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %20 = load i32, i32* %y11, align 4
  %conv12 = sitofp i32 %20 to double
  call void @cairo_translate(%struct._cairo* %18, double %conv, double %conv12)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32* %trough_border, i8* null)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call13 = call i32 @gtk_widget_get_can_focus(%struct._GtkWidget* %23)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %focus_padding, align 4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32* %focus, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32* %focus_padding, i8* null)
  %25 = load i32, i32* %focus_padding, align 4
  %26 = load i32, i32* %focus, align 4
  %add = add nsw i32 %26, %25
  store i32 %add, i32* %focus, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %27 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  call void @gtk_range_get_range_rect(%struct._GtkRange* %27, %struct._GdkRectangle* %range_rect)
  %28 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  call void @gtk_range_get_slider_range(%struct._GtkRange* %28, i32* %slider_start, i32* null)
  %x17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 0
  %29 = load i32, i32* %x17, align 4
  %30 = load i32, i32* %focus, align 4
  %add18 = add nsw i32 %29, %30
  store i32 %add18, i32* %x, align 4
  %y19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 1
  %31 = load i32, i32* %y19, align 4
  %32 = load i32, i32* %focus, align 4
  %add20 = add nsw i32 %31, %32
  store i32 %add20, i32* %y, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 2
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %focus, align 4
  %mul = mul nsw i32 2, %34
  %sub = sub nsw i32 %33, %mul
  store i32 %sub, i32* %w, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 3
  %35 = load i32, i32* %height, align 4
  %36 = load i32, i32* %focus, align 4
  %mul21 = mul nsw i32 2, %36
  %sub22 = sub nsw i32 %35, %mul21
  store i32 %sub22, i32* %h, align 4
  %37 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %call23 = call i32 @gtk_range_get_min_slider_size(%struct._GtkRange* %37)
  %div = sdiv i32 %call23, 2
  store i32 %div, i32* %slider_size, align 4
  %38 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %needs_render = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %38, i32 0, i32 8
  %39 = load i32, i32* %needs_render, align 4
  %tobool24 = icmp ne i32 %39, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.16
  %40 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  call void @gimp_color_scale_render(%struct._GimpColorScale* %40)
  %41 = load i32, i32* %sensitive, align 4
  %tobool26 = icmp ne i32 %41, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.25
  %42 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  call void @gimp_color_scale_render_stipple(%struct._GimpColorScale* %42)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.25
  %43 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %needs_render29 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %43, i32 0, i32 8
  store i32 0, i32* %needs_render29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %if.end.16
  %44 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %45 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %46 = load i32, i32* %sensitive, align 4
  %tobool31 = icmp ne i32 %46, 0
  %cond = select i1 %tobool31, i32 1, i32 4
  %47 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area32 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %47, i32 0, i32 3
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %49 = load i32, i32* %x, align 4
  %x33 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %50 = load i32, i32* %x33, align 4
  %add34 = add nsw i32 %49, %50
  %51 = load i32, i32* %y, align 4
  %y35 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %52 = load i32, i32* %y35, align 4
  %add36 = add nsw i32 %51, %52
  %53 = load i32, i32* %w, align 4
  %54 = load i32, i32* %h, align 4
  call void @gtk_paint_box(%struct._GtkStyle* %44, %struct._GdkDrawable* %45, i32 %cond, i32 1, %struct._GdkRectangle* %area32, %struct._GtkWidget* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 %add34, i32 %add36, i32 %53, i32 %54)
  %55 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %buf37 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %55, i32 0, i32 4
  %56 = load i8*, i8** %buf37, align 8
  %57 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %width38 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %57, i32 0, i32 5
  %58 = load i32, i32* %width38, align 4
  %59 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %height39 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %59, i32 0, i32 6
  %60 = load i32, i32* %height39, align 4
  %61 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %61, i32 0, i32 7
  %62 = load i32, i32* %rowstride, align 4
  %call40 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %56, i32 1, i32 %58, i32 %60, i32 %62)
  store %struct._cairo_surface* %call40, %struct._cairo_surface** %buffer, align 8
  %63 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %64 = bitcast %struct._GtkRange* %63 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_orientable_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call41)
  %65 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkOrientable*
  %call43 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %65)
  switch i32 %call43, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end.30
  %66 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %67 = load %struct._cairo_surface*, %struct._cairo_surface** %buffer, align 8
  %68 = load i32, i32* %x, align 4
  %69 = load i32, i32* %trough_border, align 4
  %add44 = add nsw i32 %68, %69
  %70 = load i32, i32* %slider_size, align 4
  %add45 = add nsw i32 %add44, %70
  %conv46 = sitofp i32 %add45 to double
  %71 = load i32, i32* %y, align 4
  %72 = load i32, i32* %trough_border, align 4
  %add47 = add nsw i32 %71, %72
  %add48 = add nsw i32 %add47, 1
  %conv49 = sitofp i32 %add48 to double
  call void @cairo_set_source_surface(%struct._cairo* %66, %struct._cairo_surface* %67, double %conv46, double %conv49)
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.30
  %73 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %74 = load %struct._cairo_surface*, %struct._cairo_surface** %buffer, align 8
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* %trough_border, align 4
  %add51 = add nsw i32 %75, %76
  %add52 = add nsw i32 %add51, 1
  %conv53 = sitofp i32 %add52 to double
  %77 = load i32, i32* %y, align 4
  %78 = load i32, i32* %trough_border, align 4
  %add54 = add nsw i32 %77, %78
  %79 = load i32, i32* %slider_size, align 4
  %add55 = add nsw i32 %add54, %79
  %conv56 = sitofp i32 %add55 to double
  call void @cairo_set_source_surface(%struct._cairo* %73, %struct._cairo_surface* %74, double %conv53, double %conv56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.30, %sw.bb.50, %sw.bb
  %80 = load %struct._cairo_surface*, %struct._cairo_surface** %buffer, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %80)
  %81 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call57 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %82)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %sw.epilog
  %83 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %84 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call60 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %85)
  %86 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %area61 = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %86, i32 0, i32 3
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %x62 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 0
  %88 = load i32, i32* %x62, align 4
  %x63 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %89 = load i32, i32* %x63, align 4
  %add64 = add nsw i32 %88, %89
  %y65 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 1
  %90 = load i32, i32* %y65, align 4
  %y66 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %91 = load i32, i32* %y66, align 4
  %add67 = add nsw i32 %90, %91
  %width68 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 2
  %92 = load i32, i32* %width68, align 4
  %height69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %range_rect, i32 0, i32 3
  %93 = load i32, i32* %height69, align 4
  call void @gtk_paint_focus(%struct._GtkStyle* %83, %struct._GdkDrawable* %84, i32 %call60, %struct._GdkRectangle* %area61, %struct._GtkWidget* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 %add64, i32 %add67, i32 %92, i32 %93)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.59, %sw.epilog
  %94 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %95 = bitcast %struct._GtkRange* %94 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_orientable_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call71)
  %96 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkOrientable*
  %call73 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %96)
  switch i32 %call73, label %sw.epilog.94 [
    i32 0, label %sw.bb.74
    i32 1, label %sw.bb.84
  ]

sw.bb.74:                                         ; preds = %if.end.70
  %97 = load i32, i32* %slider_start, align 4
  %x75 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  store i32 %97, i32* %x75, align 4
  %98 = load i32, i32* %y, align 4
  %99 = load i32, i32* %trough_border, align 4
  %add76 = add nsw i32 %98, %99
  %y77 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  store i32 %add76, i32* %y77, align 4
  %100 = load i32, i32* %slider_size, align 4
  %mul78 = mul nsw i32 2, %100
  %add79 = add nsw i32 %mul78, 1
  %width80 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  store i32 %add79, i32* %width80, align 4
  %101 = load i32, i32* %h, align 4
  %102 = load i32, i32* %trough_border, align 4
  %mul81 = mul nsw i32 2, %102
  %sub82 = sub nsw i32 %101, %mul81
  %height83 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  store i32 %sub82, i32* %height83, align 4
  br label %sw.epilog.94

sw.bb.84:                                         ; preds = %if.end.70
  %103 = load i32, i32* %x, align 4
  %104 = load i32, i32* %trough_border, align 4
  %add85 = add nsw i32 %103, %104
  %x86 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  store i32 %add85, i32* %x86, align 4
  %105 = load i32, i32* %slider_start, align 4
  %y87 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  store i32 %105, i32* %y87, align 4
  %106 = load i32, i32* %w, align 4
  %107 = load i32, i32* %trough_border, align 4
  %mul88 = mul nsw i32 2, %107
  %sub89 = sub nsw i32 %106, %mul88
  %width90 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  store i32 %sub89, i32* %width90, align 4
  %108 = load i32, i32* %slider_size, align 4
  %mul91 = mul nsw i32 2, %108
  %add92 = add nsw i32 %mul91, 1
  %height93 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  store i32 %add92, i32* %height93, align 4
  br label %sw.epilog.94

sw.epilog.94:                                     ; preds = %if.end.70, %sw.bb.84, %sw.bb.74
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call95 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %109)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.else

if.then.97:                                       ; preds = %sw.epilog.94
  %110 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %111 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %111, i32 0, i32 9
  call void @gdk_cairo_set_source_color(%struct._cairo* %110, %struct._GdkColor* %black)
  br label %if.end.98

if.else:                                          ; preds = %sw.epilog.94
  %112 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %113 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %dark = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %113, i32 0, i32 4
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %dark, i32 0, i64 4
  call void @gdk_cairo_set_source_color(%struct._cairo* %112, %struct._GdkColor* %arrayidx)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.then.97
  %114 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %115 = bitcast %struct._GtkRange* %114 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_orientable_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call99)
  %116 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkOrientable*
  %call101 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %116)
  switch i32 %call101, label %sw.epilog.146 [
    i32 0, label %sw.bb.102
    i32 1, label %sw.bb.124
  ]

sw.bb.102:                                        ; preds = %if.end.98
  %117 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x103 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %118 = load i32, i32* %x103, align 4
  %conv104 = sitofp i32 %118 to double
  %y105 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %119 = load i32, i32* %y105, align 4
  %conv106 = sitofp i32 %119 to double
  call void @cairo_move_to(%struct._cairo* %117, double %conv104, double %conv106)
  %120 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x107 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %121 = load i32, i32* %x107, align 4
  %width108 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %122 = load i32, i32* %width108, align 4
  %add109 = add nsw i32 %121, %122
  %conv110 = sitofp i32 %add109 to double
  %y111 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %123 = load i32, i32* %y111, align 4
  %conv112 = sitofp i32 %123 to double
  call void @cairo_line_to(%struct._cairo* %120, double %conv110, double %conv112)
  %124 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x113 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %125 = load i32, i32* %x113, align 4
  %width114 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %126 = load i32, i32* %width114, align 4
  %div115 = sdiv i32 %126, 2
  %add116 = add nsw i32 %125, %div115
  %conv117 = sitofp i32 %add116 to double
  %add118 = fadd double %conv117, 5.000000e-01
  %y119 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %127 = load i32, i32* %y119, align 4
  %width120 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %128 = load i32, i32* %width120, align 4
  %div121 = sdiv i32 %128, 2
  %add122 = add nsw i32 %127, %div121
  %conv123 = sitofp i32 %add122 to double
  call void @cairo_line_to(%struct._cairo* %124, double %add118, double %conv123)
  br label %sw.epilog.146

sw.bb.124:                                        ; preds = %if.end.98
  %129 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x125 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %130 = load i32, i32* %x125, align 4
  %conv126 = sitofp i32 %130 to double
  %y127 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %131 = load i32, i32* %y127, align 4
  %conv128 = sitofp i32 %131 to double
  call void @cairo_move_to(%struct._cairo* %129, double %conv126, double %conv128)
  %132 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x129 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %133 = load i32, i32* %x129, align 4
  %conv130 = sitofp i32 %133 to double
  %y131 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %134 = load i32, i32* %y131, align 4
  %height132 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %135 = load i32, i32* %height132, align 4
  %add133 = add nsw i32 %134, %135
  %conv134 = sitofp i32 %add133 to double
  call void @cairo_line_to(%struct._cairo* %132, double %conv130, double %conv134)
  %136 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x135 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %137 = load i32, i32* %x135, align 4
  %height136 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %138 = load i32, i32* %height136, align 4
  %div137 = sdiv i32 %138, 2
  %add138 = add nsw i32 %137, %div137
  %conv139 = sitofp i32 %add138 to double
  %y140 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %139 = load i32, i32* %y140, align 4
  %height141 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %140 = load i32, i32* %height141, align 4
  %div142 = sdiv i32 %140, 2
  %add143 = add nsw i32 %139, %div142
  %conv144 = sitofp i32 %add143 to double
  %add145 = fadd double %conv144, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %136, double %conv139, double %add145)
  br label %sw.epilog.146

sw.epilog.146:                                    ; preds = %if.end.98, %sw.bb.124, %sw.bb.102
  %141 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_close_path(%struct._cairo* %141)
  %142 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %142)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call147 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %143)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %sw.epilog.146
  %144 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %145 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %white = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %145, i32 0, i32 10
  call void @gdk_cairo_set_source_color(%struct._cairo* %144, %struct._GdkColor* %white)
  br label %if.end.152

if.else.150:                                      ; preds = %sw.epilog.146
  %146 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %147 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %light = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %147, i32 0, i32 3
  %arrayidx151 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %light, i32 0, i64 4
  call void @gdk_cairo_set_source_color(%struct._cairo* %146, %struct._GdkColor* %arrayidx151)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.150, %if.then.149
  %148 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %149 = bitcast %struct._GtkRange* %148 to %struct._GTypeInstance*
  %call153 = call i64 @gtk_orientable_get_type() #6
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call153)
  %150 = bitcast %struct._GTypeInstance* %call154 to %struct._GtkOrientable*
  %call155 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %150)
  switch i32 %call155, label %sw.epilog.212 [
    i32 0, label %sw.bb.156
    i32 1, label %sw.bb.184
  ]

sw.bb.156:                                        ; preds = %if.end.152
  %151 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x157 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %152 = load i32, i32* %x157, align 4
  %conv158 = sitofp i32 %152 to double
  %y159 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %153 = load i32, i32* %y159, align 4
  %height160 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %154 = load i32, i32* %height160, align 4
  %add161 = add nsw i32 %153, %154
  %conv162 = sitofp i32 %add161 to double
  call void @cairo_move_to(%struct._cairo* %151, double %conv158, double %conv162)
  %155 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x163 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %156 = load i32, i32* %x163, align 4
  %width164 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %157 = load i32, i32* %width164, align 4
  %add165 = add nsw i32 %156, %157
  %conv166 = sitofp i32 %add165 to double
  %y167 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %158 = load i32, i32* %y167, align 4
  %height168 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %159 = load i32, i32* %height168, align 4
  %add169 = add nsw i32 %158, %159
  %conv170 = sitofp i32 %add169 to double
  call void @cairo_line_to(%struct._cairo* %155, double %conv166, double %conv170)
  %160 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x171 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %161 = load i32, i32* %x171, align 4
  %width172 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %162 = load i32, i32* %width172, align 4
  %div173 = sdiv i32 %162, 2
  %add174 = add nsw i32 %161, %div173
  %conv175 = sitofp i32 %add174 to double
  %add176 = fadd double %conv175, 5.000000e-01
  %y177 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %163 = load i32, i32* %y177, align 4
  %height178 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %164 = load i32, i32* %height178, align 4
  %add179 = add nsw i32 %163, %164
  %width180 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %165 = load i32, i32* %width180, align 4
  %div181 = sdiv i32 %165, 2
  %sub182 = sub nsw i32 %add179, %div181
  %conv183 = sitofp i32 %sub182 to double
  call void @cairo_line_to(%struct._cairo* %160, double %add176, double %conv183)
  br label %sw.epilog.212

sw.bb.184:                                        ; preds = %if.end.152
  %166 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x185 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %167 = load i32, i32* %x185, align 4
  %width186 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %168 = load i32, i32* %width186, align 4
  %add187 = add nsw i32 %167, %168
  %conv188 = sitofp i32 %add187 to double
  %y189 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %169 = load i32, i32* %y189, align 4
  %conv190 = sitofp i32 %169 to double
  call void @cairo_move_to(%struct._cairo* %166, double %conv188, double %conv190)
  %170 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x191 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %171 = load i32, i32* %x191, align 4
  %width192 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %172 = load i32, i32* %width192, align 4
  %add193 = add nsw i32 %171, %172
  %conv194 = sitofp i32 %add193 to double
  %y195 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %173 = load i32, i32* %y195, align 4
  %height196 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %174 = load i32, i32* %height196, align 4
  %add197 = add nsw i32 %173, %174
  %conv198 = sitofp i32 %add197 to double
  call void @cairo_line_to(%struct._cairo* %170, double %conv194, double %conv198)
  %175 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x199 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  %176 = load i32, i32* %x199, align 4
  %width200 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  %177 = load i32, i32* %width200, align 4
  %add201 = add nsw i32 %176, %177
  %height202 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %178 = load i32, i32* %height202, align 4
  %div203 = sdiv i32 %178, 2
  %sub204 = sub nsw i32 %add201, %div203
  %conv205 = sitofp i32 %sub204 to double
  %y206 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  %179 = load i32, i32* %y206, align 4
  %height207 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  %180 = load i32, i32* %height207, align 4
  %div208 = sdiv i32 %180, 2
  %add209 = add nsw i32 %179, %div208
  %conv210 = sitofp i32 %add209 to double
  %add211 = fadd double %conv210, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %175, double %conv205, double %add211)
  br label %sw.epilog.212

sw.epilog.212:                                    ; preds = %if.end.152, %sw.bb.184, %sw.bb.156
  %181 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_close_path(%struct._cairo* %181)
  %182 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %182)
  %183 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %183)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.212, %if.then
  %184 = load i32, i32* %retval
  ret i32 %184
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_selector_channel_get_type() #2

declare void @g_free(i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare i32 @gtk_widget_get_can_focus(%struct._GtkWidget*) #1

declare void @gtk_range_set_min_slider_size(%struct._GtkRange*, i32) #1

declare void @gtk_range_get_range_rect(%struct._GtkRange*, %struct._GdkRectangle*) #1

declare i32 @gtk_orientable_get_orientation(%struct._GtkOrientable*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare i32 @gtk_range_get_min_slider_size(%struct._GtkRange*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare %union._GdkEvent* @gdk_event_copy(%union._GdkEvent*) #1

declare void @gdk_event_free(%union._GdkEvent*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gtk_range_get_slider_range(%struct._GtkRange*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_render(%struct._GimpColorScale* %scale) #3 {
entry:
  %scale.addr = alloca %struct._GimpColorScale*, align 8
  %range = alloca %struct._GtkRange*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %channel_value = alloca double*, align 8
  %to_rgb = alloca i32, align 4
  %invert = alloca i32, align 4
  %buf = alloca i8*, align 8
  %d = alloca i8*, align 8
  %value = alloca double, align 8
  %r26 = alloca i8, align 1
  %g27 = alloca i8, align 1
  %b28 = alloca i8, align 1
  %value56 = alloca double, align 8
  %r62 = alloca i8, align 1
  %g63 = alloca i8, align 1
  %b64 = alloca i8, align 1
  store %struct._GimpColorScale* %scale, %struct._GimpColorScale** %scale.addr, align 8
  %0 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpColorScale* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_range_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkRange*
  store %struct._GtkRange* %2, %struct._GtkRange** %range, align 8
  store double* null, double** %channel_value, align 8
  store i32 0, i32* %to_rgb, align 4
  %3 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %buf2 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %3, i32 0, i32 4
  %4 = load i8*, i8** %buf2, align 8
  store i8* %4, i8** %buf, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog.92

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %channel = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %5, i32 0, i32 1
  %6 = load i32, i32* %channel, align 4
  %cmp3 = icmp eq i32 %6, 6
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  call void @gimp_color_scale_render_alpha(%struct._GimpColorScale* %7)
  br label %sw.epilog.92

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rgb6 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %8, i32 0, i32 2
  %9 = bitcast %struct._GimpRGB* %rgb to i8*
  %10 = bitcast %struct._GimpRGB* %rgb6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %hsv7 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %11, i32 0, i32 3
  %12 = bitcast %struct._GimpHSV* %hsv to i8*
  %13 = bitcast %struct._GimpHSV* %hsv7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %channel8 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %14, i32 0, i32 1
  %15 = load i32, i32* %channel8, align 4
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.11
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end.5
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  store double* %h, double** %channel_value, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end.5
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 1
  store double* %s, double** %channel_value, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.5
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 2
  store double* %v, double** %channel_value, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.5
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  store double* %r, double** %channel_value, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end.5
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  store double* %g, double** %channel_value, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.5
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  store double* %b, double** %channel_value, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.5
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 3
  store double* %a, double** %channel_value, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.5, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb
  %16 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %channel15 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %16, i32 0, i32 1
  %17 = load i32, i32* %channel15, align 4
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb.16
    i32 1, label %sw.bb.16
    i32 2, label %sw.bb.16
  ]

sw.bb.16:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  store i32 1, i32* %to_rgb, align 4
  br label %sw.epilog.17

sw.default:                                       ; preds = %sw.epilog
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %sw.default, %sw.bb.16
  %18 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %call18 = call i32 @should_invert(%struct._GtkRange* %18)
  store i32 %call18, i32* %invert, align 4
  %19 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %20 = bitcast %struct._GtkRange* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_orientable_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkOrientable*
  %call21 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %21)
  switch i32 %call21, label %sw.epilog.92 [
    i32 0, label %sw.bb.22
    i32 1, label %sw.bb.50
  ]

sw.bb.22:                                         ; preds = %sw.epilog.17
  store i32 0, i32* %x, align 4
  %22 = load i8*, i8** %buf, align 8
  store i8* %22, i8** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.22
  %23 = load i32, i32* %x, align 4
  %24 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %width = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %24, i32 0, i32 5
  %25 = load i32, i32* %width, align 4
  %cmp23 = icmp ult i32 %23, %25
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %x, align 4
  %conv = uitofp i32 %26 to double
  %27 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %width24 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %27, i32 0, i32 5
  %28 = load i32, i32* %width24, align 4
  %sub = sub i32 %28, 1
  %conv25 = uitofp i32 %sub to double
  %div = fdiv double %conv, %conv25
  store double %div, double* %value, align 8
  %29 = load i32, i32* %invert, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %for.body
  %30 = load double, double* %value, align 8
  %sub30 = fsub double 1.000000e+00, %30
  store double %sub30, double* %value, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %for.body
  %31 = load double, double* %value, align 8
  %32 = load double*, double** %channel_value, align 8
  store double %31, double* %32, align 8
  %33 = load i32, i32* %to_rgb, align 4
  %tobool32 = icmp ne i32 %33, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %rgb)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %rgb, i8* %r26, i8* %g27, i8* %b28)
  br label %do.body

do.body:                                          ; preds = %if.end.34
  %34 = load i8, i8* %b28, align 1
  %35 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 0
  store i8 %34, i8* %arrayidx, align 1
  %36 = load i8, i8* %g27, align 1
  %37 = load i8*, i8** %d, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %36, i8* %arrayidx35, align 1
  %38 = load i8, i8* %r26, align 1
  %39 = load i8*, i8** %d, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %arrayidx36, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %40 = load i32, i32* %x, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %x, align 4
  %41 = load i8*, i8** %d, align 8
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %add.ptr, i8** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i8*, i8** %buf, align 8
  %43 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %43, i32 0, i32 7
  %44 = load i32, i32* %rowstride, align 4
  %idx.ext = zext i32 %44 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr37, i8** %d, align 8
  store i32 1, i32* %y, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.47, %for.end
  %45 = load i32, i32* %y, align 4
  %46 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %height = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %46, i32 0, i32 6
  %47 = load i32, i32* %height, align 4
  %cmp39 = icmp ult i32 %45, %47
  br i1 %cmp39, label %for.body.41, label %for.end.49

for.body.41:                                      ; preds = %for.cond.38
  %48 = load i8*, i8** %d, align 8
  %49 = load i8*, i8** %buf, align 8
  %50 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride42 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %50, i32 0, i32 7
  %51 = load i32, i32* %rowstride42, align 4
  %conv43 = zext i32 %51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %conv43, i32 1, i1 false)
  %52 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride44 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %52, i32 0, i32 7
  %53 = load i32, i32* %rowstride44, align 4
  %54 = load i8*, i8** %d, align 8
  %idx.ext45 = zext i32 %53 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %54, i64 %idx.ext45
  store i8* %add.ptr46, i8** %d, align 8
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.41
  %55 = load i32, i32* %y, align 4
  %inc48 = add i32 %55, 1
  store i32 %inc48, i32* %y, align 4
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  br label %sw.epilog.92

sw.bb.50:                                         ; preds = %sw.epilog.17
  store i32 0, i32* %y, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.89, %sw.bb.50
  %56 = load i32, i32* %y, align 4
  %57 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %height52 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %57, i32 0, i32 6
  %58 = load i32, i32* %height52, align 4
  %cmp53 = icmp ult i32 %56, %58
  br i1 %cmp53, label %for.body.55, label %for.end.91

for.body.55:                                      ; preds = %for.cond.51
  %59 = load i32, i32* %y, align 4
  %conv57 = uitofp i32 %59 to double
  %60 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %height58 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %60, i32 0, i32 6
  %61 = load i32, i32* %height58, align 4
  %sub59 = sub i32 %61, 1
  %conv60 = uitofp i32 %sub59 to double
  %div61 = fdiv double %conv57, %conv60
  store double %div61, double* %value56, align 8
  %62 = load i32, i32* %invert, align 4
  %tobool65 = icmp ne i32 %62, 0
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %for.body.55
  %63 = load double, double* %value56, align 8
  %sub67 = fsub double 1.000000e+00, %63
  store double %sub67, double* %value56, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %for.body.55
  %64 = load double, double* %value56, align 8
  %65 = load double*, double** %channel_value, align 8
  store double %64, double* %65, align 8
  %66 = load i32, i32* %to_rgb, align 4
  %tobool69 = icmp ne i32 %66, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %rgb)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %rgb, i8* %r62, i8* %g63, i8* %b64)
  store i32 0, i32* %x, align 4
  %67 = load i8*, i8** %buf, align 8
  store i8* %67, i8** %d, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.82, %if.end.71
  %68 = load i32, i32* %x, align 4
  %69 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %width73 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %69, i32 0, i32 5
  %70 = load i32, i32* %width73, align 4
  %cmp74 = icmp ult i32 %68, %70
  br i1 %cmp74, label %for.body.76, label %for.end.85

for.body.76:                                      ; preds = %for.cond.72
  br label %do.body.77

do.body.77:                                       ; preds = %for.body.76
  %71 = load i8, i8* %b64, align 1
  %72 = load i8*, i8** %d, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %71, i8* %arrayidx78, align 1
  %73 = load i8, i8* %g63, align 1
  %74 = load i8*, i8** %d, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %73, i8* %arrayidx79, align 1
  %75 = load i8, i8* %r62, align 1
  %76 = load i8*, i8** %d, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %76, i64 2
  store i8 %75, i8* %arrayidx80, align 1
  br label %do.end.81

do.end.81:                                        ; preds = %do.body.77
  br label %for.inc.82

for.inc.82:                                       ; preds = %do.end.81
  %77 = load i32, i32* %x, align 4
  %inc83 = add i32 %77, 1
  store i32 %inc83, i32* %x, align 4
  %78 = load i8*, i8** %d, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %78, i64 4
  store i8* %add.ptr84, i8** %d, align 8
  br label %for.cond.72

for.end.85:                                       ; preds = %for.cond.72
  %79 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride86 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %79, i32 0, i32 7
  %80 = load i32, i32* %rowstride86, align 4
  %81 = load i8*, i8** %buf, align 8
  %idx.ext87 = zext i32 %80 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %81, i64 %idx.ext87
  store i8* %add.ptr88, i8** %buf, align 8
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end.85
  %82 = load i32, i32* %y, align 4
  %inc90 = add i32 %82, 1
  store i32 %inc90, i32* %y, align 4
  br label %for.cond.51

for.end.91:                                       ; preds = %for.cond.51
  br label %sw.epilog.92

sw.epilog.92:                                     ; preds = %if.then, %if.then.4, %sw.epilog.17, %for.end.91, %for.end.49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_render_stipple(%struct._GimpColorScale* %scale) #3 {
entry:
  %scale.addr = alloca %struct._GimpColorScale*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %buf = alloca i8*, align 8
  %insensitive = alloca [4 x i8], align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %d = alloca i8*, align 8
  store %struct._GimpColorScale* %scale, %struct._GimpColorScale** %scale.addr, align 8
  %0 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpColorScale* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = bitcast [4 x i8]* %insensitive to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gimp_color_scale_render_stipple.insensitive, i32 0, i32 0), i64 4, i32 1, i1 false)
  %5 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %buf3 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %5, i32 0, i32 4
  %6 = load i8*, i8** %buf3, align 8
  store i8* %6, i8** %buf, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.37

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 4
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx, i32 0, i32 3
  %8 = load i16, i16* %blue, align 2
  %conv = zext i16 %8 to i32
  %shr = ashr i32 %conv, 8
  %conv4 = trunc i32 %shr to i8
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %insensitive, i32 0, i64 0
  store i8 %conv4, i8* %arrayidx5, align 1
  %9 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg6 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %9, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg6, i32 0, i64 4
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx7, i32 0, i32 2
  %10 = load i16, i16* %green, align 2
  %conv8 = zext i16 %10 to i32
  %shr9 = ashr i32 %conv8, 8
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %insensitive, i32 0, i64 1
  store i8 %conv10, i8* %arrayidx11, align 1
  %11 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg12 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %11, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg12, i32 0, i64 4
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx13, i32 0, i32 1
  %12 = load i16, i16* %red, align 2
  %conv14 = zext i16 %12 to i32
  %shr15 = ashr i32 %conv14, 8
  %conv16 = trunc i32 %shr15 to i8
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %insensitive, i32 0, i64 2
  store i8 %conv16, i8* %arrayidx17, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %do.end
  %13 = load i32, i32* %y, align 4
  %14 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %height = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %14, i32 0, i32 6
  %15 = load i32, i32* %height, align 4
  %cmp18 = icmp ult i32 %13, %15
  br i1 %cmp18, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %buf, align 8
  %17 = load i32, i32* %y, align 4
  %rem = urem i32 %17, 2
  %mul = mul i32 4, %rem
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %x, align 4
  %19 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %width = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %19, i32 0, i32 5
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %y, align 4
  %rem21 = urem i32 %21, 2
  %sub = sub i32 %20, %rem21
  %cmp22 = icmp ult i32 %18, %sub
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.20
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %insensitive, i32 0, i64 0
  %22 = load i8, i8* %arrayidx25, align 1
  %23 = load i8*, i8** %d, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %22, i8* %arrayidx26, align 1
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %insensitive, i32 0, i64 1
  %24 = load i8, i8* %arrayidx27, align 1
  %25 = load i8*, i8** %d, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %24, i8* %arrayidx28, align 1
  %arrayidx29 = getelementptr inbounds [4 x i8], [4 x i8]* %insensitive, i32 0, i64 2
  %26 = load i8, i8* %arrayidx29, align 1
  %27 = load i8*, i8** %d, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %arrayidx30, align 1
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %insensitive, i32 0, i64 3
  %28 = load i8, i8* %arrayidx31, align 1
  %29 = load i8*, i8** %d, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 %28, i8* %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %30 = load i32, i32* %x, align 4
  %add = add i32 %30, 2
  store i32 %add, i32* %x, align 4
  %31 = load i8*, i8** %d, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %31, i64 8
  store i8* %add.ptr33, i8** %d, align 8
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %32 = load i32, i32* %y, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %y, align 4
  %33 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %33, i32 0, i32 7
  %34 = load i32, i32* %rowstride, align 4
  %35 = load i8*, i8** %buf, align 8
  %idx.ext35 = zext i32 %34 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %35, i64 %idx.ext35
  store i8* %add.ptr36, i8** %buf, align 8
  br label %for.cond

for.end.37:                                       ; preds = %if.then, %for.cond
  ret void
}

declare void @gtk_paint_box(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare void @gtk_paint_focus(%struct._GtkStyle*, %struct._GdkDrawable*, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_close_path(%struct._cairo*) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_scale_render_alpha(%struct._GimpColorScale* %scale) #3 {
entry:
  %scale.addr = alloca %struct._GimpColorScale*, align 8
  %range = alloca %struct._GtkRange*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %invert = alloca i32, align 4
  %a = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %buf = alloca i8*, align 8
  %d = alloca i8*, align 8
  %l = alloca i8*, align 8
  %light = alloca i8*, align 8
  %dark = alloca i8*, align 8
  %t = alloca i8*, align 8
  %light82 = alloca [4 x i8], align 1
  %dark83 = alloca [4 x i8], align 1
  store %struct._GimpColorScale* %scale, %struct._GimpColorScale** %scale.addr, align 8
  %0 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %1 = bitcast %struct._GimpColorScale* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_range_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkRange*
  store %struct._GtkRange* %2, %struct._GtkRange** %range, align 8
  %3 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %call2 = call i32 @should_invert(%struct._GtkRange* %3)
  store i32 %call2, i32* %invert, align 4
  %4 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %buf3 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %4, i32 0, i32 4
  %5 = load i8*, i8** %buf3, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rgb4 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %6, i32 0, i32 2
  %7 = bitcast %struct._GimpRGB* %rgb to i8*
  %8 = bitcast %struct._GimpRGB* %rgb4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load %struct._GtkRange*, %struct._GtkRange** %range, align 8
  %10 = bitcast %struct._GtkRange* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_orientable_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkOrientable*
  %call7 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %11)
  switch i32 %call7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %entry
  %12 = load i8*, i8** %buf, align 8
  store i8* %12, i8** %light, align 8
  %13 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %height = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %13, i32 0, i32 6
  %14 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %14, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %15 = load i8*, i8** %buf, align 8
  %16 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %16, i32 0, i32 7
  %17 = load i32, i32* %rowstride, align 4
  %mul = mul i32 4, %17
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %18 = load i8*, i8** %light, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %18, %cond.false ]
  store i8* %cond, i8** %dark, align 8
  store i32 0, i32* %x, align 4
  %19 = load i8*, i8** %light, align 8
  store i8* %19, i8** %d, align 8
  %20 = load i8*, i8** %dark, align 8
  store i8* %20, i8** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %21 = load i32, i32* %x, align 4
  %22 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %width = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %22, i32 0, i32 5
  %23 = load i32, i32* %width, align 4
  %cmp8 = icmp ult i32 %21, %23
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %x, align 4
  %rem = urem i32 %24, 4
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %25 = load i8*, i8** %d, align 8
  store i8* %25, i8** %t, align 8
  %26 = load i8*, i8** %l, align 8
  store i8* %26, i8** %d, align 8
  %27 = load i8*, i8** %t, align 8
  store i8* %27, i8** %l, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %28 = load i32, i32* %x, align 4
  %conv = uitofp i32 %28 to double
  %29 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %width10 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %29, i32 0, i32 5
  %30 = load i32, i32* %width10, align 4
  %sub = sub i32 %30, 1
  %conv11 = uitofp i32 %sub to double
  %div = fdiv double %conv, %conv11
  store double %div, double* %a, align 8
  %31 = load i32, i32* %invert, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %32 = load double, double* %a, align 8
  %sub13 = fsub double 1.000000e+00, %32
  store double %sub13, double* %a, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %33 = load double, double* %b, align 8
  %sub15 = fsub double %33, 6.000000e-01
  %34 = load double, double* %a, align 8
  %mul16 = fmul double %sub15, %34
  %add = fadd double 6.000000e-01, %mul16
  %mul17 = fmul double %add, 2.559990e+02
  %conv18 = fptoui double %mul17 to i8
  %35 = load i8*, i8** %l, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 0
  store i8 %conv18, i8* %arrayidx, align 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %36 = load double, double* %g, align 8
  %sub19 = fsub double %36, 6.000000e-01
  %37 = load double, double* %a, align 8
  %mul20 = fmul double %sub19, %37
  %add21 = fadd double 6.000000e-01, %mul20
  %mul22 = fmul double %add21, 2.559990e+02
  %conv23 = fptoui double %mul22 to i8
  %38 = load i8*, i8** %l, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 %conv23, i8* %arrayidx24, align 1
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %39 = load double, double* %r, align 8
  %sub25 = fsub double %39, 6.000000e-01
  %40 = load double, double* %a, align 8
  %mul26 = fmul double %sub25, %40
  %add27 = fadd double 6.000000e-01, %mul26
  %mul28 = fmul double %add27, 2.559990e+02
  %conv29 = fptoui double %mul28 to i8
  %41 = load i8*, i8** %l, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %41, i64 2
  store i8 %conv29, i8* %arrayidx30, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %42 = load i8*, i8** %l, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %42, i64 4
  store i8* %add.ptr31, i8** %l, align 8
  br label %do.body.32

do.body.32:                                       ; preds = %do.end
  %b33 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %43 = load double, double* %b33, align 8
  %sub34 = fsub double %43, 4.000000e-01
  %44 = load double, double* %a, align 8
  %mul35 = fmul double %sub34, %44
  %add36 = fadd double 4.000000e-01, %mul35
  %mul37 = fmul double %add36, 2.559990e+02
  %conv38 = fptoui double %mul37 to i8
  %45 = load i8*, i8** %d, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %conv38, i8* %arrayidx39, align 1
  %g40 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %46 = load double, double* %g40, align 8
  %sub41 = fsub double %46, 4.000000e-01
  %47 = load double, double* %a, align 8
  %mul42 = fmul double %sub41, %47
  %add43 = fadd double 4.000000e-01, %mul42
  %mul44 = fmul double %add43, 2.559990e+02
  %conv45 = fptoui double %mul44 to i8
  %48 = load i8*, i8** %d, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %conv45, i8* %arrayidx46, align 1
  %r47 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %49 = load double, double* %r47, align 8
  %sub48 = fsub double %49, 4.000000e-01
  %50 = load double, double* %a, align 8
  %mul49 = fmul double %sub48, %50
  %add50 = fadd double 4.000000e-01, %mul49
  %mul51 = fmul double %add50, 2.559990e+02
  %conv52 = fptoui double %mul51 to i8
  %51 = load i8*, i8** %d, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %51, i64 2
  store i8 %conv52, i8* %arrayidx53, align 1
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.32
  %52 = load i8*, i8** %d, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %52, i64 4
  store i8* %add.ptr55, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end.54
  %53 = load i32, i32* %x, align 4
  %inc = add i32 %53, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %y, align 4
  %54 = load i8*, i8** %buf, align 8
  store i8* %54, i8** %d, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.75, %for.end
  %55 = load i32, i32* %y, align 4
  %56 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %height57 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %56, i32 0, i32 6
  %57 = load i32, i32* %height57, align 4
  %cmp58 = icmp ult i32 %55, %57
  br i1 %cmp58, label %for.body.60, label %for.end.80

for.body.60:                                      ; preds = %for.cond.56
  %58 = load i32, i32* %y, align 4
  %cmp61 = icmp eq i32 %58, 0
  br i1 %cmp61, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.60
  %59 = load i32, i32* %y, align 4
  %cmp63 = icmp eq i32 %59, 4
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %lor.lhs.false, %for.body.60
  br label %for.inc.75

if.end.66:                                        ; preds = %lor.lhs.false
  %60 = load i32, i32* %y, align 4
  %div67 = udiv i32 %60, 4
  %and = and i32 %div67, 1
  %tobool68 = icmp ne i32 %and, 0
  br i1 %tobool68, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.end.66
  %61 = load i8*, i8** %d, align 8
  %62 = load i8*, i8** %dark, align 8
  %63 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride70 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %63, i32 0, i32 7
  %64 = load i32, i32* %rowstride70, align 4
  %conv71 = zext i32 %64 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 %conv71, i32 1, i1 false)
  br label %if.end.74

if.else:                                          ; preds = %if.end.66
  %65 = load i8*, i8** %d, align 8
  %66 = load i8*, i8** %light, align 8
  %67 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride72 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %67, i32 0, i32 7
  %68 = load i32, i32* %rowstride72, align 4
  %conv73 = zext i32 %68 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 %conv73, i32 1, i1 false)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.then.69
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74, %if.then.65
  %69 = load i32, i32* %y, align 4
  %inc76 = add i32 %69, 1
  store i32 %inc76, i32* %y, align 4
  %70 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride77 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %70, i32 0, i32 7
  %71 = load i32, i32* %rowstride77, align 4
  %72 = load i8*, i8** %d, align 8
  %idx.ext78 = zext i32 %71 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %72, i64 %idx.ext78
  store i8* %add.ptr79, i8** %d, align 8
  br label %for.cond.56

for.end.80:                                       ; preds = %for.cond.56
  br label %sw.epilog

sw.bb.81:                                         ; preds = %entry
  %73 = bitcast [4 x i8]* %light82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gimp_color_scale_render_alpha.light, i32 0, i32 0), i64 4, i32 1, i1 false)
  %74 = bitcast [4 x i8]* %dark83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gimp_color_scale_render_alpha.dark, i32 0, i32 0), i64 4, i32 1, i1 false)
  store i32 0, i32* %y, align 4
  %75 = load i8*, i8** %buf, align 8
  store i8* %75, i8** %d, align 8
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.176, %sw.bb.81
  %76 = load i32, i32* %y, align 4
  %77 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %height85 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %77, i32 0, i32 6
  %78 = load i32, i32* %height85, align 4
  %cmp86 = icmp ult i32 %76, %78
  br i1 %cmp86, label %for.body.88, label %for.end.181

for.body.88:                                      ; preds = %for.cond.84
  %79 = load i32, i32* %y, align 4
  %conv89 = uitofp i32 %79 to double
  %80 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %height90 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %80, i32 0, i32 6
  %81 = load i32, i32* %height90, align 4
  %sub91 = sub i32 %81, 1
  %conv92 = uitofp i32 %sub91 to double
  %div93 = fdiv double %conv89, %conv92
  store double %div93, double* %a, align 8
  %82 = load i32, i32* %invert, align 4
  %tobool94 = icmp ne i32 %82, 0
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %for.body.88
  %83 = load double, double* %a, align 8
  %sub96 = fsub double 1.000000e+00, %83
  store double %sub96, double* %a, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %for.body.88
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.97
  %b99 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %84 = load double, double* %b99, align 8
  %sub100 = fsub double %84, 6.000000e-01
  %85 = load double, double* %a, align 8
  %mul101 = fmul double %sub100, %85
  %add102 = fadd double 6.000000e-01, %mul101
  %mul103 = fmul double %add102, 2.559990e+02
  %conv104 = fptoui double %mul103 to i8
  %arrayidx105 = getelementptr inbounds [4 x i8], [4 x i8]* %light82, i32 0, i64 0
  store i8 %conv104, i8* %arrayidx105, align 1
  %g106 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %86 = load double, double* %g106, align 8
  %sub107 = fsub double %86, 6.000000e-01
  %87 = load double, double* %a, align 8
  %mul108 = fmul double %sub107, %87
  %add109 = fadd double 6.000000e-01, %mul108
  %mul110 = fmul double %add109, 2.559990e+02
  %conv111 = fptoui double %mul110 to i8
  %arrayidx112 = getelementptr inbounds [4 x i8], [4 x i8]* %light82, i32 0, i64 1
  store i8 %conv111, i8* %arrayidx112, align 1
  %r113 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %88 = load double, double* %r113, align 8
  %sub114 = fsub double %88, 6.000000e-01
  %89 = load double, double* %a, align 8
  %mul115 = fmul double %sub114, %89
  %add116 = fadd double 6.000000e-01, %mul115
  %mul117 = fmul double %add116, 2.559990e+02
  %conv118 = fptoui double %mul117 to i8
  %arrayidx119 = getelementptr inbounds [4 x i8], [4 x i8]* %light82, i32 0, i64 2
  store i8 %conv118, i8* %arrayidx119, align 1
  br label %do.end.120

do.end.120:                                       ; preds = %do.body.98
  br label %do.body.121

do.body.121:                                      ; preds = %do.end.120
  %b122 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %90 = load double, double* %b122, align 8
  %sub123 = fsub double %90, 4.000000e-01
  %91 = load double, double* %a, align 8
  %mul124 = fmul double %sub123, %91
  %add125 = fadd double 4.000000e-01, %mul124
  %mul126 = fmul double %add125, 2.559990e+02
  %conv127 = fptoui double %mul126 to i8
  %arrayidx128 = getelementptr inbounds [4 x i8], [4 x i8]* %dark83, i32 0, i64 0
  store i8 %conv127, i8* %arrayidx128, align 1
  %g129 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %92 = load double, double* %g129, align 8
  %sub130 = fsub double %92, 4.000000e-01
  %93 = load double, double* %a, align 8
  %mul131 = fmul double %sub130, %93
  %add132 = fadd double 4.000000e-01, %mul131
  %mul133 = fmul double %add132, 2.559990e+02
  %conv134 = fptoui double %mul133 to i8
  %arrayidx135 = getelementptr inbounds [4 x i8], [4 x i8]* %dark83, i32 0, i64 1
  store i8 %conv134, i8* %arrayidx135, align 1
  %r136 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %94 = load double, double* %r136, align 8
  %sub137 = fsub double %94, 4.000000e-01
  %95 = load double, double* %a, align 8
  %mul138 = fmul double %sub137, %95
  %add139 = fadd double 4.000000e-01, %mul138
  %mul140 = fmul double %add139, 2.559990e+02
  %conv141 = fptoui double %mul140 to i8
  %arrayidx142 = getelementptr inbounds [4 x i8], [4 x i8]* %dark83, i32 0, i64 2
  store i8 %conv141, i8* %arrayidx142, align 1
  br label %do.end.143

do.end.143:                                       ; preds = %do.body.121
  store i32 0, i32* %x, align 4
  %96 = load i8*, i8** %d, align 8
  store i8* %96, i8** %l, align 8
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.172, %do.end.143
  %97 = load i32, i32* %x, align 4
  %98 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %width145 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %98, i32 0, i32 5
  %99 = load i32, i32* %width145, align 4
  %cmp146 = icmp ult i32 %97, %99
  br i1 %cmp146, label %for.body.148, label %for.end.175

for.body.148:                                     ; preds = %for.cond.144
  %100 = load i32, i32* %x, align 4
  %div149 = udiv i32 %100, 4
  %101 = load i32, i32* %y, align 4
  %div150 = udiv i32 %101, 4
  %xor = xor i32 %div149, %div150
  %and151 = and i32 %xor, 1
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.else.162

if.then.153:                                      ; preds = %for.body.148
  %arrayidx154 = getelementptr inbounds [4 x i8], [4 x i8]* %light82, i32 0, i64 0
  %102 = load i8, i8* %arrayidx154, align 1
  %103 = load i8*, i8** %l, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %103, i64 0
  store i8 %102, i8* %arrayidx155, align 1
  %arrayidx156 = getelementptr inbounds [4 x i8], [4 x i8]* %light82, i32 0, i64 1
  %104 = load i8, i8* %arrayidx156, align 1
  %105 = load i8*, i8** %l, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 %104, i8* %arrayidx157, align 1
  %arrayidx158 = getelementptr inbounds [4 x i8], [4 x i8]* %light82, i32 0, i64 2
  %106 = load i8, i8* %arrayidx158, align 1
  %107 = load i8*, i8** %l, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %107, i64 2
  store i8 %106, i8* %arrayidx159, align 1
  %arrayidx160 = getelementptr inbounds [4 x i8], [4 x i8]* %light82, i32 0, i64 3
  %108 = load i8, i8* %arrayidx160, align 1
  %109 = load i8*, i8** %l, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %109, i64 3
  store i8 %108, i8* %arrayidx161, align 1
  br label %if.end.171

if.else.162:                                      ; preds = %for.body.148
  %arrayidx163 = getelementptr inbounds [4 x i8], [4 x i8]* %dark83, i32 0, i64 0
  %110 = load i8, i8* %arrayidx163, align 1
  %111 = load i8*, i8** %l, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 %110, i8* %arrayidx164, align 1
  %arrayidx165 = getelementptr inbounds [4 x i8], [4 x i8]* %dark83, i32 0, i64 1
  %112 = load i8, i8* %arrayidx165, align 1
  %113 = load i8*, i8** %l, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %113, i64 1
  store i8 %112, i8* %arrayidx166, align 1
  %arrayidx167 = getelementptr inbounds [4 x i8], [4 x i8]* %dark83, i32 0, i64 2
  %114 = load i8, i8* %arrayidx167, align 1
  %115 = load i8*, i8** %l, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %115, i64 2
  store i8 %114, i8* %arrayidx168, align 1
  %arrayidx169 = getelementptr inbounds [4 x i8], [4 x i8]* %dark83, i32 0, i64 3
  %116 = load i8, i8* %arrayidx169, align 1
  %117 = load i8*, i8** %l, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %117, i64 3
  store i8 %116, i8* %arrayidx170, align 1
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.162, %if.then.153
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %118 = load i32, i32* %x, align 4
  %inc173 = add i32 %118, 1
  store i32 %inc173, i32* %x, align 4
  %119 = load i8*, i8** %l, align 8
  %add.ptr174 = getelementptr inbounds i8, i8* %119, i64 4
  store i8* %add.ptr174, i8** %l, align 8
  br label %for.cond.144

for.end.175:                                      ; preds = %for.cond.144
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.end.175
  %120 = load i32, i32* %y, align 4
  %inc177 = add i32 %120, 1
  store i32 %inc177, i32* %y, align 4
  %121 = load %struct._GimpColorScale*, %struct._GimpColorScale** %scale.addr, align 8
  %rowstride178 = getelementptr inbounds %struct._GimpColorScale, %struct._GimpColorScale* %121, i32 0, i32 7
  %122 = load i32, i32* %rowstride178, align 4
  %123 = load i8*, i8** %d, align 8
  %idx.ext179 = zext i32 %122 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %123, i64 %idx.ext179
  store i8* %add.ptr180, i8** %d, align 8
  br label %for.cond.84

for.end.181:                                      ; preds = %for.cond.84
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.181, %for.end.80
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @should_invert(%struct._GtkRange* %range) #3 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca %struct._GtkRange*, align 8
  %inverted = alloca i32, align 4
  %flippable = alloca i32, align 4
  store %struct._GtkRange* %range, %struct._GtkRange** %range.addr, align 8
  %0 = load %struct._GtkRange*, %struct._GtkRange** %range.addr, align 8
  %call = call i32 @gtk_range_get_inverted(%struct._GtkRange* %0)
  store i32 %call, i32* %inverted, align 4
  %1 = load %struct._GtkRange*, %struct._GtkRange** %range.addr, align 8
  %call1 = call i32 @gtk_range_get_flippable(%struct._GtkRange* %1)
  store i32 %call1, i32* %flippable, align 4
  %2 = load %struct._GtkRange*, %struct._GtkRange** %range.addr, align 8
  %3 = bitcast %struct._GtkRange* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_orientable_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkOrientable*
  %call4 = call i32 @gtk_orientable_get_orientation(%struct._GtkOrientable* %4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %inverted, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* %flippable, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %7 = load i32, i32* %inverted, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %land.lhs.true.7, label %lor.rhs

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %flippable, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %land.lhs.true.9, label %lor.rhs

land.lhs.true.9:                                  ; preds = %land.lhs.true.7
  %9 = load %struct._GtkRange*, %struct._GtkRange** %range.addr, align 8
  %10 = bitcast %struct._GtkRange* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  %call12 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %11)
  %cmp13 = icmp eq i32 %call12, 1
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.9, %land.lhs.true.7, %lor.lhs.false
  %12 = load i32, i32* %inverted, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %land.end, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %lor.rhs
  %13 = load i32, i32* %flippable, align 4
  %tobool16 = icmp ne i32 %13, 0
  br i1 %tobool16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.15
  %14 = load %struct._GtkRange*, %struct._GtkRange** %range.addr, align 8
  %15 = bitcast %struct._GtkRange* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  %call19 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %16)
  %cmp20 = icmp eq i32 %call19, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.15, %lor.rhs
  %17 = phi i1 [ false, %land.lhs.true.15 ], [ false, %lor.rhs ], [ %cmp20, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.9, %land.lhs.true
  %18 = phi i1 [ true, %land.lhs.true.9 ], [ true, %land.lhs.true ], [ %17, %land.end ]
  %lor.ext = zext i1 %18 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %inverted, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %lor.end
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @gtk_range_get_inverted(%struct._GtkRange*) #1

declare i32 @gtk_range_get_flippable(%struct._GtkRange*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare void @gtk_range_set_slider_size_fixed(%struct._GtkRange*, i32) #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

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
