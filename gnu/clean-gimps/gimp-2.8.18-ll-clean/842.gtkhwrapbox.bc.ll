; ModuleID = './app/widgets/gtkhwrapbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GtkHWrapBoxClass = type { %struct._GtkWrapBoxClass }
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
%struct._GtkHWrapBox = type { %struct._GtkWrapBox, i32, i32 }
%struct._Line = type { %struct._GSList*, i16, i8, %struct._Line* }

@gtk_hwrap_box_get_type.hwrap_box_type = internal global i64 0, align 8
@gtk_hwrap_box_get_type.hwrap_box_info = internal constant %struct._GTypeInfo { i16 832, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GtkHWrapBoxClass*)* @gtk_hwrap_box_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 144, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GtkHWrapBox*)* @gtk_hwrap_box_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [12 x i8] c"GtkHWrapBox\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"homogeneous\00", align 1
@parent_class = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gtk_hwrap_box_size_request = private unnamed_addr constant [27 x i8] c"gtk_hwrap_box_size_request\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"requisition != NULL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gtk_hwrap_box_get_type() #0 {
entry:
  %0 = load i64, i64* @gtk_hwrap_box_get_type.hwrap_box_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gtk_hwrap_box_get_type.hwrap_box_info, i32 0)
  store i64 %call1, i64* @gtk_hwrap_box_get_type.hwrap_box_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gtk_hwrap_box_get_type.hwrap_box_type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gtk_hwrap_box_class_init(%struct._GtkHWrapBoxClass* %class) #1 {
entry:
  %class.addr = alloca %struct._GtkHWrapBoxClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %wrap_box_class = alloca %struct._GtkWrapBoxClass*, align 8
  store %struct._GtkHWrapBoxClass* %class, %struct._GtkHWrapBoxClass** %class.addr, align 8
  %0 = load %struct._GtkHWrapBoxClass*, %struct._GtkHWrapBoxClass** %class.addr, align 8
  %1 = bitcast %struct._GtkHWrapBoxClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkHWrapBoxClass*, %struct._GtkHWrapBoxClass** %class.addr, align 8
  %4 = bitcast %struct._GtkHWrapBoxClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_wrap_box_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWrapBoxClass*
  store %struct._GtkWrapBoxClass* %5, %struct._GtkWrapBoxClass** %wrap_box_class, align 8
  %6 = load %struct._GtkHWrapBoxClass*, %struct._GtkHWrapBoxClass** %class.addr, align 8
  %7 = bitcast %struct._GtkHWrapBoxClass* %6 to i8*
  %call4 = call i8* @g_type_class_peek_parent(i8* %7)
  store i8* %call4, i8** @parent_class, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gtk_hwrap_box_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gtk_hwrap_box_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %10 = load %struct._GtkWrapBoxClass*, %struct._GtkWrapBoxClass** %wrap_box_class, align 8
  %rlist_line_children = getelementptr inbounds %struct._GtkWrapBoxClass, %struct._GtkWrapBoxClass* %10, i32 0, i32 1
  store %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)* @reverse_list_row_children, %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)** %rlist_line_children, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_hwrap_box_init(%struct._GtkHWrapBox* %hwbox) #1 {
entry:
  %hwbox.addr = alloca %struct._GtkHWrapBox*, align 8
  store %struct._GtkHWrapBox* %hwbox, %struct._GtkHWrapBox** %hwbox.addr, align 8
  %0 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %hwbox.addr, align 8
  %max_child_width = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %0, i32 0, i32 1
  store i32 0, i32* %max_child_width, align 4
  %1 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %hwbox.addr, align 8
  %max_child_height = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %1, i32 0, i32 2
  store i32 0, i32* %max_child_height, align 4
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_wrap_box_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gtk_hwrap_box_new(i32 %homogeneous) #1 {
entry:
  %homogeneous.addr = alloca i32, align 4
  store i32 %homogeneous, i32* %homogeneous.addr, align 4
  %call = call i64 @gtk_hwrap_box_get_type() #6
  %0 = load i32, i32* %homogeneous.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %1
}

declare i8* @g_object_new(i64, i8*, ...) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare i8* @g_type_class_peek_parent(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gtk_hwrap_box_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %this = alloca %struct._GtkHWrapBox*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  %ratio_dist = alloca float, align 4
  %layout_width = alloca float, align 4
  %row_inc = alloca i32, align 4
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %layout_height = alloca float, align 4
  %ratio = alloca float, align 4
  %dist = alloca float, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_hwrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkHWrapBox*
  store %struct._GtkHWrapBox* %2, %struct._GtkHWrapBox** %this, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_wrap_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %5, %struct._GtkWrapBox** %wbox, align 8
  store float 0.000000e+00, float* %layout_width, align 4
  store i32 0, i32* %row_inc, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %cmp = icmp ne %struct._GtkRequisition* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gtk_hwrap_box_size_request, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %7, i32 0, i32 0
  store i32 0, i32* %width, align 4
  %8 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %8, i32 0, i32 1
  store i32 0, i32* %height, align 4
  %9 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_width = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %9, i32 0, i32 1
  store i32 0, i32* %max_child_width, align 4
  %10 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_height = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %10, i32 0, i32 2
  store i32 0, i32* %max_child_height, align 4
  %11 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %11, i32 0, i32 5
  %12 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %12, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %13, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget4 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget4, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_object_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call5)
  %17 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %17, i32 0, i32 1
  %18 = load i32, i32* %flags, align 4
  %and = and i32 %18, 256
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then.8, label %if.end.26

if.then.8:                                        ; preds = %for.body
  %19 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget9 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %19, i32 0, i32 0
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget9, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %20, %struct._GtkRequisition* %child_requisition)
  %21 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_width10 = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %21, i32 0, i32 1
  %22 = load i32, i32* %max_child_width10, align 4
  %width11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %23 = load i32, i32* %width11, align 4
  %cmp12 = icmp ugt i32 %22, %23
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %24 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_width13 = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %24, i32 0, i32 1
  %25 = load i32, i32* %max_child_width13, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %width14 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %26 = load i32, i32* %width14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  %27 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_width15 = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %27, i32 0, i32 1
  store i32 %cond, i32* %max_child_width15, align 4
  %28 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_height16 = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %28, i32 0, i32 2
  %29 = load i32, i32* %max_child_height16, align 4
  %height17 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %30 = load i32, i32* %height17, align 4
  %cmp18 = icmp ugt i32 %29, %30
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end
  %31 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_height20 = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %31, i32 0, i32 2
  %32 = load i32, i32* %max_child_height20, align 4
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end
  %height22 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %33 = load i32, i32* %height22, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.19
  %cond24 = phi i32 [ %32, %cond.true.19 ], [ %33, %cond.false.21 ]
  %34 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_height25 = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %34, i32 0, i32 2
  store i32 %cond24, i32* %max_child_height25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %35 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %35, i32 0, i32 2
  %36 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %36, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store float 3.276800e+04, float* %ratio_dist, align 4
  %37 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %max_child_width27 = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %37, i32 0, i32 1
  %38 = load i32, i32* %max_child_width27, align 4
  %conv = uitofp i32 %38 to float
  store float %conv, float* %layout_width, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %do.cond, %for.end
  %39 = load i32, i32* %row_inc, align 4
  %conv29 = uitofp i32 %39 to float
  %40 = load float, float* %layout_width, align 4
  %add = fadd float %40, %conv29
  store float %add, float* %layout_width, align 4
  %41 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this, align 8
  %42 = load float, float* %layout_width, align 4
  %conv30 = fptoui float %42 to i32
  %call31 = call float @get_layout_size(%struct._GtkHWrapBox* %41, i32 %conv30, i32* %row_inc)
  store float %call31, float* %layout_height, align 4
  %43 = load float, float* %layout_width, align 4
  %44 = load float, float* %layout_height, align 4
  %div = fdiv float %43, %44
  store float %div, float* %ratio, align 4
  %45 = load float, float* %ratio, align 4
  %46 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %aspect_ratio = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %46, i32 0, i32 6
  %47 = load float, float* %aspect_ratio, align 4
  %cmp32 = fcmp ogt float %45, %47
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %do.body.28
  %48 = load float, float* %ratio, align 4
  br label %cond.end.37

cond.false.35:                                    ; preds = %do.body.28
  %49 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %aspect_ratio36 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %49, i32 0, i32 6
  %50 = load float, float* %aspect_ratio36, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.34
  %cond38 = phi float [ %48, %cond.true.34 ], [ %50, %cond.false.35 ]
  %51 = load float, float* %ratio, align 4
  %52 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %aspect_ratio39 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %52, i32 0, i32 6
  %53 = load float, float* %aspect_ratio39, align 4
  %cmp40 = fcmp olt float %51, %53
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.37
  %54 = load float, float* %ratio, align 4
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.end.37
  %55 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %aspect_ratio44 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %55, i32 0, i32 6
  %56 = load float, float* %aspect_ratio44, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.42
  %cond46 = phi float [ %54, %cond.true.42 ], [ %56, %cond.false.43 ]
  %sub = fsub float %cond38, %cond46
  store float %sub, float* %dist, align 4
  %57 = load float, float* %dist, align 4
  %58 = load float, float* %ratio_dist, align 4
  %cmp47 = fcmp olt float %57, %58
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %cond.end.45
  %59 = load float, float* %dist, align 4
  store float %59, float* %ratio_dist, align 4
  %60 = load float, float* %layout_width, align 4
  %conv50 = fptosi float %60 to i32
  %61 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width51 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %61, i32 0, i32 0
  store i32 %conv50, i32* %width51, align 4
  %62 = load float, float* %layout_height, align 4
  %conv52 = fptosi float %62 to i32
  %63 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height53 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %63, i32 0, i32 1
  store i32 %conv52, i32* %height53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %cond.end.45
  br label %do.cond

do.cond:                                          ; preds = %if.end.54
  %64 = load i32, i32* %row_inc, align 4
  %tobool55 = icmp ne i32 %64, 0
  br i1 %tobool55, label %do.body.28, label %do.end.56

