; ModuleID = './libgimpwidgets/gimpruler.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [16 x double], [5 x i32] }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpRulerClass = type { %struct._GtkWidgetClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpRuler = type { %struct._GtkWidget }
%struct.GimpRulerPrivate = type { i32, i32, double, double, double, double, %struct._GdkDrawable*, %struct._cairo_surface*, i32, %struct._GdkRectangle, i32, %struct._PangoLayout*, double, %struct._GList* }
%struct._cairo_surface = type opaque
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkWindowAttr = type { i8*, i32, i32, i32, i32, i32, i32, %struct._GdkVisual*, %struct._GdkColormap*, i32, %struct._GdkCursor*, i8*, i8*, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._cairo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._PangoAttrList = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }

@gimp_ruler_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"GimpRuler\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_ruler_add_track_widget = private unnamed_addr constant [28 x i8] c"gimp_ruler_add_track_widget\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"GIMP_IS_RULER (ruler)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"GTK_IS_WIDGET (ruler)\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"g_list_find (priv->track_widgets, widget) == NULL\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@__func__.gimp_ruler_remove_track_widget = private unnamed_addr constant [31 x i8] c"gimp_ruler_remove_track_widget\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"g_list_find (priv->track_widgets, widget) != NULL\00", align 1
@__func__.gimp_ruler_set_unit = private unnamed_addr constant [20 x i8] c"gimp_ruler_set_unit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@__func__.gimp_ruler_get_unit = private unnamed_addr constant [20 x i8] c"gimp_ruler_get_unit\00", align 1
@__func__.gimp_ruler_set_position = private unnamed_addr constant [24 x i8] c"gimp_ruler_set_position\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@__func__.gimp_ruler_get_position = private unnamed_addr constant [24 x i8] c"gimp_ruler_get_position\00", align 1
@__func__.gimp_ruler_set_range = private unnamed_addr constant [21 x i8] c"gimp_ruler_set_range\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"max-size\00", align 1
@__func__.gimp_ruler_get_range = private unnamed_addr constant [21 x i8] c"gimp_ruler_get_range\00", align 1
@gimp_ruler_parent_class = internal global i8* null, align 8
@GimpRuler_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"The orientation of the ruler\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Unit of ruler\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Lower limit of ruler\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Upper limit of ruler\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Position\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Position of mark on the ruler\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Max Size\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Maximum size of the ruler\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"font-scale\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"gimpruler.c\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ruler_metric = internal constant %struct.anon { [16 x double] [double 1.000000e+00, double 2.000000e+00, double 5.000000e+00, double 1.000000e+01, double 2.500000e+01, double 5.000000e+01, double 1.000000e+02, double 2.500000e+02, double 5.000000e+02, double 1.000000e+03, double 2.500000e+03, double 5.000000e+03, double 1.000000e+04, double 2.500000e+04, double 5.000000e+04, double 1.000000e+05], [5 x i32] [i32 1, i32 5, i32 10, i32 50, i32 100] }, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_ruler_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_ruler_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_ruler_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 752, void (i8*, i8*)* bitcast (void (i8*)* @gimp_ruler_class_intern_init to void (i8*, i8*)*), i32 96, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpRuler*)* @gimp_ruler_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_ruler_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_ruler_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_ruler_parent_class, align 8
  %1 = load i32, i32* @GimpRuler_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpRuler_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpRulerClass*
  call void @gimp_ruler_class_init(%struct._GimpRulerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_init(%struct._GimpRuler* %ruler) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_set_has_window(%struct._GtkWidget* %5, i32 0)
  %6 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %6, i32 0, i32 0
  store i32 0, i32* %orientation, align 4
  %7 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %unit = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %7, i32 0, i32 1
  store i32 0, i32* %unit, align 4
  %8 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %lower = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %8, i32 0, i32 2
  store double 0.000000e+00, double* %lower, align 8
  %9 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %upper = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %9, i32 0, i32 3
  store double 0.000000e+00, double* %upper, align 8
  %10 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %position = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %10, i32 0, i32 4
  store double 0.000000e+00, double* %position, align 8
  %11 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %max_size = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %11, i32 0, i32 5
  store double 0.000000e+00, double* %max_size, align 8
  %12 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %12, i32 0, i32 7
  store %struct._cairo_surface* null, %struct._cairo_surface** %backing_store, align 8
  %13 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store_valid = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %13, i32 0, i32 8
  store i32 0, i32* %backing_store_valid, align 4
  %14 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %14, i32 0, i32 9
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %15 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect4 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %15, i32 0, i32 9
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect4, i32 0, i32 1
  store i32 0, i32* %y, align 4
  %16 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect5 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %16, i32 0, i32 9
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect5, i32 0, i32 2
  store i32 0, i32* %width, align 4
  %17 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect6 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %17, i32 0, i32 9
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect6, i32 0, i32 3
  store i32 0, i32* %height, align 4
  %18 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %pos_redraw_idle_id = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %18, i32 0, i32 10
  store i32 0, i32* %pos_redraw_idle_id, align 4
  %19 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %font_scale = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %19, i32 0, i32 12
  store double 0x3FEAAAAAAAAAA97E, double* %font_scale, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_ruler_new(i32 %orientation) #3 {
entry:
  %orientation.addr = alloca i32, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  %call = call i64 @gimp_ruler_get_type() #6
  %0 = load i32, i32* %orientation.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_ruler_add_track_widget(%struct._GimpRuler* %ruler, %struct._GtkWidget* %widget) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ruler_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ruler_add_track_widget, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %14 = bitcast %struct._GimpRuler* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ruler_add_track_widget, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %27 = bitcast %struct._GimpRuler* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_ruler_get_type() #6
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %28, %struct.GimpRulerPrivate** %priv, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %29 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %track_widgets = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %29, i32 0, i32 13
  %30 = load %struct._GList*, %struct._GList** %track_widgets, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %call42 = call %struct._GList* @g_list_find(%struct._GList* %30, i8* %32)
  %cmp43 = icmp eq %struct._GList* %call42, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_ruler_add_track_widget, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %33 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %track_widgets48 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %33, i32 0, i32 13
  %34 = load %struct._GList*, %struct._GList** %track_widgets48, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %call49 = call %struct._GList* @g_list_prepend(%struct._GList* %34, i8* %36)
  %37 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %track_widgets50 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %37, i32 0, i32 13
  store %struct._GList* %call49, %struct._GList** %track_widgets50, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %41 = bitcast %struct._GimpRuler* %40 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*, %struct._GimpRuler*)* @gimp_ruler_track_widget_motion_notify to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %45 = bitcast %struct._GimpRuler* %44 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpRuler*, %struct._GtkWidget*)* @gimp_ruler_remove_track_widget to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %return

return:                                           ; preds = %do.end.47, %if.else.45, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_ruler_track_widget_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %mevent, %struct._GimpRuler* %ruler) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mevent.addr = alloca %struct._GdkEventMotion*, align 8
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %widget_x = alloca i32, align 4
  %widget_y = alloca i32, align 4
  %ruler_x = alloca i32, align 4
  %ruler_y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %mevent, %struct._GdkEventMotion** %mevent.addr, align 8
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  %0 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %1 = bitcast %struct._GdkEventMotion* %0 to %union._GdkEvent*
  %call = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget.addr, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %3, i32 0, i32 1
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %5 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %5, i32 0, i32 4
  %6 = load double, double* %x, align 8
  %7 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %7, i32 0, i32 5
  %8 = load double, double* %y, align 8
  call void @gimp_ruler_event_to_widget_coords(%struct._GtkWidget* %2, %struct._GdkDrawable* %4, double %6, double %8, i32* %widget_x, i32* %widget_y)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %11 = bitcast %struct._GimpRuler* %10 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call1)
  %12 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %13 = load i32, i32* %widget_x, align 4
  %14 = load i32, i32* %widget_y, align 4
  %call3 = call i32 @gtk_widget_translate_coordinates(%struct._GtkWidget* %9, %struct._GtkWidget* %12, i32 %13, i32 %14, i32* %ruler_x, i32* %ruler_y)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %16 = load i32, i32* %ruler_x, align 4
  %conv = sitofp i32 %16 to double
  %17 = load i32, i32* %ruler_y, align 4
  %conv4 = sitofp i32 %17 to double
  call void @gimp_ruler_update_position(%struct._GimpRuler* %15, double %conv, double %conv4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gimp_ruler_remove_track_widget(%struct._GimpRuler* %ruler, %struct._GtkWidget* %widget) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ruler_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_ruler_remove_track_widget, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %14 = bitcast %struct._GimpRuler* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_ruler_remove_track_widget, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %27 = bitcast %struct._GimpRuler* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_ruler_get_type() #6
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %28, %struct.GimpRulerPrivate** %priv, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %29 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %track_widgets = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %29, i32 0, i32 13
  %30 = load %struct._GList*, %struct._GList** %track_widgets, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %call42 = call %struct._GList* @g_list_find(%struct._GList* %30, i8* %32)
  %cmp43 = icmp ne %struct._GList* %call42, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_ruler_remove_track_widget, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %33 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %track_widgets48 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %33, i32 0, i32 13
  %34 = load %struct._GList*, %struct._GList** %track_widgets48, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %call49 = call %struct._GList* @g_list_remove(%struct._GList* %34, i8* %36)
  %37 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %track_widgets50 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %37, i32 0, i32 13
  store %struct._GList* %call49, %struct._GList** %track_widgets50, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %41 = bitcast %struct._GimpRuler* %40 to i8*
  %call51 = call i32 @g_signal_handlers_disconnect_matched(i8* %39, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*, %struct._GimpRuler*)* @gimp_ruler_track_widget_motion_notify to i8*), i8* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %45 = bitcast %struct._GimpRuler* %44 to i8*
  %call52 = call i32 @g_signal_handlers_disconnect_matched(i8* %43, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpRuler*, %struct._GtkWidget*)* @gimp_ruler_remove_track_widget to i8*), i8* %45)
  br label %return

return:                                           ; preds = %do.end.47, %if.else.45, %if.else.36, %if.else.9
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_ruler_set_unit(%struct._GimpRuler* %ruler, i32 %unit) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %unit.addr = alloca i32, align 4
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ruler_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_ruler_set_unit, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %14 = bitcast %struct._GimpRuler* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_ruler_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %15, %struct.GimpRulerPrivate** %priv, align 8
  %16 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %unit13 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %unit13, align 4
  %18 = load i32, i32* %unit.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %do.end
  %19 = load i32, i32* %unit.addr, align 4
  %20 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %unit16 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %20, i32 0, i32 1
  store i32 %19, i32* %unit16, align 4
  %21 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %22 = bitcast %struct._GimpRuler* %21 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  %24 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store_valid = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %24, i32 0, i32 8
  store i32 0, i32* %backing_store_valid, align 4
  %25 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %26 = bitcast %struct._GimpRuler* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_ruler_get_unit(%struct._GimpRuler* %ruler) #3 {
