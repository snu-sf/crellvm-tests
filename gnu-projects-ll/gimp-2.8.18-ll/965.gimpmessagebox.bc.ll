; ModuleID = './app/widgets/gimpmessagebox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpMessageBoxClass = type { %struct._GtkBoxClass }
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
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkOrientable = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_message_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpMessageBox\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_message_box_set_primary_text = private unnamed_addr constant [34 x i8] c"gimp_message_box_set_primary_text\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_MESSAGE_BOX (box)\00", align 1
@__func__.gimp_message_box_set_text = private unnamed_addr constant [26 x i8] c"gimp_message_box_set_text\00", align 1
@__func__.gimp_message_box_set_markup = private unnamed_addr constant [28 x i8] c"gimp_message_box_set_markup\00", align 1
@__func__.gimp_message_box_repeat = private unnamed_addr constant [24 x i8] c"gimp_message_box_repeat\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Message repeated once.\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Message repeated %d times.\00", align 1
@gimp_message_box_parent_class = internal global i8* null, align 8
@GimpMessageBox_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gimpmessagebox.c\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"selectable\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Cannot convert text to utf8.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_message_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_message_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_message_box_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_message_box_class_intern_init to void (i8*, i8*)*), i32 176, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMessageBox*)* @gimp_message_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_message_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_message_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_message_box_parent_class, align 8
  %1 = load i32, i32* @GimpMessageBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMessageBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMessageBoxClass*
  call void @gimp_message_box_class_init(%struct._GimpMessageBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_init(%struct._GimpMessageBox* %box) #3 {
entry:
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %i = alloca i32, align 4
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  %0 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %1 = bitcast %struct._GimpMessageBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %4 = bitcast %struct._GimpMessageBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 12)
  %6 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %7 = bitcast %struct._GimpMessageBox* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %10 = bitcast %struct._GimpMessageBox* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_focus_chain(%struct._GtkContainer* %11, %struct._GList* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %12, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call8 = call i64 @gtk_label_get_type() #7
  %call9 = call i8* (i64, i8*, ...) @g_object_new(i64 %call8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), double 5.000000e-01, i8* null)
  %13 = bitcast i8* %call9 to %struct._GtkWidget*
  store %struct._GtkWidget* %13, %struct._GtkWidget** %label, align 8
  %14 = load i32, i32* %i, align 4
  %cmp10 = icmp eq i32 %14, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %17, i32 15, double 1.200000e+00, i32 4, i32 700, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %19 = bitcast %struct._GimpMessageBox* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %label15 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %24, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %label15, i32 0, i64 %idxprom
  store %struct._GtkWidget* %22, %struct._GtkWidget** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %repeat = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %26, i32 0, i32 2
  store i32 0, i32* %repeat, align 4
  %27 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %label16 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %27, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %label16, i32 0, i64 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %arrayidx17, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_message_box_new(i8* %stock_id) #3 {
entry:
  %stock_id.addr = alloca i8*, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  %call = call i64 @gimp_message_box_get_type() #7
  %0 = load i8*, i8** %stock_id.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %box, i8* %format, ...) #3 {
entry:
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %1 = bitcast %struct._GimpMessageBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_message_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_message_box_set_primary_text, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay11 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay11)
  %13 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %14 = load i8*, i8** %format.addr, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_message_box_set_label_text(%struct._GimpMessageBox* %13, i32 0, i8* %14, %struct.__va_list_tag* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_end(i8* %arraydecay1314)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_set_label_text(%struct._GimpMessageBox* %box, i32 %n, i8* %format, %struct.__va_list_tag* %args) #3 {
entry:
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %n.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %text = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %label1 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %1, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %label1, i32 0, i64 %idxprom
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** %label, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %format.addr, align 8
  %5 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call noalias i8* @g_strdup_vprintf(i8* %4, %struct.__va_list_tag* %5)
  store i8* %call, i8** %text, align 8
  %6 = load i8*, i8** %text, align 8
  %call2 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %6, i64 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call2, i8** %utf8, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_label_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkLabel*
  %10 = load i8*, i8** %utf8, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %9, i8* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %text, align 8
  call void @g_free(i8* %13)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_label_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call5)
  %17 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %17, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define void @gimp_message_box_set_text(%struct._GimpMessageBox* %box, i8* %format, ...) #3 {