do.end.56:                                        ; preds = %do.cond
  %65 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %66 = bitcast %struct._GtkWrapBox* %65 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_container_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call57)
  %67 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkContainer*
  %border_width = getelementptr inbounds %struct._GtkContainer, %struct._GtkContainer* %67, i32 0, i32 2
  %68 = bitcast i24* %border_width to i32*
  %bf.load = load i32, i32* %68, align 8
  %bf.clear = and i32 %bf.load, 65535
  %mul = mul nsw i32 %bf.clear, 2
  %69 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width59 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %69, i32 0, i32 0
  %70 = load i32, i32* %width59, align 4
  %add60 = add nsw i32 %70, %mul
  store i32 %add60, i32* %width59, align 4
  %71 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %72 = bitcast %struct._GtkWrapBox* %71 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_container_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call61)
  %73 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkContainer*
  %border_width63 = getelementptr inbounds %struct._GtkContainer, %struct._GtkContainer* %73, i32 0, i32 2
  %74 = bitcast i24* %border_width63 to i32*
  %bf.load64 = load i32, i32* %74, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %mul66 = mul nsw i32 %bf.clear65, 2
  %75 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height67 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %75, i32 0, i32 1
  %76 = load i32, i32* %height67, align 4
  %add68 = add nsw i32 %76, %mul66
  store i32 %add68, i32* %height67, align 4
  br label %return

return:                                           ; preds = %do.end.56, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtk_hwrap_box_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %area = alloca %struct._GdkRectangle, align 4
  %border = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  %3 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %4 = bitcast %struct._GtkWrapBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %border_width = getelementptr inbounds %struct._GtkContainer, %struct._GtkContainer* %5, i32 0, i32 2
  %6 = bitcast i24* %border_width to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %border, align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %allocation4 = getelementptr inbounds %struct._GtkWidget, %struct._GtkWidget* %7, i32 0, i32 7
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %9 = bitcast %struct._GdkRectangle* %allocation4 to i8*
  %10 = bitcast %struct._GdkRectangle* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 4, i1 false)
  %11 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %11, i32 0, i32 0
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %border, align 4
  %add = add nsw i32 %12, %13
  %x5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 0
  store i32 %add, i32* %x5, align 4
  %14 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %14, i32 0, i32 1
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %border, align 4
  %add6 = add nsw i32 %15, %16
  %y7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 1
  store i32 %add6, i32* %y7, align 4
  %17 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %17, i32 0, i32 2
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %border, align 4
  %mul = mul nsw i32 %19, 2
  %sub = sub nsw i32 %18, %mul
  %cmp = icmp sgt i32 1, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i32 0, i32 2
  %21 = load i32, i32* %width8, align 4
  %22 = load i32, i32* %border, align 4
  %mul9 = mul nsw i32 %22, 2
  %sub10 = sub nsw i32 %21, %mul9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %sub10, %cond.false ]
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 2
  store i32 %cond, i32* %width11, align 4
  %23 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %23, i32 0, i32 3
  %24 = load i32, i32* %height, align 4
  %25 = load i32, i32* %border, align 4
  %mul12 = mul nsw i32 %25, 2
  %sub13 = sub nsw i32 %24, %mul12
  %cmp14 = icmp sgt i32 1, %sub13
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end
  br label %cond.end.20

cond.false.16:                                    ; preds = %cond.end
  %26 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %26, i32 0, i32 3
  %27 = load i32, i32* %height17, align 4
  %28 = load i32, i32* %border, align 4
  %mul18 = mul nsw i32 %28, 2
  %sub19 = sub nsw i32 %27, %mul18
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.16, %cond.true.15
  %cond21 = phi i32 [ 1, %cond.true.15 ], [ %sub19, %cond.false.16 ]
  %height22 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %area, i32 0, i32 3
  store i32 %cond21, i32* %height22, align 4
  %29 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  call void @layout_rows(%struct._GtkWrapBox* %29, %struct._GdkRectangle* %area)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @reverse_list_row_children(%struct._GtkWrapBox* %wbox, %struct._GtkWrapBoxChild** %child_p, %struct._GdkRectangle* %area, i32* %max_child_size, i32* %expand_line) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %child_p.addr = alloca %struct._GtkWrapBoxChild**, align 8
  %area.addr = alloca %struct._GdkRectangle*, align 8
  %max_child_size.addr = alloca i32*, align 8
  %expand_line.addr = alloca i32*, align 8
  %slist = alloca %struct._GSList*, align 8
  %width = alloca i32, align 4
  %row_width = alloca i32, align 4
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %n = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GtkWrapBoxChild** %child_p, %struct._GtkWrapBoxChild*** %child_p.addr, align 8
  store %struct._GdkRectangle* %area, %struct._GdkRectangle** %area.addr, align 8
  store i32* %max_child_size, i32** %max_child_size.addr, align 8
  store i32* %expand_line, i32** %expand_line.addr, align 8
  store %struct._GSList* null, %struct._GSList** %slist, align 8
  store i32 0, i32* %width, align 4
  %0 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %width1 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %0, i32 0, i32 2
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %row_width, align 4
  %2 = load %struct._GtkWrapBoxChild**, %struct._GtkWrapBoxChild*** %child_p.addr, align 8
  %3 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %2, align 8
  store %struct._GtkWrapBoxChild* %3, %struct._GtkWrapBoxChild** %child, align 8
  %4 = load i32*, i32** %max_child_size.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %expand_line.addr, align 8
  store i32 0, i32* %5, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %7, i32 0, i32 0
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call = call i64 @gtk_object_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %10, i32 0, i32 1
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 256
  %cmp = icmp ne i32 %and, 0
  %lnot = xor i1 %cmp, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %13, i32 0, i32 2
  %14 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  %15 = load %struct._GtkWrapBoxChild**, %struct._GtkWrapBoxChild*** %child_p.addr, align 8
  store %struct._GtkWrapBoxChild* %14, %struct._GtkWrapBoxChild** %15, align 8
  %16 = load %struct._GtkWrapBoxChild**, %struct._GtkWrapBoxChild*** %child_p.addr, align 8
  %17 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %16, align 8
  store %struct._GtkWrapBoxChild* %17, %struct._GtkWrapBoxChild** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool3 = icmp ne %struct._GtkWrapBoxChild* %18, null
  br i1 %tobool3, label %if.then, label %if.end.58

if.then:                                          ; preds = %while.end
  store i32 1, i32* %n, align 4
  %19 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %20 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget4 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %20, i32 0, i32 0
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget4, align 8
  call void @get_child_requisition(%struct._GtkWrapBox* %19, %struct._GtkWidget* %21, %struct._GtkRequisition* %child_requisition)
  %width5 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %22 = load i32, i32* %width5, align 4
  %23 = load i32, i32* %width, align 4
  %add = add i32 %23, %22
  store i32 %add, i32* %width, align 4
  %24 = load i32*, i32** %max_child_size.addr, align 8
  %25 = load i32, i32* %24, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %26 = load i32, i32* %height, align 4
  %cmp6 = icmp ugt i32 %25, %26
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %27 = load i32*, i32** %max_child_size.addr, align 8
  %28 = load i32, i32* %27, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %height7 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %29 = load i32, i32* %height7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  %30 = load i32*, i32** %max_child_size.addr, align 8
  store i32 %cond, i32* %30, align 4
  %31 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %vexpand = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %31, i32 0, i32 1
  %bf.load = load i8, i8* %vexpand, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %32 = load i32*, i32** %expand_line.addr, align 8
  %33 = load i32, i32* %32, align 4
  %or = or i32 %33, %bf.cast
  store i32 %or, i32* %32, align 4
  %34 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %35 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %36 = bitcast %struct._GtkWrapBoxChild* %35 to i8*
  %call8 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %34, i8* %36)
  store %struct._GSList* %call8, %struct._GSList** %slist, align 8
  %37 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next9 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %37, i32 0, i32 2
  %38 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next9, align 8
  %39 = load %struct._GtkWrapBoxChild**, %struct._GtkWrapBoxChild*** %child_p.addr, align 8
  store %struct._GtkWrapBoxChild* %38, %struct._GtkWrapBoxChild** %39, align 8
  %40 = load %struct._GtkWrapBoxChild**, %struct._GtkWrapBoxChild*** %child_p.addr, align 8
  %41 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %40, align 8
  store %struct._GtkWrapBoxChild* %41, %struct._GtkWrapBoxChild** %child, align 8
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.55, %cond.end
  %42 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool11 = icmp ne %struct._GtkWrapBoxChild* %42, null
  br i1 %tobool11, label %land.rhs.12, label %land.end.14

land.rhs.12:                                      ; preds = %while.cond.10
  %43 = load i32, i32* %n, align 4
  %44 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %child_limit = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %44, i32 0, i32 7
  %45 = load i32, i32* %child_limit, align 4
  %cmp13 = icmp ult i32 %43, %45
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.12, %while.cond.10
  %46 = phi i1 [ false, %while.cond.10 ], [ %cmp13, %land.rhs.12 ]
  br i1 %46, label %while.body.15, label %while.end.57

while.body.15:                                    ; preds = %land.end.14
  %47 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget16 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %47, i32 0, i32 0
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %widget16, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_object_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call17)
  %50 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkObject*
  %flags19 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %50, i32 0, i32 1
  %51 = load i32, i32* %flags19, align 4
  %and20 = and i32 %51, 256
  %cmp21 = icmp ne i32 %and20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.55

if.then.22:                                       ; preds = %while.body.15
  %52 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %53 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget23 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %53, i32 0, i32 0
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget23, align 8
  call void @get_child_requisition(%struct._GtkWrapBox* %52, %struct._GtkWidget* %54, %struct._GtkRequisition* %child_requisition)
  %55 = load i32, i32* %width, align 4
  %56 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %56, i32 0, i32 2
  %57 = load i8, i8* %hspacing, align 1
  %conv = zext i8 %57 to i32
  %add24 = add i32 %55, %conv
  %width25 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %58 = load i32, i32* %width25, align 4
  %add26 = add i32 %add24, %58
  %59 = load i32, i32* %row_width, align 4
  %cmp27 = icmp ugt i32 %add26, %59
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.22
  %60 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %wrapped = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %60, i32 0, i32 1
  %bf.load29 = load i8, i8* %wrapped, align 8
  %bf.lshr30 = lshr i8 %bf.load29, 4
  %bf.clear31 = and i8 %bf.lshr30, 1
  %bf.cast32 = zext i8 %bf.clear31 to i32
  %tobool33 = icmp ne i32 %bf.cast32, 0
  br i1 %tobool33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %lor.lhs.false, %if.then.22
  br label %while.end.57

