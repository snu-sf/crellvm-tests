; ModuleID = './app/widgets/gtkwrapbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GtkWrapBoxClass = type { %struct._GtkContainerClass, %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)* }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type { i64, i8*, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { void ()*, i8* }
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
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.1 }
%union.anon.1 = type { [5 x i64] }
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
%struct._GtkWrapBox = type { %struct._GtkContainer, i16, i8, i8, i16, %struct._GtkWrapBoxChild*, float, i32 }
%struct._GtkWrapBoxChild = type { %struct._GtkWidget*, i8, %struct._GtkWrapBoxChild* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gtk_wrap_box_get_type.wrap_box_type = internal global i64 0, align 8
@gtk_wrap_box_get_type.wrap_box_info = internal constant %struct._GTypeInfo { i16 832, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GtkWrapBoxClass*)* @gtk_wrap_box_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 136, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GtkWrapBox*)* @gtk_wrap_box_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"GtkWrapBox\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gtk_wrap_box_set_homogeneous = private unnamed_addr constant [29 x i8] c"gtk_wrap_box_set_homogeneous\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_WRAP_BOX (wbox)\00", align 1
@__func__.gtk_wrap_box_set_hspacing = private unnamed_addr constant [26 x i8] c"gtk_wrap_box_set_hspacing\00", align 1
@__func__.gtk_wrap_box_set_vspacing = private unnamed_addr constant [26 x i8] c"gtk_wrap_box_set_vspacing\00", align 1
@__func__.gtk_wrap_box_set_justify = private unnamed_addr constant [25 x i8] c"gtk_wrap_box_set_justify\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"justify <= GTK_JUSTIFY_FILL\00", align 1
@__func__.gtk_wrap_box_set_line_justify = private unnamed_addr constant [30 x i8] c"gtk_wrap_box_set_line_justify\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"line_justify <= GTK_JUSTIFY_FILL\00", align 1
@__func__.gtk_wrap_box_set_aspect_ratio = private unnamed_addr constant [30 x i8] c"gtk_wrap_box_set_aspect_ratio\00", align 1
@__func__.gtk_wrap_box_pack = private unnamed_addr constant [18 x i8] c"gtk_wrap_box_pack\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GTK_IS_WIDGET (child)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"child->parent == NULL\00", align 1
@__func__.gtk_wrap_box_pack_wrapped = private unnamed_addr constant [26 x i8] c"gtk_wrap_box_pack_wrapped\00", align 1
@__func__.gtk_wrap_box_reorder_child = private unnamed_addr constant [27 x i8] c"gtk_wrap_box_reorder_child\00", align 1
@__func__.gtk_wrap_box_query_child_packing = private unnamed_addr constant [33 x i8] c"gtk_wrap_box_query_child_packing\00", align 1
@__func__.gtk_wrap_box_set_child_packing = private unnamed_addr constant [31 x i8] c"gtk_wrap_box_set_child_packing\00", align 1
@__func__.gtk_wrap_box_query_line_lengths = private unnamed_addr constant [32 x i8] c"gtk_wrap_box_query_line_lengths\00", align 1
@parent_class = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"homogeneous\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"justify\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"hspacing\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"vspacing\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"line-justify\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"aspect-ratio\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"current-ratio\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"max-children-per-line\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"hexpand\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"hfill\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"vexpand\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"vfill\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"wrapped\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gtkwrapbox.c\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"child property id\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gtk_wrap_box_get_type() #0 {
entry:
  %0 = load i64, i64* @gtk_wrap_box_get_type.wrap_box_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gtk_container_get_type() #6
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gtk_wrap_box_get_type.wrap_box_info, i32 0)
  store i64 %call1, i64* @gtk_wrap_box_get_type.wrap_box_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gtk_wrap_box_get_type.wrap_box_type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_class_init(%struct._GtkWrapBoxClass* %class) #1 {