entry:
  %retval = alloca i32, align 4
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ruler_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_ruler_get_unit, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %14 = bitcast %struct._GimpRuler* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_ruler_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpRulerPrivate*
  %unit = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %15, i32 0, i32 1
  %16 = load i32, i32* %unit, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_ruler_set_position(%struct._GimpRuler* %ruler, double %position) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %position.addr = alloca double, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %rect = alloca %struct._GdkRectangle, align 4
  %xdiff = alloca i32, align 4
  %ydiff = alloca i32, align 4
  %coerce = alloca %struct._GdkRectangle, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store double %position, double* %position.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ruler_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_ruler_set_position, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.51

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %14 = bitcast %struct._GimpRuler* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_ruler_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %15, %struct.GimpRulerPrivate** %priv, align 8
  %16 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %position13 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %16, i32 0, i32 4
  %17 = load double, double* %position13, align 8
  %18 = load double, double* %position.addr, align 8
  %cmp14 = fcmp une double %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.51

if.then.15:                                       ; preds = %do.end
  %19 = load double, double* %position.addr, align 8
  %20 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %position19 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %20, i32 0, i32 4
  store double %19, double* %position19, align 8
  %21 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %22 = bitcast %struct._GimpRuler* %21 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %24 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %25 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %position21 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %25, i32 0, i32 4
  %26 = load double, double* %position21, align 8
  %call22 = call { i64, i64 } @gimp_ruler_get_pos_rect(%struct._GimpRuler* %24, double %26)
  %27 = bitcast %struct._GdkRectangle* %coerce to { i64, i64 }*
  %28 = getelementptr { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = extractvalue { i64, i64 } %call22, 0
  store i64 %29, i64* %28, align 4
  %30 = getelementptr { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = extractvalue { i64, i64 } %call22, 1
  store i64 %31, i64* %30, align 4
  %32 = bitcast %struct._GdkRectangle* %rect to i8*
  %33 = bitcast %struct._GdkRectangle* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 4, i1 false)
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %34 = load i32, i32* %x, align 4
  %35 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %35, i32 0, i32 9
  %x23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect, i32 0, i32 0
  %36 = load i32, i32* %x23, align 4
  %sub = sub nsw i32 %34, %36
  store i32 %sub, i32* %xdiff, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %37 = load i32, i32* %y, align 4
  %38 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect24 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %38, i32 0, i32 9
  %y25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect24, i32 0, i32 1
  %39 = load i32, i32* %y25, align 4
  %sub26 = sub nsw i32 %37, %39
  store i32 %sub26, i32* %ydiff, align 4
  %40 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect27 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %40, i32 0, i32 9
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect27, i32 0, i32 2
  %41 = load i32, i32* %width, align 4
  %cmp28 = icmp ne i32 %41, 0
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.44

land.lhs.true.29:                                 ; preds = %if.then.15
  %42 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect30 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %42, i32 0, i32 9
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect30, i32 0, i32 3
  %43 = load i32, i32* %height, align 4
  %cmp31 = icmp ne i32 %43, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.44

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %44 = load i32, i32* %xdiff, align 4
  %cmp33 = icmp slt i32 %44, 0
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.32
  %45 = load i32, i32* %xdiff, align 4
  %sub34 = sub nsw i32 0, %45
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.32
  %46 = load i32, i32* %xdiff, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub34, %cond.true ], [ %46, %cond.false ]
  %cmp35 = icmp sgt i32 %cond, 20
  br i1 %cmp35, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %47 = load i32, i32* %ydiff, align 4
  %cmp36 = icmp slt i32 %47, 0
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %lor.lhs.false
  %48 = load i32, i32* %ydiff, align 4
  %sub38 = sub nsw i32 0, %48
  br label %cond.end.40

cond.false.39:                                    ; preds = %lor.lhs.false
  %49 = load i32, i32* %ydiff, align 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.37
  %cond41 = phi i32 [ %sub38, %cond.true.37 ], [ %49, %cond.false.39 ]
  %cmp42 = icmp sgt i32 %cond41, 20
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %cond.end.40, %cond.end
  %50 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  call void @gimp_ruler_queue_pos_redraw(%struct._GimpRuler* %50)
  br label %if.end.50

if.else.44:                                       ; preds = %cond.end.40, %land.lhs.true.29, %if.then.15
  %51 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %pos_redraw_idle_id = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %51, i32 0, i32 10
  %52 = load i32, i32* %pos_redraw_idle_id, align 4
  %tobool45 = icmp ne i32 %52, 0
  br i1 %tobool45, label %if.end.49, label %if.then.46

if.then.46:                                       ; preds = %if.else.44
  %53 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %54 = bitcast %struct._GimpRuler* %53 to i8*
  %call47 = call i32 @g_idle_add_full(i32 300, i32 (i8*)* @gimp_ruler_idle_queue_pos_redraw, i8* %54, void (i8*)* null)
  %55 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %pos_redraw_idle_id48 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %55, i32 0, i32 10
  store i32 %call47, i32* %pos_redraw_idle_id48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.else.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.43
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.9, %if.end.50, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @gimp_ruler_get_pos_rect(%struct._GimpRuler* %ruler, double %position) #3 {
entry:
  %retval = alloca %struct._GdkRectangle, align 4
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %position.addr = alloca double, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xthickness = alloca i32, align 4
  %ythickness = alloca i32, align 4
  %upper = alloca double, align 8
  %lower = alloca double, align 8
  %increment = alloca double, align 8
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store double %position, double* %position.addr, align 8
  %0 = bitcast %struct._GdkRectangle* %rect to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false)
  %1 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %2 = bitcast %struct._GimpRuler* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %widget, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %4)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %5 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %6 = bitcast %struct._GimpRuler* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_ruler_get_type() #6
  %call4 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast i8* %call4 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %7, %struct.GimpRulerPrivate** %priv, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call5 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = bitcast %struct._GdkRectangle* %retval to i8*
  %10 = bitcast %struct._GdkRectangle* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 4, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %11, %struct._GdkRectangle* %allocation)
  %12 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness6 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %12, i32 0, i32 12
  %13 = load i32, i32* %xthickness6, align 4
  store i32 %13, i32* %xthickness, align 4
  %14 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness7 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %14, i32 0, i32 13
  %15 = load i32, i32* %ythickness7, align 4
  store i32 %15, i32* %ythickness, align 4
  %16 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %16, i32 0, i32 0
  %17 = load i32, i32* %orientation, align 4
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %width9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %18 = load i32, i32* %width9, align 4
  store i32 %18, i32* %width, align 4
  %height10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %19 = load i32, i32* %height10, align 4
  %20 = load i32, i32* %ythickness, align 4
  %mul = mul nsw i32 %20, 2
  %sub = sub nsw i32 %19, %mul
  store i32 %sub, i32* %height, align 4
  %21 = load i32, i32* %height, align 4
  %div = sdiv i32 %21, 2
  %add = add nsw i32 %div, 2
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  store i32 %add, i32* %width11, align 4
  %width12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %22 = load i32, i32* %width12, align 4
  %or = or i32 %22, 1
  store i32 %or, i32* %width12, align 4
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %23 = load i32, i32* %width13, align 4
  %div14 = sdiv i32 %23, 2
  %add15 = add nsw i32 %div14, 1
  %height16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  store i32 %add15, i32* %height16, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %width17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %24 = load i32, i32* %width17, align 4
  %25 = load i32, i32* %xthickness, align 4
  %mul18 = mul nsw i32 %25, 2
  %sub19 = sub nsw i32 %24, %mul18
  store i32 %sub19, i32* %width, align 4
  %height20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %26 = load i32, i32* %height20, align 4
  store i32 %26, i32* %height, align 4
  %27 = load i32, i32* %width, align 4
  %div21 = sdiv i32 %27, 2
  %add22 = add nsw i32 %div21, 2
  %height23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  store i32 %add22, i32* %height23, align 4
  %height24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %28 = load i32, i32* %height24, align 4
  %or25 = or i32 %28, 1
  store i32 %or25, i32* %height24, align 4
  %height26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %29 = load i32, i32* %height26, align 4
  %div27 = sdiv i32 %29, 2
  %add28 = add nsw i32 %div27, 1
  %width29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  store i32 %add28, i32* %width29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.8
  %30 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  call void @gimp_ruler_get_range(%struct._GimpRuler* %30, double* %lower, double* %upper, double* null)
  %31 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation31 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %31, i32 0, i32 0
  %32 = load i32, i32* %orientation31, align 4
  %cmp32 = icmp eq i32 %32, 0
  br i1 %cmp32, label %if.then.33, label %if.else.49

if.then.33:                                       ; preds = %if.end.30
  %33 = load i32, i32* %width, align 4
  %conv = sitofp i32 %33 to double
  %34 = load double, double* %upper, align 8
  %35 = load double, double* %lower, align 8
  %sub34 = fsub double %34, %35
  %div35 = fdiv double %conv, %sub34
  store double %div35, double* %increment, align 8
  %36 = load double, double* %position.addr, align 8
  %37 = load double, double* %lower, align 8
  %sub36 = fsub double %36, %37
  %38 = load double, double* %increment, align 8
  %mul37 = fmul double %sub36, %38
  %add38 = fadd double %mul37, 5.000000e-01
  %conv39 = fptosi double %add38 to i32
  %39 = load i32, i32* %xthickness, align 4
  %width40 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %40 = load i32, i32* %width40, align 4
  %sub41 = sub nsw i32 %39, %40
  %div42 = sdiv i32 %sub41, 2
  %add43 = add nsw i32 %conv39, %div42
  %sub44 = sub nsw i32 %add43, 1
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  store i32 %sub44, i32* %x, align 4
  %41 = load i32, i32* %height, align 4
  %height45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %42 = load i32, i32* %height45, align 4
  %add46 = add nsw i32 %41, %42
  %div47 = sdiv i32 %add46, 2
  %43 = load i32, i32* %ythickness, align 4
  %add48 = add nsw i32 %div47, %43
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  store i32 %add48, i32* %y, align 4
  br label %if.end.68