if.end:                                           ; preds = %lor.lhs.false
  %61 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing35 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %61, i32 0, i32 2
  %62 = load i8, i8* %hspacing35, align 1
  %conv36 = zext i8 %62 to i32
  %width37 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %63 = load i32, i32* %width37, align 4
  %add38 = add nsw i32 %conv36, %63
  %64 = load i32, i32* %width, align 4
  %add39 = add i32 %64, %add38
  store i32 %add39, i32* %width, align 4
  %65 = load i32*, i32** %max_child_size.addr, align 8
  %66 = load i32, i32* %65, align 4
  %height40 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %67 = load i32, i32* %height40, align 4
  %cmp41 = icmp ugt i32 %66, %67
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %if.end
  %68 = load i32*, i32** %max_child_size.addr, align 8
  %69 = load i32, i32* %68, align 4
  br label %cond.end.46

cond.false.44:                                    ; preds = %if.end
  %height45 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %70 = load i32, i32* %height45, align 4
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.43
  %cond47 = phi i32 [ %69, %cond.true.43 ], [ %70, %cond.false.44 ]
  %71 = load i32*, i32** %max_child_size.addr, align 8
  store i32 %cond47, i32* %71, align 4
  %72 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %vexpand48 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %72, i32 0, i32 1
  %bf.load49 = load i8, i8* %vexpand48, align 8
  %bf.lshr50 = lshr i8 %bf.load49, 2
  %bf.clear51 = and i8 %bf.lshr50, 1
  %bf.cast52 = zext i8 %bf.clear51 to i32
  %73 = load i32*, i32** %expand_line.addr, align 8
  %74 = load i32, i32* %73, align 4
  %or53 = or i32 %74, %bf.cast52
  store i32 %or53, i32* %73, align 4
  %75 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %76 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %77 = bitcast %struct._GtkWrapBoxChild* %76 to i8*
  %call54 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %75, i8* %77)
  store %struct._GSList* %call54, %struct._GSList** %slist, align 8
  %78 = load i32, i32* %n, align 4
  %inc = add i32 %78, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.46, %while.body.15
  %79 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next56 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %79, i32 0, i32 2
  %80 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next56, align 8
  %81 = load %struct._GtkWrapBoxChild**, %struct._GtkWrapBoxChild*** %child_p.addr, align 8
  store %struct._GtkWrapBoxChild* %80, %struct._GtkWrapBoxChild** %81, align 8
  %82 = load %struct._GtkWrapBoxChild**, %struct._GtkWrapBoxChild*** %child_p.addr, align 8
  %83 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %82, align 8
  store %struct._GtkWrapBoxChild* %83, %struct._GtkWrapBoxChild** %child, align 8
  br label %while.cond.10

while.end.57:                                     ; preds = %if.then.34, %land.end.14
  br label %if.end.58

if.end.58:                                        ; preds = %while.end.57, %while.end
  %84 = load %struct._GSList*, %struct._GSList** %slist, align 8
  ret %struct._GSList* %84
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_object_get_type() #3

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #2

; Function Attrs: nounwind uwtable
define internal float @get_layout_size(%struct._GtkHWrapBox* %this, i32 %max_width, i32* %width_inc) #1 {
entry:
  %this.addr = alloca %struct._GtkHWrapBox*, align 8
  %max_width.addr = alloca i32, align 4
  %width_inc.addr = alloca i32*, align 8
  %wbox = alloca %struct._GtkWrapBox*, align 8
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  %n_rows = alloca i32, align 4
  %left_over = alloca i32, align 4
  %total_height = alloca i32, align 4
  %last_row_filled = alloca i32, align 4
  %row_child = alloca %struct._GtkWrapBoxChild*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %row_width = alloca i32, align 4
  %row_height = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._GtkHWrapBox* %this, %struct._GtkHWrapBox** %this.addr, align 8
  store i32 %max_width, i32* %max_width.addr, align 4
  store i32* %width_inc, i32** %width_inc.addr, align 8
  %0 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this.addr, align 8
  %1 = bitcast %struct._GtkHWrapBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_wrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWrapBox*
  store %struct._GtkWrapBox* %2, %struct._GtkWrapBox** %wbox, align 8
  store i32 0, i32* %left_over, align 4
  store i32 0, i32* %total_height, align 4
  store i32 1, i32* %last_row_filled, align 4
  %3 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this.addr, align 8
  %max_child_width = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %3, i32 0, i32 1
  %4 = load i32, i32* %max_child_width, align 4
  %add = add i32 %4, 1
  %5 = load i32*, i32** %width_inc.addr, align 8
  store i32 %add, i32* %5, align 4
  store i32 0, i32* %n_rows, align 4
  %6 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %6, i32 0, i32 5
  %7 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %7, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.67, %entry
  %8 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %tobool = icmp ne %struct._GtkWrapBoxChild* %8, null
  br i1 %tobool, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %n, align 4
  %9 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_object_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call2)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkObject*
  %flags = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %12, i32 0, i32 1
  %13 = load i32, i32* %flags, align 4
  %and = and i32 %13, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.67

if.end:                                           ; preds = %for.body
  %14 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %15 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget4 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget4, align 8
  call void @get_child_requisition(%struct._GtkWrapBox* %14, %struct._GtkWidget* %16, %struct._GtkRequisition* %child_requisition)
  %17 = load i32, i32* %last_row_filled, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.end.10, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %18 = load i32*, i32** %width_inc.addr, align 8
  %19 = load i32, i32* %18, align 4
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %left_over, align 4
  %sub = sub i32 %20, %21
  %cmp7 = icmp ult i32 %19, %sub
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %22 = load i32*, i32** %width_inc.addr, align 8
  %23 = load i32, i32* %22, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %width8 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %24 = load i32, i32* %width8, align 4
  %25 = load i32, i32* %left_over, align 4
  %sub9 = sub i32 %24, %25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %sub9, %cond.false ]
  %26 = load i32*, i32** %width_inc.addr, align 8
  store i32 %cond, i32* %26, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %cond.end, %if.end
  %width11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %27 = load i32, i32* %width11, align 4
  store i32 %27, i32* %row_width, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %28 = load i32, i32* %height, align 4
  store i32 %28, i32* %row_height, align 4
  %29 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %29, i32 0, i32 2
  %30 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next, align 8
  store %struct._GtkWrapBoxChild* %30, %struct._GtkWrapBoxChild** %row_child, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.end.10
  %31 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %row_child, align 8
  %tobool13 = icmp ne %struct._GtkWrapBoxChild* %31, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.12
  %32 = load i32, i32* %n, align 4
  %33 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %child_limit = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %33, i32 0, i32 7
  %34 = load i32, i32* %child_limit, align 4
  %cmp14 = icmp ult i32 %32, %34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.12
  %35 = phi i1 [ false, %for.cond.12 ], [ %cmp14, %land.rhs ]
  br i1 %35, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %land.end
  %36 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %row_child, align 8
  %widget16 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %36, i32 0, i32 0
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget16, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_object_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call17)
  %39 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkObject*
  %flags19 = getelementptr inbounds %struct._GtkObject, %struct._GtkObject* %39, i32 0, i32 1
  %40 = load i32, i32* %flags19, align 4
  %and20 = and i32 %40, 256
  %cmp21 = icmp ne i32 %and20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.44

if.then.22:                                       ; preds = %for.body.15
  %41 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %42 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %row_child, align 8
  %widget23 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %42, i32 0, i32 0
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %widget23, align 8
  call void @get_child_requisition(%struct._GtkWrapBox* %41, %struct._GtkWidget* %43, %struct._GtkRequisition* %child_requisition)
  %44 = load i32, i32* %row_width, align 4
  %45 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %hspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %45, i32 0, i32 2
  %46 = load i8, i8* %hspacing, align 1
  %conv = zext i8 %46 to i32
  %add24 = add i32 %44, %conv
  %width25 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %47 = load i32, i32* %width25, align 4
  %add26 = add i32 %add24, %47
  %48 = load i32, i32* %max_width.addr, align 4
  %cmp27 = icmp ugt i32 %add26, %48
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.22
  br label %for.end

if.end.30:                                        ; preds = %if.then.22
  %49 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %hspacing31 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %49, i32 0, i32 2
  %50 = load i8, i8* %hspacing31, align 1
  %conv32 = zext i8 %50 to i32
  %width33 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %51 = load i32, i32* %width33, align 4
  %add34 = add nsw i32 %conv32, %51
  %52 = load i32, i32* %row_width, align 4
  %add35 = add i32 %52, %add34
  store i32 %add35, i32* %row_width, align 4
  %53 = load i32, i32* %row_height, align 4
  %height36 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %54 = load i32, i32* %height36, align 4
  %cmp37 = icmp ugt i32 %53, %54
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %if.end.30
  %55 = load i32, i32* %row_height, align 4
  br label %cond.end.42

cond.false.40:                                    ; preds = %if.end.30
  %height41 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %56 = load i32, i32* %height41, align 4
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.39
  %cond43 = phi i32 [ %55, %cond.true.39 ], [ %56, %cond.false.40 ]
  store i32 %cond43, i32* %row_height, align 4
  %57 = load i32, i32* %n, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end.42, %for.body.15
  %58 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %row_child, align 8
  store %struct._GtkWrapBoxChild* %58, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %59 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %row_child, align 8
  %next45 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %59, i32 0, i32 2
  %60 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next45, align 8
  store %struct._GtkWrapBoxChild* %60, %struct._GtkWrapBoxChild** %row_child, align 8
  br label %for.cond.12

for.end:                                          ; preds = %if.then.29, %land.end
  %61 = load i32, i32* %n, align 4
  %62 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %child_limit46 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %62, i32 0, i32 7
  %63 = load i32, i32* %child_limit46, align 4
  %cmp47 = icmp uge i32 %61, %63
  %conv48 = zext i1 %cmp47 to i32
  store i32 %conv48, i32* %last_row_filled, align 4
  %64 = load i32, i32* %last_row_filled, align 4
  %tobool49 = icmp ne i32 %64, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %for.end
  br label %cond.end.56