entry:
  %class.addr = alloca %struct._GtkWrapBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %container_class = alloca %struct._GtkContainerClass*, align 8
  store %struct._GtkWrapBoxClass* %class, %struct._GtkWrapBoxClass** %class.addr, align 8
  %0 = load %struct._GtkWrapBoxClass*, %struct._GtkWrapBoxClass** %class.addr, align 8
  %1 = bitcast %struct._GtkWrapBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GtkWrapBoxClass*, %struct._GtkWrapBoxClass** %class.addr, align 8
  %4 = bitcast %struct._GtkWrapBoxClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GtkWrapBoxClass*, %struct._GtkWrapBoxClass** %class.addr, align 8
  %7 = bitcast %struct._GtkWrapBoxClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkContainerClass*
  store %struct._GtkContainerClass* %8, %struct._GtkContainerClass** %container_class, align 8
  %9 = load %struct._GtkWrapBoxClass*, %struct._GtkWrapBoxClass** %class.addr, align 8
  %10 = bitcast %struct._GtkWrapBoxClass* %9 to i8*
  %call5 = call i8* @g_type_class_peek_parent(i8* %10)
  store i8* %call5, i8** @parent_class, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gtk_wrap_box_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gtk_wrap_box_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 8
  store void (%struct._GtkWidget*)* @gtk_wrap_box_map, void (%struct._GtkWidget*)** %map, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gtk_wrap_box_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 31
  store i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @gtk_wrap_box_expose, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %16 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %add = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %16, i32 0, i32 1
  store void (%struct._GtkContainer*, %struct._GtkWidget*)* @gtk_wrap_box_add, void (%struct._GtkContainer*, %struct._GtkWidget*)** %add, align 8
  %17 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %remove = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %17, i32 0, i32 2
  store void (%struct._GtkContainer*, %struct._GtkWidget*)* @gtk_wrap_box_remove, void (%struct._GtkContainer*, %struct._GtkWidget*)** %remove, align 8
  %18 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %forall = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %18, i32 0, i32 4
  store void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)* @gtk_wrap_box_forall, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)** %forall, align 8
  %19 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %child_type = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %19, i32 0, i32 6
  store i64 (%struct._GtkContainer*)* @gtk_wrap_box_child_type, i64 (%struct._GtkContainer*)** %child_type, align 8
  %20 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %set_child_property = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %20, i32 0, i32 8
  store void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)* @gtk_wrap_box_set_child_property, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_child_property, align 8
  %21 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %get_child_property = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %21, i32 0, i32 9
  store void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)* @gtk_wrap_box_get_child_property, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_child_property, align 8
  %22 = load %struct._GtkWrapBoxClass*, %struct._GtkWrapBoxClass** %class.addr, align 8
  %rlist_line_children = getelementptr inbounds %struct._GtkWrapBoxClass, %struct._GtkWrapBoxClass* %22, i32 0, i32 1
  store %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)* null, %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)** %rlist_line_children, align 8
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 3)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 1, %struct._GParamSpec* %call6)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gtk_justification_get_type() #6
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 0, i32 3)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 2, %struct._GParamSpec* %call8)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 3)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 3, %struct._GParamSpec* %call9)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 3)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 4, %struct._GParamSpec* %call10)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call i64 @gtk_justification_get_type() #6
  %call12 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i64 %call11, i32 1, i32 3)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 5, %struct._GParamSpec* %call12)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_float(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 6, %struct._GParamSpec* %call13)
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_float(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 1)
  call void @g_object_class_install_property(%struct._GObjectClass* %29, i32 7, %struct._GParamSpec* %call14)
  %30 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i32 1, i32 32767, i32 32767, i32 3)
  call void @g_object_class_install_property(%struct._GObjectClass* %30, i32 8, %struct._GParamSpec* %call15)
  %31 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %call16 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 2147483647, i32 0, i32 3)
  call void @gtk_container_class_install_child_property(%struct._GtkContainerClass* %31, i32 1, %struct._GParamSpec* %call16)
  %32 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %call17 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i32 0, i32 3)
  call void @gtk_container_class_install_child_property(%struct._GtkContainerClass* %32, i32 2, %struct._GParamSpec* %call17)
  %33 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i32 0, i32 3)
  call void @gtk_container_class_install_child_property(%struct._GtkContainerClass* %33, i32 3, %struct._GParamSpec* %call18)
  %34 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i32 0, i32 3)
  call void @gtk_container_class_install_child_property(%struct._GtkContainerClass* %34, i32 4, %struct._GParamSpec* %call19)
  %35 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i32 0, i32 3)
  call void @gtk_container_class_install_child_property(%struct._GtkContainerClass* %35, i32 5, %struct._GParamSpec* %call20)
  %36 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i32 0, i32 3)
  call void @gtk_container_class_install_child_property(%struct._GtkContainerClass* %36, i32 6, %struct._GParamSpec* %call21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_init(%struct._GtkWrapBox* %wbox) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_object_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %2, i32 0, i32 1
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 32
  store i32 %or, i32* %flags, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %homogeneous = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %4, i32 0, i32 1
  %bf.load = load i16, i16* %homogeneous, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, i16* %homogeneous, align 8
  %5 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %5, i32 0, i32 2
  store i8 0, i8* %hspacing, align 1
  %6 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %vspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %6, i32 0, i32 3
  store i8 0, i8* %vspacing, align 1
  %7 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %7, i32 0, i32 1
  %bf.load2 = load i16, i16* %justify, align 8
  %bf.clear3 = and i16 %bf.load2, -31
  store i16 %bf.clear3, i16* %justify, align 8
  %8 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %line_justify = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %8, i32 0, i32 1
  %bf.load4 = load i16, i16* %line_justify, align 8
  %bf.clear5 = and i16 %bf.load4, -481
  %bf.set = or i16 %bf.clear5, 32
  store i16 %bf.set, i16* %line_justify, align 8
  %9 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %n_children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %9, i32 0, i32 4
  store i16 0, i16* %n_children, align 2
  %10 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %10, i32 0, i32 5
  store %struct._GtkWrapBoxChild* null, %struct._GtkWrapBoxChild** %children, align 8
  %11 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %11, i32 0, i32 6
  store float 1.000000e+00, float* %aspect_ratio, align 4
  %12 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %child_limit = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %12, i32 0, i32 7
  store i32 32767, i32* %child_limit, align 4
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_set_homogeneous(%struct._GtkWrapBox* %wbox, i32 %homogeneous) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %homogeneous.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store i32 %homogeneous, i32* %homogeneous.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gtk_wrap_box_set_homogeneous, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %homogeneous.addr, align 4
  %cmp11 = icmp ne i32 %13, 0
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %homogeneous.addr, align 4
  %14 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %homogeneous12 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %14, i32 0, i32 1
  %bf.load = load i16, i16* %homogeneous12, align 8
  %bf.clear = and i16 %bf.load, 1
  %bf.cast = zext i16 %bf.clear to i32
  %15 = load i32, i32* %homogeneous.addr, align 4
  %cmp13 = icmp ne i32 %bf.cast, %15
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %do.end
  %16 = load i32, i32* %homogeneous.addr, align 4
  %17 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %homogeneous16 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %17, i32 0, i32 1
  %18 = trunc i32 %16 to i16
  %bf.load17 = load i16, i16* %homogeneous16, align 8
  %bf.value = and i16 %18, 1
  %bf.clear18 = and i16 %bf.load17, -2
  %bf.set = or i16 %bf.clear18, %bf.value
  store i16 %bf.set, i16* %homogeneous16, align 8
  %bf.result.cast = zext i16 %bf.value to i32
  %19 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %20 = bitcast %struct._GtkWrapBox* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @gtk_widget_queue_resize(%struct._GtkWidget*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_set_hspacing(%struct._GtkWrapBox* %wbox, i32 %hspacing) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %hspacing.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store i32 %hspacing, i32* %hspacing.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gtk_wrap_box_set_hspacing, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing11 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %13, i32 0, i32 2
  %14 = load i8, i8* %hspacing11, align 1
  %conv = zext i8 %14 to i32
  %15 = load i32, i32* %hspacing.addr, align 4
  %cmp12 = icmp ne i32 %conv, %15
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.end
  %16 = load i32, i32* %hspacing.addr, align 4
  %conv15 = trunc i32 %16 to i8
  %17 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing16 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %17, i32 0, i32 2
  store i8 %conv15, i8* %hspacing16, align 1
  %18 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %19 = bitcast %struct._GtkWrapBox* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_set_vspacing(%struct._GtkWrapBox* %wbox, i32 %vspacing) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %vspacing.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store i32 %vspacing, i32* %vspacing.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gtk_wrap_box_set_vspacing, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %vspacing11 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %13, i32 0, i32 3
  %14 = load i8, i8* %vspacing11, align 1
  %conv = zext i8 %14 to i32
  %15 = load i32, i32* %vspacing.addr, align 4
  %cmp12 = icmp ne i32 %conv, %15
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.end
  %16 = load i32, i32* %vspacing.addr, align 4
  %conv15 = trunc i32 %16 to i8
  %17 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %vspacing16 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %17, i32 0, i32 3
  store i8 %conv15, i8* %vspacing16, align 1
  %18 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %19 = bitcast %struct._GtkWrapBox* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_set_justify(%struct._GtkWrapBox* %wbox, i32 %justify) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %justify.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store i32 %justify, i32* %justify.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gtk_wrap_box_set_justify, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %justify.addr, align 4
  %cmp12 = icmp ule i32 %13, 3
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gtk_wrap_box_set_justify, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.25

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify17 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %14, i32 0, i32 1
  %bf.load = load i16, i16* %justify17, align 8
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 15
  %bf.cast = zext i16 %bf.clear to i32
  %15 = load i32, i32* %justify.addr, align 4
  %cmp18 = icmp ne i32 %bf.cast, %15
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %do.end.16
  %16 = load i32, i32* %justify.addr, align 4
  %17 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify20 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %17, i32 0, i32 1
  %18 = trunc i32 %16 to i16
  %bf.load21 = load i16, i16* %justify20, align 8
  %bf.value = and i16 %18, 15
  %bf.shl = shl i16 %bf.value, 1
  %bf.clear22 = and i16 %bf.load21, -31
  %bf.set = or i16 %bf.clear22, %bf.shl
  store i16 %bf.set, i16* %justify20, align 8
  %bf.result.cast = zext i16 %bf.value to i32
  %19 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %20 = bitcast %struct._GtkWrapBox* %19 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call23)
  %21 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.9, %if.else.14, %if.then.19, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_set_line_justify(%struct._GtkWrapBox* %wbox, i32 %line_justify) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %line_justify.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store i32 %line_justify, i32* %line_justify.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gtk_wrap_box_set_line_justify, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %line_justify.addr, align 4
  %cmp12 = icmp ule i32 %13, 3
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gtk_wrap_box_set_line_justify, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.25

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %line_justify17 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %14, i32 0, i32 1
  %bf.load = load i16, i16* %line_justify17, align 8
  %bf.lshr = lshr i16 %bf.load, 5
  %bf.clear = and i16 %bf.lshr, 15
  %bf.cast = zext i16 %bf.clear to i32
  %15 = load i32, i32* %line_justify.addr, align 4
  %cmp18 = icmp ne i32 %bf.cast, %15
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %do.end.16
  %16 = load i32, i32* %line_justify.addr, align 4
  %17 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %line_justify20 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %17, i32 0, i32 1
  %18 = trunc i32 %16 to i16
  %bf.load21 = load i16, i16* %line_justify20, align 8
  %bf.value = and i16 %18, 15
  %bf.shl = shl i16 %bf.value, 5
  %bf.clear22 = and i16 %bf.load21, -481
  %bf.set = or i16 %bf.clear22, %bf.shl
  store i16 %bf.set, i16* %line_justify20, align 8
  %bf.result.cast = zext i16 %bf.value to i32
  %19 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %20 = bitcast %struct._GtkWrapBox* %19 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call23)
  %21 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.9, %if.else.14, %if.then.19, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_set_aspect_ratio(%struct._GtkWrapBox* %wbox, float %aspect_ratio) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %aspect_ratio.addr = alloca float, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store float %aspect_ratio, float* %aspect_ratio.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gtk_wrap_box_set_aspect_ratio, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load float, float* %aspect_ratio.addr, align 4
  %conv = fpext float %13 to double
  %cmp11 = fcmp ogt double %conv, 2.560000e+02
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.19

