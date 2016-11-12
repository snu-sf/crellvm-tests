; ModuleID = './libgimp/gimpimagecombobox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpImageComboBoxClass = type { %struct._GimpIntComboBoxClass }
%struct._GimpIntComboBoxClass = type { %struct._GtkComboBoxClass }
%struct._GtkComboBoxClass = type { %struct._GtkBinClass, void (%struct._GtkComboBox*)*, i8* (%struct._GtkComboBox*)*, void ()*, void ()*, void ()* }
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
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpImageComboBox = type { %struct._GimpIntComboBox, i32 (i32, i8*)*, i8* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GdkPixbuf = type opaque

@gimp_image_combo_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpImageComboBox\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"width-request\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@gimp_image_combo_box_parent_class = internal global i8* null, align 8
@GimpImageComboBox_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: received invalid image ID data\00", align 1
@__func__.gimp_image_combo_box_drag_data_received = private unnamed_addr constant [40 x i8] c"gimp_image_combo_box_drag_data_received\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%i:%i\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@target = internal constant %struct._GtkTargetEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0 }, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"application/x-gimp-image-id\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_combo_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_image_combo_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_image_combo_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_int_combo_box_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_image_combo_box_class_intern_init to void (i8*, i8*)*), i32 176, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImageComboBox*)* @gimp_image_combo_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_image_combo_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_image_combo_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_combo_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_image_combo_box_parent_class, align 8
  %1 = load i32, i32* @GimpImageComboBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpImageComboBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpImageComboBoxClass*
  call void @gimp_image_combo_box_class_init(%struct._GimpImageComboBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_combo_box_init(%struct._GimpImageComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpImageComboBox*, align 8
  store %struct._GimpImageComboBox* %combo_box, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpImageComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %2, i32 7, %struct._GtkTargetEntry* @target, i32 1, i32 2)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_image_combo_box_new(i32 (i32, i8*)* %constraint, i8* %data) #3 {
entry:
  %constraint.addr = alloca i32 (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %combo_box = alloca %struct._GimpImageComboBox*, align 8
  store i32 (i32, i8*)* %constraint, i32 (i32, i8*)** %constraint.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i64 @gimp_image_combo_box_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 2, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpImageComboBox*
  store %struct._GimpImageComboBox* %0, %struct._GimpImageComboBox** %combo_box, align 8
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %constraint.addr, align 8
  %2 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box, align 8
  %constraint2 = getelementptr inbounds %struct._GimpImageComboBox, %struct._GimpImageComboBox* %2, i32 0, i32 1
  store i32 (i32, i8*)* %1, i32 (i32, i8*)** %constraint2, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box, align 8
  %data3 = getelementptr inbounds %struct._GimpImageComboBox, %struct._GimpImageComboBox* %4, i32 0, i32 2
  store i8* %3, i8** %data3, align 8
  %5 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box, align 8
  call void @gimp_image_combo_box_populate(%struct._GimpImageComboBox* %5)
  %6 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box, align 8
  %7 = bitcast %struct._GimpImageComboBox* %6 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImageComboBox*)* @gimp_image_combo_box_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %8 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box, align 8
  %9 = bitcast %struct._GimpImageComboBox* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  ret %struct._GtkWidget* %10
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_combo_box_populate(%struct._GimpImageComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpImageComboBox*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %images = alloca i32*, align 8
  %num_images = alloca i32, align 4
  store %struct._GimpImageComboBox* %combo_box, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpImageComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %2)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %call3 = call i32* @gimp_image_list(i32* %num_images)
  store i32* %call3, i32** %images, align 8
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %4 = bitcast %struct._GtkTreeModel* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_list_store_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkListStore*
  %6 = load i32, i32* %num_images, align 4
  %7 = load i32*, i32** %images, align 8
  %8 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %constraint = getelementptr inbounds %struct._GimpImageComboBox, %struct._GimpImageComboBox* %8, i32 0, i32 1
  %9 = load i32 (i32, i8*)*, i32 (i32, i8*)** %constraint, align 8
  %10 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %data = getelementptr inbounds %struct._GimpImageComboBox, %struct._GimpImageComboBox* %10, i32 0, i32 2
  %11 = load i8*, i8** %data, align 8
  call void @gimp_image_combo_box_model_add(%struct._GtkListStore* %5, i32 %6, i32* %7, i32 (i32, i8*)* %9, i8* %11)
  %12 = load i32*, i32** %images, align 8
  %13 = bitcast i32* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call6 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %16 = bitcast %struct._GimpImageComboBox* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_combo_box_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active_iter(%struct._GtkComboBox* %17, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_combo_box_changed(%struct._GimpImageComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpImageComboBox*, align 8
  %image_ID = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  store %struct._GimpImageComboBox* %combo_box, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpImageComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %image_ID)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %image_ID, align 4
  %call3 = call i32 @gimp_image_is_valid(i32 %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %4 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %5 = bitcast %struct._GimpImageComboBox* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_combo_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkComboBox*
  %call8 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %6)
  store %struct._GtkTreeModel* %call8, %struct._GtkTreeModel** %model, align 8
  %7 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  %8 = bitcast %struct._GimpImageComboBox* %7 to i8*
  call void @g_signal_stop_emission_by_name(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %10 = bitcast %struct._GtkTreeModel* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_list_store_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkListStore*
  call void @gtk_list_store_clear(%struct._GtkListStore* %11)
  %12 = load %struct._GimpImageComboBox*, %struct._GimpImageComboBox** %combo_box.addr, align 8
  call void @gimp_image_combo_box_populate(%struct._GimpImageComboBox* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_combo_box_class_init(%struct._GimpImageComboBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpImageComboBoxClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpImageComboBoxClass* %klass, %struct._GimpImageComboBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpImageComboBoxClass*, %struct._GimpImageComboBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImageComboBoxClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_data_received = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 60
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_image_combo_box_drag_data_received, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)** %drag_data_received, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_combo_box_drag_data_received(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %selection, i32 %info, i32 %time) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %str = alloca i8*, align 8
  %pid = alloca i32, align 4
  %ID = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %0)
  store i32 %call, i32* %length, align 4
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %1)
  %cmp = icmp ne i32 %call1, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %length, align 4
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_image_combo_box_drag_data_received, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call3 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %3)
  %4 = load i32, i32* %length, align 4
  %conv = sext i32 %4 to i64
  %call4 = call noalias i8* @g_strndup(i8* %call3, i64 %conv)
  store i8* %call4, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call5 = call i32 @g_utf8_validate(i8* %5, i64 -1, i8** null)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.end
  %6 = load i8*, i8** %str, align 8
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32* %pid, i32* %ID) #5
  %cmp8 = icmp eq i32 %call7, 2
  br i1 %cmp8, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.6
  %7 = load i32, i32* %pid, align 4
  %call10 = call i32 @gimp_getpid()
  %cmp11 = icmp eq i32 %7, %call10
  br i1 %cmp11, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_int_combo_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call14)
  %10 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpIntComboBox*
  %11 = load i32, i32* %ID, align 4
  %call16 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %10, i32 %11)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %land.lhs.true, %if.then.6
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %12 = load i8*, i8** %str, align 8
  call void @g_free(i8* %12)
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  ret void
}

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare i32 @gimp_getpid() #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