cond.false.51:                                    ; preds = %for.end
  %65 = load i32, i32* %max_width.addr, align 4
  %66 = load i32, i32* %row_width, align 4
  %67 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %hspacing52 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %67, i32 0, i32 2
  %68 = load i8, i8* %hspacing52, align 1
  %conv53 = zext i8 %68 to i32
  %add54 = add i32 %66, %conv53
  %sub55 = sub i32 %65, %add54
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.51, %cond.true.50
  %cond57 = phi i32 [ 0, %cond.true.50 ], [ %sub55, %cond.false.51 ]
  store i32 %cond57, i32* %left_over, align 4
  %69 = load i32, i32* %n_rows, align 4
  %tobool58 = icmp ne i32 %69, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %cond.end.56
  %70 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox, align 8
  %vspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %70, i32 0, i32 3
  %71 = load i8, i8* %vspacing, align 1
  %conv60 = zext i8 %71 to i32
  br label %cond.end.62

cond.false.61:                                    ; preds = %cond.end.56
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.59
  %cond63 = phi i32 [ %conv60, %cond.true.59 ], [ 0, %cond.false.61 ]
  %72 = load i32, i32* %row_height, align 4
  %add64 = add i32 %cond63, %72
  %73 = load i32, i32* %total_height, align 4
  %add65 = add i32 %73, %add64
  store i32 %add65, i32* %total_height, align 4
  %74 = load i32, i32* %n_rows, align 4
  %inc66 = add i32 %74, 1
  store i32 %inc66, i32* %n_rows, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %cond.end.62, %if.then
  %75 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %next68 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %75, i32 0, i32 2
  %76 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %next68, align 8
  store %struct._GtkWrapBoxChild* %76, %struct._GtkWrapBoxChild** %child, align 8
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  %77 = load i32*, i32** %width_inc.addr, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %this.addr, align 8
  %max_child_width70 = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %79, i32 0, i32 1
  %80 = load i32, i32* %max_child_width70, align 4
  %cmp71 = icmp ugt i32 %78, %80
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %for.end.69
  %81 = load i32*, i32** %width_inc.addr, align 8
  store i32 0, i32* %81, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %for.end.69
  %82 = load i32, i32* %total_height, align 4
  %cmp75 = icmp ugt i32 %82, 1
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %if.end.74
  %83 = load i32, i32* %total_height, align 4
  br label %cond.end.79

cond.false.78:                                    ; preds = %if.end.74
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.77
  %cond80 = phi i32 [ %83, %cond.true.77 ], [ 1, %cond.false.78 ]
  %conv81 = uitofp i32 %cond80 to float
  ret float %conv81
}

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @get_child_requisition(%struct._GtkWrapBox* %wbox, %struct._GtkWidget* %child, %struct._GtkRequisition* %child_requisition) #4 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %child_requisition.addr = alloca %struct._GtkRequisition*, align 8
  %hwbox = alloca %struct._GtkHWrapBox*, align 8
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store %struct._GtkRequisition* %child_requisition, %struct._GtkRequisition** %child_requisition.addr, align 8
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %homogeneous = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %0, i32 0, i32 1
  %bf.load = load i16, i16* %homogeneous, align 8
  %bf.clear = and i16 %bf.load, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %2 = bitcast %struct._GtkWrapBox* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_hwrap_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkHWrapBox*
  store %struct._GtkHWrapBox* %3, %struct._GtkHWrapBox** %hwbox, align 8
  %4 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %hwbox, align 8
  %max_child_width = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %4, i32 0, i32 1
  %5 = load i32, i32* %max_child_width, align 4
  %6 = load %struct._GtkRequisition*, %struct._GtkRequisition** %child_requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %6, i32 0, i32 0
  store i32 %5, i32* %width, align 4
  %7 = load %struct._GtkHWrapBox*, %struct._GtkHWrapBox** %hwbox, align 8
  %max_child_height = getelementptr inbounds %struct._GtkHWrapBox, %struct._GtkHWrapBox* %7, i32 0, i32 2
  %8 = load i32, i32* %max_child_height, align 4
  %9 = load %struct._GtkRequisition*, %struct._GtkRequisition** %child_requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %9, i32 0, i32 1
  store i32 %8, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %11 = load %struct._GtkRequisition*, %struct._GtkRequisition** %child_requisition.addr, align 8
  call void @gtk_widget_get_child_requisition(%struct._GtkWidget* %10, %struct._GtkRequisition* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gtk_widget_get_child_requisition(%struct._GtkWidget*, %struct._GtkRequisition*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @layout_rows(%struct._GtkWrapBox* %wbox, %struct._GdkRectangle* %area) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %area.addr = alloca %struct._GdkRectangle*, align 8
  %next_child = alloca %struct._GtkWrapBoxChild*, align 8
  %min_height = alloca i32, align 4
  %vexpand = alloca i32, align 4
  %slist = alloca %struct._GSList*, align 8
  %line_list = alloca %struct._Line*, align 8
  %total_height = alloca i32, align 4
  %n_expand_lines = alloca i32, align 4
  %n_lines = alloca i32, align 4
  %shrink_height = alloca float, align 4
  %children_per_line = alloca i32, align 4
  %line = alloca %struct._Line*, align 8
  %prev = alloca %struct._Line*, align 8
  %last = alloca %struct._Line*, align 8
  %n_shrink_lines = alloca float, align 4
  %tmp = alloca %struct._Line*, align 8
  %line24 = alloca %struct._Line*, align 8
  %shrink_fract = alloca i32, align 4
  %line54 = alloca %struct._Line*, align 8
  %y = alloca float, align 4
  %height57 = alloca float, align 4
  %extra = alloca float, align 4
  %row_allocation = alloca %struct._GdkRectangle, align 4
  %next_line = alloca %struct._Line*, align 8
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GdkRectangle* %area, %struct._GdkRectangle** %area.addr, align 8
  store %struct._Line* null, %struct._Line** %line_list, align 8
  store i32 0, i32* %total_height, align 4
  store i32 0, i32* %n_expand_lines, align 4
  store i32 0, i32* %n_lines, align 4
  %0 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %children = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %0, i32 0, i32 5
  %1 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %children, align 8
  store %struct._GtkWrapBoxChild* %1, %struct._GtkWrapBoxChild** %next_child, align 8
  %2 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %3 = bitcast %struct._GtkWrapBox* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GtkWrapBoxClass*
  %rlist_line_children = getelementptr inbounds %struct._GtkWrapBoxClass, %struct._GtkWrapBoxClass* %5, i32 0, i32 1
  %6 = load %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)*, %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)** %rlist_line_children, align 8
  %7 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %call = call %struct._GSList* %6(%struct._GtkWrapBox* %7, %struct._GtkWrapBoxChild** %next_child, %struct._GdkRectangle* %8, i32* %min_height, i32* %vexpand)
  store %struct._GSList* %call, %struct._GSList** %slist, align 8
  %9 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %call1 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %9)
  store %struct._GSList* %call1, %struct._GSList** %slist, align 8
  %10 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %call2 = call i32 @g_slist_length(%struct._GSList* %10)
  store i32 %call2, i32* %children_per_line, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %11 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool = icmp ne %struct._GSList* %11, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call noalias i8* @g_slice_alloc(i64 24)
  %12 = bitcast i8* %call3 to %struct._Line*
  store %struct._Line* %12, %struct._Line** %line, align 8
  %13 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %14 = load %struct._Line*, %struct._Line** %line, align 8
  %children4 = getelementptr inbounds %struct._Line, %struct._Line* %14, i32 0, i32 0
  store %struct._GSList* %13, %struct._GSList** %children4, align 8
  %15 = load i32, i32* %min_height, align 4
  %conv = trunc i32 %15 to i16
  %16 = load %struct._Line*, %struct._Line** %line, align 8
  %min_size = getelementptr inbounds %struct._Line, %struct._Line* %16, i32 0, i32 1
  store i16 %conv, i16* %min_size, align 2
  %17 = load i32, i32* %min_height, align 4
  %18 = load i32, i32* %total_height, align 4
  %add = add i32 %18, %17
  store i32 %add, i32* %total_height, align 4
  %19 = load i32, i32* %vexpand, align 4
  %20 = load %struct._Line*, %struct._Line** %line, align 8
  %expand = getelementptr inbounds %struct._Line, %struct._Line* %20, i32 0, i32 2
  %21 = trunc i32 %19 to i8
  %bf.load = load i8, i8* %expand, align 2
  %bf.value = and i8 %21, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %expand, align 2
  %bf.result.cast = zext i8 %bf.value to i32
  %22 = load i32, i32* %vexpand, align 4
  %tobool5 = icmp ne i32 %22, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %23 = load i32, i32* %n_expand_lines, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %n_expand_lines, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %24 = load %struct._Line*, %struct._Line** %line_list, align 8
  %25 = load %struct._Line*, %struct._Line** %line, align 8
  %next = getelementptr inbounds %struct._Line, %struct._Line* %25, i32 0, i32 3
  store %struct._Line* %24, %struct._Line** %next, align 8
  %26 = load %struct._Line*, %struct._Line** %line, align 8
  store %struct._Line* %26, %struct._Line** %line_list, align 8
  %27 = load i32, i32* %n_lines, align 4
  %inc6 = add i32 %27, 1
  store i32 %inc6, i32* %n_lines, align 4
  %28 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %29 = bitcast %struct._GtkWrapBox* %28 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %31 = bitcast %struct._GTypeClass* %30 to %struct._GtkWrapBoxClass*
  %rlist_line_children8 = getelementptr inbounds %struct._GtkWrapBoxClass, %struct._GtkWrapBoxClass* %31, i32 0, i32 1
  %32 = load %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)*, %struct._GSList* (%struct._GtkWrapBox*, %struct._GtkWrapBoxChild**, %struct._GdkRectangle*, i32*, i32*)** %rlist_line_children8, align 8
  %33 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %34 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %call9 = call %struct._GSList* %32(%struct._GtkWrapBox* %33, %struct._GtkWrapBoxChild** %next_child, %struct._GdkRectangle* %34, i32* %min_height, i32* %vexpand)
  store %struct._GSList* %call9, %struct._GSList** %slist, align 8
  %35 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %call10 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %35)
  store %struct._GSList* %call10, %struct._GSList** %slist, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i32, i32* %total_height, align 4
  %37 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %37, i32 0, i32 3
  %38 = load i32, i32* %height, align 4
  %cmp = icmp ugt i32 %36, %38
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.end
  %39 = load i32, i32* %total_height, align 4
  %40 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %40, i32 0, i32 3
  %41 = load i32, i32* %height13, align 4
  %sub = sub i32 %39, %41
  %conv14 = uitofp i32 %sub to float
  store float %conv14, float* %shrink_height, align 4
  br label %if.end.15