cond.false:                                       ; preds = %do.end
  %14 = load float, float* %aspect_ratio.addr, align 4
  %conv13 = fpext float %14 to double
  %cmp14 = fcmp olt double %conv13, 3.906250e-03
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %15 = load float, float* %aspect_ratio.addr, align 4
  %conv18 = fpext float %15 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi double [ 3.906250e-03, %cond.true.16 ], [ %conv18, %cond.false.17 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi double [ 2.560000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv21 = fptrunc double %cond20 to float
  store float %conv21, float* %aspect_ratio.addr, align 4
  %16 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %aspect_ratio22 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %16, i32 0, i32 6
  %17 = load float, float* %aspect_ratio22, align 4
  %18 = load float, float* %aspect_ratio.addr, align 4
  %cmp23 = fcmp une float %17, %18
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %cond.end.19
  %19 = load float, float* %aspect_ratio.addr, align 4
  %20 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %aspect_ratio26 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %20, i32 0, i32 6
  store float %19, float* %aspect_ratio26, align 4
  %21 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %22 = bitcast %struct._GtkWrapBox* %21 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_widget_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call27)
  %23 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %23)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.then.25, %cond.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_pack(%struct._GtkWrapBox* %wbox, %struct._GtkWidget* %child, i32 %hexpand, i32 %hfill, i32 %vexpand, i32 %vfill) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %hexpand.addr = alloca i32, align 4
  %hfill.addr = alloca i32, align 4
  %vexpand.addr = alloca i32, align 4
  %vfill.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store i32 %hexpand, i32* %hexpand.addr, align 4
  store i32 %hfill, i32* %hfill.addr, align 4
  store i32 %vexpand, i32* %vexpand.addr, align 4
  store i32 %vfill, i32* %vfill.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gtk_wrap_box_pack, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gtk_wrap_box_pack, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %parent = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %26, i32 0, i32 9
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %cmp40 = icmp eq %struct._GtkWidget* %27, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gtk_wrap_box_pack, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %28 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %30 = load i32, i32* %hexpand.addr, align 4
  %31 = load i32, i32* %hfill.addr, align 4
  %32 = load i32, i32* %vexpand.addr, align 4
  %33 = load i32, i32* %vfill.addr, align 4
  call void @gtk_wrap_box_pack_wrapped(%struct._GtkWrapBox* %28, %struct._GtkWidget* %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 0)
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_pack_wrapped(%struct._GtkWrapBox* %wbox, %struct._GtkWidget* %child, i32 %hexpand, i32 %hfill, i32 %vexpand, i32 %vfill, i32 %wrapped) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %hexpand.addr = alloca i32, align 4
  %hfill.addr = alloca i32, align 4
  %vexpand.addr = alloca i32, align 4
  %vfill.addr = alloca i32, align 4
  %wrapped.addr = alloca i32, align 4
  %child_info = alloca %struct._GtkWrapBoxChild*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %last = alloca %struct._GtkWrapBoxChild*, align 8
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store i32 %hexpand, i32* %hexpand.addr, align 4
  store i32 %hfill, i32* %hfill.addr, align 4
  store i32 %vexpand, i32* %vexpand.addr, align 4
  store i32 %vfill, i32* %vfill.addr, align 4
  store i32 %wrapped, i32* %wrapped.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gtk_wrap_box_pack_wrapped, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.120

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gtk_wrap_box_pack_wrapped, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.120

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %parent = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %26, i32 0, i32 9
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %cmp40 = icmp eq %struct._GtkWidget* %27, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gtk_wrap_box_pack_wrapped, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.120

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %call45 = call noalias i8* @g_slice_alloc(i64 24)
  %28 = bitcast i8* %call45 to %struct._GtkWrapBoxChild*
  store %struct._GtkWrapBoxChild* %28, %struct._GtkWrapBoxChild** %child_info, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %30 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %30, i32 0, i32 0
  store %struct._GtkWidget* %29, %struct._GtkWidget** %widget, align 8
  %31 = load i32, i32* %hexpand.addr, align 4
  %tobool46 = icmp ne i32 %31, 0
  %cond = select i1 %tobool46, i32 1, i32 0
  %32 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %hexpand47 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %32, i32 0, i32 1
  %33 = trunc i32 %cond to i8
  %bf.load = load i8, i8* %hexpand47, align 8
  %bf.value = and i8 %33, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %hexpand47, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %34 = load i32, i32* %hfill.addr, align 4
  %tobool48 = icmp ne i32 %34, 0
  %cond49 = select i1 %tobool48, i32 1, i32 0
  %35 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %hfill50 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %35, i32 0, i32 1
  %36 = trunc i32 %cond49 to i8
  %bf.load51 = load i8, i8* %hfill50, align 8
  %bf.value52 = and i8 %36, 1
  %bf.shl = shl i8 %bf.value52, 1
  %bf.clear53 = and i8 %bf.load51, -3
  %bf.set54 = or i8 %bf.clear53, %bf.shl
  store i8 %bf.set54, i8* %hfill50, align 8
  %bf.result.cast55 = zext i8 %bf.value52 to i32
  %37 = load i32, i32* %vexpand.addr, align 4
  %tobool56 = icmp ne i32 %37, 0
  %cond57 = select i1 %tobool56, i32 1, i32 0
  %38 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %vexpand58 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %38, i32 0, i32 1
  %39 = trunc i32 %cond57 to i8
  %bf.load59 = load i8, i8* %vexpand58, align 8
  %bf.value60 = and i8 %39, 1
  %bf.shl61 = shl i8 %bf.value60, 2
  %bf.clear62 = and i8 %bf.load59, -5
  %bf.set63 = or i8 %bf.clear62, %bf.shl61
  store i8 %bf.set63, i8* %vexpand58, align 8
  %bf.result.cast64 = zext i8 %bf.value60 to i32
  %40 = load i32, i32* %vfill.addr, align 4
  %tobool65 = icmp ne i32 %40, 0
  %cond66 = select i1 %tobool65, i32 1, i32 0
  %41 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %vfill67 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %41, i32 0, i32 1
  %42 = trunc i32 %cond66 to i8
  %bf.load68 = load i8, i8* %vfill67, align 8
  %bf.value69 = and i8 %42, 1
  %bf.shl70 = shl i8 %bf.value69, 3
  %bf.clear71 = and i8 %bf.load68, -9
  %bf.set72 = or i8 %bf.clear71, %bf.shl70
  store i8 %bf.set72, i8* %vfill67, align 8
  %bf.result.cast73 = zext i8 %bf.value69 to i32
  %43 = load i32, i32* %wrapped.addr, align 4
  %tobool74 = icmp ne i32 %43, 0
  %cond75 = select i1 %tobool74, i32 1, i32 0
  %44 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %wrapped76 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %44, i32 0, i32 1
  %45 = trunc i32 %cond75 to i8
  %bf.load77 = load i8, i8* %wrapped76, align 8
  %bf.value78 = and i8 %45, 1
  %bf.shl79 = shl i8 %bf.value78, 4
  %bf.clear80 = and i8 %bf.load77, -17
  %bf.set81 = or i8 %bf.clear80, %bf.shl79
  store i8 %bf.set81, i8* %wrapped76, align 8
  %bf.result.cast82 = zext i8 %bf.value78 to i32
  %46 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %46, i32 0, i32 2
  store %struct._GtkWrapBoxChild* null, %struct._GtkWrapBoxChild** %next, align 8
  %47 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %47, i32 0, i32 5
  %48 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  %tobool83 = icmp ne %struct._GtkWrapBoxChild* %48, null
  br i1 %tobool83, label %if.then.84, label %if.else.91

if.then.84:                                       ; preds = %do.end.44
  %49 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children86 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %49, i32 0, i32 5
  %50 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children86, align 8
  store %struct._GtkWrapBoxChild* %50, %struct._GtkWrapBoxChild** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.84
  %51 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next87 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %51, i32 0, i32 2
  %52 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next87, align 8
  %tobool88 = icmp ne %struct._GtkWrapBoxChild* %52, null
  br i1 %tobool88, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %53 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next89 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %53, i32 0, i32 2
  %54 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next89, align 8
  store %struct._GtkWrapBoxChild* %54, %struct._GtkWrapBoxChild** %last, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %56 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next90 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %56, i32 0, i32 2
  store %struct._GtkWrapBoxChild* %55, %struct._GtkWrapBoxChild** %next90, align 8
  br label %if.end.93

if.else.91:                                       ; preds = %do.end.44
  %57 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %58 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children92 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %58, i32 0, i32 5
  store %struct._GtkWrapBoxChild* %57, %struct._GtkWrapBoxChild** %children92, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %while.end
  %59 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %n_children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %59, i32 0, i32 4
  %60 = load i16, i16* %n_children, align 2
  %inc = add i16 %60, 1
  store i16 %inc, i16* %n_children, align 2
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %62 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %63 = bitcast %struct._GtkWrapBox* %62 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_widget_get_type() #6
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call94)
  %64 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkWidget*
  call void @gtk_widget_set_parent(%struct._GtkWidget* %61, %struct._GtkWidget* %64)
  %65 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %66 = bitcast %struct._GtkWrapBox* %65 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_object_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call96)
  %67 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %67, i32 0, i32 1
  %68 = load i32, i32* %flags, align 4
  %and = and i32 %68, 64
  %cmp98 = icmp ne i32 %and, 0
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.93
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_widget_realize(%struct._GtkWidget* %69)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.93
  %70 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %71 = bitcast %struct._GtkWrapBox* %70 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_object_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call101)
  %72 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkObject*
  %flags103 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %72, i32 0, i32 1
  %73 = load i32, i32* %flags103, align 4
  %and104 = and i32 %73, 256
  %cmp105 = icmp ne i32 %and104, 0
  br i1 %cmp105, label %land.lhs.true.106, label %if.end.120

land.lhs.true.106:                                ; preds = %if.end.100
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_object_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call107)
  %76 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkObject*
  %flags109 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %76, i32 0, i32 1
  %77 = load i32, i32* %flags109, align 4
  %and110 = and i32 %77, 256
  %cmp111 = icmp ne i32 %and110, 0
  br i1 %cmp111, label %if.then.112, label %if.end.120

if.then.112:                                      ; preds = %land.lhs.true.106
  %78 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %79 = bitcast %struct._GtkWrapBox* %78 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_object_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call113)
  %80 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkObject*
  %flags115 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %80, i32 0, i32 1
  %81 = load i32, i32* %flags115, align 4
  %and116 = and i32 %81, 128
  %cmp117 = icmp ne i32 %and116, 0
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.112
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_widget_map(%struct._GtkWidget* %82)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.then.112
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %83)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.9, %if.else.36, %if.else.42, %if.end.119, %land.lhs.true.106, %if.end.100
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #2