entry:
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %1 = bitcast %struct._GimpMessageBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_message_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_message_box_set_text, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay11 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay11)
  %13 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %14 = load i8*, i8** %format.addr, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_message_box_set_label_text(%struct._GimpMessageBox* %13, i32 1, i8* %14, %struct.__va_list_tag* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_end(i8* %arraydecay1314)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_message_box_set_markup(%struct._GimpMessageBox* %box, i8* %format, ...) #3 {
entry:
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %1 = bitcast %struct._GimpMessageBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_message_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_message_box_set_markup, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay11 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay11)
  %13 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %14 = load i8*, i8** %format.addr, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_message_box_set_label_markup(%struct._GimpMessageBox* %13, i32 1, i8* %14, %struct.__va_list_tag* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_end(i8* %arraydecay1314)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_set_label_markup(%struct._GimpMessageBox* %box, i32 %n, i8* %format, %struct.__va_list_tag* %args) #3 {
entry:
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %n.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %text = alloca i8*, align 8
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %label1 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %1, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %label1, i32 0, i64 %idxprom
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** %label, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %format.addr, align 8
  %5 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call i8* @g_markup_vprintf_escaped(i8* %4, %struct.__va_list_tag* %5)
  store i8* %call, i8** %text, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_label_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkLabel*
  %9 = load i8*, i8** %text, align 8
  call void @gtk_label_set_markup(%struct._GtkLabel* %8, i8* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load i8*, i8** %text, align 8
  call void @g_free(i8* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_label_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %15, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_message_box_repeat(%struct._GimpMessageBox* %box) #3 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct._GimpMessageBox*, align 8
  %message = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %label23 = alloca %struct._GtkWidget*, align 8
  store %struct._GimpMessageBox* %box, %struct._GimpMessageBox** %box.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %1 = bitcast %struct._GimpMessageBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_message_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_message_box_repeat, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %repeat = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %13, i32 0, i32 2
  %14 = load i32, i32* %repeat, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %repeat, align 4
  %15 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %repeat11 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %15, i32 0, i32 2
  %16 = load i32, i32* %repeat11, align 4
  %conv = sext i32 %16 to i64
  %call12 = call i8* @ngettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i64 %conv) #5
  %17 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %repeat13 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %17, i32 0, i32 2
  %18 = load i32, i32* %repeat13, align 4
  %call14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call12, i32 %18)
  store i8* %call14, i8** %message, align 8
  %19 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %label = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %19, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %label, i32 0, i64 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %tobool15 = icmp ne %struct._GtkWidget* %20, null
  br i1 %tobool15, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %do.end
  %21 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %label17 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %21, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %label17, i32 0, i64 2
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx18, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_label_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkLabel*
  %25 = load i8*, i8** %message, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %24, i8* %25)
  br label %if.end.33