if.else:                                          ; preds = %while.end
  store float 0.000000e+00, float* %shrink_height, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  store %struct._Line* null, %struct._Line** %prev, align 8
  store %struct._Line* null, %struct._Line** %last, align 8
  %42 = load i32, i32* %n_lines, align 4
  %conv16 = uitofp i32 %42 to float
  store float %conv16, float* %n_shrink_lines, align 4
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.48, %if.end.15
  %43 = load %struct._Line*, %struct._Line** %line_list, align 8
  %tobool18 = icmp ne %struct._Line* %43, null
  br i1 %tobool18, label %while.body.19, label %while.end.50

while.body.19:                                    ; preds = %while.cond.17
  %44 = load %struct._Line*, %struct._Line** %line_list, align 8
  %next20 = getelementptr inbounds %struct._Line, %struct._Line* %44, i32 0, i32 3
  %45 = load %struct._Line*, %struct._Line** %next20, align 8
  store %struct._Line* %45, %struct._Line** %tmp, align 8
  %46 = load float, float* %shrink_height, align 4
  %tobool21 = fcmp une float %46, 0.000000e+00
  br i1 %tobool21, label %if.then.22, label %if.end.48

if.then.22:                                       ; preds = %while.body.19
  %47 = load %struct._Line*, %struct._Line** %line_list, align 8
  store %struct._Line* %47, %struct._Line** %line24, align 8
  %48 = load float, float* %shrink_height, align 4
  %49 = load float, float* %n_shrink_lines, align 4
  %div = fdiv float %48, %49
  %conv26 = fpext float %div to double
  %add27 = fadd double %conv26, 5.000000e-01
  %conv28 = fptoui double %add27 to i32
  store i32 %conv28, i32* %shrink_fract, align 4
  %50 = load %struct._Line*, %struct._Line** %line24, align 8
  %min_size29 = getelementptr inbounds %struct._Line, %struct._Line* %50, i32 0, i32 1
  %51 = load i16, i16* %min_size29, align 2
  %conv30 = zext i16 %51 to i32
  %52 = load i32, i32* %shrink_fract, align 4
  %cmp31 = icmp ugt i32 %conv30, %52
  br i1 %cmp31, label %if.then.33, label %if.else.40

if.then.33:                                       ; preds = %if.then.22
  %53 = load i32, i32* %shrink_fract, align 4
  %conv34 = uitofp i32 %53 to float
  %54 = load float, float* %shrink_height, align 4
  %sub35 = fsub float %54, %conv34
  store float %sub35, float* %shrink_height, align 4
  %55 = load i32, i32* %shrink_fract, align 4
  %56 = load %struct._Line*, %struct._Line** %line24, align 8
  %min_size36 = getelementptr inbounds %struct._Line, %struct._Line* %56, i32 0, i32 1
  %57 = load i16, i16* %min_size36, align 2
  %conv37 = zext i16 %57 to i32
  %sub38 = sub i32 %conv37, %55
  %conv39 = trunc i32 %sub38 to i16
  store i16 %conv39, i16* %min_size36, align 2
  br label %if.end.47

if.else.40:                                       ; preds = %if.then.22
  %58 = load %struct._Line*, %struct._Line** %line24, align 8
  %min_size41 = getelementptr inbounds %struct._Line, %struct._Line* %58, i32 0, i32 1
  %59 = load i16, i16* %min_size41, align 2
  %conv42 = zext i16 %59 to i32
  %sub43 = sub nsw i32 %conv42, 1
  %conv44 = sitofp i32 %sub43 to float
  %60 = load float, float* %shrink_height, align 4
  %sub45 = fsub float %60, %conv44
  store float %sub45, float* %shrink_height, align 4
  %61 = load %struct._Line*, %struct._Line** %line24, align 8
  %min_size46 = getelementptr inbounds %struct._Line, %struct._Line* %61, i32 0, i32 1
  store i16 1, i16* %min_size46, align 2
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.40, %if.then.33
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %while.body.19
  %62 = load float, float* %n_shrink_lines, align 4
  %dec = fadd float %62, -1.000000e+00
  store float %dec, float* %n_shrink_lines, align 4
  %63 = load %struct._Line*, %struct._Line** %line_list, align 8
  store %struct._Line* %63, %struct._Line** %last, align 8
  %64 = load %struct._Line*, %struct._Line** %prev, align 8
  %65 = load %struct._Line*, %struct._Line** %line_list, align 8
  %next49 = getelementptr inbounds %struct._Line, %struct._Line* %65, i32 0, i32 3
  store %struct._Line* %64, %struct._Line** %next49, align 8
  %66 = load %struct._Line*, %struct._Line** %line_list, align 8
  store %struct._Line* %66, %struct._Line** %prev, align 8
  %67 = load %struct._Line*, %struct._Line** %tmp, align 8
  store %struct._Line* %67, %struct._Line** %line_list, align 8
  br label %while.cond.17

while.end.50:                                     ; preds = %while.cond.17
  %68 = load %struct._Line*, %struct._Line** %last, align 8
  store %struct._Line* %68, %struct._Line** %line_list, align 8
  %69 = load i32, i32* %n_lines, align 4
  %tobool51 = icmp ne i32 %69, 0
  br i1 %tobool51, label %if.then.52, label %if.end.152

if.then.52:                                       ; preds = %while.end.50
  store float 0.000000e+00, float* %extra, align 4
  %70 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height59 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %70, i32 0, i32 3
  %71 = load i32, i32* %height59, align 4
  %conv60 = sitofp i32 %71 to float
  store float %conv60, float* %height57, align 4
  %72 = load i32, i32* %n_lines, align 4
  %conv61 = uitofp i32 %72 to float
  %73 = load float, float* %height57, align 4
  %74 = load i32, i32* %n_lines, align 4
  %sub62 = sub i32 %74, 1
  %75 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %vspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %75, i32 0, i32 3
  %76 = load i8, i8* %vspacing, align 1
  %conv63 = zext i8 %76 to i32
  %mul = mul i32 %sub62, %conv63
  %conv64 = uitofp i32 %mul to float
  %sub65 = fsub float %73, %conv64
  %cmp66 = fcmp ogt float %conv61, %sub65
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.52
  %77 = load i32, i32* %n_lines, align 4
  %conv68 = uitofp i32 %77 to float
  br label %cond.end

cond.false:                                       ; preds = %if.then.52
  %78 = load float, float* %height57, align 4
  %79 = load i32, i32* %n_lines, align 4
  %sub69 = sub i32 %79, 1
  %80 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %vspacing70 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %80, i32 0, i32 3
  %81 = load i8, i8* %vspacing70, align 1
  %conv71 = zext i8 %81 to i32
  %mul72 = mul i32 %sub69, %conv71
  %conv73 = uitofp i32 %mul72 to float
  %sub74 = fsub float %78, %conv73
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %conv68, %cond.true ], [ %sub74, %cond.false ]
  store float %cond, float* %height57, align 4
  %82 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %homogeneous = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %82, i32 0, i32 1
  %bf.load75 = load i16, i16* %homogeneous, align 8
  %bf.clear76 = and i16 %bf.load75, 1
  %bf.cast = zext i16 %bf.clear76 to i32
  %tobool77 = icmp ne i32 %bf.cast, 0
  br i1 %tobool77, label %if.then.78, label %if.else.83

if.then.78:                                       ; preds = %cond.end
  %83 = load i32, i32* %n_lines, align 4
  %conv79 = uitofp i32 %83 to double
  %84 = load float, float* %height57, align 4
  %conv80 = fpext float %84 to double
  %div81 = fdiv double %conv80, %conv79
  %conv82 = fptrunc double %div81 to float
  store float %conv82, float* %height57, align 4
  br label %if.end.102

if.else.83:                                       ; preds = %cond.end
  %85 = load i32, i32* %n_expand_lines, align 4
  %tobool84 = icmp ne i32 %85, 0
  br i1 %tobool84, label %if.then.85, label %if.else.100

if.then.85:                                       ; preds = %if.else.83
  %86 = load float, float* %height57, align 4
  %87 = load i32, i32* %total_height, align 4
  %conv86 = uitofp i32 %87 to float
  %sub87 = fsub float %86, %conv86
  %cmp88 = fcmp ogt float 0.000000e+00, %sub87
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %if.then.85
  br label %cond.end.94

cond.false.91:                                    ; preds = %if.then.85
  %88 = load float, float* %height57, align 4
  %89 = load i32, i32* %total_height, align 4
  %conv92 = uitofp i32 %89 to float
  %sub93 = fsub float %88, %conv92
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.91, %cond.true.90
  %cond95 = phi float [ 0.000000e+00, %cond.true.90 ], [ %sub93, %cond.false.91 ]
  store float %cond95, float* %height57, align 4
  %90 = load float, float* %height57, align 4
  %conv96 = fpext float %90 to double
  %91 = load i32, i32* %n_expand_lines, align 4
  %conv97 = uitofp i32 %91 to double
  %div98 = fdiv double %conv96, %conv97
  %conv99 = fptrunc double %div98 to float
  store float %conv99, float* %extra, align 4
  br label %if.end.101

if.else.100:                                      ; preds = %if.else.83
  store float 0.000000e+00, float* %height57, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100, %cond.end.94
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.78
  %92 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %y103 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %92, i32 0, i32 1
  %93 = load i32, i32* %y103, align 4
  %conv104 = sitofp i32 %93 to float
  store float %conv104, float* %y, align 4
  %94 = load %struct._Line*, %struct._Line** %line_list, align 8
  store %struct._Line* %94, %struct._Line** %line54, align 8
  br label %while.cond.105

while.cond.105:                                   ; preds = %if.end.136, %if.end.102
  %95 = load %struct._Line*, %struct._Line** %line54, align 8
  %tobool106 = icmp ne %struct._Line* %95, null
  br i1 %tobool106, label %while.body.107, label %while.end.151