if.else.49:                                       ; preds = %if.end.30
  %44 = load i32, i32* %height, align 4
  %conv50 = sitofp i32 %44 to double
  %45 = load double, double* %upper, align 8
  %46 = load double, double* %lower, align 8
  %sub51 = fsub double %45, %46
  %div52 = fdiv double %conv50, %sub51
  store double %div52, double* %increment, align 8
  %47 = load i32, i32* %width, align 4
  %width53 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %48 = load i32, i32* %width53, align 4
  %add54 = add nsw i32 %47, %48
  %div55 = sdiv i32 %add54, 2
  %49 = load i32, i32* %xthickness, align 4
  %add56 = add nsw i32 %div55, %49
  %x57 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  store i32 %add56, i32* %x57, align 4
  %50 = load double, double* %position.addr, align 8
  %51 = load double, double* %lower, align 8
  %sub58 = fsub double %50, %51
  %52 = load double, double* %increment, align 8
  %mul59 = fmul double %sub58, %52
  %add60 = fadd double %mul59, 5.000000e-01
  %conv61 = fptosi double %add60 to i32
  %53 = load i32, i32* %ythickness, align 4
  %height62 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %54 = load i32, i32* %height62, align 4
  %sub63 = sub nsw i32 %53, %54
  %div64 = sdiv i32 %sub63, 2
  %add65 = add nsw i32 %conv61, %div64
  %sub66 = sub nsw i32 %add65, 1
  %y67 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  store i32 %sub66, i32* %y67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.49, %if.then.33
  %x69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %55 = load i32, i32* %x69, align 4
  %x70 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %56 = load i32, i32* %x70, align 4
  %add71 = add nsw i32 %56, %55
  store i32 %add71, i32* %x70, align 4
  %y72 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %57 = load i32, i32* %y72, align 4
  %y73 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %58 = load i32, i32* %y73, align 4
  %add74 = add nsw i32 %58, %57
  store i32 %add74, i32* %y73, align 4
  %59 = bitcast %struct._GdkRectangle* %retval to i8*
  %60 = bitcast %struct._GdkRectangle* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end.68, %if.then
  %61 = bitcast %struct._GdkRectangle* %retval to { i64, i64 }*
  %62 = load { i64, i64 }, { i64, i64 }* %61, align 4
  ret { i64, i64 } %62
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_queue_pos_redraw(%struct._GimpRuler* %ruler) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %4 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %position = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %4, i32 0, i32 4
  %5 = load double, double* %position, align 8
  %call2 = call { i64, i64 } @gimp_ruler_get_pos_rect(%struct._GimpRuler* %3, double %5)
  %6 = bitcast %struct._GdkRectangle* %rect to { i64, i64 }*
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %8 = extractvalue { i64, i64 } %call2, 0
  store i64 %8, i64* %7, align 4
  %9 = getelementptr { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %10 = extractvalue { i64, i64 } %call2, 1
  store i64 %10, i64* %9, align 4
  %11 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %12 = bitcast %struct._GimpRuler* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %14 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %16 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %17 = load i32, i32* %height, align 4
  call void @gtk_widget_queue_draw_area(%struct._GtkWidget* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %18 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %18, i32 0, i32 9
  %width5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect, i32 0, i32 2
  %19 = load i32, i32* %width5, align 4
  %cmp = icmp ne i32 %19, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %20 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect6 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %20, i32 0, i32 9
  %height7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect6, i32 0, i32 3
  %21 = load i32, i32* %height7, align 4
  %cmp8 = icmp ne i32 %21, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %22 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %23 = bitcast %struct._GimpRuler* %22 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call9)
  %24 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  %25 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect11 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %25, i32 0, i32 9
  %x12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect11, i32 0, i32 0
  %26 = load i32, i32* %x12, align 4
  %27 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect13 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %27, i32 0, i32 9
  %y14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect13, i32 0, i32 1
  %28 = load i32, i32* %y14, align 4
  %29 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect15 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %29, i32 0, i32 9
  %width16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect15, i32 0, i32 2
  %30 = load i32, i32* %width16, align 4
  %31 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect17 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %31, i32 0, i32 9
  %height18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect17, i32 0, i32 3
  %32 = load i32, i32* %height18, align 4
  call void @gtk_widget_queue_draw_area(%struct._GtkWidget* %24, i32 %26, i32 %28, i32 %30, i32 %32)
  %33 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect19 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %33, i32 0, i32 9
  %x20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect19, i32 0, i32 0
  store i32 0, i32* %x20, align 4
  %34 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect21 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %34, i32 0, i32 9
  %y22 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect21, i32 0, i32 1
  store i32 0, i32* %y22, align 4
  %35 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect23 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %35, i32 0, i32 9
  %width24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect23, i32 0, i32 2
  store i32 0, i32* %width24, align 4
  %36 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect25 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %36, i32 0, i32 9
  %height26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %last_pos_rect25, i32 0, i32 3
  store i32 0, i32* %height26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_ruler_idle_queue_pos_redraw(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpRuler*
  store %struct._GimpRuler* %1, %struct._GimpRuler** %ruler, align 8
  %2 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %3 = bitcast %struct._GimpRuler* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %4, %struct.GimpRulerPrivate** %priv, align 8
  %5 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  call void @gimp_ruler_queue_pos_redraw(%struct._GimpRuler* %5)
  %6 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %pos_redraw_idle_id = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %6, i32 0, i32 10
  store i32 0, i32* %pos_redraw_idle_id, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define double @gimp_ruler_get_position(%struct._GimpRuler* %ruler) #3 {
entry:
  %retval = alloca double, align 8
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ruler_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_ruler_get_position, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %14 = bitcast %struct._GimpRuler* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_ruler_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpRulerPrivate*
  %position = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %15, i32 0, i32 4
  %16 = load double, double* %position, align 8
  store double %16, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind uwtable
define void @gimp_ruler_set_range(%struct._GimpRuler* %ruler, double %lower, double %upper, double %max_size) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %max_size.addr = alloca double, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  store double %max_size, double* %max_size.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ruler_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_ruler_set_range, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %14 = bitcast %struct._GimpRuler* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_ruler_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %15, %struct.GimpRulerPrivate** %priv, align 8
  %16 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %17 = bitcast %struct._GimpRuler* %16 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %18)
  %19 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %lower14 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %19, i32 0, i32 2
  %20 = load double, double* %lower14, align 8
  %21 = load double, double* %lower.addr, align 8
  %cmp15 = fcmp une double %20, %21
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %do.end
  %22 = load double, double* %lower.addr, align 8
  %23 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %lower17 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %23, i32 0, i32 2
  store double %22, double* %lower17, align 8
  %24 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %25 = bitcast %struct._GimpRuler* %24 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %do.end
  %27 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %upper20 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %27, i32 0, i32 3
  %28 = load double, double* %upper20, align 8
  %29 = load double, double* %upper.addr, align 8
  %cmp21 = fcmp une double %28, %29
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.19
  %30 = load double, double* %upper.addr, align 8
  %31 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %upper23 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %31, i32 0, i32 3
  store double %30, double* %upper23, align 8
  %32 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %33 = bitcast %struct._GimpRuler* %32 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.19
  %35 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %max_size26 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %35, i32 0, i32 5
  %36 = load double, double* %max_size26, align 8
  %37 = load double, double* %max_size.addr, align 8
  %cmp27 = fcmp une double %36, %37
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.25
  %38 = load double, double* %max_size.addr, align 8
  %39 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %max_size29 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %39, i32 0, i32 5
  store double %38, double* %max_size29, align 8
  %40 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %41 = bitcast %struct._GimpRuler* %40 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %43 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %44 = bitcast %struct._GimpRuler* %43 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %45)
  %46 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store_valid = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %46, i32 0, i32 8
  store i32 0, i32* %backing_store_valid, align 4
  %47 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %48 = bitcast %struct._GimpRuler* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_widget_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkWidget*
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %49)
  br label %return

return:                                           ; preds = %if.end.31, %if.else.9
  ret void
}

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