declare void @gtk_widget_set_parent(%struct._GtkWidget*, %struct._GtkWidget*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_object_get_type() #3

declare void @gtk_widget_realize(%struct._GtkWidget*) #2

declare void @gtk_widget_map(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_reorder_child(%struct._GtkWrapBox* %wbox, %struct._GtkWidget* %child, i32 %position) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %position.addr = alloca i32, align 4
  %child_info = alloca %struct._GtkWrapBoxChild*, align 8
  %last = alloca %struct._GtkWrapBoxChild*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp50 = alloca %struct._GtkWrapBoxChild*, align 8
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store %struct._GtkWrapBoxChild* null, %struct._GtkWrapBoxChild** %last, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gtk_wrap_box_reorder_child, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.88

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gtk_wrap_box_reorder_child, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.88

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %26, i32 0, i32 5
  %27 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %27, %struct._GtkWrapBoxChild** %child_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.38
  %28 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %tobool39 = icmp ne %struct._GtkWrapBoxChild* %28, null
  br i1 %tobool39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %29, i32 0, i32 0
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %cmp40 = icmp eq %struct._GtkWidget* %30, %31
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body
  br label %for.end

if.end.42:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %32 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  store %struct._GtkWrapBoxChild* %32, %struct._GtkWrapBoxChild** %last, align 8
  %33 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %33, i32 0, i32 2
  %34 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %34, %struct._GtkWrapBoxChild** %child_info, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %for.cond
  %35 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %tobool43 = icmp ne %struct._GtkWrapBoxChild* %35, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.88

land.lhs.true.44:                                 ; preds = %for.end
  %36 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children45 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %36, i32 0, i32 5
  %37 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children45, align 8
  %next46 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %37, i32 0, i32 2
  %38 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next46, align 8
  %tobool47 = icmp ne %struct._GtkWrapBoxChild* %38, null
  br i1 %tobool47, label %if.then.48, label %if.end.88

if.then.48:                                       ; preds = %land.lhs.true.44
  %39 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %tobool51 = icmp ne %struct._GtkWrapBoxChild* %39, null
  br i1 %tobool51, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %if.then.48
  %40 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %next53 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %40, i32 0, i32 2
  %41 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next53, align 8
  %42 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next54 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %42, i32 0, i32 2
  store %struct._GtkWrapBoxChild* %41, %struct._GtkWrapBoxChild** %next54, align 8
  br label %if.end.58

if.else.55:                                       ; preds = %if.then.48
  %43 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %next56 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %43, i32 0, i32 2
  %44 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next56, align 8
  %45 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children57 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %45, i32 0, i32 5
  store %struct._GtkWrapBoxChild* %44, %struct._GtkWrapBoxChild** %children57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.52
  store %struct._GtkWrapBoxChild* null, %struct._GtkWrapBoxChild** %last, align 8
  %46 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children59 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %46, i32 0, i32 5
  %47 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children59, align 8
  store %struct._GtkWrapBoxChild* %47, %struct._GtkWrapBoxChild** %tmp50, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.58
  %48 = load i32, i32* %position.addr, align 4
  %tobool60 = icmp ne i32 %48, 0
  br i1 %tobool60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %49 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %tmp50, align 8
  %next61 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %49, i32 0, i32 2
  %50 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next61, align 8
  %tobool62 = icmp ne %struct._GtkWrapBoxChild* %50, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %51 = phi i1 [ false, %while.cond ], [ %tobool62, %land.rhs ]
  br i1 %51, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %52 = load i32, i32* %position.addr, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %position.addr, align 4
  %53 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %tmp50, align 8
  store %struct._GtkWrapBoxChild* %53, %struct._GtkWrapBoxChild** %last, align 8
  %54 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next63 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %54, i32 0, i32 2
  %55 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next63, align 8
  store %struct._GtkWrapBoxChild* %55, %struct._GtkWrapBoxChild** %tmp50, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %56 = load i32, i32* %position.addr, align 4
  %tobool64 = icmp ne i32 %56, 0
  br i1 %tobool64, label %if.then.65, label %if.else.68

if.then.65:                                       ; preds = %while.end
  %57 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %58 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %tmp50, align 8
  %next66 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %58, i32 0, i32 2
  store %struct._GtkWrapBoxChild* %57, %struct._GtkWrapBoxChild** %next66, align 8
  %59 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %next67 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %59, i32 0, i32 2
  store %struct._GtkWrapBoxChild* null, %struct._GtkWrapBoxChild** %next67, align 8
  br label %if.end.76

if.else.68:                                       ; preds = %while.end
  %60 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %tmp50, align 8
  %61 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %next69 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %61, i32 0, i32 2
  store %struct._GtkWrapBoxChild* %60, %struct._GtkWrapBoxChild** %next69, align 8
  %62 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %tobool70 = icmp ne %struct._GtkWrapBoxChild* %62, null
  br i1 %tobool70, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %if.else.68
  %63 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %64 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next72 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %64, i32 0, i32 2
  store %struct._GtkWrapBoxChild* %63, %struct._GtkWrapBoxChild** %next72, align 8
  br label %if.end.75

if.else.73:                                       ; preds = %if.else.68
  %65 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %66 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children74 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %66, i32 0, i32 5
  store %struct._GtkWrapBoxChild* %65, %struct._GtkWrapBoxChild** %children74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.65
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_object_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call77)
  %69 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %69, i32 0, i32 1
  %70 = load i32, i32* %flags, align 4
  %and = and i32 %70, 256
  %cmp79 = icmp ne i32 %and, 0
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.87

land.lhs.true.80:                                 ; preds = %if.end.76
  %71 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %72 = bitcast %struct._GtkWrapBox* %71 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_object_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call81)
  %73 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkObject*
  %flags83 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %73, i32 0, i32 1
  %74 = load i32, i32* %flags83, align 4
  %and84 = and i32 %74, 256
  %cmp85 = icmp ne i32 %and84, 0
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %land.lhs.true.80
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %75)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %land.lhs.true.80, %if.end.76
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.9, %if.else.36, %if.end.87, %land.lhs.true.44, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_query_child_packing(%struct._GtkWrapBox* %wbox, %struct._GtkWidget* %child, i32* %hexpand, i32* %hfill, i32* %vexpand, i32* %vfill, i32* %wrapped) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %hexpand.addr = alloca i32*, align 8
  %hfill.addr = alloca i32*, align 8
  %vexpand.addr = alloca i32*, align 8
  %vfill.addr = alloca i32*, align 8
  %wrapped.addr = alloca i32*, align 8
  %child_info = alloca %struct._GtkWrapBoxChild*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store i32* %hexpand, i32** %hexpand.addr, align 8
  store i32* %hfill, i32** %hfill.addr, align 8
  store i32* %vexpand, i32** %vexpand.addr, align 8
  store i32* %vfill, i32** %vfill.addr, align 8
  store i32* %wrapped, i32** %wrapped.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gtk_wrap_box_query_child_packing, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.80

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gtk_wrap_box_query_child_packing, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.80

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %26, i32 0, i32 5
  %27 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %27, %struct._GtkWrapBoxChild** %child_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.38
  %28 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %tobool39 = icmp ne %struct._GtkWrapBoxChild* %28, null
  br i1 %tobool39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %29, i32 0, i32 0
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %cmp40 = icmp eq %struct._GtkWidget* %30, %31
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body
  br label %for.end

if.end.42:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %32 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %32, i32 0, i32 2
  %33 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %33, %struct._GtkWrapBoxChild** %child_info, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %for.cond
  %34 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %tobool43 = icmp ne %struct._GtkWrapBoxChild* %34, null
  br i1 %tobool43, label %if.then.44, label %if.end.80

if.then.44:                                       ; preds = %for.end
  %35 = load i32*, i32** %hexpand.addr, align 8
  %tobool45 = icmp ne i32* %35, null
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.44
  %36 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %hexpand47 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %36, i32 0, i32 1
  %bf.load = load i8, i8* %hexpand47, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %37 = load i32*, i32** %hexpand.addr, align 8
  store i32 %bf.cast, i32* %37, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.then.44
  %38 = load i32*, i32** %hfill.addr, align 8
  %tobool49 = icmp ne i32* %38, null
  br i1 %tobool49, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %if.end.48
  %39 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %hfill51 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %39, i32 0, i32 1
  %bf.load52 = load i8, i8* %hfill51, align 8
  %bf.lshr = lshr i8 %bf.load52, 1
  %bf.clear53 = and i8 %bf.lshr, 1
  %bf.cast54 = zext i8 %bf.clear53 to i32
  %40 = load i32*, i32** %hfill.addr, align 8
  store i32 %bf.cast54, i32* %40, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.50, %if.end.48
  %41 = load i32*, i32** %vexpand.addr, align 8
  %tobool56 = icmp ne i32* %41, null
  br i1 %tobool56, label %if.then.57, label %if.end.63