while.body.107:                                   ; preds = %while.cond.105
  %96 = load %struct._Line*, %struct._Line** %line54, align 8
  %next110 = getelementptr inbounds %struct._Line, %struct._Line* %96, i32 0, i32 3
  %97 = load %struct._Line*, %struct._Line** %next110, align 8
  store %struct._Line* %97, %struct._Line** %next_line, align 8
  %98 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %98, i32 0, i32 0
  %99 = load i32, i32* %x, align 4
  %x111 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %row_allocation, i32 0, i32 0
  store i32 %99, i32* %x111, align 4
  %100 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %100, i32 0, i32 2
  %101 = load i32, i32* %width, align 4
  %width112 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %row_allocation, i32 0, i32 2
  store i32 %101, i32* %width112, align 4
  %102 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %homogeneous113 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %102, i32 0, i32 1
  %bf.load114 = load i16, i16* %homogeneous113, align 8
  %bf.clear115 = and i16 %bf.load114, 1
  %bf.cast116 = zext i16 %bf.clear115 to i32
  %tobool117 = icmp ne i32 %bf.cast116, 0
  br i1 %tobool117, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %while.body.107
  %103 = load float, float* %height57, align 4
  %conv119 = fptosi float %103 to i32
  %height120 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %row_allocation, i32 0, i32 3
  store i32 %conv119, i32* %height120, align 4
  br label %if.end.136

if.else.121:                                      ; preds = %while.body.107
  %104 = load %struct._Line*, %struct._Line** %line54, align 8
  %min_size122 = getelementptr inbounds %struct._Line, %struct._Line* %104, i32 0, i32 1
  %105 = load i16, i16* %min_size122, align 2
  %conv123 = zext i16 %105 to i32
  %height124 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %row_allocation, i32 0, i32 3
  store i32 %conv123, i32* %height124, align 4
  %106 = load %struct._Line*, %struct._Line** %line54, align 8
  %expand125 = getelementptr inbounds %struct._Line, %struct._Line* %106, i32 0, i32 2
  %bf.load126 = load i8, i8* %expand125, align 2
  %bf.clear127 = and i8 %bf.load126, 1
  %bf.cast128 = zext i8 %bf.clear127 to i32
  %tobool129 = icmp ne i32 %bf.cast128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.135

if.then.130:                                      ; preds = %if.else.121
  %107 = load float, float* %extra, align 4
  %height131 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %row_allocation, i32 0, i32 3
  %108 = load i32, i32* %height131, align 4
  %conv132 = sitofp i32 %108 to float
  %add133 = fadd float %conv132, %107
  %conv134 = fptosi float %add133 to i32
  store i32 %conv134, i32* %height131, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.130, %if.else.121
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.118
  %109 = load float, float* %y, align 4
  %conv137 = fptosi float %109 to i32
  %y138 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %row_allocation, i32 0, i32 1
  store i32 %conv137, i32* %y138, align 4
  %height139 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %row_allocation, i32 0, i32 3
  %110 = load i32, i32* %height139, align 4
  %111 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %vspacing140 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %111, i32 0, i32 3
  %112 = load i8, i8* %vspacing140, align 1
  %conv141 = zext i8 %112 to i32
  %add142 = add nsw i32 %110, %conv141
  %conv143 = sitofp i32 %add142 to float
  %113 = load float, float* %y, align 4
  %add144 = fadd float %113, %conv143
  store float %add144, float* %y, align 4
  %114 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %115 = load %struct._Line*, %struct._Line** %line54, align 8
  %children145 = getelementptr inbounds %struct._Line, %struct._Line* %115, i32 0, i32 0
  %116 = load %struct._GSList*, %struct._GSList** %children145, align 8
  %117 = load i32, i32* %children_per_line, align 4
  %118 = load %struct._Line*, %struct._Line** %line54, align 8
  %expand146 = getelementptr inbounds %struct._Line, %struct._Line* %118, i32 0, i32 2
  %bf.load147 = load i8, i8* %expand146, align 2
  %bf.clear148 = and i8 %bf.load147, 1
  %bf.cast149 = zext i8 %bf.clear148 to i32
  call void @layout_row(%struct._GtkWrapBox* %114, %struct._GdkRectangle* %row_allocation, %struct._GSList* %116, i32 %117, i32 %bf.cast149)
  %119 = load %struct._Line*, %struct._Line** %line54, align 8
  %children150 = getelementptr inbounds %struct._Line, %struct._Line* %119, i32 0, i32 0
  %120 = load %struct._GSList*, %struct._GSList** %children150, align 8
  call void @g_slist_free(%struct._GSList* %120)
  %121 = load %struct._Line*, %struct._Line** %next_line, align 8
  store %struct._Line* %121, %struct._Line** %line54, align 8
  br label %while.cond.105

while.end.151:                                    ; preds = %while.cond.105
  br label %do.body

do.body:                                          ; preds = %while.end.151
  %122 = load %struct._Line*, %struct._Line** %line_list, align 8
  %123 = bitcast %struct._Line* %122 to i8*
  call void @g_slice_free_chain_with_offset(i64 24, i8* %123, i64 16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.152

if.end.152:                                       ; preds = %do.end, %while.end.50
  ret void
}

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare noalias i8* @g_slice_alloc(i64) #2

; Function Attrs: nounwind uwtable
define internal void @layout_row(%struct._GtkWrapBox* %wbox, %struct._GdkRectangle* %area, %struct._GSList* %children, i32 %children_per_line, i32 %vexpand) #1 {
entry:
  %wbox.addr = alloca %struct._GtkWrapBox*, align 8
  %area.addr = alloca %struct._GdkRectangle*, align 8
  %children.addr = alloca %struct._GSList*, align 8
  %children_per_line.addr = alloca i32, align 4
  %vexpand.addr = alloca i32, align 4
  %slist = alloca %struct._GSList*, align 8
  %n_children = alloca i32, align 4
  %n_expand_children = alloca i32, align 4
  %have_expand_children = alloca i32, align 4
  %total_width = alloca i32, align 4
  %x = alloca float, align 4
  %width = alloca float, align 4
  %extra = alloca float, align 4
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %child = alloca %struct._GtkWrapBoxChild*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %child116 = alloca %struct._GtkWrapBoxChild*, align 8
  %child_requisition137 = alloca %struct._GtkRequisition, align 4
  %space = alloca i32, align 4
  store %struct._GtkWrapBox* %wbox, %struct._GtkWrapBox** %wbox.addr, align 8
  store %struct._GdkRectangle* %area, %struct._GdkRectangle** %area.addr, align 8
  store %struct._GSList* %children, %struct._GSList** %children.addr, align 8
  store i32 %children_per_line, i32* %children_per_line.addr, align 4
  store i32 %vexpand, i32* %vexpand.addr, align 4
  store i32 0, i32* %n_children, align 4
  store i32 0, i32* %n_expand_children, align 4
  store i32 0, i32* %have_expand_children, align 4
  store i32 0, i32* %total_width, align 4
  %0 = load %struct._GSList*, %struct._GSList** %children.addr, align 8
  store %struct._GSList* %0, %struct._GSList** %slist, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GtkWrapBoxChild*
  store %struct._GtkWrapBoxChild* %4, %struct._GtkWrapBoxChild** %child, align 8
  %5 = load i32, i32* %n_children, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %n_children, align 4
  %6 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %hexpand = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %6, i32 0, i32 1
  %bf.load = load i8, i8* %hexpand, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %n_expand_children, align 4
  %inc2 = add i32 %7, 1
  store i32 %inc2, i32* %n_expand_children, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %9 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child, align 8
  %widget = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @get_child_requisition(%struct._GtkWrapBox* %8, %struct._GtkWidget* %10, %struct._GtkRequisition* %child_requisition)
  %width3 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %11 = load i32, i32* %width3, align 4
  %12 = load i32, i32* %total_width, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %total_width, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 1
  %14 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %14, %struct._GSList** %slist, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %15, i32 0, i32 2
  %16 = load i32, i32* %width4, align 4
  %17 = load i32, i32* %n_children, align 4
  %sub = sub i32 %17, 1
  %18 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %18, i32 0, i32 2
  %19 = load i8, i8* %hspacing, align 1
  %conv = zext i8 %19 to i32
  %mul = mul i32 %sub, %conv
  %sub5 = sub i32 %16, %mul
  %cmp = icmp ugt i32 1, %sub5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %width7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i32 0, i32 2
  %21 = load i32, i32* %width7, align 4
  %22 = load i32, i32* %n_children, align 4
  %sub8 = sub i32 %22, 1
  %23 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing9 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %23, i32 0, i32 2
  %24 = load i8, i8* %hspacing9, align 1
  %conv10 = zext i8 %24 to i32
  %mul11 = mul i32 %sub8, %conv10
  %sub12 = sub i32 %21, %mul11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %sub12, %cond.false ]
  %conv13 = uitofp i32 %cond to float
  store float %conv13, float* %width, align 4
  %25 = load float, float* %width, align 4
  %26 = load i32, i32* %total_width, align 4
  %conv14 = sitofp i32 %26 to float
  %cmp15 = fcmp ogt float %25, %conv14
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %cond.end
  %27 = load float, float* %width, align 4
  %28 = load i32, i32* %total_width, align 4
  %conv18 = sitofp i32 %28 to float
  %sub19 = fsub float %27, %conv18
  store float %sub19, float* %extra, align 4
  br label %if.end.20