; Function Attrs: nounwind uwtable
define void @gimp_ruler_get_range(%struct._GimpRuler* %ruler, double* %lower, double* %upper, double* %max_size) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %lower.addr = alloca double*, align 8
  %upper.addr = alloca double*, align 8
  %max_size.addr = alloca double*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store double* %lower, double** %lower.addr, align 8
  store double* %upper, double** %upper.addr, align 8
  store double* %max_size, double** %max_size.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ruler_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_ruler_get_range, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.24

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %14 = bitcast %struct._GimpRuler* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_ruler_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %15, %struct.GimpRulerPrivate** %priv, align 8
  %16 = load double*, double** %lower.addr, align 8
  %tobool13 = icmp ne double* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %17 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %lower15 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %17, i32 0, i32 2
  %18 = load double, double* %lower15, align 8
  %19 = load double*, double** %lower.addr, align 8
  store double %18, double* %19, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.end
  %20 = load double*, double** %upper.addr, align 8
  %tobool17 = icmp ne double* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %21 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %upper19 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %21, i32 0, i32 3
  %22 = load double, double* %upper19, align 8
  %23 = load double*, double** %upper.addr, align 8
  store double %22, double* %23, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %24 = load double*, double** %max_size.addr, align 8
  %tobool21 = icmp ne double* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %25 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %max_size23 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %25, i32 0, i32 5
  %26 = load double, double* %max_size23, align 8
  %27 = load double*, double** %max_size.addr, align 8
  store double %26, double* %27, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.9, %if.then.22, %if.end.20
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_class_init(%struct._GimpRulerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpRulerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpRulerClass* %klass, %struct._GimpRulerClass** %klass.addr, align 8
  %0 = load %struct._GimpRulerClass*, %struct._GimpRulerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpRulerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpRulerClass*, %struct._GimpRulerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpRulerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_ruler_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_ruler_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_ruler_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 10
  store void (%struct._GtkWidget*)* @gimp_ruler_realize, void (%struct._GtkWidget*)** %realize, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 11
  store void (%struct._GtkWidget*)* @gimp_ruler_unrealize, void (%struct._GtkWidget*)** %unrealize, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 8
  store void (%struct._GtkWidget*)* @gimp_ruler_map, void (%struct._GtkWidget*)** %map, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_ruler_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_ruler_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_ruler_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_ruler_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 28
  store i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @gimp_ruler_motion_notify, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gimp_ruler_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %19 = bitcast %struct._GObjectClass* %18 to i8*
  call void @g_type_class_add_private(i8* %19, i64 104)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gtk_orientation_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i64 %call3, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 1, %struct._GParamSpec* %call4)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 1, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 2, %struct._GParamSpec* %call5)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 3, %struct._GParamSpec* %call6)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 4, %struct._GParamSpec* %call7)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 5, %struct._GParamSpec* %call8)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0), double 0xFFEFFFFFFFFFFFFF, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 6, %struct._GParamSpec* %call9)
  %26 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0x3FEAAAAAAAAAA97E, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %26, %struct._GParamSpec* %call10)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRuler*
  store %struct._GimpRuler* %2, %struct._GimpRuler** %ruler, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_ruler_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %5, %struct.GimpRulerPrivate** %priv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %track_widgets = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %6, i32 0, i32 13
  %7 = load %struct._GList*, %struct._GList** %track_widgets, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %9 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %track_widgets4 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %9, i32 0, i32 13
  %10 = load %struct._GList*, %struct._GList** %track_widgets4, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct._GtkWidget*
  call void @gimp_ruler_remove_track_widget(%struct._GimpRuler* %8, %struct._GtkWidget* %12)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %pos_redraw_idle_id = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %13, i32 0, i32 10
  %14 = load i32, i32* %pos_redraw_idle_id, align 4
  %tobool5 = icmp ne i32 %14, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %15 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %pos_redraw_idle_id6 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %15, i32 0, i32 10
  %16 = load i32, i32* %pos_redraw_idle_id6, align 4
  %call7 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %pos_redraw_idle_id8 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %17, i32 0, i32 10
  store i32 0, i32* %pos_redraw_idle_id8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %18 = load i8*, i8** @gimp_ruler_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 80)
  %20 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %20, i32 0, i32 5
  %21 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %21(%struct._GObject* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_set_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRuler*
  store %struct._GimpRuler* %2, %struct._GimpRuler** %ruler, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_ruler_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %5, %struct.GimpRulerPrivate** %priv, align 8
  %6 = load i32, i32* %prop_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.11
    i32 5, label %sw.bb.14
    i32 6, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_enum(%struct._GValue* %7)
  %8 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %8, i32 0, i32 0
  store i32 %call4, i32* %orientation, align 4
  %9 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %10 = bitcast %struct._GimpRuler* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %11)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_int(%struct._GValue* %13)
  call void @gimp_ruler_set_unit(%struct._GimpRuler* %12, i32 %call8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %14 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %15)
  %16 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %upper = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %16, i32 0, i32 3
  %17 = load double, double* %upper, align 8
  %18 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %max_size = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %18, i32 0, i32 5
  %19 = load double, double* %max_size, align 8
  call void @gimp_ruler_set_range(%struct._GimpRuler* %14, double %call10, double %17, double %19)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %20 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %21 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %lower = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %21, i32 0, i32 2
  %22 = load double, double* %lower, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %23)
  %24 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %max_size13 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %24, i32 0, i32 5
  %25 = load double, double* %max_size13, align 8
  call void @gimp_ruler_set_range(%struct._GimpRuler* %20, double %22, double %call12, double %25)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %26 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call double @g_value_get_double(%struct._GValue* %27)
  call void @gimp_ruler_set_position(%struct._GimpRuler* %26, double %call15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %28 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %29 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %lower17 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %29, i32 0, i32 2
  %30 = load double, double* %lower17, align 8
  %31 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %upper18 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %31, i32 0, i32 3
  %32 = load double, double* %upper18, align 8
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call double @g_value_get_double(%struct._GValue* %33)
  call void @gimp_ruler_set_range(%struct._GimpRuler* %28, double %30, double %32, double %call19)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %34, %struct._GObject** %_glib__object, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %35, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = load i32, i32* %prop_id.addr, align 4
  store i32 %36, i32* %_glib__property_id, align 4
  %37 = load i32, i32* %_glib__property_id, align 4
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %38, i32 0, i32 1
  %39 = load i8*, i8** %name, align 8
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %41 = bitcast %struct._GParamSpec* %40 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type, align 8
  %call20 = call i8* @g_type_name(i64 %43)
  %44 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %45 = bitcast %struct._GObject* %44 to %struct._GTypeInstance*
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type22, align 8
  %call23 = call i8* @g_type_name(i64 %47)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 318, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %37, i8* %39, i8* %call20, i8* %call23)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.16, %sw.bb.14, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_get_property(%struct._GObject* %object, i32 %prop_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %prop_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %prop_id, i32* %prop_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRuler*
  store %struct._GimpRuler* %2, %struct._GimpRuler** %ruler, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_ruler_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %5, %struct.GimpRulerPrivate** %priv, align 8
  %6 = load i32, i32* %prop_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %8, i32 0, i32 0
  %9 = load i32, i32* %orientation, align 4
  call void @g_value_set_enum(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %unit = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %11, i32 0, i32 1
  %12 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %lower = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %14, i32 0, i32 2
  %15 = load double, double* %lower, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %upper = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %17, i32 0, i32 3
  %18 = load double, double* %upper, align 8
  call void @g_value_set_double(%struct._GValue* %16, double %18)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %position = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %20, i32 0, i32 4
  %21 = load double, double* %position, align 8
  call void @g_value_set_double(%struct._GValue* %19, double %21)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %max_size = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %23, i32 0, i32 5
  %24 = load double, double* %max_size, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %24)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %25, %struct._GObject** %_glib__object, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %26, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = load i32, i32* %prop_id.addr, align 4
  store i32 %27, i32* %_glib__property_id, align 4
  %28 = load i32, i32* %_glib__property_id, align 4
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = bitcast %struct._GParamSpec* %31 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %34)
  %35 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %38)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 359, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %28, i8* %30, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_realize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %attributes = alloca %struct._GdkWindowAttr, align 8
  %attributes_mask = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRuler*
  store %struct._GimpRuler* %2, %struct._GimpRuler** %ruler, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_ruler_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %5, %struct.GimpRulerPrivate** %priv, align 8
  %6 = load i8*, i8** @gimp_ruler_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call4)
  %8 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %realize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 10
  %9 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %realize, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %9(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %11, %struct._GdkRectangle* %allocation)
  %window_type = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 9
  store i32 2, i32* %window_type, align 4
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %12 = load i32, i32* %x, align 4
  %x6 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 2
  store i32 %12, i32* %x6, align 4
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %13 = load i32, i32* %y, align 4
  %y7 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 3
  store i32 %13, i32* %y7, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %14 = load i32, i32* %width, align 4
  %width8 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 4
  store i32 %14, i32* %width8, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  %height9 = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 5
  store i32 %15, i32* %height9, align 4
  %wclass = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 6
  store i32 1, i32* %wclass, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call10 = call i32 @gtk_widget_get_events(%struct._GtkWidget* %16)
  %or = or i32 %call10, 2
  %or11 = or i32 %or, 4
  %event_mask = getelementptr inbounds %struct._GdkWindowAttr, %struct._GdkWindowAttr* %attributes, i32 0, i32 1
  store i32 %or11, i32* %event_mask, align 4
  store i32 12, i32* %attributes_mask, align 4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %17)
  %18 = load i32, i32* %attributes_mask, align 4
  %call13 = call %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable* %call12, %struct._GdkWindowAttr* %attributes, i32 %18)
  %19 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %19, i32 0, i32 6
  store %struct._GdkDrawable* %call13, %struct._GdkDrawable** %input_window, align 8
  %20 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window14 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %20, i32 0, i32 6
  %21 = load %struct._GdkDrawable*, %struct._GdkDrawable** %input_window14, align 8
  %22 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %23 = bitcast %struct._GimpRuler* %22 to i8*
  call void @gdk_window_set_user_data(%struct._GdkDrawable* %21, i8* %23)
  %24 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  call void @gimp_ruler_make_pixmap(%struct._GimpRuler* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_unrealize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRuler*
  store %struct._GimpRuler* %2, %struct._GimpRuler** %ruler, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_ruler_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %5, %struct.GimpRulerPrivate** %priv, align 8
  %6 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %6, i32 0, i32 7
  %7 = load %struct._cairo_surface*, %struct._cairo_surface** %backing_store, align 8
  %tobool = icmp ne %struct._cairo_surface* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store4 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %8, i32 0, i32 7
  %9 = load %struct._cairo_surface*, %struct._cairo_surface** %backing_store4, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %9)
  %10 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store5 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %10, i32 0, i32 7
  store %struct._cairo_surface* null, %struct._cairo_surface** %backing_store5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store_valid = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %11, i32 0, i32 8
  store i32 0, i32* %backing_store_valid, align 4
  %12 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %12, i32 0, i32 11
  %13 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool6 = icmp ne %struct._PangoLayout* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout8 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %14, i32 0, i32 11
  %15 = load %struct._PangoLayout*, %struct._PangoLayout** %layout8, align 8
  %16 = bitcast %struct._PangoLayout* %15 to i8*
  call void @g_object_unref(i8* %16)
  %17 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout9 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %17, i32 0, i32 11
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %18 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %18, i32 0, i32 6
  %19 = load %struct._GdkDrawable*, %struct._GdkDrawable** %input_window, align 8
  %tobool11 = icmp ne %struct._GdkDrawable* %19, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.10
  %20 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window13 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %20, i32 0, i32 6
  %21 = load %struct._GdkDrawable*, %struct._GdkDrawable** %input_window13, align 8
  call void @gdk_window_destroy(%struct._GdkDrawable* %21)
  %22 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window14 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %22, i32 0, i32 6
  store %struct._GdkDrawable* null, %struct._GdkDrawable** %input_window14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.10
  %23 = load i8*, i8** @gimp_ruler_parent_class, align 8
  %24 = bitcast i8* %23 to %struct._GTypeClass*
  %call16 = call i64 @gtk_widget_get_type() #6
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 %call16)
  %25 = bitcast %struct._GTypeClass* %call17 to %struct._GtkWidgetClass*
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %25, i32 0, i32 11
  %26 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unrealize, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %26(%struct._GtkWidget* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_map(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load i8*, i8** @gimp_ruler_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 8
  %6 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %map, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %6(%struct._GtkWidget* %7)
  %8 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %8, i32 0, i32 6
  %9 = load %struct._GdkDrawable*, %struct._GdkDrawable** %input_window, align 8
  %tobool = icmp ne %struct._GdkDrawable* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window4 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %10, i32 0, i32 6
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %input_window4, align 8
  call void @gdk_window_show(%struct._GdkDrawable* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_unmap(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %3, i32 0, i32 6
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %input_window, align 8
  %tobool = icmp ne %struct._GdkDrawable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window2 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %5, i32 0, i32 6
  %6 = load %struct._GdkDrawable*, %struct._GdkDrawable** %input_window2, align 8
  call void @gdk_window_hide(%struct._GdkDrawable* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** @gimp_ruler_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 9
  %10 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %10(%struct._GtkWidget* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRuler*
  store %struct._GimpRuler* %2, %struct._GimpRuler** %ruler, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_ruler_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %5, %struct.GimpRulerPrivate** %priv, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %6, %struct._GdkRectangle* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %input_window = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %9, i32 0, i32 6
  %10 = load %struct._GdkDrawable*, %struct._GdkDrawable** %input_window, align 8
  %11 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %11, i32 0, i32 0
  %12 = load i32, i32* %x, align 4
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i32 0, i32 1
  %14 = load i32, i32* %y, align 4
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %15, i32 0, i32 2
  %16 = load i32, i32* %width, align 4
  %17 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %17, i32 0, i32 3
  %18 = load i32, i32* %height, align 4
  call void @gdk_window_move_resize(%struct._GdkDrawable* %10, i32 %12, i32 %14, i32 %16, i32 %18)
  %19 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  call void @gimp_ruler_make_pixmap(%struct._GimpRuler* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %ink_rect = alloca %struct._PangoRectangle, align 4
  %size = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._PangoLayout* @gimp_ruler_get_layout(%struct._GtkWidget* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0))
  store %struct._PangoLayout* %call3, %struct._PangoLayout** %layout, align 8
  %5 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %5, %struct._PangoRectangle* %ink_rect, %struct._PangoRectangle* null)
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink_rect, i32 0, i32 3
  %6 = load i32, i32* %height, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double %conv, 1.700000e+00
  %add = fadd double 2.000000e+00, %mul
  %conv4 = fptosi double %add to i32
  store i32 %conv4, i32* %size, align 4
  %7 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %7, i32 0, i32 0
  %8 = load i32, i32* %orientation, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %9, i32 0, i32 12
  %10 = load i32, i32* %xthickness, align 4
  %mul6 = mul nsw i32 %10, 2
  %add7 = add nsw i32 %mul6, 1
  %11 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %11, i32 0, i32 0
  store i32 %add7, i32* %width, align 4
  %12 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %12, i32 0, i32 13
  %13 = load i32, i32* %ythickness, align 4
  %mul8 = mul nsw i32 %13, 2
  %14 = load i32, i32* %size, align 4
  %add9 = add nsw i32 %mul8, %14
  %15 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height10 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %15, i32 0, i32 1
  store i32 %add9, i32* %height10, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness11 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %16, i32 0, i32 12
  %17 = load i32, i32* %xthickness11, align 4
  %mul12 = mul nsw i32 %17, 2
  %18 = load i32, i32* %size, align 4
  %add13 = add nsw i32 %mul12, %18
  %19 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width14 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %19, i32 0, i32 0
  store i32 %add13, i32* %width14, align 4
  %20 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness15 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %20, i32 0, i32 13
  %21 = load i32, i32* %ythickness15, align 4
  %mul16 = mul nsw i32 %21, 2
  %add17 = add nsw i32 %mul16, 1
  %22 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height18 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %22, i32 0, i32 1
  store i32 %add17, i32* %height18, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load i8*, i8** @gimp_ruler_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %font_scale = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %10, i32 0, i32 12
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), double* %font_scale, i8* null)
  %11 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %11, i32 0, i32 11
  %12 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout4 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %13, i32 0, i32 11
  %14 = load %struct._PangoLayout*, %struct._PangoLayout** %layout4, align 8
  %15 = bitcast %struct._PangoLayout* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout5 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %16, i32 0, i32 11
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_ruler_motion_notify(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRuler*
  store %struct._GimpRuler* %2, %struct._GimpRuler** %ruler, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %4 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %4, i32 0, i32 4
  %5 = load double, double* %x, align 8
  %6 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %6, i32 0, i32 5
  %7 = load double, double* %y, align 8
  call void @gimp_ruler_update_position(%struct._GimpRuler* %3, double %5, double %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_ruler_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %ruler = alloca %struct._GimpRuler*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_ruler_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpRuler*
  store %struct._GimpRuler* %3, %struct._GimpRuler** %ruler, align 8
  %4 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %5 = bitcast %struct._GimpRuler* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_ruler_get_type() #6
  %call4 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast i8* %call4 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %6, %struct.GimpRulerPrivate** %priv, align 8
  %7 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store_valid = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %7, i32 0, i32 8
  %8 = load i32, i32* %backing_store_valid, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  call void @gimp_ruler_draw_ticks(%struct._GimpRuler* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call7 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %10)
  %call8 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call7)
  store %struct._cairo* %call8, %struct._cairo** %cr, align 8
  %11 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %12 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %12, i32 0, i32 4
  %13 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %11, %struct._GdkRegion* %13)
  %14 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %15, %struct._GdkRectangle* %allocation)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %17 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %17, i32 0, i32 7
  %18 = load %struct._cairo_surface*, %struct._cairo_surface** %backing_store, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %19 = load i32, i32* %x, align 4
  %conv = sitofp i32 %19 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %20 = load i32, i32* %y, align 4
  %conv9 = sitofp i32 %20 to double
  call void @cairo_set_source_surface(%struct._cairo* %16, %struct._cairo_surface* %18, double %conv, double %conv9)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %21)
  %22 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler, align 8
  %23 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gimp_ruler_draw_pos(%struct._GimpRuler* %22, %struct._cairo* %23)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %24)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret i32 0
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientation_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare i32 @g_source_remove(i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_events(%struct._GtkWidget*) #1

declare %struct._GdkDrawable* @gdk_window_new(%struct._GdkDrawable*, %struct._GdkWindowAttr*, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_window_set_user_data(%struct._GdkDrawable*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_make_pixmap(%struct._GimpRuler* %ruler) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_ruler_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %5, %struct.GimpRulerPrivate** %priv, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %6, %struct._GdkRectangle* %allocation)
  %7 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %7, i32 0, i32 7
  %8 = load %struct._cairo_surface*, %struct._cairo_surface** %backing_store, align 8
  %tobool = icmp ne %struct._cairo_surface* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store4 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %9, i32 0, i32 7
  %10 = load %struct._cairo_surface*, %struct._cairo_surface** %backing_store4, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call5 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %11)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %13 = load i32, i32* %height, align 4
  %call6 = call %struct._cairo_surface* @gdk_window_create_similar_surface(%struct._GdkDrawable* %call5, i32 4096, i32 %12, i32 %13)
  %14 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store7 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %14, i32 0, i32 7
  store %struct._cairo_surface* %call6, %struct._cairo_surface** %backing_store7, align 8
  %15 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store_valid = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %15, i32 0, i32 8
  store i32 0, i32* %backing_store_valid, align 4
  ret void
}

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare %struct._cairo_surface* @gdk_window_create_similar_surface(%struct._GdkDrawable*, i32, i32, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gdk_window_destroy(%struct._GdkDrawable*) #1

declare void @gdk_window_show(%struct._GdkDrawable*) #1

declare void @gdk_window_hide(%struct._GdkDrawable*) #1

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare void @gdk_window_move_resize(%struct._GdkDrawable*, i32, i32, i32, i32) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._PangoLayout* @gimp_ruler_get_layout(%struct._GtkWidget* %widget, i8* %text) #3 {
entry:
  %retval = alloca %struct._PangoLayout*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %text.addr = alloca i8*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %3, i32 0, i32 11
  %4 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %tobool = icmp ne %struct._PangoLayout* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout2 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %5, i32 0, i32 11
  %6 = load %struct._PangoLayout*, %struct._PangoLayout** %layout2, align 8
  %7 = load i8*, i8** %text.addr, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %6, i8* %7, i32 -1)
  %8 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout3 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %8, i32 0, i32 11
  %9 = load %struct._PangoLayout*, %struct._PangoLayout** %layout3, align 8
  store %struct._PangoLayout* %9, %struct._PangoLayout** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = load i8*, i8** %text.addr, align 8
  %call4 = call %struct._PangoLayout* @gimp_ruler_create_layout(%struct._GtkWidget* %10, i8* %11)
  %12 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout5 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %12, i32 0, i32 11
  store %struct._PangoLayout* %call4, %struct._PangoLayout** %layout5, align 8
  %13 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %layout6 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %13, i32 0, i32 11
  %14 = load %struct._PangoLayout*, %struct._PangoLayout** %layout6, align 8
  store %struct._PangoLayout* %14, %struct._PangoLayout** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._PangoLayout*, %struct._PangoLayout** %retval
  ret %struct._PangoLayout* %15
}