if.then.57:                                       ; preds = %if.end.55
  %42 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %vexpand58 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %42, i32 0, i32 1
  %bf.load59 = load i8, i8* %vexpand58, align 8
  %bf.lshr60 = lshr i8 %bf.load59, 2
  %bf.clear61 = and i8 %bf.lshr60, 1
  %bf.cast62 = zext i8 %bf.clear61 to i32
  %43 = load i32*, i32** %vexpand.addr, align 8
  store i32 %bf.cast62, i32* %43, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.57, %if.end.55
  %44 = load i32*, i32** %vfill.addr, align 8
  %tobool64 = icmp ne i32* %44, null
  br i1 %tobool64, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.end.63
  %45 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %vfill66 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %45, i32 0, i32 1
  %bf.load67 = load i8, i8* %vfill66, align 8
  %bf.lshr68 = lshr i8 %bf.load67, 3
  %bf.clear69 = and i8 %bf.lshr68, 1
  %bf.cast70 = zext i8 %bf.clear69 to i32
  %46 = load i32*, i32** %vfill.addr, align 8
  store i32 %bf.cast70, i32* %46, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %if.end.63
  %47 = load i32*, i32** %wrapped.addr, align 8
  %tobool72 = icmp ne i32* %47, null
  br i1 %tobool72, label %if.then.73, label %if.end.79

if.then.73:                                       ; preds = %if.end.71
  %48 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %wrapped74 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %48, i32 0, i32 1
  %bf.load75 = load i8, i8* %wrapped74, align 8
  %bf.lshr76 = lshr i8 %bf.load75, 4
  %bf.clear77 = and i8 %bf.lshr76, 1
  %bf.cast78 = zext i8 %bf.clear77 to i32
  %49 = load i32*, i32** %wrapped.addr, align 8
  store i32 %bf.cast78, i32* %49, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.73, %if.end.71
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.9, %if.else.36, %if.end.79, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gtk_wrap_box_set_child_packing(%struct._GtkWrapBox* %wbox, %struct._GtkWidget* %child, i32 %hexpand, i32 %hfill, i32 %vexpand, i32 %vfill, i32 %wrapped) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %hexpand.addr = alloca i32, align 4
  %hfill.addr = alloca i32, align 4
  %vexpand.addr = alloca i32, align 4
  %vfill.addr = alloca i32, align 4
  %wrapped.addr = alloca i32, align 4
  %child_info = alloca %struct._GtkWrapBoxChild*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store i32 %hexpand, i32* %hexpand.addr, align 4
  store i32 %hfill, i32* %hfill.addr, align 4
  store i32 %vexpand, i32* %vexpand.addr, align 4
  store i32 %vfill, i32* %vfill.addr, align 4
  store i32 %wrapped, i32* %wrapped.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %1 = bitcast %struct._GtkWrapBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gtk_wrap_box_set_child_packing, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.132

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gtk_wrap_box_set_child_packing, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.132

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load i32, i32* %hexpand.addr, align 4
  %cmp39 = icmp ne i32 %26, 0
  %conv = zext i1 %cmp39 to i32
  store i32 %conv, i32* %hexpand.addr, align 4
  %27 = load i32, i32* %hfill.addr, align 4
  %cmp40 = icmp ne i32 %27, 0
  %conv41 = zext i1 %cmp40 to i32
  store i32 %conv41, i32* %hfill.addr, align 4
  %28 = load i32, i32* %vexpand.addr, align 4
  %cmp42 = icmp ne i32 %28, 0
  %conv43 = zext i1 %cmp42 to i32
  store i32 %conv43, i32* %vexpand.addr, align 4
  %29 = load i32, i32* %vfill.addr, align 4
  %cmp44 = icmp ne i32 %29, 0
  %conv45 = zext i1 %cmp44 to i32
  store i32 %conv45, i32* %vfill.addr, align 4
  %30 = load i32, i32* %wrapped.addr, align 4
  %cmp46 = icmp ne i32 %30, 0
  %conv47 = zext i1 %cmp46 to i32
  store i32 %conv47, i32* %wrapped.addr, align 4
  %31 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %31, i32 0, i32 5
  %32 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %32, %struct._GtkWrapBoxChild** %child_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.38
  %33 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %tobool48 = icmp ne %struct._GtkWrapBoxChild* %33, null
  br i1 %tobool48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %34, i32 0, i32 0
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %cmp49 = icmp eq %struct._GtkWidget* %35, %36
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body
  br label %for.end

if.end.52:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %37 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %37, i32 0, i32 2
  %38 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %38, %struct._GtkWrapBoxChild** %child_info, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.51, %for.cond
  %39 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %tobool53 = icmp ne %struct._GtkWrapBoxChild* %39, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.132

land.lhs.true.54:                                 ; preds = %for.end
  %40 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %hexpand55 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %40, i32 0, i32 1
  %bf.load = load i8, i8* %hexpand55, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %41 = load i32, i32* %hexpand.addr, align 4
  %cmp56 = icmp ne i32 %bf.cast, %41
  br i1 %cmp56, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.54
  %42 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %vexpand58 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %42, i32 0, i32 1
  %bf.load59 = load i8, i8* %vexpand58, align 8
  %bf.lshr = lshr i8 %bf.load59, 2
  %bf.clear60 = and i8 %bf.lshr, 1
  %bf.cast61 = zext i8 %bf.clear60 to i32
  %43 = load i32, i32* %vexpand.addr, align 4
  %cmp62 = icmp ne i32 %bf.cast61, %43
  br i1 %cmp62, label %if.then.88, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false
  %44 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %hfill65 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %44, i32 0, i32 1
  %bf.load66 = load i8, i8* %hfill65, align 8
  %bf.lshr67 = lshr i8 %bf.load66, 1
  %bf.clear68 = and i8 %bf.lshr67, 1
  %bf.cast69 = zext i8 %bf.clear68 to i32
  %45 = load i32, i32* %hfill.addr, align 4
  %cmp70 = icmp ne i32 %bf.cast69, %45
  br i1 %cmp70, label %if.then.88, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.64
  %46 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %vfill73 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %46, i32 0, i32 1
  %bf.load74 = load i8, i8* %vfill73, align 8
  %bf.lshr75 = lshr i8 %bf.load74, 3
  %bf.clear76 = and i8 %bf.lshr75, 1
  %bf.cast77 = zext i8 %bf.clear76 to i32
  %47 = load i32, i32* %vfill.addr, align 4
  %cmp78 = icmp ne i32 %bf.cast77, %47
  br i1 %cmp78, label %if.then.88, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.72
  %48 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %wrapped81 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %48, i32 0, i32 1
  %bf.load82 = load i8, i8* %wrapped81, align 8
  %bf.lshr83 = lshr i8 %bf.load82, 4
  %bf.clear84 = and i8 %bf.lshr83, 1
  %bf.cast85 = zext i8 %bf.clear84 to i32
  %49 = load i32, i32* %wrapped.addr, align 4
  %cmp86 = icmp ne i32 %bf.cast85, %49
  br i1 %cmp86, label %if.then.88, label %if.end.132

if.then.88:                                       ; preds = %lor.lhs.false.80, %lor.lhs.false.72, %lor.lhs.false.64, %lor.lhs.false, %land.lhs.true.54
  %50 = load i32, i32* %hexpand.addr, align 4
  %51 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %hexpand89 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %51, i32 0, i32 1
  %52 = trunc i32 %50 to i8
  %bf.load90 = load i8, i8* %hexpand89, align 8
  %bf.value = and i8 %52, 1
  %bf.clear91 = and i8 %bf.load90, -2
  %bf.set = or i8 %bf.clear91, %bf.value
  store i8 %bf.set, i8* %hexpand89, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %53 = load i32, i32* %hfill.addr, align 4
  %54 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %hfill92 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %54, i32 0, i32 1
  %55 = trunc i32 %53 to i8
  %bf.load93 = load i8, i8* %hfill92, align 8
  %bf.value94 = and i8 %55, 1
  %bf.shl = shl i8 %bf.value94, 1
  %bf.clear95 = and i8 %bf.load93, -3
  %bf.set96 = or i8 %bf.clear95, %bf.shl
  store i8 %bf.set96, i8* %hfill92, align 8
  %bf.result.cast97 = zext i8 %bf.value94 to i32
  %56 = load i32, i32* %vexpand.addr, align 4
  %57 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %vexpand98 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %57, i32 0, i32 1
  %58 = trunc i32 %56 to i8
  %bf.load99 = load i8, i8* %vexpand98, align 8
  %bf.value100 = and i8 %58, 1
  %bf.shl101 = shl i8 %bf.value100, 2
  %bf.clear102 = and i8 %bf.load99, -5
  %bf.set103 = or i8 %bf.clear102, %bf.shl101
  store i8 %bf.set103, i8* %vexpand98, align 8
  %bf.result.cast104 = zext i8 %bf.value100 to i32
  %59 = load i32, i32* %vfill.addr, align 4
  %60 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %vfill105 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %60, i32 0, i32 1
  %61 = trunc i32 %59 to i8
  %bf.load106 = load i8, i8* %vfill105, align 8
  %bf.value107 = and i8 %61, 1
  %bf.shl108 = shl i8 %bf.value107, 3
  %bf.clear109 = and i8 %bf.load106, -9
  %bf.set110 = or i8 %bf.clear109, %bf.shl108
  store i8 %bf.set110, i8* %vfill105, align 8
  %bf.result.cast111 = zext i8 %bf.value107 to i32
  %62 = load i32, i32* %wrapped.addr, align 4
  %63 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %wrapped112 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %63, i32 0, i32 1
  %64 = trunc i32 %62 to i8
  %bf.load113 = load i8, i8* %wrapped112, align 8
  %bf.value114 = and i8 %64, 1
  %bf.shl115 = shl i8 %bf.value114, 4
  %bf.clear116 = and i8 %bf.load113, -17
  %bf.set117 = or i8 %bf.clear116, %bf.shl115
  store i8 %bf.set117, i8* %wrapped112, align 8
  %bf.result.cast118 = zext i8 %bf.value114 to i32
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_object_get_type() #6
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call119)
  %67 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %67, i32 0, i32 1
  %68 = load i32, i32* %flags, align 4
  %and = and i32 %68, 256
  %cmp121 = icmp ne i32 %and, 0
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.131