if.else.21:                                       ; preds = %do.end
  %26 = load i8*, i8** %message, align 8
  %call24 = call %struct._GtkWidget* @gtk_label_new(i8* %26)
  %27 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %label25 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %27, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %label25, i32 0, i64 2
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %arrayidx26, align 8
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %label23, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %label23, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_misc_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call27)
  %30 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %30, float 0.000000e+00, float 1.000000e+00)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %label23, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_label_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call29)
  %33 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %33, i32 3, i32 1, i32 -1)
  %34 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %35 = bitcast %struct._GimpMessageBox* %34 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call31)
  %36 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label23, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %label23, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.21, %if.then.16
  %39 = load i8*, i8** %message, align 8
  call void @g_free(i8* %39)
  %40 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box.addr, align 8
  %repeat34 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %40, i32 0, i32 2
  %41 = load i32, i32* %repeat34, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.9
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #6

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @g_free(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_class_init(%struct._GimpMessageBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMessageBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %container_class = alloca %struct._GtkContainerClass*, align 8
  store %struct._GimpMessageBoxClass* %klass, %struct._GimpMessageBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpMessageBoxClass*, %struct._GimpMessageBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpMessageBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpMessageBoxClass*, %struct._GimpMessageBoxClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpMessageBoxClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpMessageBoxClass*, %struct._GimpMessageBoxClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpMessageBoxClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_container_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkContainerClass*
  store %struct._GtkContainerClass* %8, %struct._GtkContainerClass** %container_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_message_box_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_message_box_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_message_box_finalize, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_message_box_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_message_box_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_message_box_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_message_box_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %16 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %forall = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %16, i32 0, i32 4
  store void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)* @gimp_message_box_forall, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)** %forall, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 1, %struct._GParamSpec* %call5)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_message_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMessageBox*
  store %struct._GimpMessageBox* %2, %struct._GimpMessageBox** %box, align 8
  %3 = load i8*, i8** @gimp_message_box_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_message_box_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %stock_id = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %12, i32 0, i32 1
  %13 = load i8*, i8** %stock_id, align 8
  %tobool5 = icmp ne i8* %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end
  call void @gtk_widget_push_composite_child()
  %14 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %stock_id7 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %14, i32 0, i32 1
  %15 = load i8*, i8** %stock_id7, align 8
  %call8 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %15, i32 6)
  %16 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %16, i32 0, i32 4
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_pop_composite_child()
  %17 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image9 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %image9, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_misc_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %20, float 0.000000e+00, float 0.000000e+00)
  %21 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image12 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %21, i32 0, i32 4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %image12, align 8
  %23 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %24 = bitcast %struct._GimpMessageBox* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  call void @gtk_widget_set_parent(%struct._GtkWidget* %22, %struct._GtkWidget* %25)
  %26 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image15 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %26, i32 0, i32 4
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %image15, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_message_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMessageBox*
  store %struct._GimpMessageBox* %2, %struct._GimpMessageBox** %box, align 8
  %3 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image2 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %image2, align 8
  call void @gtk_widget_unparent(%struct._GtkWidget* %6)
  %7 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image3 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %7, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %image3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_message_box_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_message_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMessageBox*
  store %struct._GimpMessageBox* %2, %struct._GimpMessageBox** %box, align 8
  %3 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %stock_id = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %3, i32 0, i32 1
  %4 = load i8*, i8** %stock_id, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %stock_id2 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %5, i32 0, i32 1
  %6 = load i8*, i8** %stock_id2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %stock_id3 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %7, i32 0, i32 1
  store i8* null, i8** %stock_id3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_message_box_parent_class, align 8
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
define internal void @gimp_message_box_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_message_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMessageBox*
  store %struct._GimpMessageBox* %2, %struct._GimpMessageBox** %box, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %4)
  %5 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %stock_id = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %5, i32 0, i32 1
  store i8* %call2, i8** %stock_id, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_message_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMessageBox*
  store %struct._GimpMessageBox* %2, %struct._GimpMessageBox** %box, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %stock_id = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %5, i32 0, i32 1
  %6 = load i8*, i8** %stock_id, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_message_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMessageBox*
  store %struct._GimpMessageBox* %2, %struct._GimpMessageBox** %box, align 8
  %3 = load i8*, i8** @gimp_message_box_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 12
  %6 = load void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkRequisition* %8)
  %9 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %9, i32 0, i32 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %tobool = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image4 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %11, i32 0, i32 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %image4, align 8
  %call5 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %12)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image7 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %13, i32 0, i32 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %image7, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %14, %struct._GtkRequisition* %child_requisition)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %call10 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %17)
  store i32 %call10, i32* %border_width, align 4
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %18 = load i32, i32* %width, align 4
  %add = add nsw i32 %18, 12
  %19 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %19, i32 0, i32 0
  %20 = load i32, i32* %width11, align 4
  %add12 = add nsw i32 %20, %add
  store i32 %add12, i32* %width11, align 4
  %21 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %21, i32 0, i32 1
  %22 = load i32, i32* %height, align 4
  %height13 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %23 = load i32, i32* %height13, align 4
  %24 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %24
  %add14 = add nsw i32 %23, %mul
  %cmp = icmp sgt i32 %22, %add14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %25 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height15 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %25, i32 0, i32 1
  %26 = load i32, i32* %height15, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %height16 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %27 = load i32, i32* %height16, align 4
  %28 = load i32, i32* %border_width, align 4
  %mul17 = mul nsw i32 2, %28
  %add18 = add nsw i32 %27, %mul17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %add18, %cond.false ]
  %29 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height19 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %29, i32 0, i32 1
  store i32 %cond, i32* %height19, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  %container = alloca %struct._GtkContainer*, align 8
  %width = alloca i32, align 4
  %rtl = alloca i32, align 4
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %border_width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_message_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMessageBox*
  store %struct._GimpMessageBox* %2, %struct._GimpMessageBox** %box, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  store %struct._GtkContainer* %5, %struct._GtkContainer** %container, align 8
  store i32 0, i32* %width, align 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %6)
  %cmp = icmp eq i32 %call4, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rtl, align 4
  %7 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %7, i32 0, i32 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %tobool = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image5 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %9, i32 0, i32 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image5, align 8
  %call6 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.48

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image8 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %11, i32 0, i32 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %image8, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %12, %struct._GtkRequisition* %child_requisition)
  %13 = load %struct._GtkContainer*, %struct._GtkContainer** %container, align 8
  %call9 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %13)
  store i32 %call9, i32* %border_width, align 4
  %14 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %14, i32 0, i32 2
  %15 = load i32, i32* %width10, align 4
  %16 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %16
  %sub = sub nsw i32 %15, %mul
  %width11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %17 = load i32, i32* %width11, align 4
  %add = add nsw i32 %17, 12
  %cmp12 = icmp slt i32 %sub, %add
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 2
  %19 = load i32, i32* %width14, align 4
  %20 = load i32, i32* %border_width, align 4
  %mul15 = mul nsw i32 2, %20
  %sub16 = sub nsw i32 %19, %mul15
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %width17 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %21 = load i32, i32* %width17, align 4
  %add18 = add nsw i32 %21, 12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub16, %cond.true ], [ %add18, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %22 = load i32, i32* %width, align 4
  %cmp19 = icmp sgt i32 1, %22
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  %23 = load i32, i32* %width, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ 1, %cond.true.21 ], [ %23, %cond.false.22 ]
  store i32 %cond24, i32* %width, align 4
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 3
  %25 = load i32, i32* %height25, align 4
  %26 = load i32, i32* %border_width, align 4
  %mul26 = mul nsw i32 2, %26
  %sub27 = sub nsw i32 %25, %mul26
  store i32 %sub27, i32* %height, align 4
  %27 = load i32, i32* %height, align 4
  %cmp28 = icmp sgt i32 1, %27
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.23
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end.23
  %28 = load i32, i32* %height, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ 1, %cond.true.30 ], [ %28, %cond.false.31 ]
  store i32 %cond33, i32* %height, align 4
  %29 = load i32, i32* %rtl, align 4
  %tobool34 = icmp ne i32 %29, 0
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %cond.end.32
  %30 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width36 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %30, i32 0, i32 2
  %31 = load i32, i32* %width36, align 4
  %32 = load i32, i32* %border_width, align 4
  %sub37 = sub nsw i32 %31, %32
  %width38 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %33 = load i32, i32* %width38, align 4
  %sub39 = sub nsw i32 %sub37, %33
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  store i32 %sub39, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end.32
  %34 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x40 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %34, i32 0, i32 0
  %35 = load i32, i32* %x40, align 4
  %36 = load i32, i32* %border_width, align 4
  %add41 = add nsw i32 %35, %36
  %x42 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  store i32 %add41, i32* %x42, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.35
  %37 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %37, i32 0, i32 1
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %border_width, align 4
  %add43 = add nsw i32 %38, %39
  %y44 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  store i32 %add43, i32* %y44, align 4
  %40 = load i32, i32* %width, align 4
  %width45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  store i32 %40, i32* %width45, align 4
  %41 = load i32, i32* %height, align 4
  %height46 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %41, i32* %height46, align 4
  %42 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image47 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %42, i32 0, i32 4
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %image47, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %43, %struct._GdkRectangle* %child_allocation)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %land.lhs.true, %entry
  %44 = load i32, i32* %rtl, align 4
  %tobool49 = icmp ne i32 %44, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %if.end.48
  br label %cond.end.52