if.else:                                          ; preds = %cond.end
  store float 0.000000e+00, float* %extra, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  %29 = load i32, i32* %n_expand_children, align 4
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.20
  %30 = load float, float* %extra, align 4
  %tobool22 = fcmp une float %30, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.20
  %31 = phi i1 [ false, %if.end.20 ], [ %tobool22, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  store i32 %land.ext, i32* %have_expand_children, align 4
  %32 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %x23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %32, i32 0, i32 0
  %33 = load i32, i32* %x23, align 4
  %conv24 = sitofp i32 %33 to float
  store float %conv24, float* %x, align 4
  %34 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %homogeneous = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %34, i32 0, i32 1
  %bf.load25 = load i16, i16* %homogeneous, align 8
  %bf.clear26 = and i16 %bf.load25, 1
  %bf.cast27 = zext i16 %bf.clear26 to i32
  %tobool28 = icmp ne i32 %bf.cast27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.52

if.then.29:                                       ; preds = %land.end
  %35 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %width30 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %35, i32 0, i32 2
  %36 = load i32, i32* %width30, align 4
  %37 = load i32, i32* %children_per_line.addr, align 4
  %sub31 = sub i32 %37, 1
  %38 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing32 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %38, i32 0, i32 2
  %39 = load i8, i8* %hspacing32, align 1
  %conv33 = zext i8 %39 to i32
  %mul34 = mul i32 %sub31, %conv33
  %sub35 = sub i32 %36, %mul34
  %cmp36 = icmp ugt i32 1, %sub35
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.then.29
  br label %cond.end.46

cond.false.39:                                    ; preds = %if.then.29
  %40 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %width40 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %40, i32 0, i32 2
  %41 = load i32, i32* %width40, align 4
  %42 = load i32, i32* %children_per_line.addr, align 4
  %sub41 = sub i32 %42, 1
  %43 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing42 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %43, i32 0, i32 2
  %44 = load i8, i8* %hspacing42, align 1
  %conv43 = zext i8 %44 to i32
  %mul44 = mul i32 %sub41, %conv43
  %sub45 = sub i32 %41, %mul44
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.39, %cond.true.38
  %cond47 = phi i32 [ 1, %cond.true.38 ], [ %sub45, %cond.false.39 ]
  %conv48 = uitofp i32 %cond47 to float
  store float %conv48, float* %width, align 4
  %45 = load i32, i32* %children_per_line.addr, align 4
  %conv49 = uitofp i32 %45 to double
  %46 = load float, float* %width, align 4
  %conv50 = fpext float %46 to double
  %div = fdiv double %conv50, %conv49
  %conv51 = fptrunc double %div to float
  store float %conv51, float* %width, align 4
  store float 0.000000e+00, float* %extra, align 4
  br label %if.end.112

if.else.52:                                       ; preds = %land.end
  %47 = load i32, i32* %have_expand_children, align 4
  %tobool53 = icmp ne i32 %47, 0
  br i1 %tobool53, label %land.lhs.true, label %if.else.64

land.lhs.true:                                    ; preds = %if.else.52
  %48 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %48, i32 0, i32 1
  %bf.load54 = load i16, i16* %justify, align 8
  %bf.lshr = lshr i16 %bf.load54, 1
  %bf.clear55 = and i16 %bf.lshr, 15
  %bf.cast56 = zext i16 %bf.clear55 to i32
  %cmp57 = icmp ne i32 %bf.cast56, 3
  br i1 %cmp57, label %if.then.59, label %if.else.64

if.then.59:                                       ; preds = %land.lhs.true
  %49 = load float, float* %extra, align 4
  store float %49, float* %width, align 4
  %50 = load i32, i32* %n_expand_children, align 4
  %conv60 = uitofp i32 %50 to double
  %51 = load float, float* %extra, align 4
  %conv61 = fpext float %51 to double
  %div62 = fdiv double %conv61, %conv60
  %conv63 = fptrunc double %div62 to float
  store float %conv63, float* %extra, align 4
  br label %if.end.111

if.else.64:                                       ; preds = %land.lhs.true, %if.else.52
  %52 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify65 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %52, i32 0, i32 1
  %bf.load66 = load i16, i16* %justify65, align 8
  %bf.lshr67 = lshr i16 %bf.load66, 1
  %bf.clear68 = and i16 %bf.lshr67, 15
  %bf.cast69 = zext i16 %bf.clear68 to i32
  %cmp70 = icmp eq i32 %bf.cast69, 3
  br i1 %cmp70, label %if.then.72, label %if.else.77

if.then.72:                                       ; preds = %if.else.64
  %53 = load float, float* %extra, align 4
  store float %53, float* %width, align 4
  store i32 1, i32* %have_expand_children, align 4
  %54 = load i32, i32* %n_children, align 4
  store i32 %54, i32* %n_expand_children, align 4
  %55 = load i32, i32* %n_expand_children, align 4
  %conv73 = uitofp i32 %55 to double
  %56 = load float, float* %extra, align 4
  %conv74 = fpext float %56 to double
  %div75 = fdiv double %conv74, %conv73
  %conv76 = fptrunc double %div75 to float
  store float %conv76, float* %extra, align 4
  br label %if.end.110

if.else.77:                                       ; preds = %if.else.64
  %57 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify78 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %57, i32 0, i32 1
  %bf.load79 = load i16, i16* %justify78, align 8
  %bf.lshr80 = lshr i16 %bf.load79, 1
  %bf.clear81 = and i16 %bf.lshr80, 15
  %bf.cast82 = zext i16 %bf.clear81 to i32
  %cmp83 = icmp eq i32 %bf.cast82, 2
  br i1 %cmp83, label %if.then.85, label %if.else.88

if.then.85:                                       ; preds = %if.else.77
  %58 = load float, float* %extra, align 4
  %div86 = fdiv float %58, 2.000000e+00
  %59 = load float, float* %x, align 4
  %add87 = fadd float %59, %div86
  store float %add87, float* %x, align 4
  store float 0.000000e+00, float* %width, align 4
  store float 0.000000e+00, float* %extra, align 4
  br label %if.end.109

if.else.88:                                       ; preds = %if.else.77
  %60 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify89 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %60, i32 0, i32 1
  %bf.load90 = load i16, i16* %justify89, align 8
  %bf.lshr91 = lshr i16 %bf.load90, 1
  %bf.clear92 = and i16 %bf.lshr91, 15
  %bf.cast93 = zext i16 %bf.clear92 to i32
  %cmp94 = icmp eq i32 %bf.cast93, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.else.88
  store float 0.000000e+00, float* %width, align 4
  store float 0.000000e+00, float* %extra, align 4
  br label %if.end.108

if.else.97:                                       ; preds = %if.else.88
  %61 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify98 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %61, i32 0, i32 1
  %bf.load99 = load i16, i16* %justify98, align 8
  %bf.lshr100 = lshr i16 %bf.load99, 1
  %bf.clear101 = and i16 %bf.lshr100, 15
  %bf.cast102 = zext i16 %bf.clear101 to i32
  %cmp103 = icmp eq i32 %bf.cast102, 1
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.else.97
  %62 = load float, float* %extra, align 4
  %63 = load float, float* %x, align 4
  %add106 = fadd float %63, %62
  store float %add106, float* %x, align 4
  store float 0.000000e+00, float* %width, align 4
  store float 0.000000e+00, float* %extra, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.else.97
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.96
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.85
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.72
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.59
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %cond.end.46
  store i32 0, i32* %n_children, align 4
  %64 = load %struct._GSList*, %struct._GSList** %children.addr, align 8
  store %struct._GSList* %64, %struct._GSList** %slist, align 8
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.281, %if.end.112
  %65 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool114 = icmp ne %struct._GSList* %65, null
  br i1 %tobool114, label %for.body.115, label %for.end.283

for.body.115:                                     ; preds = %for.cond.113
  %66 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %data117 = getelementptr inbounds %struct._GSList, %struct._GSList* %66, i32 0, i32 0
  %67 = load i8*, i8** %data117, align 8
  %68 = bitcast i8* %67 to %struct._GtkWrapBoxChild*
  store %struct._GtkWrapBoxChild* %68, %struct._GtkWrapBoxChild** %child116, align 8
  %69 = load float, float* %x, align 4
  %conv118 = fptosi float %69 to i32
  %x119 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  store i32 %conv118, i32* %x119, align 4
  %70 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %70, i32 0, i32 1
  %71 = load i32, i32* %y, align 4
  %y120 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  store i32 %71, i32* %y120, align 4
  %72 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %homogeneous121 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %72, i32 0, i32 1
  %bf.load122 = load i16, i16* %homogeneous121, align 8
  %bf.clear123 = and i16 %bf.load122, 1
  %bf.cast124 = zext i16 %bf.clear123 to i32
  %tobool125 = icmp ne i32 %bf.cast124, 0
  br i1 %tobool125, label %if.then.126, label %if.else.136

if.then.126:                                      ; preds = %for.body.115
  %73 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %73, i32 0, i32 3
  %74 = load i32, i32* %height, align 4
  %height127 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %74, i32* %height127, align 4
  %75 = load float, float* %width, align 4
  %conv128 = fptosi float %75 to i32
  %width129 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  store i32 %conv128, i32* %width129, align 4
  %width130 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  %76 = load i32, i32* %width130, align 4
  %77 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing131 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %77, i32 0, i32 2
  %78 = load i8, i8* %hspacing131, align 1
  %conv132 = zext i8 %78 to i32
  %add133 = add nsw i32 %76, %conv132
  %conv134 = sitofp i32 %add133 to float
  %79 = load float, float* %x, align 4
  %add135 = fadd float %79, %conv134
  store float %add135, float* %x, align 4
  br label %if.end.272

if.else.136:                                      ; preds = %for.body.115
  %80 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %81 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child116, align 8
  %widget138 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %81, i32 0, i32 0
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %widget138, align 8
  call void @get_child_requisition(%struct._GtkWrapBox* %80, %struct._GtkWidget* %82, %struct._GtkRequisition* %child_requisition137)
  %height139 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition137, i32 0, i32 1
  %83 = load i32, i32* %height139, align 4
  %84 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height140 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %84, i32 0, i32 3
  %85 = load i32, i32* %height140, align 4
  %cmp141 = icmp sge i32 %83, %85
  br i1 %cmp141, label %if.then.143, label %if.else.146

if.then.143:                                      ; preds = %if.else.136
  %86 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height144 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %86, i32 0, i32 3
  %87 = load i32, i32* %height144, align 4
  %height145 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %87, i32* %height145, align 4
  br label %if.end.202

if.else.146:                                      ; preds = %if.else.136
  %height147 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition137, i32 0, i32 1
  %88 = load i32, i32* %height147, align 4
  %height148 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %88, i32* %height148, align 4
  %89 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %line_justify = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %89, i32 0, i32 1
  %bf.load149 = load i16, i16* %line_justify, align 8
  %bf.lshr150 = lshr i16 %bf.load149, 5
  %bf.clear151 = and i16 %bf.lshr150, 15
  %bf.cast152 = zext i16 %bf.clear151 to i32
  %cmp153 = icmp eq i32 %bf.cast152, 3
  br i1 %cmp153, label %if.then.160, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.146
  %90 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child116, align 8
  %vfill = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %90, i32 0, i32 1
  %bf.load155 = load i8, i8* %vfill, align 8
  %bf.lshr156 = lshr i8 %bf.load155, 3
  %bf.clear157 = and i8 %bf.lshr156, 1
  %bf.cast158 = zext i8 %bf.clear157 to i32
  %tobool159 = icmp ne i32 %bf.cast158, 0
  br i1 %tobool159, label %if.then.160, label %if.else.163

if.then.160:                                      ; preds = %lor.lhs.false, %if.else.146
  %91 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height161 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %91, i32 0, i32 3
  %92 = load i32, i32* %height161, align 4
  %height162 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %92, i32* %height162, align 4
  br label %if.end.201

if.else.163:                                      ; preds = %lor.lhs.false
  %93 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child116, align 8
  %vexpand164 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %93, i32 0, i32 1
  %bf.load165 = load i8, i8* %vexpand164, align 8
  %bf.lshr166 = lshr i8 %bf.load165, 2
  %bf.clear167 = and i8 %bf.lshr166, 1
  %bf.cast168 = zext i8 %bf.clear167 to i32
  %tobool169 = icmp ne i32 %bf.cast168, 0
  br i1 %tobool169, label %if.then.178, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %if.else.163
  %94 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %line_justify171 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %94, i32 0, i32 1
  %bf.load172 = load i16, i16* %line_justify171, align 8
  %bf.lshr173 = lshr i16 %bf.load172, 5
  %bf.clear174 = and i16 %bf.lshr173, 15
  %bf.cast175 = zext i16 %bf.clear174 to i32
  %cmp176 = icmp eq i32 %bf.cast175, 2
  br i1 %cmp176, label %if.then.178, label %if.else.185

if.then.178:                                      ; preds = %lor.lhs.false.170, %if.else.163
  %95 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height179 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %95, i32 0, i32 3
  %96 = load i32, i32* %height179, align 4
  %height180 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition137, i32 0, i32 1
  %97 = load i32, i32* %height180, align 4
  %sub181 = sub nsw i32 %96, %97
  %div182 = sdiv i32 %sub181, 2
  %y183 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  %98 = load i32, i32* %y183, align 4
  %add184 = add nsw i32 %98, %div182
  store i32 %add184, i32* %y183, align 4
  br label %if.end.200

if.else.185:                                      ; preds = %lor.lhs.false.170
  %99 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %line_justify186 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %99, i32 0, i32 1
  %bf.load187 = load i16, i16* %line_justify186, align 8
  %bf.lshr188 = lshr i16 %bf.load187, 5
  %bf.clear189 = and i16 %bf.lshr188, 15
  %bf.cast190 = zext i16 %bf.clear189 to i32
  %cmp191 = icmp eq i32 %bf.cast190, 1
  br i1 %cmp191, label %if.then.193, label %if.end.199

if.then.193:                                      ; preds = %if.else.185
  %100 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %height194 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %100, i32 0, i32 3
  %101 = load i32, i32* %height194, align 4
  %height195 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition137, i32 0, i32 1
  %102 = load i32, i32* %height195, align 4
  %sub196 = sub nsw i32 %101, %102
  %y197 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  %103 = load i32, i32* %y197, align 4
  %add198 = add nsw i32 %103, %sub196
  store i32 %add198, i32* %y197, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.193, %if.else.185
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.178
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.then.160
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.then.143
  %104 = load i32, i32* %have_expand_children, align 4
  %tobool203 = icmp ne i32 %104, 0
  br i1 %tobool203, label %if.then.204, label %if.else.245

if.then.204:                                      ; preds = %if.end.202
  %width205 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition137, i32 0, i32 0
  %105 = load i32, i32* %width205, align 4
  %width206 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  store i32 %105, i32* %width206, align 4
  %106 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child116, align 8
  %hexpand207 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %106, i32 0, i32 1
  %bf.load208 = load i8, i8* %hexpand207, align 8
  %bf.clear209 = and i8 %bf.load208, 1
  %bf.cast210 = zext i8 %bf.clear209 to i32
  %tobool211 = icmp ne i32 %bf.cast210, 0
  br i1 %tobool211, label %if.then.220, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %if.then.204
  %107 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %justify213 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %107, i32 0, i32 1
  %bf.load214 = load i16, i16* %justify213, align 8
  %bf.lshr215 = lshr i16 %bf.load214, 1
  %bf.clear216 = and i16 %bf.lshr215, 15
  %bf.cast217 = zext i16 %bf.clear216 to i32
  %cmp218 = icmp eq i32 %bf.cast217, 3
  br i1 %cmp218, label %if.then.220, label %if.end.244

if.then.220:                                      ; preds = %lor.lhs.false.212, %if.then.204
  %108 = load i32, i32* %n_expand_children, align 4
  %dec = add i32 %108, -1
  store i32 %dec, i32* %n_expand_children, align 4
  %109 = load float, float* %extra, align 4
  %110 = load i32, i32* %n_expand_children, align 4
  %conv221 = uitofp i32 %110 to float
  %mul222 = fmul float %109, %conv221
  %conv223 = fptoui float %mul222 to i32
  store i32 %conv223, i32* %space, align 4
  %111 = load float, float* %width, align 4
  %112 = load i32, i32* %space, align 4
  %conv224 = uitofp i32 %112 to float
  %sub225 = fsub float %111, %conv224
  %conv226 = fptoui float %sub225 to i32
  store i32 %conv226, i32* %space, align 4
  %113 = load i32, i32* %space, align 4
  %conv227 = uitofp i32 %113 to float
  %114 = load float, float* %width, align 4
  %sub228 = fsub float %114, %conv227
  store float %sub228, float* %width, align 4
  %115 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child116, align 8
  %hfill = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %115, i32 0, i32 1
  %bf.load229 = load i8, i8* %hfill, align 8
  %bf.lshr230 = lshr i8 %bf.load229, 1
  %bf.clear231 = and i8 %bf.lshr230, 1
  %bf.cast232 = zext i8 %bf.clear231 to i32
  %tobool233 = icmp ne i32 %bf.cast232, 0
  br i1 %tobool233, label %if.then.234, label %if.else.237

if.then.234:                                      ; preds = %if.then.220
  %116 = load i32, i32* %space, align 4
  %width235 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  %117 = load i32, i32* %width235, align 4
  %add236 = add i32 %117, %116
  store i32 %add236, i32* %width235, align 4
  br label %if.end.243

if.else.237:                                      ; preds = %if.then.220
  %118 = load i32, i32* %space, align 4
  %div238 = udiv i32 %118, 2
  %x239 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  %119 = load i32, i32* %x239, align 4
  %add240 = add i32 %119, %div238
  store i32 %add240, i32* %x239, align 4
  %120 = load i32, i32* %space, align 4
  %conv241 = uitofp i32 %120 to float
  %121 = load float, float* %x, align 4
  %add242 = fadd float %121, %conv241
  store float %add242, float* %x, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.237, %if.then.234
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %lor.lhs.false.212
  br label %if.end.271

if.else.245:                                      ; preds = %if.end.202
  %122 = load i32, i32* %n_children, align 4
  %conv246 = uitofp i32 %122 to float
  %123 = load float, float* %extra, align 4
  %mul247 = fmul float %conv246, %123
  %x248 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  %124 = load i32, i32* %x248, align 4
  %conv249 = sitofp i32 %124 to float
  %add250 = fadd float %conv249, %mul247
  %conv251 = fptosi float %add250 to i32
  store i32 %conv251, i32* %x248, align 4
  %width252 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition137, i32 0, i32 0
  %125 = load i32, i32* %width252, align 4
  %126 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %width253 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %126, i32 0, i32 2
  %127 = load i32, i32* %width253, align 4
  %x254 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  %128 = load i32, i32* %x254, align 4
  %sub255 = sub nsw i32 %127, %128
  %129 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %x256 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %129, i32 0, i32 0
  %130 = load i32, i32* %x256, align 4
  %add257 = add nsw i32 %sub255, %130
  %cmp258 = icmp slt i32 %125, %add257
  br i1 %cmp258, label %cond.true.260, label %cond.false.262

cond.true.260:                                    ; preds = %if.else.245
  %width261 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition137, i32 0, i32 0
  %131 = load i32, i32* %width261, align 4
  br label %cond.end.268

cond.false.262:                                   ; preds = %if.else.245
  %132 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %width263 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %132, i32 0, i32 2
  %133 = load i32, i32* %width263, align 4
  %x264 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  %134 = load i32, i32* %x264, align 4
  %sub265 = sub nsw i32 %133, %134
  %135 = load %struct._GdkRectangle*, %struct._GdkRectangle** %area.addr, align 8
  %x266 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %135, i32 0, i32 0
  %136 = load i32, i32* %x266, align 4
  %add267 = add nsw i32 %sub265, %136
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.false.262, %cond.true.260
  %cond269 = phi i32 [ %131, %cond.true.260 ], [ %add267, %cond.false.262 ]
  %width270 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  store i32 %cond269, i32* %width270, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %cond.end.268, %if.end.244
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.126
  %width273 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  %137 = load i32, i32* %width273, align 4
  %138 = load %struct._GtkWrapBox*, %struct._GtkWrapBox** %wbox.addr, align 8
  %hspacing274 = getelementptr inbounds %struct._GtkWrapBox, %struct._GtkWrapBox* %138, i32 0, i32 2
  %139 = load i8, i8* %hspacing274, align 1
  %conv275 = zext i8 %139 to i32
  %add276 = add nsw i32 %137, %conv275
  %conv277 = sitofp i32 %add276 to float
  %140 = load float, float* %x, align 4
  %add278 = fadd float %140, %conv277
  store float %add278, float* %x, align 4
  %141 = load %struct._GtkWrapBoxChild*, %struct._GtkWrapBoxChild** %child116, align 8
  %widget279 = getelementptr inbounds %struct._GtkWrapBoxChild, %struct._GtkWrapBoxChild* %141, i32 0, i32 0
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %widget279, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %142, %struct._GdkRectangle* %child_allocation)
  %143 = load i32, i32* %n_children, align 4
  %inc280 = add i32 %143, 1
  store i32 %inc280, i32* %n_children, align 4
  br label %for.inc.281

for.inc.281:                                      ; preds = %if.end.272
  %144 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %next282 = getelementptr inbounds %struct._GSList, %struct._GSList* %144, i32 0, i32 1
  %145 = load %struct._GSList*, %struct._GSList** %next282, align 8
  store %struct._GSList* %145, %struct._GSList** %slist, align 8
  br label %for.cond.113

for.end.283:                                      ; preds = %for.cond.113
  ret void
}

declare void @g_slist_free(%struct._GSList*) #2

declare void @g_slice_free_chain_with_offset(i64, i8*, i64) #2

declare void @gtk_widget_size_allocate(%struct._GtkWidget*, %struct._GdkRectangle*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