land.lhs.true.123:                                ; preds = %if.then.88
  %69 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %70 = bitcast %struct._GtkWrapBox* %69 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_object_get_type() #6
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call124)
  %71 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkObject*
  %flags126 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %71, i32 0, i32 1
  %72 = load i32, i32* %flags126, align 4
  %and127 = and i32 %72, 256
  %cmp128 = icmp ne i32 %and127, 0
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %land.lhs.true.123
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %73)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %land.lhs.true.123, %if.then.88
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.9, %if.else.36, %if.end.131, %lor.lhs.false.80, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @gtk_wrap_box_query_line_lengths(%struct._GtkWrapBox* %wbox, i32* %_n_lines) #1 {
entry:
  %retval = alloca i32*, align 8
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %_n_lines.addr = alloca i32*, align 8
  %next_child = alloca %struct._GtkWrapBoxChild*, align 8
  %area = alloca %struct._GdkRectangle, align 4
  %allocation = alloca %struct._GdkRectangle*, align 8
  %expand_line = alloca i32, align 4
  %slist = alloca %struct._GSList*, align 8
  %max_child_size = alloca i32, align 4
  %border = alloca i32, align 4
  %n_lines = alloca i32, align 4
  %lines = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store i32* %_n_lines, i32** %_n_lines.addr, align 8
  store %struct._GtkWrapBoxChild* null, %struct._GtkWrapBoxChild** %next_child, align 8
  store i32 0, i32* %n_lines, align 4
  store i32* null, i32** %lines, align 8
  %0 = load i32*, i32** %_n_lines.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %_n_lines.addr, align 8
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %3 = bitcast %struct._GtkWrapBox* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_wrap_box_get_type() #6
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gtk_wrap_box_query_line_lengths, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i32* null, i32** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %15 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %16 = bitcast %struct._GtkWrapBox* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %allocation16 = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %17, i32 0, i32 7
  store %struct._GdkRectangle* %allocation16, %struct._GdkRectangle** %allocation, align 8
  %18 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %19 = bitcast %struct._GtkWrapBox* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %border_width = getelementptr inbounds %struct._GtkContainer, %struct._GtkContainer* %20, i32 0, i32 2
  %21 = bitcast i24* %border_width to i32*
  %bf.load = load i32, i32* %21, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %border, align 4
  %22 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %22, i32 0, i32 0
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %border, align 4
  %add = add i32 %23, %24
  %x19 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  store i32 %add, i32* %x19, align 4
  %25 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %25, i32 0, i32 1
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %border, align 4
  %add20 = add i32 %26, %27
  %y21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  store i32 %add20, i32* %y21, align 4
  %28 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %28, i32 0, i32 2
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %border, align 4
  %mul = mul i32 %30, 2
  %sub = sub i32 %29, %mul
  %cmp22 = icmp ugt i32 1, %sub
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %31 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation, align 8
  %width23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %31, i32 0, i32 2
  %32 = load i32, i32* %width23, align 4
  %33 = load i32, i32* %border, align 4
  %mul24 = mul i32 %33, 2
  %sub25 = sub i32 %32, %mul24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %sub25, %cond.false ]
  %width26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  store i32 %cond, i32* %width26, align 4
  %34 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %34, i32 0, i32 3
  %35 = load i32, i32* %height, align 4
  %36 = load i32, i32* %border, align 4
  %mul27 = mul i32 %36, 2
  %sub28 = sub i32 %35, %mul27
  %cmp29 = icmp ugt i32 1, %sub28
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end
  br label %cond.end.35

cond.false.31:                                    ; preds = %cond.end
  %37 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation, align 8
  %height32 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %37, i32 0, i32 3
  %38 = load i32, i32* %height32, align 4
  %39 = load i32, i32* %border, align 4
  %mul33 = mul i32 %39, 2
  %sub34 = sub i32 %38, %mul33
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.31, %cond.true.30
  %cond36 = phi i32 [ 1, %cond.true.30 ], [ %sub34, %cond.false.31 ]
  %height37 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  store i32 %cond36, i32* %height37, align 4
  %40 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %40, i32 0, i32 5
  %41 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %41, %struct._GtkWrapBoxChild** %next_child, align 8
  %42 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %43 = bitcast %struct._GtkWrapBox* %42 to %struct._GTypeInstance*
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %45 = bitcast %struct._GTypeClass* %44 to %struct._GtkWrapBoxClass*
  %rlist_line_children = getelementptr inbounds %struct._GtkWrapBoxClass, %struct._GtkWrapBoxClass* %45, i32 0, i32 1
  %46 = load %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)*, %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)** %rlist_line_children, align 8
  %47 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %call39 = call %struct._GSList* %46(%struct._GtkWrapBox* %47, %struct._GtkWrapBoxChild** %next_child, %struct._GdkRectangle* %area, i32* %max_child_size, i32* %expand_line)
  store %struct._GSList* %call39, %struct._GSList** %slist, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.35
  %48 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool40 = icmp ne %struct._GSList* %48, null
  br i1 %tobool40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load i32, i32* %n_lines, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %n_lines, align 4
  store i32 %49, i32* %l, align 4
  %50 = load i32*, i32** %lines, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = load i32, i32* %n_lines, align 4
  %conv = zext i32 %52 to i64
  %call42 = call i8* @g_realloc_n(i8* %51, i64 %conv, i64 4)
  %53 = bitcast i8* %call42 to i32*
  store i32* %53, i32** %lines, align 8
  %54 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %call43 = call i32 @g_slist_length(%struct._GSList* %54)
  %55 = load i32, i32* %l, align 4
  %idxprom = zext i32 %55 to i64
  %56 = load i32*, i32** %lines, align 8
  %arrayidx = getelementptr inbounds i32, i32* %56, i64 %idxprom
  store i32 %call43, i32* %arrayidx, align 4
  %57 = load %struct._GSList*, %struct._GSList** %slist, align 8
  call void @g_slist_free(%struct._GSList* %57)
  %58 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %59 = bitcast %struct._GtkWrapBox* %58 to %struct._GTypeInstance*
  %g_class44 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %59, i32 0, i32 0
  %60 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class44, align 8
  %61 = bitcast %struct._GTypeClass* %60 to %struct._GtkWrapBoxClass*
  %rlist_line_children45 = getelementptr inbounds %struct._GtkWrapBoxClass, %struct._GtkWrapBoxClass* %61, i32 0, i32 1
  %62 = load %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)*, %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)** %rlist_line_children45, align 8
  %63 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %call46 = call %struct._GSList* %62(%struct._GtkWrapBox* %63, %struct._GtkWrapBoxChild** %next_child, %struct._GdkRectangle* %area, i32* %max_child_size, i32* %expand_line)
  store %struct._GSList* %call46, %struct._GSList** %slist, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %64 = load i32*, i32** %_n_lines.addr, align 8
  %tobool47 = icmp ne i32* %64, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %while.end
  %65 = load i32, i32* %n_lines, align 4
  %66 = load i32*, i32** %_n_lines.addr, align 8
  store i32 %65, i32* %66, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %while.end
  %67 = load i32*, i32** %lines, align 8
  store i32* %67, i32** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.else.12
  %68 = load i32*, i32** %retval
  ret i32* %68
}

declare i8* @g_realloc_n(i8*, i64, i64) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