declare void @pango_layout_get_pixel_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._PangoLayout* @gimp_ruler_create_layout(%struct._GtkWidget* %widget, i8* %text) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %text.addr = alloca i8*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %attrs = alloca %struct._PangoAttrList*, align 8
  %attr = alloca %struct._PangoAttribute*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load i8*, i8** %text.addr, align 8
  %call2 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %3, i8* %4)
  store %struct._PangoLayout* %call2, %struct._PangoLayout** %layout, align 8
  %call3 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call3, %struct._PangoAttrList** %attrs, align 8
  %5 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %font_scale = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %5, i32 0, i32 12
  %6 = load double, double* %font_scale, align 8
  %call4 = call %struct._PangoAttribute* @pango_attr_scale_new(double %6)
  store %struct._PangoAttribute* %call4, %struct._PangoAttribute** %attr, align 8
  %7 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %7, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %8 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %8, i32 0, i32 2
  store i32 -1, i32* %end_index, align 4
  %9 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  %10 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %9, %struct._PangoAttribute* %10)
  %11 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %12 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_layout_set_attributes(%struct._PangoLayout* %11, %struct._PangoAttrList* %12)
  %13 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %13)
  %14 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  ret %struct._PangoLayout* %14
}

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._PangoAttribute* @pango_attr_scale_new(double) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare void @pango_layout_set_attributes(%struct._PangoLayout*, %struct._PangoAttrList*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_update_position(%struct._GimpRuler* %ruler, double %x, double %y) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ruler_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %2, %struct.GimpRulerPrivate** %priv, align 8
  %3 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %4 = bitcast %struct._GimpRuler* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %5, %struct._GdkRectangle* %allocation)
  %6 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  call void @gimp_ruler_get_range(%struct._GimpRuler* %6, double* %lower, double* %upper, double* null)
  %7 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %7, i32 0, i32 0
  %8 = load i32, i32* %orientation, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %10 = load double, double* %lower, align 8
  %11 = load double, double* %upper, align 8
  %12 = load double, double* %lower, align 8
  %sub = fsub double %11, %12
  %13 = load double, double* %x.addr, align 8
  %mul = fmul double %sub, %13
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %14 = load i32, i32* %width, align 4
  %conv = sitofp i32 %14 to double
  %div = fdiv double %mul, %conv
  %add = fadd double %10, %div
  call void @gimp_ruler_set_position(%struct._GimpRuler* %9, double %add)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %16 = load double, double* %lower, align 8
  %17 = load double, double* %upper, align 8
  %18 = load double, double* %lower, align 8
  %sub4 = fsub double %17, %18
  %19 = load double, double* %y.addr, align 8
  %mul5 = fmul double %sub4, %19
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %20 = load i32, i32* %height, align 4
  %conv6 = sitofp i32 %20 to double
  %div7 = fdiv double %mul5, %conv6
  %add8 = fadd double %16, %div7
  call void @gimp_ruler_set_position(%struct._GimpRuler* %15, double %add8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @gtk_widget_is_drawable(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_draw_ticks(%struct._GimpRuler* %ruler) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %state = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %cr = alloca %struct._cairo*, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xthickness = alloca i32, align 4
  %ythickness = alloca i32, align 4
  %length = alloca i32, align 4
  %ideal_length = alloca i32, align 4
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %increment = alloca double, align 8
  %scale = alloca i32, align 4
  %start = alloca double, align 8
  %end = alloca double, align 8
  %cur = alloca double, align 8
  %unit_str = alloca [32 x i8], align 16
  %digit_height = alloca i32, align 4
  %digit_offset = alloca i32, align 4
  %text_size = alloca i32, align 4
  %pos = alloca i32, align 4
  %max_size = alloca double, align 8
  %unit = alloca i32, align 4
  %layout = alloca %struct._PangoLayout*, align 8
  %logical_rect = alloca %struct._PangoRectangle, align 4
  %ink_rect = alloca %struct._PangoRectangle, align 4
  %subd_incr = alloca double, align 8
  %j = alloca i32, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %5 = bitcast %struct._GimpRuler* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_ruler_get_type() #6
  %call4 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast i8* %call4 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %6, %struct.GimpRulerPrivate** %priv, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call5 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %7)
  store i32 %call5, i32* %state, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %8)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %9, %struct._GdkRectangle* %allocation)
  %10 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness7 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %10, i32 0, i32 12
  %11 = load i32, i32* %xthickness7, align 4
  store i32 %11, i32* %xthickness, align 4
  %12 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness8 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %12, i32 0, i32 13
  %13 = load i32, i32* %ythickness8, align 4
  store i32 %13, i32* %ythickness, align 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call9 = call %struct._PangoLayout* @gimp_ruler_get_layout(%struct._GtkWidget* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0))
  store %struct._PangoLayout* %call9, %struct._PangoLayout** %layout, align 8
  %15 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_extents(%struct._PangoLayout* %15, %struct._PangoRectangle* %ink_rect, %struct._PangoRectangle* %logical_rect)
  %height10 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink_rect, i32 0, i32 3
  %16 = load i32, i32* %height10, align 4
  %add = add nsw i32 %16, 512
  %shr = ashr i32 %add, 10
  %add11 = add nsw i32 %shr, 2
  store i32 %add11, i32* %digit_height, align 4
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink_rect, i32 0, i32 1
  %17 = load i32, i32* %y, align 4
  store i32 %17, i32* %digit_offset, align 4
  %18 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %orientation, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %20 = load i32, i32* %width13, align 4
  store i32 %20, i32* %width, align 4
  %height14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %21 = load i32, i32* %height14, align 4
  %22 = load i32, i32* %ythickness, align 4
  %mul = mul nsw i32 %22, 2
  %sub = sub nsw i32 %21, %mul
  store i32 %sub, i32* %height, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %height15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %23 = load i32, i32* %height15, align 4
  store i32 %23, i32* %width, align 4
  %width16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %24 = load i32, i32* %width16, align 4
  %25 = load i32, i32* %ythickness, align 4
  %mul17 = mul nsw i32 %25, 2
  %sub18 = sub nsw i32 %24, %mul17
  store i32 %sub18, i32* %height, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.12
  %26 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %26, i32 0, i32 7
  %27 = load %struct._cairo_surface*, %struct._cairo_surface** %backing_store, align 8
  %call20 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %27)
  store %struct._cairo* %call20, %struct._cairo** %cr, align 8
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %29 = load i32, i32* %state, align 4
  %idxprom = zext i32 %29 to i64
  %30 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %30, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %28, %struct._GdkColor* %arrayidx)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %31)
  %32 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %33 = load i32, i32* %state, align 4
  %idxprom21 = zext i32 %33 to i64
  %34 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %34, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom21
  call void @gdk_cairo_set_source_color(%struct._cairo* %32, %struct._GdkColor* %arrayidx22)
  %35 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation23 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %35, i32 0, i32 0
  %36 = load i32, i32* %orientation23, align 4
  %cmp24 = icmp eq i32 %36, 0
  br i1 %cmp24, label %if.then.25, label %if.else.32