cond.false.51:                                    ; preds = %if.end.48
  %45 = load i32, i32* %width, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ 0, %cond.true.50 ], [ %45, %cond.false.51 ]
  %46 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x54 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %46, i32 0, i32 0
  %47 = load i32, i32* %x54, align 4
  %add55 = add nsw i32 %47, %cond53
  store i32 %add55, i32* %x54, align 4
  %48 = load i32, i32* %width, align 4
  %49 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width56 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %49, i32 0, i32 2
  %50 = load i32, i32* %width56, align 4
  %sub57 = sub nsw i32 %50, %48
  store i32 %sub57, i32* %width56, align 4
  %51 = load i8*, i8** @gimp_message_box_parent_class, align 8
  %52 = bitcast i8* %51 to %struct._GTypeClass*
  %call58 = call i64 @gtk_widget_get_type() #7
  %call59 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %52, i64 %call58)
  %53 = bitcast %struct._GTypeClass* %call59 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %53, i32 0, i32 13
  %54 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %56 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %54(%struct._GtkWidget* %55, %struct._GdkRectangle* %56)
  %57 = load i32, i32* %rtl, align 4
  %tobool60 = icmp ne i32 %57, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.52
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end.52
  %58 = load i32, i32* %width, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ 0, %cond.true.61 ], [ %58, %cond.false.62 ]
  %59 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x65 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %59, i32 0, i32 0
  %60 = load i32, i32* %x65, align 4
  %sub66 = sub nsw i32 %60, %cond64
  store i32 %sub66, i32* %x65, align 4
  %61 = load i32, i32* %width, align 4
  %62 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width67 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %62, i32 0, i32 2
  %63 = load i32, i32* %width67, align 4
  %add68 = add nsw i32 %63, %61
  store i32 %add68, i32* %width67, align 4
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %65 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %64, %struct._GdkRectangle* %65)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_message_box_forall(%struct._GtkContainer* %container, i32 %include_internals, void (%struct._GtkWidget*, i8*)* %callback, i8* %callback_data) #3 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %include_internals.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GtkWidget*, i8*)*, align 8
  %callback_data.addr = alloca i8*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store i32 %include_internals, i32* %include_internals.addr, align 4
  store void (%struct._GtkWidget*, i8*)* %callback, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  %0 = load i32, i32* %include_internals.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %2 = bitcast %struct._GtkContainer* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_message_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMessageBox*
  store %struct._GimpMessageBox* %3, %struct._GimpMessageBox** %box, align 8
  %4 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %4, i32 0, i32 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load void (%struct._GtkWidget*, i8*)*, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  %7 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %image4 = getelementptr inbounds %struct._GimpMessageBox, %struct._GimpMessageBox* %7, i32 0, i32 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %image4, align 8
  %9 = load i8*, i8** %callback_data.addr, align 8
  call void %6(%struct._GtkWidget* %8, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load i8*, i8** @gimp_message_box_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call6 = call i64 @gtk_container_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call6)
  %12 = bitcast %struct._GTypeClass* %call7 to %struct._GtkContainerClass*
  %forall = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %12, i32 0, i32 4
  %13 = load void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)** %forall, align 8
  %14 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %15 = load i32, i32* %include_internals.addr, align 4
  %16 = load void (%struct._GtkWidget*, i8*)*, void (%struct._GtkWidget*, i8*)** %callback.addr, align 8
  %17 = load i8*, i8** %callback_data.addr, align 8
  call void %13(%struct._GtkContainer* %14, i32 %15, void (%struct._GtkWidget*, i8*)* %16, i8* %17)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @gtk_widget_push_composite_child() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_widget_pop_composite_child() #1

declare void @gtk_widget_set_parent(%struct._GtkWidget*, %struct._GtkWidget*) #1

declare void @gtk_widget_unparent(%struct._GtkWidget*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare void @gtk_widget_size_allocate(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare void @gtk_container_set_focus_chain(%struct._GtkContainer*, %struct._GList*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare i8* @g_markup_vprintf_escaped(i8*, %struct.__va_list_tag*) #1

declare void @gtk_label_set_markup(%struct._GtkLabel*, i8*) #1

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