declare i32* @gimp_image_list(i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_combo_box_model_add(%struct._GtkListStore* %store, i32 %num_images, i32* %images, i32 (i32, i8*)* %constraint, i8* %data) #3 {
entry:
  %store.addr = alloca %struct._GtkListStore*, align 8
  %num_images.addr = alloca i32, align 4
  %images.addr = alloca i32*, align 8
  %constraint.addr = alloca i32 (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %i = alloca i32, align 4
  %image_name = alloca i8*, align 8
  %label = alloca i8*, align 8
  %thumb = alloca %struct._GdkPixbuf*, align 8
  store %struct._GtkListStore* %store, %struct._GtkListStore** %store.addr, align 8
  store i32 %num_images, i32* %num_images.addr, align 4
  store i32* %images, i32** %images.addr, align 8
  store i32 (i32, i8*)* %constraint, i32 (i32, i8*)** %constraint.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_images.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %constraint.addr, align 8
  %tobool = icmp ne i32 (i32, i8*)* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32 (i32, i8*)*, i32 (i32, i8*)** %constraint.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %images.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i8*, i8** %data.addr, align 8
  %call = call i32 %3(i32 %6, i8* %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.15

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i32*, i32** %images.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %call4 = call i8* @gimp_image_get_name(i32 %10)
  store i8* %call4, i8** %image_name, align 8
  %11 = load i8*, i8** %image_name, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i32*, i32** %images.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %11, i32 %14)
  store i8* %call7, i8** %label, align 8
  %15 = load i8*, i8** %image_name, align 8
  call void @g_free(i8* %15)
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i32*, i32** %images.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  %call10 = call %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32 %18, i32 24, i32 24, i32 1)
  store %struct._GdkPixbuf* %call10, %struct._GdkPixbuf** %thumb, align 8
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %19, %struct._GtkTreeIter* %iter)
  %20 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i32*, i32** %images.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %22, i64 %idxprom11
  %23 = load i32, i32* %arrayidx12, align 4
  %24 = load i8*, i8** %label, align 8
  %25 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumb, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %20, %struct._GtkTreeIter* %iter, i32 0, i32 %23, i32 1, i8* %24, i32 3, %struct._GdkPixbuf* %25, i32 -1)
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumb, align 8
  %tobool13 = icmp ne %struct._GdkPixbuf* %26, null
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumb, align 8
  %28 = bitcast %struct._GdkPixbuf* %27 to i8*
  call void @g_object_unref(i8* %28)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  %29 = load i8*, i8** %label, align 8
  call void @g_free(i8* %29)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_combo_box_set_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

declare i8* @gimp_image_get_name(i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GdkPixbuf* @gimp_image_get_thumbnail(i32, i32, i32, i32) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @g_object_unref(i8*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare i32 @gimp_image_is_valid(i32) #1

declare void @g_signal_stop_emission_by_name(i8*, i8*) #1

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