if.then.25:                                       ; preds = %if.end.19
  %37 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %38 = load i32, i32* %xthickness, align 4
  %conv = sitofp i32 %38 to double
  %39 = load i32, i32* %height, align 4
  %40 = load i32, i32* %ythickness, align 4
  %add26 = add nsw i32 %39, %40
  %conv27 = sitofp i32 %add26 to double
  %width28 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %41 = load i32, i32* %width28, align 4
  %42 = load i32, i32* %xthickness, align 4
  %mul29 = mul nsw i32 2, %42
  %sub30 = sub nsw i32 %41, %mul29
  %conv31 = sitofp i32 %sub30 to double
  call void @cairo_rectangle(%struct._cairo* %37, double %conv, double %conv27, double %conv31, double 1.000000e+00)
  br label %if.end.40

if.else.32:                                       ; preds = %if.end.19
  %43 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %44 = load i32, i32* %height, align 4
  %45 = load i32, i32* %xthickness, align 4
  %add33 = add nsw i32 %44, %45
  %conv34 = sitofp i32 %add33 to double
  %46 = load i32, i32* %ythickness, align 4
  %conv35 = sitofp i32 %46 to double
  %height36 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %47 = load i32, i32* %height36, align 4
  %48 = load i32, i32* %ythickness, align 4
  %mul37 = mul nsw i32 2, %48
  %sub38 = sub nsw i32 %47, %mul37
  %conv39 = sitofp i32 %sub38 to double
  call void @cairo_rectangle(%struct._cairo* %43, double %conv34, double %conv35, double 1.000000e+00, double %conv39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.32, %if.then.25
  %49 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  call void @gimp_ruler_get_range(%struct._GimpRuler* %49, double* %lower, double* %upper, double* %max_size)
  %50 = load double, double* %upper, align 8
  %51 = load double, double* %lower, align 8
  %sub41 = fsub double %50, %51
  %cmp42 = fcmp oeq double %sub41, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  br label %out

if.end.45:                                        ; preds = %if.end.40
  %52 = load i32, i32* %width, align 4
  %conv46 = sitofp i32 %52 to double
  %53 = load double, double* %upper, align 8
  %54 = load double, double* %lower, align 8
  %sub47 = fsub double %53, %54
  %div = fdiv double %conv46, %sub47
  store double %div, double* %increment, align 8
  %55 = load double, double* %max_size, align 8
  %call48 = call double @ceil(double %55) #6
  %conv49 = fptosi double %call48 to i32
  store i32 %conv49, i32* %scale, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %unit_str, i32 0, i32 0
  %56 = load i32, i32* %scale, align 4
  %call50 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 %56)
  %arraydecay51 = getelementptr inbounds [32 x i8], [32 x i8]* %unit_str, i32 0, i32 0
  %call52 = call i64 @strlen(i8* %arraydecay51) #7
  %57 = load i32, i32* %digit_height, align 4
  %conv53 = sext i32 %57 to i64
  %mul54 = mul i64 %call52, %conv53
  %add55 = add i64 %mul54, 1
  %conv56 = trunc i64 %add55 to i32
  store i32 %conv56, i32* %text_size, align 4
  store i32 0, i32* %scale, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.45
  %58 = load i32, i32* %scale, align 4
  %conv57 = sext i32 %58 to i64
  %cmp58 = icmp ult i64 %conv57, 16
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i32, i32* %scale, align 4
  %idxprom60 = sext i32 %59 to i64
  %arrayidx61 = getelementptr inbounds [16 x double], [16 x double]* getelementptr inbounds (%struct.anon, %struct.anon* @ruler_metric, i32 0, i32 0), i32 0, i64 %idxprom60
  %60 = load double, double* %arrayidx61, align 8
  %61 = load double, double* %increment, align 8
  %call62 = call double @fabs(double %61) #6
  %mul63 = fmul double %60, %call62
  %62 = load i32, i32* %text_size, align 4
  %mul64 = mul nsw i32 2, %62
  %conv65 = sitofp i32 %mul64 to double
  %cmp66 = fcmp ogt double %mul63, %conv65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body
  br label %for.end

if.end.69:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %63 = load i32, i32* %scale, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %scale, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.68, %for.cond
  %64 = load i32, i32* %scale, align 4
  %conv70 = sext i32 %64 to i64
  %cmp71 = icmp eq i64 %conv70, 16
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %for.end
  store i32 15, i32* %scale, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %for.end
  %65 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %call75 = call i32 @gimp_ruler_get_unit(%struct._GimpRuler* %65)
  store i32 %call75, i32* %unit, align 4
  store i32 0, i32* %length, align 4
  store i32 4, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.205, %if.end.74
  %66 = load i32, i32* %i, align 4
  %cmp77 = icmp sge i32 %66, 0
  br i1 %cmp77, label %for.body.79, label %for.end.206

for.body.79:                                      ; preds = %for.cond.76
  %67 = load i32, i32* %unit, align 4
  %cmp80 = icmp eq i32 %67, 0
  br i1 %cmp80, label %land.lhs.true, label %if.else.88

land.lhs.true:                                    ; preds = %for.body.79
  %68 = load i32, i32* %scale, align 4
  %cmp82 = icmp eq i32 %68, 1
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.88

land.lhs.true.84:                                 ; preds = %land.lhs.true
  %69 = load i32, i32* %i, align 4
  %cmp85 = icmp eq i32 %69, 1
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %land.lhs.true.84
  store double 1.000000e+00, double* %subd_incr, align 8
  br label %if.end.95

if.else.88:                                       ; preds = %land.lhs.true.84, %land.lhs.true, %for.body.79
  %70 = load i32, i32* %scale, align 4
  %idxprom89 = sext i32 %70 to i64
  %arrayidx90 = getelementptr inbounds [16 x double], [16 x double]* getelementptr inbounds (%struct.anon, %struct.anon* @ruler_metric, i32 0, i32 0), i32 0, i64 %idxprom89
  %71 = load double, double* %arrayidx90, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %72 to i64
  %arrayidx92 = getelementptr inbounds [5 x i32], [5 x i32]* getelementptr inbounds (%struct.anon, %struct.anon* @ruler_metric, i32 0, i32 1), i32 0, i64 %idxprom91
  %73 = load i32, i32* %arrayidx92, align 4
  %conv93 = sitofp i32 %73 to double
  %div94 = fdiv double %71, %conv93
  store double %div94, double* %subd_incr, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.88, %if.then.87
  %74 = load double, double* %subd_incr, align 8
  %75 = load double, double* %increment, align 8
  %call96 = call double @fabs(double %75) #6
  %mul97 = fmul double %74, %call96
  %cmp98 = fcmp ole double %mul97, 5.000000e+00
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.95
  br label %for.inc.205