declare i8* @g_type_class_peek_parent(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 5, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 8, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %5)
  call void @gtk_wrap_box_set_homogeneous(%struct._GtkWrapBox* %4, i32 %call2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_enum(%struct._GValue* %7)
  call void @gtk_wrap_box_set_justify(%struct._GtkWrapBox* %6, i32 %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %9)
  call void @gtk_wrap_box_set_line_justify(%struct._GtkWrapBox* %8, i32 %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_uint(%struct._GValue* %11)
  call void @gtk_wrap_box_set_hspacing(%struct._GtkWrapBox* %10, i32 %call8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_uint(%struct._GValue* %13)
  call void @gtk_wrap_box_set_vspacing(%struct._GtkWrapBox* %12, i32 %call10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call float @g_value_get_float(%struct._GValue* %15)
  call void @gtk_wrap_box_set_aspect_ratio(%struct._GtkWrapBox* %14, float %call12)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %child_limit = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %16, i32 0, i32 7
  %17 = load i32, i32* %child_limit, align 4
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_uint(%struct._GValue* %18)
  %cmp = icmp ne i32 %17, %call14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.13
  %19 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %20 = bitcast %struct._GtkWrapBox* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_widget_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.13
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
  %call17 = call i8* @g_type_name(i64 %31)
  %32 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %33 = bitcast %struct._GObject* %32 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %35)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 318, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %25, i8* %27, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %5, %struct._GtkWidget** %widget, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 5, label %sw.bb.8
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.14
    i32 6, label %sw.bb.16
    i32 7, label %sw.bb.17
    i32 8, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %homogeneous = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %8, i32 0, i32 1
  %bf.load = load i16, i16* %homogeneous, align 8
  %bf.clear = and i16 %bf.load, 1
  %bf.cast = zext i16 %bf.clear to i32
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %bf.cast)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %justify = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %10, i32 0, i32 1
  %bf.load5 = load i16, i16* %justify, align 8
  %bf.lshr = lshr i16 %bf.load5, 1
  %bf.clear6 = and i16 %bf.lshr, 15
  %bf.cast7 = zext i16 %bf.clear6 to i32
  call void @g_value_set_enum(%struct._GValue* %9, i32 %bf.cast7)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %line_justify = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %12, i32 0, i32 1
  %bf.load9 = load i16, i16* %line_justify, align 8
  %bf.lshr10 = lshr i16 %bf.load9, 5
  %bf.clear11 = and i16 %bf.lshr10, 15
  %bf.cast12 = zext i16 %bf.clear11 to i32
  call void @g_value_set_enum(%struct._GValue* %11, i32 %bf.cast12)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %hspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %14, i32 0, i32 2
  %15 = load i8, i8* %hspacing, align 1
  %conv = zext i8 %15 to i32
  call void @g_value_set_uint(%struct._GValue* %13, i32 %conv)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %vspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %17, i32 0, i32 3
  %18 = load i8, i8* %vspacing, align 1
  %conv15 = zext i8 %18 to i32
  call void @g_value_set_uint(%struct._GValue* %16, i32 %conv15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %aspect_ratio = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %20, i32 0, i32 6
  %21 = load float, float* %aspect_ratio, align 4
  call void @g_value_set_float(%struct._GValue* %19, float %21)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %allocation = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %23, i32 0, i32 7
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %24 = load i32, i32* %width, align 4
  %conv18 = sitofp i32 %24 to float
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %allocation19 = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %25, i32 0, i32 7
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation19, i32 0, i32 3
  %26 = load i32, i32* %height, align 4
  %conv20 = sitofp i32 %26 to float
  %div = fdiv float %conv18, %conv20
  call void @g_value_set_float(%struct._GValue* %22, float %div)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %child_limit = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %28, i32 0, i32 7
  %29 = load i32, i32* %child_limit, align 4
  call void @g_value_set_uint(%struct._GValue* %27, i32 %29)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %30 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %30, %struct._GObject** %_glib__object, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %31, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = load i32, i32* %property_id.addr, align 4
  store i32 %32, i32* %_glib__property_id, align 4
  %33 = load i32, i32* %_glib__property_id, align 4
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 1
  %35 = load i8*, i8** %name, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %37 = bitcast %struct._GParamSpec* %36 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type, align 8
  %call22 = call i8* @g_type_name(i64 %39)
  %40 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %41 = bitcast %struct._GObject* %40 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %g_type24 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type24, align 8
  %call25 = call i8* @g_type_name(i64 %43)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %33, i8* %35, i8* %call22, i8* %call25)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.21, %sw.bb.17, %sw.bb.16, %sw.bb.14, %sw.bb.13, %sw.bb.8, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_map(%struct._GtkWidget* %widget) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %4 = bitcast %struct._GtkWrapBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_object_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %5, i32 0, i32 1
  %6 = load i32, i32* %flags, align 4
  %or = or i32 %6, 128
  store i32 %or, i32* %flags, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %7, i32 0, i32 5
  %8 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %8, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget4 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %10, i32 0, i32 0
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget4, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_object_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkObject*
  %flags7 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %13, i32 0, i32 1
  %14 = load i32, i32* %flags7, align 4
  %and = and i32 %14, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget8 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget8, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_object_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkObject*
  %flags11 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %18, i32 0, i32 1
  %19 = load i32, i32* %flags11, align 4
  %and12 = and i32 %19, 128
  %cmp13 = icmp ne i32 %and12, 0
  br i1 %cmp13, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %20 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget14 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %20, i32 0, i32 0
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget14, align 8
  call void @gtk_widget_map(%struct._GtkWidget* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %22, i32 0, i32 2
  %23 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %23, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_unmap(%struct._GtkWidget* %widget) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %4 = bitcast %struct._GtkWrapBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_object_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %5, i32 0, i32 1
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, -129
  store i32 %and, i32* %flags, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %7, i32 0, i32 5
  %8 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %8, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget4 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %10, i32 0, i32 0
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget4, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_object_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkObject*
  %flags7 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %13, i32 0, i32 1
  %14 = load i32, i32* %flags7, align 4
  %and8 = and i32 %14, 256
  %cmp = icmp ne i32 %and8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget9 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget9, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_object_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkObject*
  %flags12 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %18, i32 0, i32 1
  %19 = load i32, i32* %flags12, align 4
  %and13 = and i32 %19, 128
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget15 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %20, i32 0, i32 0
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget15, align 8
  call void @gtk_widget_unmap(%struct._GtkWidget* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %22, i32 0, i32 2
  %23 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %23, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gtk_wrap_box_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load i8*, i8** @parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %expose_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 31
  %3 = load i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)** %expose_event, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %call2 = call i32 %3(%struct._GtkWidget* %4, %struct._GdkEventExpose* %5)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_add(%struct._GtkContainer* %container, %struct._GtkWidget* %widget) #1 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_wrap_box_pack(%struct._GtkWrapBox* %2, %struct._GtkWidget* %3, i32 0, i32 1, i32 0, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_remove(%struct._GtkContainer* %container, %struct._GtkWidget* %widget) #1 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  %last = alloca %struct._GtkWrapBoxChild*, align 8
  %was_visible = alloca i32, align 4
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  store %struct._GtkWrapBoxChild* null, %struct._GtkWrapBoxChild** %last, align 8
  %3 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %3, i32 0, i32 5
  %4 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %4, %struct._GtkWrapBoxChild** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %entry
  %5 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget2 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget2, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %7, %8
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %while.body
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_object_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %11, i32 0, i32 1
  %12 = load i32, i32* %flags, align 4
  %and = and i32 %12, 256
  %cmp5 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %was_visible, align 4
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_unparent(%struct._GtkWidget* %13)
  %14 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %tobool6 = icmp ne %struct._GtkWrapBoxChild* %14, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %15 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %15, i32 0, i32 2
  %16 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  %17 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next8 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %17, i32 0, i32 2
  store %struct._GtkWrapBoxChild* %16, %struct._GtkWrapBoxChild** %next8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next9 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %18, i32 0, i32 2
  %19 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next9, align 8
  %20 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %children10 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %20, i32 0, i32 5
  store %struct._GtkWrapBoxChild* %19, %struct._GtkWrapBoxChild** %children10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %do.body

do.body:                                          ; preds = %if.end
  %21 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %22 = bitcast %struct._GtkWrapBoxChild* %21 to i8*
  call void @g_slice_free1(i64 24, i8* %22)
  br label %do.end

do.end:                                           ; preds = %do.body
  %23 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %n_children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %23, i32 0, i32 4
  %24 = load i16, i16* %n_children, align 2
  %dec = add i16 %24, -1
  store i16 %dec, i16* %n_children, align 2
  %25 = load i32, i32* %was_visible, align 4
  %tobool11 = icmp ne i32 %25, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %26 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %27 = bitcast %struct._GtkContainer* %26 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call13)
  %28 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  call void @gtk_widget_queue_resize(%struct._GtkWidget* %28)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  br label %while.end

if.end.16:                                        ; preds = %while.body
  %29 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  store %struct._GtkWrapBoxChild* %29, %struct._GtkWrapBoxChild** %last, align 8
  %30 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %last, align 8
  %next17 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %30, i32 0, i32 2
  %31 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next17, align 8
  store %struct._GtkWrapBoxChild* %31, %struct._GtkWrapBoxChild** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %if.end.15, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_forall(%struct._GtkContainer* %container, i32 %include_internals, void (%struct._GtkWidget*, i8*)* %callback, i8* %callback_data) #1 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %include_internals.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GtkWidget*, i8*)*, align 8
  %callback_data.addr = alloca i8*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store i32 %include_internals, i32* %include_internals.addr, align 4
  store void (%struct._GtkWidget*, i8*)* %callback, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  %3 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %3, i32 0, i32 5
  %4 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %4, %struct._GtkWrapBoxChild** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget2 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget2, align 8
  store %struct._GtkWidget* %7, %struct._GtkWidget** %widget, align 8
  %8 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %8, i32 0, i32 2
  %9 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %9, %struct._GtkWrapBoxChild** %child, align 8
  %10 = load void (%struct._GtkWidget*, i8*)*, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %12 = load i8*, i8** %callback_data.addr, align 8
  call void %10(%struct._GtkWidget* %11, i8* %12)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gtk_wrap_box_child_type(%struct._GtkContainer* %container) #1 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  %call = call i64 @gtk_widget_get_type() #6
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_set_child_property(%struct._GtkContainer* %container, %struct._GtkWidget* %child, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %hexpand = alloca i32, align 4
  %hfill = alloca i32, align 4
  %vexpand = alloca i32, align 4
  %vfill = alloca i32, align 4
  %wrapped = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  store i32 0, i32* %hexpand, align 4
  store i32 0, i32* %hfill, align 4
  store i32 0, i32* %vexpand, align 4
  store i32 0, i32* %vfill, align 4
  store i32 0, i32* %wrapped, align 4
  %3 = load i32, i32* %property_id.addr, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_wrap_box_query_child_packing(%struct._GtkWrapBox* %4, %struct._GtkWidget* %5, i32* %hexpand, i32* %hfill, i32* %vexpand, i32* %vfill, i32* %wrapped)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_int(%struct._GValue* %9)
  call void @gtk_wrap_box_reorder_child(%struct._GtkWrapBox* %7, %struct._GtkWidget* %8, i32 %call2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %10 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load i32, i32* %hfill, align 4
  %14 = load i32, i32* %vexpand, align 4
  %15 = load i32, i32* %vfill, align 4
  %16 = load i32, i32* %wrapped, align 4
  call void @gtk_wrap_box_set_child_packing(%struct._GtkWrapBox* %10, %struct._GtkWidget* %11, i32 %call4, i32 %13, i32 %14, i32 %15, i32 %16)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %17 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %19 = load i32, i32* %hexpand, align 4
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %20)
  %21 = load i32, i32* %vexpand, align 4
  %22 = load i32, i32* %vfill, align 4
  %23 = load i32, i32* %wrapped, align 4
  call void @gtk_wrap_box_set_child_packing(%struct._GtkWrapBox* %17, %struct._GtkWidget* %18, i32 %19, i32 %call6, i32 %21, i32 %22, i32 %23)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %24 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %26 = load i32, i32* %hexpand, align 4
  %27 = load i32, i32* %hfill, align 4
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %28)
  %29 = load i32, i32* %vfill, align 4
  %30 = load i32, i32* %wrapped, align 4
  call void @gtk_wrap_box_set_child_packing(%struct._GtkWrapBox* %24, %struct._GtkWidget* %25, i32 %26, i32 %27, i32 %call8, i32 %29, i32 %30)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %31 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %33 = load i32, i32* %hexpand, align 4
  %34 = load i32, i32* %hfill, align 4
  %35 = load i32, i32* %vexpand, align 4
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %36)
  %37 = load i32, i32* %wrapped, align 4
  call void @gtk_wrap_box_set_child_packing(%struct._GtkWrapBox* %31, %struct._GtkWidget* %32, i32 %33, i32 %34, i32 %35, i32 %call10, i32 %37)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %38 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %40 = load i32, i32* %hexpand, align 4
  %41 = load i32, i32* %hfill, align 4
  %42 = load i32, i32* %vexpand, align 4
  %43 = load i32, i32* %vfill, align 4
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %44)
  call void @gtk_wrap_box_set_child_packing(%struct._GtkWrapBox* %38, %struct._GtkWidget* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %call12)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  %45 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %46 = bitcast %struct._GtkContainer* %45 to %struct._GObject*
  store %struct._GObject* %46, %struct._GObject** %_glib__object, align 8
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %47, %struct._GParamSpec** %_glib__pspec, align 8
  %48 = load i32, i32* %property_id.addr, align 4
  store i32 %48, i32* %_glib__property_id, align 4
  %49 = load i32, i32* %_glib__property_id, align 4
  %50 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %50, i32 0, i32 1
  %51 = load i8*, i8** %name, align 8
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %53 = bitcast %struct._GParamSpec* %52 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %54, i32 0, i32 0
  %55 = load i64, i64* %g_type, align 8
  %call13 = call i8* @g_type_name(i64 %55)
  %56 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %57 = bitcast %struct._GObject* %56 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %59)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 419, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 %49, i8* %51, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_wrap_box_get_child_property(%struct._GtkContainer* %container, %struct._GtkWidget* %child, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %hexpand = alloca i32, align 4
  %hfill = alloca i32, align 4
  %vexpand = alloca i32, align 4
  %vfill = alloca i32, align 4
  %wrapped = alloca i32, align 4
  %child_info = alloca %struct._GtkWrapBoxChild*, align 8
  %i = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  store i32 0, i32* %hexpand, align 4
  store i32 0, i32* %hfill, align 4
  store i32 0, i32* %vexpand, align 4
  store i32 0, i32* %vfill, align 4
  store i32 0, i32* %wrapped, align 4
  %3 = load i32, i32* %property_id.addr, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_wrap_box_query_child_packing(%struct._GtkWrapBox* %4, %struct._GtkWidget* %5, i32* %hexpand, i32* %hfill, i32* %vexpand, i32* %vfill, i32* %wrapped)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %i, align 4
  %7 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %7, i32 0, i32 5
  %8 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %8, %struct._GtkWrapBoxChild** %child_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %9 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %10, i32 0, i32 0
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %cmp2 = icmp eq %struct._GtkWidget* %11, %12
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  br label %for.end

if.end.4:                                         ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %add = add i32 %13, 1
  store i32 %add, i32* %i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %14 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %14, i32 0, i32 2
  %15 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %15, %struct._GtkWrapBoxChild** %child_info, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %for.cond
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child_info, align 8
  %tobool5 = icmp ne %struct._GtkWrapBoxChild* %17, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ -1, %cond.false ]
  call void @g_value_set_int(%struct._GValue* %16, i32 %cond)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load i32, i32* %hexpand, align 4
  call void @g_value_set_boolean(%struct._GValue* %19, i32 %20)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %22 = load i32, i32* %hfill, align 4
  call void @g_value_set_boolean(%struct._GValue* %21, i32 %22)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %24 = load i32, i32* %vexpand, align 4
  call void @g_value_set_boolean(%struct._GValue* %23, i32 %24)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load i32, i32* %vfill, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %26)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load i32, i32* %wrapped, align 4
  call void @g_value_set_boolean(%struct._GValue* %27, i32 %28)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  %29 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %30 = bitcast %struct._GtkContainer* %29 to %struct._GObject*
  store %struct._GObject* %30, %struct._GObject** %_glib__object, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %31, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = load i32, i32* %property_id.addr, align 4
  store i32 %32, i32* %_glib__property_id, align 4
  %33 = load i32, i32* %_glib__property_id, align 4
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 1
  %35 = load i8*, i8** %name, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %37 = bitcast %struct._GParamSpec* %36 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type, align 8
  %call11 = call i8* @g_type_name(i64 %39)
  %40 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %41 = bitcast %struct._GObject* %40 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %43)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 %33, i8* %35, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %cond.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #2

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_justification_get_type() #3

declare %struct._GParamSpec* @g_param_spec_uint(i8*, i8*, i8*, i32, i32, i32, i32) #2

declare %struct._GParamSpec* @g_param_spec_float(i8*, i8*, i8*, float, float, float, i32) #2

declare void @gtk_container_class_install_child_property(%struct._GtkContainerClass*, i32, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #2

declare i32 @g_value_get_boolean(%struct._GValue*) #2

declare i32 @g_value_get_enum(%struct._GValue*) #2

declare i32 @g_value_get_uint(%struct._GValue*) #2

declare float @g_value_get_float(%struct._GValue*) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #1 {
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

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_boolean(%struct._GValue*, i32) #2

declare void @g_value_set_enum(%struct._GValue*, i32) #2

declare void @g_value_set_uint(%struct._GValue*, i32) #2

declare void @g_value_set_float(%struct._GValue*, float) #2

declare void @gtk_widget_unmap(%struct._GtkWidget*) #2

declare void @gtk_widget_unparent(%struct._GtkWidget*) #2

declare void @g_slice_free1(i64, i8*) #2

declare i32 @g_value_get_int(%struct._GValue*) #2

declare void @g_value_set_int(%struct._GValue*, i32) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