if.end.101:                                       ; preds = %if.end.95
  %76 = load i32, i32* %unit, align 4
  %cmp102 = icmp eq i32 %76, 0
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.108

land.lhs.true.104:                                ; preds = %if.end.101
  %77 = load double, double* %subd_incr, align 8
  %cmp105 = fcmp olt double %77, 1.000000e+00
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.104
  br label %for.inc.205

if.end.108:                                       ; preds = %land.lhs.true.104, %if.end.101
  %78 = load i32, i32* %height, align 4
  %79 = load i32, i32* %i, align 4
  %add109 = add nsw i32 %79, 1
  %div110 = sdiv i32 %78, %add109
  %sub111 = sub nsw i32 %div110, 1
  store i32 %sub111, i32* %ideal_length, align 4
  %80 = load i32, i32* %ideal_length, align 4
  %81 = load i32, i32* %length, align 4
  %inc112 = add nsw i32 %81, 1
  store i32 %inc112, i32* %length, align 4
  %cmp113 = icmp sgt i32 %80, %inc112
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.108
  %82 = load i32, i32* %ideal_length, align 4
  store i32 %82, i32* %length, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %if.end.108
  %83 = load double, double* %lower, align 8
  %84 = load double, double* %upper, align 8
  %cmp117 = fcmp olt double %83, %84
  br i1 %cmp117, label %if.then.119, label %if.else.126

if.then.119:                                      ; preds = %if.end.116
  %85 = load double, double* %lower, align 8
  %86 = load double, double* %subd_incr, align 8
  %div120 = fdiv double %85, %86
  %call121 = call double @floor(double %div120) #6
  %87 = load double, double* %subd_incr, align 8
  %mul122 = fmul double %call121, %87
  store double %mul122, double* %start, align 8
  %88 = load double, double* %upper, align 8
  %89 = load double, double* %subd_incr, align 8
  %div123 = fdiv double %88, %89
  %call124 = call double @ceil(double %div123) #6
  %90 = load double, double* %subd_incr, align 8
  %mul125 = fmul double %call124, %90
  store double %mul125, double* %end, align 8
  br label %if.end.133

if.else.126:                                      ; preds = %if.end.116
  %91 = load double, double* %upper, align 8
  %92 = load double, double* %subd_incr, align 8
  %div127 = fdiv double %91, %92
  %call128 = call double @floor(double %div127) #6
  %93 = load double, double* %subd_incr, align 8
  %mul129 = fmul double %call128, %93
  store double %mul129, double* %start, align 8
  %94 = load double, double* %lower, align 8
  %95 = load double, double* %subd_incr, align 8
  %div130 = fdiv double %94, %95
  %call131 = call double @ceil(double %div130) #6
  %96 = load double, double* %subd_incr, align 8
  %mul132 = fmul double %call131, %96
  store double %mul132, double* %end, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.126, %if.then.119
  %97 = load double, double* %start, align 8
  store double %97, double* %cur, align 8
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.202, %if.end.133
  %98 = load double, double* %cur, align 8
  %99 = load double, double* %end, align 8
  %cmp135 = fcmp ole double %98, %99
  br i1 %cmp135, label %for.body.137, label %for.end.204

for.body.137:                                     ; preds = %for.cond.134
  %100 = load double, double* %cur, align 8
  %101 = load double, double* %lower, align 8
  %sub138 = fsub double %100, %101
  %102 = load double, double* %increment, align 8
  %mul139 = fmul double %sub138, %102
  %add140 = fadd double %mul139, 5.000000e-01
  %conv141 = fptosi double %add140 to i32
  store i32 %conv141, i32* %pos, align 4
  %103 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation142 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %103, i32 0, i32 0
  %104 = load i32, i32* %orientation142, align 4
  %cmp143 = icmp eq i32 %104, 0
  br i1 %cmp143, label %if.then.145, label %if.else.151

if.then.145:                                      ; preds = %for.body.137
  %105 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %106 = load i32, i32* %pos, align 4
  %conv146 = sitofp i32 %106 to double
  %107 = load i32, i32* %height, align 4
  %108 = load i32, i32* %ythickness, align 4
  %add147 = add nsw i32 %107, %108
  %109 = load i32, i32* %length, align 4
  %sub148 = sub nsw i32 %add147, %109
  %conv149 = sitofp i32 %sub148 to double
  %110 = load i32, i32* %length, align 4
  %conv150 = sitofp i32 %110 to double
  call void @cairo_rectangle(%struct._cairo* %105, double %conv146, double %conv149, double 1.000000e+00, double %conv150)
  br label %if.end.157

if.else.151:                                      ; preds = %for.body.137
  %111 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %112 = load i32, i32* %height, align 4
  %113 = load i32, i32* %xthickness, align 4
  %add152 = add nsw i32 %112, %113
  %114 = load i32, i32* %length, align 4
  %sub153 = sub nsw i32 %add152, %114
  %conv154 = sitofp i32 %sub153 to double
  %115 = load i32, i32* %pos, align 4
  %conv155 = sitofp i32 %115 to double
  %116 = load i32, i32* %length, align 4
  %conv156 = sitofp i32 %116 to double
  call void @cairo_rectangle(%struct._cairo* %111, double %conv154, double %conv155, double %conv156, double 1.000000e+00)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.151, %if.then.145
  %117 = load i32, i32* %i, align 4
  %cmp158 = icmp eq i32 %117, 0
  br i1 %cmp158, label %if.then.160, label %if.end.201

if.then.160:                                      ; preds = %if.end.157
  %arraydecay161 = getelementptr inbounds [32 x i8], [32 x i8]* %unit_str, i32 0, i32 0
  %118 = load double, double* %cur, align 8
  %conv162 = fptosi double %118 to i32
  %call163 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay161, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 %conv162)
  %119 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation164 = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %119, i32 0, i32 0
  %120 = load i32, i32* %orientation164, align 4
  %cmp165 = icmp eq i32 %120, 0
  br i1 %cmp165, label %if.then.167, label %if.else.177

if.then.167:                                      ; preds = %if.then.160
  %121 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %arraydecay168 = getelementptr inbounds [32 x i8], [32 x i8]* %unit_str, i32 0, i32 0
  call void @pango_layout_set_text(%struct._PangoLayout* %121, i8* %arraydecay168, i32 -1)
  %122 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_extents(%struct._PangoLayout* %122, %struct._PangoRectangle* %logical_rect, %struct._PangoRectangle* null)
  %123 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %124 = load i32, i32* %pos, align 4
  %add169 = add nsw i32 %124, 2
  %conv170 = sitofp i32 %add169 to double
  %125 = load i32, i32* %ythickness, align 4
  %y171 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical_rect, i32 0, i32 1
  %126 = load i32, i32* %y171, align 4
  %127 = load i32, i32* %digit_offset, align 4
  %sub172 = sub nsw i32 %126, %127
  %add173 = add nsw i32 %sub172, 512
  %shr174 = ashr i32 %add173, 10
  %add175 = add nsw i32 %125, %shr174
  %conv176 = sitofp i32 %add175 to double
  call void @cairo_move_to(%struct._cairo* %123, double %conv170, double %conv176)
  %128 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %129 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %128, %struct._PangoLayout* %129)
  br label %if.end.200

if.else.177:                                      ; preds = %if.then.160
  store i32 0, i32* %j, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.197, %if.else.177
  %130 = load i32, i32* %j, align 4
  %arraydecay179 = getelementptr inbounds [32 x i8], [32 x i8]* %unit_str, i32 0, i32 0
  %call180 = call i64 @strlen(i8* %arraydecay179) #7
  %conv181 = trunc i64 %call180 to i32
  %cmp182 = icmp slt i32 %130, %conv181
  br i1 %cmp182, label %for.body.184, label %for.end.199

for.body.184:                                     ; preds = %for.cond.178
  %131 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %arraydecay185 = getelementptr inbounds [32 x i8], [32 x i8]* %unit_str, i32 0, i32 0
  %132 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %132 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay185, i64 %idx.ext
  call void @pango_layout_set_text(%struct._PangoLayout* %131, i8* %add.ptr, i32 1)
  %133 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_extents(%struct._PangoLayout* %133, %struct._PangoRectangle* null, %struct._PangoRectangle* %logical_rect)
  %134 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %135 = load i32, i32* %xthickness, align 4
  %add186 = add nsw i32 %135, 1
  %conv187 = sitofp i32 %add186 to double
  %136 = load i32, i32* %pos, align 4
  %137 = load i32, i32* %digit_height, align 4
  %138 = load i32, i32* %j, align 4
  %mul188 = mul nsw i32 %137, %138
  %add189 = add nsw i32 %136, %mul188
  %add190 = add nsw i32 %add189, 2
  %y191 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical_rect, i32 0, i32 1
  %139 = load i32, i32* %y191, align 4
  %140 = load i32, i32* %digit_offset, align 4
  %sub192 = sub nsw i32 %139, %140
  %add193 = add nsw i32 %sub192, 512
  %shr194 = ashr i32 %add193, 10
  %add195 = add nsw i32 %add190, %shr194
  %conv196 = sitofp i32 %add195 to double
  call void @cairo_move_to(%struct._cairo* %134, double %conv187, double %conv196)
  %141 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %142 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %141, %struct._PangoLayout* %142)
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.body.184
  %143 = load i32, i32* %j, align 4
  %inc198 = add nsw i32 %143, 1
  store i32 %inc198, i32* %j, align 4
  br label %for.cond.178

for.end.199:                                      ; preds = %for.cond.178
  br label %if.end.200

if.end.200:                                       ; preds = %for.end.199, %if.then.167
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.157
  br label %for.inc.202

for.inc.202:                                      ; preds = %if.end.201
  %144 = load double, double* %subd_incr, align 8
  %145 = load double, double* %cur, align 8
  %add203 = fadd double %145, %144
  store double %add203, double* %cur, align 8
  br label %for.cond.134

for.end.204:                                      ; preds = %for.cond.134
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.end.204, %if.then.107, %if.then.100
  %146 = load i32, i32* %i, align 4
  %dec = add nsw i32 %146, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.76

for.end.206:                                      ; preds = %for.cond.76
  %147 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %147)
  %148 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %backing_store_valid = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %148, i32 0, i32 8
  store i32 1, i32* %backing_store_valid, align 4
  br label %out

out:                                              ; preds = %for.end.206, %if.then.44
  %149 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %149)
  br label %return

return:                                           ; preds = %out, %if.then
  ret void
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_draw_pos(%struct._GimpRuler* %ruler, %struct._cairo* %cr) #3 {
entry:
  %ruler.addr = alloca %struct._GimpRuler*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %priv = alloca %struct.GimpRulerPrivate*, align 8
  %state = alloca i32, align 4
  %pos_rect = alloca %struct._GdkRectangle, align 4
  %coerce = alloca %struct._GdkRectangle, align 4
  store %struct._GimpRuler* %ruler, %struct._GimpRuler** %ruler.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %1 = bitcast %struct._GimpRuler* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %5 = bitcast %struct._GimpRuler* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_ruler_get_type() #6
  %call4 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast i8* %call4 to %struct.GimpRulerPrivate*
  store %struct.GimpRulerPrivate* %6, %struct.GimpRulerPrivate** %priv, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call5 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %7)
  store i32 %call5, i32* %state, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i32 @gtk_widget_is_drawable(%struct._GtkWidget* %8)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %10 = load %struct._GimpRuler*, %struct._GimpRuler** %ruler.addr, align 8
  %call7 = call double @gimp_ruler_get_position(%struct._GimpRuler* %10)
  %call8 = call { i64, i64 } @gimp_ruler_get_pos_rect(%struct._GimpRuler* %9, double %call7)
  %11 = bitcast %struct._GdkRectangle* %coerce to { i64, i64 }*
  %12 = getelementptr { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %call8, 0
  store i64 %13, i64* %12, align 4
  %14 = getelementptr { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %call8, 1
  store i64 %15, i64* %14, align 4
  %16 = bitcast %struct._GdkRectangle* %pos_rect to i8*
  %17 = bitcast %struct._GdkRectangle* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 4, i1 false)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 2
  %18 = load i32, i32* %width, align 4
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 3
  %19 = load i32, i32* %height, align 4
  %cmp9 = icmp sgt i32 %19, 0
  br i1 %cmp9, label %if.then.10, label %if.end.46

if.then.10:                                       ; preds = %land.lhs.true
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %21 = load i32, i32* %state, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %22, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %20, %struct._GdkColor* %arrayidx)
  %23 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 0
  %24 = load i32, i32* %x, align 4
  %conv = sitofp i32 %24 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 1
  %25 = load i32, i32* %y, align 4
  %conv11 = sitofp i32 %25 to double
  call void @cairo_move_to(%struct._cairo* %23, double %conv, double %conv11)
  %26 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %orientation = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %26, i32 0, i32 0
  %27 = load i32, i32* %orientation, align 4
  %cmp12 = icmp eq i32 %27, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.10
  %28 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 0
  %29 = load i32, i32* %x15, align 4
  %conv16 = sitofp i32 %29 to double
  %width17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 2
  %30 = load i32, i32* %width17, align 4
  %conv18 = sitofp i32 %30 to double
  %div = fdiv double %conv18, 2.000000e+00
  %add = fadd double %conv16, %div
  %y19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 1
  %31 = load i32, i32* %y19, align 4
  %height20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 3
  %32 = load i32, i32* %height20, align 4
  %add21 = add nsw i32 %31, %32
  %conv22 = sitofp i32 %add21 to double
  call void @cairo_line_to(%struct._cairo* %28, double %add, double %conv22)
  %33 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 0
  %34 = load i32, i32* %x23, align 4
  %width24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 2
  %35 = load i32, i32* %width24, align 4
  %add25 = add nsw i32 %34, %35
  %conv26 = sitofp i32 %add25 to double
  %y27 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 1
  %36 = load i32, i32* %y27, align 4
  %conv28 = sitofp i32 %36 to double
  call void @cairo_line_to(%struct._cairo* %33, double %conv26, double %conv28)
  br label %if.end.45

if.else:                                          ; preds = %if.then.10
  %37 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 0
  %38 = load i32, i32* %x29, align 4
  %width30 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 2
  %39 = load i32, i32* %width30, align 4
  %add31 = add nsw i32 %38, %39
  %conv32 = sitofp i32 %add31 to double
  %y33 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 1
  %40 = load i32, i32* %y33, align 4
  %conv34 = sitofp i32 %40 to double
  %height35 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 3
  %41 = load i32, i32* %height35, align 4
  %conv36 = sitofp i32 %41 to double
  %div37 = fdiv double %conv36, 2.000000e+00
  %add38 = fadd double %conv34, %div37
  call void @cairo_line_to(%struct._cairo* %37, double %conv32, double %add38)
  %42 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 0
  %43 = load i32, i32* %x39, align 4
  %conv40 = sitofp i32 %43 to double
  %y41 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 1
  %44 = load i32, i32* %y41, align 4
  %height42 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %pos_rect, i32 0, i32 3
  %45 = load i32, i32* %height42, align 4
  %add43 = add nsw i32 %44, %45
  %conv44 = sitofp i32 %add43 to double
  call void @cairo_line_to(%struct._cairo* %42, double %conv40, double %conv44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.14
  %46 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %46)
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true, %if.end
  %47 = load %struct.GimpRulerPrivate*, %struct.GimpRulerPrivate** %priv, align 8
  %last_pos_rect = getelementptr inbounds %struct.GimpRulerPrivate, %struct.GimpRulerPrivate* %47, i32 0, i32 9
  %48 = bitcast %struct._GdkRectangle* %last_pos_rect to i8*
  %49 = bitcast %struct._GdkRectangle* %pos_rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end.46, %if.then
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare void @pango_layout_get_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @gtk_widget_set_has_window(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ruler_event_to_widget_coords(%struct._GtkWidget* %widget, %struct._GdkDrawable* %window, double %event_x, double %event_y, i32* %widget_x, i32* %widget_y) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %event_x.addr = alloca double, align 8
  %event_y.addr = alloca double, align 8
  %widget_x.addr = alloca i32*, align 8
  %widget_y.addr = alloca i32*, align 8
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store double %event_x, double* %event_x.addr, align 8
  store double %event_y, double* %event_y.addr, align 8
  store i32* %widget_x, i32** %widget_x.addr, align 8
  store i32* %widget_y, i32** %widget_y.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %call = call i32 @gtk_widget_get_translation_to_window(%struct._GtkWidget* %0, %struct._GdkDrawable* %1, i32* %tx, i32* %ty)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %tx, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, double* %event_x.addr, align 8
  %add = fadd double %3, %conv
  store double %add, double* %event_x.addr, align 8
  %4 = load i32, i32* %ty, align 4
  %conv1 = sitofp i32 %4 to double
  %5 = load double, double* %event_y.addr, align 8
  %add2 = fadd double %5, %conv1
  store double %add2, double* %event_y.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load double, double* %event_x.addr, align 8
  %conv3 = fptosi double %6 to i32
  %7 = load i32*, i32** %widget_x.addr, align 8
  store i32 %conv3, i32* %7, align 4
  %8 = load double, double* %event_y.addr, align 8
  %conv4 = fptosi double %8 to i32
  %9 = load i32*, i32** %widget_y.addr, align 8
  store i32 %conv4, i32* %9, align 4
  ret void
}

declare i32 @gtk_widget_translate_coordinates(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gtk_widget_get_translation_to_window(%struct._GtkWidget* %widget, %struct._GdkDrawable* %window, i32* %x, i32* %y) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %w = alloca %struct._GdkDrawable*, align 8
  %widget_window = alloca %struct._GdkDrawable*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %px = alloca double, align 8
  %py = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %x1 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %2 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 0, %2
  %3 = load i32*, i32** %x.addr, align 8
  store i32 %sub, i32* %3, align 4
  %y2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %4 = load i32, i32* %y2, align 4
  %sub3 = sub nsw i32 0, %4
  %5 = load i32*, i32** %y.addr, align 8
  store i32 %sub3, i32* %5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32*, i32** %x.addr, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %y.addr, align 8
  store i32 0, i32* %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %8)
  store %struct._GdkDrawable* %call4, %struct._GdkDrawable** %widget_window, align 8
  %9 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  store %struct._GdkDrawable* %9, %struct._GdkDrawable** %w, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct._GdkDrawable*, %struct._GdkDrawable** %w, align 8
  %tobool5 = icmp ne %struct._GdkDrawable* %10, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %w, align 8
  %12 = load %struct._GdkDrawable*, %struct._GdkDrawable** %widget_window, align 8
  %cmp = icmp ne %struct._GdkDrawable* %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct._GdkDrawable*, %struct._GdkDrawable** %w, align 8
  %15 = load i32*, i32** %x.addr, align 8
  %16 = load i32, i32* %15, align 4
  %conv = sitofp i32 %16 to double
  %17 = load i32*, i32** %y.addr, align 8
  %18 = load i32, i32* %17, align 4
  %conv6 = sitofp i32 %18 to double
  call void @gdk_window_coords_to_parent(%struct._GdkDrawable* %14, double %conv, double %conv6, double* %px, double* %py)
  %19 = load double, double* %px, align 8
  %20 = load i32*, i32** %x.addr, align 8
  %21 = load i32, i32* %20, align 4
  %conv7 = sitofp i32 %21 to double
  %add = fadd double %conv7, %19
  %conv8 = fptosi double %add to i32
  store i32 %conv8, i32* %20, align 4
  %22 = load double, double* %py, align 8
  %23 = load i32*, i32** %y.addr, align 8
  %24 = load i32, i32* %23, align 4
  %conv9 = sitofp i32 %24 to double
  %add10 = fadd double %conv9, %22
  %conv11 = fptosi double %add10 to i32
  store i32 %conv11, i32* %23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load %struct._GdkDrawable*, %struct._GdkDrawable** %w, align 8
  %call12 = call %struct._GdkDrawable* @gdk_window_get_effective_parent(%struct._GdkDrawable* %25)
  store %struct._GdkDrawable* %call12, %struct._GdkDrawable** %w, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %26 = load %struct._GdkDrawable*, %struct._GdkDrawable** %w, align 8
  %cmp13 = icmp eq %struct._GdkDrawable* %26, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  %27 = load i32*, i32** %x.addr, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %y.addr, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare void @gdk_window_coords_to_parent(%struct._GdkDrawable*, double, double, double*, double*) #1

declare %struct._GdkDrawable* @gdk_window_get_effective_parent(%struct._GdkDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gtk_widget_queue_draw_area(%struct._GtkWidget*, i32, i32, i32, i32) #1

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
