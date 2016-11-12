; ModuleID = './libgimp/gimpitemcombobox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDrawableComboBoxClass = type { %struct._GimpIntComboBoxClass }
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
%struct._GimpDrawableComboBox = type { %struct._GimpIntComboBox }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GimpItemComboBoxPrivate = type { i32 (i32, i32, i8*)*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpChannelComboBoxClass = type { %struct._GimpIntComboBoxClass }
%struct._GimpChannelComboBox = type { %struct._GimpIntComboBox }
%struct._GimpLayerComboBoxClass = type { %struct._GimpIntComboBoxClass }
%struct._GimpLayerComboBox = type { %struct._GimpIntComboBox }
%struct._GimpVectorsComboBoxClass = type { %struct._GimpIntComboBoxClass }
%struct._GimpVectorsComboBox = type { %struct._GimpIntComboBox }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GdkPixbuf = type opaque
%struct._GtkTreePath = type opaque

@gimp_drawable_combo_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpDrawableComboBox\00", align 1
@gimp_channel_combo_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"GimpChannelComboBox\00", align 1
@gimp_layer_combo_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"GimpLayerComboBox\00", align 1
@gimp_vectors_combo_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"GimpVectorsComboBox\00", align 1
@gimp_drawable_combo_box_parent_class = internal global i8* null, align 8
@GimpDrawableComboBox_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: received invalid item ID data\00", align 1
@__func__.gimp_item_combo_box_drag_data_received = private unnamed_addr constant [39 x i8] c"gimp_item_combo_box_drag_data_received\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%i:%i\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@targets = internal constant [3 x %struct._GtkTargetEntry] [%struct._GtkTargetEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0 }, %struct._GtkTargetEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0 }, %struct._GtkTargetEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [28 x i8] c"gimp-item-combo-box-private\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"application/x-gimp-channel-id\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"application/x-gimp-layer-id\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"application/x-gimp-vectors-id\00", align 1
@gimp_channel_combo_box_parent_class = internal global i8* null, align 8
@GimpChannelComboBox_private_offset = internal global i32 0, align 4
@gimp_layer_combo_box_parent_class = internal global i8* null, align 8
@GimpLayerComboBox_private_offset = internal global i32 0, align 4
@gimp_vectors_combo_box_parent_class = internal global i8* null, align 8
@GimpVectorsComboBox_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"width-request\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%s%s-%d / %s-%d\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_drawable_combo_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_drawable_combo_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_drawable_combo_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_int_combo_box_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_drawable_combo_box_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDrawableComboBox*)* @gimp_drawable_combo_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_drawable_combo_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_drawable_combo_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_combo_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_drawable_combo_box_parent_class, align 8
  %1 = load i32, i32* @GimpDrawableComboBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDrawableComboBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDrawableComboBoxClass*
  call void @gimp_drawable_combo_box_class_init(%struct._GimpDrawableComboBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_combo_box_init(%struct._GimpDrawableComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpDrawableComboBox*, align 8
  store %struct._GimpDrawableComboBox* %combo_box, %struct._GimpDrawableComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpDrawableComboBox*, %struct._GimpDrawableComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpDrawableComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %2, i32 7, %struct._GtkTargetEntry* getelementptr inbounds ([3 x %struct._GtkTargetEntry], [3 x %struct._GtkTargetEntry]* @targets, i32 0, i32 0), i32 2, i32 2)
  %3 = load %struct._GimpDrawableComboBox*, %struct._GimpDrawableComboBox** %combo_box.addr, align 8
  %4 = bitcast %struct._GimpDrawableComboBox* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call noalias i8* @g_malloc0_n(i64 1, i64 16)
  %6 = bitcast i8* %call3 to %struct._GimpItemComboBoxPrivate*
  %7 = bitcast %struct._GimpItemComboBoxPrivate* %6 to i8*
  call void @g_object_set_data_full(%struct._GObject* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %7, void (i8*)* @g_free)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* %constraint, i8* %data) #3 {
entry:
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i64 @gimp_drawable_combo_box_get_type() #7
  %0 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_item_combo_box_new(i64 %call, i32 (i32, i32, i8*)* %0, i8* %1)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_item_combo_box_new(i64 %type, i32 (i32, i32, i8*)* %constraint, i8* %data) #3 {
entry:
  %type.addr = alloca i64, align 8
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %combo_box = alloca %struct._GimpIntComboBox*, align 8
  %private = alloca %struct._GimpItemComboBoxPrivate*, align 8
  store i64 %type, i64* %type.addr, align 8
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i64, i64* %type.addr, align 8
  %call = call i8* (i64, i8*, ...) @g_object_new(i64 %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 2, i8* null)
  %1 = bitcast i8* %call to %struct._GimpIntComboBox*
  store %struct._GimpIntComboBox* %1, %struct._GimpIntComboBox** %combo_box, align 8
  %2 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box, align 8
  %3 = bitcast %struct._GimpIntComboBox* %2 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  %5 = bitcast i8* %call2 to %struct._GimpItemComboBoxPrivate*
  store %struct._GimpItemComboBoxPrivate* %5, %struct._GimpItemComboBoxPrivate** %private, align 8
  %6 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %7 = load %struct._GimpItemComboBoxPrivate*, %struct._GimpItemComboBoxPrivate** %private, align 8
  %constraint3 = getelementptr inbounds %struct._GimpItemComboBoxPrivate, %struct._GimpItemComboBoxPrivate* %7, i32 0, i32 0
  store i32 (i32, i32, i8*)* %6, i32 (i32, i32, i8*)** %constraint3, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load %struct._GimpItemComboBoxPrivate*, %struct._GimpItemComboBoxPrivate** %private, align 8
  %data4 = getelementptr inbounds %struct._GimpItemComboBoxPrivate, %struct._GimpItemComboBoxPrivate* %9, i32 0, i32 1
  store i8* %8, i8** %data4, align 8
  %10 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box, align 8
  call void @gimp_item_combo_box_populate(%struct._GimpIntComboBox* %10)
  %11 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box, align 8
  %12 = bitcast %struct._GimpIntComboBox* %11 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpIntComboBox*)* @gimp_item_combo_box_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %13 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box, align 8
  %14 = bitcast %struct._GimpIntComboBox* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_channel_combo_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_channel_combo_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_channel_combo_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_int_combo_box_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_channel_combo_box_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpChannelComboBox*)* @gimp_channel_combo_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_channel_combo_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_channel_combo_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_combo_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_channel_combo_box_parent_class, align 8
  %1 = load i32, i32* @GimpChannelComboBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpChannelComboBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpChannelComboBoxClass*
  call void @gimp_channel_combo_box_class_init(%struct._GimpChannelComboBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_combo_box_init(%struct._GimpChannelComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpChannelComboBox*, align 8
  store %struct._GimpChannelComboBox* %combo_box, %struct._GimpChannelComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpChannelComboBox*, %struct._GimpChannelComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpChannelComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %2, i32 7, %struct._GtkTargetEntry* getelementptr inbounds ([3 x %struct._GtkTargetEntry], [3 x %struct._GtkTargetEntry]* @targets, i32 0, i32 0), i32 1, i32 2)
  %3 = load %struct._GimpChannelComboBox*, %struct._GimpChannelComboBox** %combo_box.addr, align 8
  %4 = bitcast %struct._GimpChannelComboBox* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call noalias i8* @g_malloc0_n(i64 1, i64 16)
  %6 = bitcast i8* %call3 to %struct._GimpItemComboBoxPrivate*
  %7 = bitcast %struct._GimpItemComboBoxPrivate* %6 to i8*
  call void @g_object_set_data_full(%struct._GObject* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %7, void (i8*)* @g_free)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_channel_combo_box_new(i32 (i32, i32, i8*)* %constraint, i8* %data) #3 {
entry:
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i64 @gimp_channel_combo_box_get_type() #7
  %0 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_item_combo_box_new(i64 %call, i32 (i32, i32, i8*)* %0, i8* %1)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_combo_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_layer_combo_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_layer_combo_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_int_combo_box_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_layer_combo_box_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLayerComboBox*)* @gimp_layer_combo_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_layer_combo_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_layer_combo_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_combo_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_layer_combo_box_parent_class, align 8
  %1 = load i32, i32* @GimpLayerComboBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLayerComboBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLayerComboBoxClass*
  call void @gimp_layer_combo_box_class_init(%struct._GimpLayerComboBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_combo_box_init(%struct._GimpLayerComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpLayerComboBox*, align 8
  store %struct._GimpLayerComboBox* %combo_box, %struct._GimpLayerComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpLayerComboBox*, %struct._GimpLayerComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpLayerComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %2, i32 7, %struct._GtkTargetEntry* getelementptr inbounds ([3 x %struct._GtkTargetEntry], [3 x %struct._GtkTargetEntry]* @targets, i32 0, i64 1), i32 1, i32 2)
  %3 = load %struct._GimpLayerComboBox*, %struct._GimpLayerComboBox** %combo_box.addr, align 8
  %4 = bitcast %struct._GimpLayerComboBox* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call noalias i8* @g_malloc0_n(i64 1, i64 16)
  %6 = bitcast i8* %call3 to %struct._GimpItemComboBoxPrivate*
  %7 = bitcast %struct._GimpItemComboBoxPrivate* %6 to i8*
  call void @g_object_set_data_full(%struct._GObject* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %7, void (i8*)* @g_free)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_layer_combo_box_new(i32 (i32, i32, i8*)* %constraint, i8* %data) #3 {
entry:
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i64 @gimp_layer_combo_box_get_type() #7
  %0 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_item_combo_box_new(i64 %call, i32 (i32, i32, i8*)* %0, i8* %1)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_vectors_combo_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_vectors_combo_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_vectors_combo_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_int_combo_box_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_vectors_combo_box_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpVectorsComboBox*)* @gimp_vectors_combo_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_vectors_combo_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_vectors_combo_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_combo_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_vectors_combo_box_parent_class, align 8
  %1 = load i32, i32* @GimpVectorsComboBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpVectorsComboBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpVectorsComboBoxClass*
  call void @gimp_vectors_combo_box_class_init(%struct._GimpVectorsComboBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_combo_box_init(%struct._GimpVectorsComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpVectorsComboBox*, align 8
  store %struct._GimpVectorsComboBox* %combo_box, %struct._GimpVectorsComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpVectorsComboBox*, %struct._GimpVectorsComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpVectorsComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %2, i32 7, %struct._GtkTargetEntry* getelementptr inbounds ([3 x %struct._GtkTargetEntry], [3 x %struct._GtkTargetEntry]* @targets, i32 0, i64 2), i32 1, i32 2)
  %3 = load %struct._GimpVectorsComboBox*, %struct._GimpVectorsComboBox** %combo_box.addr, align 8
  %4 = bitcast %struct._GimpVectorsComboBox* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call noalias i8* @g_malloc0_n(i64 1, i64 16)
  %6 = bitcast i8* %call3 to %struct._GimpItemComboBoxPrivate*
  %7 = bitcast %struct._GimpItemComboBoxPrivate* %6 to i8*
  call void @g_object_set_data_full(%struct._GObject* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %7, void (i8*)* @g_free)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_vectors_combo_box_new(i32 (i32, i32, i8*)* %constraint, i8* %data) #3 {
entry:
  %constraint.addr = alloca i32 (i32, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store i32 (i32, i32, i8*)* %constraint, i32 (i32, i32, i8*)** %constraint.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i64 @gimp_vectors_combo_box_get_type() #7
  %0 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_item_combo_box_new(i64 %call, i32 (i32, i32, i8*)* %0, i8* %1)
  ret %struct._GtkWidget* %call1
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_combo_box_class_init(%struct._GimpDrawableComboBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDrawableComboBoxClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpDrawableComboBoxClass* %klass, %struct._GimpDrawableComboBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpDrawableComboBoxClass*, %struct._GimpDrawableComboBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDrawableComboBoxClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_data_received = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 60
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_item_combo_box_drag_data_received, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)** %drag_data_received, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_item_combo_box_drag_data_received(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %selection, i32 %info, i32 %time) #3 {
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_item_combo_box_drag_data_received, i32 0, i32 0))
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
  %call14 = call i64 @gimp_int_combo_box_get_type() #7
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

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_combo_box_class_init(%struct._GimpChannelComboBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpChannelComboBoxClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpChannelComboBoxClass* %klass, %struct._GimpChannelComboBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpChannelComboBoxClass*, %struct._GimpChannelComboBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpChannelComboBoxClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_data_received = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 60
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_item_combo_box_drag_data_received, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)** %drag_data_received, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_combo_box_class_init(%struct._GimpLayerComboBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLayerComboBoxClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpLayerComboBoxClass* %klass, %struct._GimpLayerComboBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpLayerComboBoxClass*, %struct._GimpLayerComboBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLayerComboBoxClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_data_received = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 60
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_item_combo_box_drag_data_received, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)** %drag_data_received, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_combo_box_class_init(%struct._GimpVectorsComboBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpVectorsComboBoxClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpVectorsComboBoxClass* %klass, %struct._GimpVectorsComboBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpVectorsComboBoxClass*, %struct._GimpVectorsComboBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpVectorsComboBoxClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_data_received = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 60
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @gimp_item_combo_box_drag_data_received, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)** %drag_data_received, align 8
  ret void
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_combo_box_populate(%struct._GimpIntComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %images = alloca i32*, align 8
  %num_images = alloca i32, align 4
  %i = alloca i32, align 4
  %items = alloca i32*, align 8
  %num_items = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %__inst68 = alloca %struct._GTypeInstance*, align 8
  %__t70 = alloca i64, align 8
  %__r73 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  %__inst100 = alloca %struct._GTypeInstance*, align 8
  %__t102 = alloca i64, align 8
  %__r105 = alloca i32, align 4
  %tmp120 = alloca i32, align 4
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %2)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %call3 = call i32* @gimp_image_list(i32* %num_images)
  store i32* %call3, i32** %images, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %num_images, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %6 = bitcast %struct._GimpIntComboBox* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_drawable_combo_box_get_type() #7
  store i64 %call4, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp7 = icmp eq i64 %12, %13
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #8
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %18 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %19 = bitcast %struct._GimpIntComboBox* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_layer_combo_box_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type27, align 8
  %26 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %25, %26
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %28 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %29 = load i32, i32* %__r19, align 4
  store i32 %29, i32* %tmp34
  %30 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.33, %if.end.11
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load i32*, i32** %images, align 8
  %arrayidx = getelementptr inbounds i32, i32* %32, i64 %idxprom
  %33 = load i32, i32* %arrayidx, align 4
  %call37 = call i32* @gimp_image_get_layers(i32 %33, i32* %num_items)
  store i32* %call37, i32** %items, align 8
  %34 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %35 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %36 = bitcast %struct._GtkTreeModel* %35 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_list_store_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call38)
  %37 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkListStore*
  %38 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %38 to i64
  %39 = load i32*, i32** %images, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %39, i64 %idxprom40
  %40 = load i32, i32* %arrayidx41, align 4
  %41 = load i32, i32* %num_items, align 4
  %42 = load i32*, i32** %items, align 8
  call void @gimp_item_combo_box_model_add(%struct._GimpIntComboBox* %34, %struct._GtkListStore* %37, i32 %40, i32 %41, i32* %42, i32 0)
  %43 = load i32*, i32** %items, align 8
  %44 = bitcast i32* %43 to i8*
  call void @g_free(i8* %44)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %if.end.33
  %45 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %46 = bitcast %struct._GimpIntComboBox* %45 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %46, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gimp_drawable_combo_box_get_type() #7
  store i64 %call47, i64* %__t46, align 8
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %47, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %if.end.42
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %49, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type57, align 8
  %53 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %52, %53
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %55 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %54, i64 %55) #8
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %56 = load i32, i32* %__r49, align 4
  store i32 %56, i32* %tmp64
  %57 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %57, 0
  br i1 %tobool65, label %if.then.90, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.63
  %58 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %59 = bitcast %struct._GimpIntComboBox* %58 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %59, %struct._GTypeInstance** %__inst68, align 8
  %call71 = call i64 @gimp_channel_combo_box_get_type() #7
  store i64 %call71, i64* %__t70, align 8
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %tobool74 = icmp ne %struct._GTypeInstance* %60, null
  br i1 %tobool74, label %if.else.76, label %if.then.75

if.then.75:                                       ; preds = %lor.lhs.false.66
  store i32 0, i32* %__r73, align 4
  br label %if.end.87

if.else.76:                                       ; preds = %lor.lhs.false.66
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %61, i32 0, i32 0
  %62 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %tobool78 = icmp ne %struct._GTypeClass* %62, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.84

land.lhs.true.79:                                 ; preds = %if.else.76
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %63, i32 0, i32 0
  %64 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %g_type81 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %64, i32 0, i32 0
  %65 = load i64, i64* %g_type81, align 8
  %66 = load i64, i64* %__t70, align 8
  %cmp82 = icmp eq i64 %65, %66
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %land.lhs.true.79
  store i32 1, i32* %__r73, align 4
  br label %if.end.86

if.else.84:                                       ; preds = %land.lhs.true.79, %if.else.76
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %68 = load i64, i64* %__t70, align 8
  %call85 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %67, i64 %68) #8
  store i32 %call85, i32* %__r73, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.84, %if.then.83
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.75
  %69 = load i32, i32* %__r73, align 4
  store i32 %69, i32* %tmp88
  %70 = load i32, i32* %tmp88
  %tobool89 = icmp ne i32 %70, 0
  br i1 %tobool89, label %if.then.90, label %if.end.98

if.then.90:                                       ; preds = %if.end.87, %if.end.63
  %71 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %71 to i64
  %72 = load i32*, i32** %images, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %72, i64 %idxprom91
  %73 = load i32, i32* %arrayidx92, align 4
  %call93 = call i32* @gimp_image_get_channels(i32 %73, i32* %num_items)
  store i32* %call93, i32** %items, align 8
  %74 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %75 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %76 = bitcast %struct._GtkTreeModel* %75 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_list_store_get_type() #7
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call94)
  %77 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkListStore*
  %78 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %78 to i64
  %79 = load i32*, i32** %images, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %79, i64 %idxprom96
  %80 = load i32, i32* %arrayidx97, align 4
  %81 = load i32, i32* %num_items, align 4
  %82 = load i32*, i32** %items, align 8
  call void @gimp_item_combo_box_model_add(%struct._GimpIntComboBox* %74, %struct._GtkListStore* %77, i32 %80, i32 %81, i32* %82, i32 0)
  %83 = load i32*, i32** %items, align 8
  %84 = bitcast i32* %83 to i8*
  call void @g_free(i8* %84)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.90, %if.end.87
  %85 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %86 = bitcast %struct._GimpIntComboBox* %85 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %86, %struct._GTypeInstance** %__inst100, align 8
  %call103 = call i64 @gimp_vectors_combo_box_get_type() #7
  store i64 %call103, i64* %__t102, align 8
  %87 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst100, align 8
  %tobool106 = icmp ne %struct._GTypeInstance* %87, null
  br i1 %tobool106, label %if.else.108, label %if.then.107

if.then.107:                                      ; preds = %if.end.98
  store i32 0, i32* %__r105, align 4
  br label %if.end.119

if.else.108:                                      ; preds = %if.end.98
  %88 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst100, align 8
  %g_class109 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %88, i32 0, i32 0
  %89 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class109, align 8
  %tobool110 = icmp ne %struct._GTypeClass* %89, null
  br i1 %tobool110, label %land.lhs.true.111, label %if.else.116

land.lhs.true.111:                                ; preds = %if.else.108
  %90 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst100, align 8
  %g_class112 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %90, i32 0, i32 0
  %91 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class112, align 8
  %g_type113 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %91, i32 0, i32 0
  %92 = load i64, i64* %g_type113, align 8
  %93 = load i64, i64* %__t102, align 8
  %cmp114 = icmp eq i64 %92, %93
  br i1 %cmp114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %land.lhs.true.111
  store i32 1, i32* %__r105, align 4
  br label %if.end.118

if.else.116:                                      ; preds = %land.lhs.true.111, %if.else.108
  %94 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst100, align 8
  %95 = load i64, i64* %__t102, align 8
  %call117 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %94, i64 %95) #8
  store i32 %call117, i32* %__r105, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.116, %if.then.115
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.107
  %96 = load i32, i32* %__r105, align 4
  store i32 %96, i32* %tmp120
  %97 = load i32, i32* %tmp120
  %tobool121 = icmp ne i32 %97, 0
  br i1 %tobool121, label %if.then.122, label %if.end.130

if.then.122:                                      ; preds = %if.end.119
  %98 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %98 to i64
  %99 = load i32*, i32** %images, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %99, i64 %idxprom123
  %100 = load i32, i32* %arrayidx124, align 4
  %call125 = call i32* @gimp_image_get_vectors(i32 %100, i32* %num_items)
  store i32* %call125, i32** %items, align 8
  %101 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %102 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %103 = bitcast %struct._GtkTreeModel* %102 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_list_store_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call126)
  %104 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkListStore*
  %105 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %105 to i64
  %106 = load i32*, i32** %images, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %106, i64 %idxprom128
  %107 = load i32, i32* %arrayidx129, align 4
  %108 = load i32, i32* %num_items, align 4
  %109 = load i32*, i32** %items, align 8
  call void @gimp_item_combo_box_model_add(%struct._GimpIntComboBox* %101, %struct._GtkListStore* %104, i32 %107, i32 %108, i32* %109, i32 0)
  %110 = load i32*, i32** %items, align 8
  %111 = bitcast i32* %110 to i8*
  call void @g_free(i8* %111)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.122, %if.end.119
  br label %for.inc

for.inc:                                          ; preds = %if.end.130
  %112 = load i32, i32* %i, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = load i32*, i32** %images, align 8
  %114 = bitcast i32* %113 to i8*
  call void @g_free(i8* %114)
  %115 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call131 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %115, %struct._GtkTreeIter* %iter)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.136

if.then.133:                                      ; preds = %for.end
  %116 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %117 = bitcast %struct._GimpIntComboBox* %116 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_combo_box_get_type() #7
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call134)
  %118 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active_iter(%struct._GtkComboBox* %118, %struct._GtkTreeIter* %iter)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.133, %for.end
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_combo_box_changed(%struct._GimpIntComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %item_ID = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %remove = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %call = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %0, i32* %item_ID)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %item_ID, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %item_ID, align 4
  %call1 = call i32 @gimp_item_is_valid(i32 %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  store %struct._GList* null, %struct._GList** %remove, align 8
  %3 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %4 = bitcast %struct._GimpIntComboBox* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_combo_box_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkComboBox*
  %call6 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %5)
  store %struct._GtkTreeModel* %call6, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %7 = bitcast %struct._GimpIntComboBox* %6 to i8*
  call void @g_signal_stop_emission_by_name(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %9 = bitcast %struct._GList** %remove to i8*
  call void @gtk_tree_model_foreach(%struct._GtkTreeModel* %8, i32 (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i8*)* @gimp_item_combo_box_remove_items, i8* %9)
  %10 = load %struct._GList*, %struct._GList** %remove, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.3
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %11, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %13 = bitcast %struct._GtkTreeModel* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_list_store_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkListStore*
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GtkTreeIter*
  %call10 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %14, %struct._GtkTreeIter* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %18, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GList*, %struct._GList** %remove, align 8
  call void @g_list_free_full(%struct._GList* %21, void (i8*)* @g_free)
  %22 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  call void @gimp_item_combo_box_populate(%struct._GimpIntComboBox* %22)
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  ret void
}

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

declare i32* @gimp_image_list(i32*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #6

declare i32* @gimp_image_get_layers(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_combo_box_model_add(%struct._GimpIntComboBox* %combo_box, %struct._GtkListStore* %store, i32 %image, i32 %num_items, i32* %items, i32 %tree_level) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %store.addr = alloca %struct._GtkListStore*, align 8
  %image.addr = alloca i32, align 4
  %num_items.addr = alloca i32, align 4
  %items.addr = alloca i32*, align 8
  %tree_level.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemComboBoxPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %i = alloca i32, align 4
  %indent = alloca i8*, align 8
  %image_name = alloca i8*, align 8
  %item_name = alloca i8*, align 8
  %label = alloca i8*, align 8
  %thumb = alloca %struct._GdkPixbuf*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %children = alloca i32*, align 8
  %n_children = alloca i32, align 4
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  store %struct._GtkListStore* %store, %struct._GtkListStore** %store.addr, align 8
  store i32 %image, i32* %image.addr, align 4
  store i32 %num_items, i32* %num_items.addr, align 4
  store i32* %items, i32** %items.addr, align 8
  store i32 %tree_level, i32* %tree_level.addr, align 4
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpItemComboBoxPrivate*
  store %struct._GimpItemComboBoxPrivate* %3, %struct._GimpItemComboBoxPrivate** %private, align 8
  %4 = load i32, i32* %tree_level.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %tree_level.addr, align 4
  %add = add nsw i32 %5, 2
  %conv = sext i32 %add to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call2, i8** %indent, align 8
  %6 = load i8*, i8** %indent, align 8
  %7 = load i32, i32* %tree_level.addr, align 4
  %conv3 = sext i32 %7 to i64
  call void @llvm.memset.p0i8.i64(i8* %6, i8 45, i64 %conv3, i32 1, i1 false)
  %8 = load i32, i32* %tree_level.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %indent, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1
  %10 = load i32, i32* %tree_level.addr, align 4
  %add4 = add nsw i32 %10, 1
  %idxprom5 = sext i32 %add4 to i64
  %11 = load i8*, i8** %indent, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %call7 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0))
  store i8* %call7, i8** %indent, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %num_items.addr, align 4
  %cmp8 = icmp slt i32 %12, %13
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GimpItemComboBoxPrivate*, %struct._GimpItemComboBoxPrivate** %private, align 8
  %constraint = getelementptr inbounds %struct._GimpItemComboBoxPrivate, %struct._GimpItemComboBoxPrivate* %14, i32 0, i32 0
  %15 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint, align 8
  %tobool = icmp ne i32 (i32, i32, i8*)* %15, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %for.body
  %16 = load %struct._GimpItemComboBoxPrivate*, %struct._GimpItemComboBoxPrivate** %private, align 8
  %constraint10 = getelementptr inbounds %struct._GimpItemComboBoxPrivate, %struct._GimpItemComboBoxPrivate* %16, i32 0, i32 0
  %17 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %constraint10, align 8
  %18 = load i32, i32* %image.addr, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load i32*, i32** %items.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 %idxprom11
  %21 = load i32, i32* %arrayidx12, align 4
  %22 = load %struct._GimpItemComboBoxPrivate*, %struct._GimpItemComboBoxPrivate** %private, align 8
  %data = getelementptr inbounds %struct._GimpItemComboBoxPrivate, %struct._GimpItemComboBoxPrivate* %22, i32 0, i32 1
  %23 = load i8*, i8** %data, align 8
  %call13 = call i32 %17(i32 %18, i32 %21, i8* %23)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.48

if.then.15:                                       ; preds = %lor.lhs.false, %for.body
  %24 = load i32, i32* %image.addr, align 4
  %call16 = call i8* @gimp_image_get_name(i32 %24)
  store i8* %call16, i8** %image_name, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load i32*, i32** %items.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %26, i64 %idxprom17
  %27 = load i32, i32* %arrayidx18, align 4
  %call19 = call i8* @gimp_item_get_name(i32 %27)
  store i8* %call19, i8** %item_name, align 8
  %28 = load i8*, i8** %indent, align 8
  %29 = load i8*, i8** %image_name, align 8
  %30 = load i32, i32* %image.addr, align 4
  %31 = load i8*, i8** %item_name, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %32 to i64
  %33 = load i32*, i32** %items.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %33, i64 %idxprom20
  %34 = load i32, i32* %arrayidx21, align 4
  %call22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* %28, i8* %29, i32 %30, i8* %31, i32 %34)
  store i8* %call22, i8** %label, align 8
  %35 = load i8*, i8** %item_name, align 8
  call void @g_free(i8* %35)
  %36 = load i8*, i8** %image_name, align 8
  call void @g_free(i8* %36)
  %37 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %38 = bitcast %struct._GimpIntComboBox* %37 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %38, %struct._GTypeInstance** %__inst, align 8
  %call23 = call i64 @gimp_vectors_combo_box_get_type() #7
  store i64 %call23, i64* %__t, align 8
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %39, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.15
  store i32 0, i32* %__r, align 4
  br label %if.end.35

if.else.26:                                       ; preds = %if.then.15
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool27 = icmp ne %struct._GTypeClass* %41, null
  br i1 %tobool27, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %if.else.26
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type, align 8
  %45 = load i64, i64* %__t, align 8
  %cmp29 = icmp eq i64 %44, %45
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true, %if.else.26
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %47 = load i64, i64* %__t, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %46, i64 %47) #8
  store i32 %call33, i32* %__r, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.25
  %48 = load i32, i32* %__r, align 4
  store i32 %48, i32* %tmp
  %49 = load i32, i32* %tmp
  %tobool36 = icmp ne i32 %49, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.35
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %thumb, align 8
  br label %if.end.42

if.else.38:                                       ; preds = %if.end.35
  %50 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %50 to i64
  %51 = load i32*, i32** %items.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %51, i64 %idxprom39
  %52 = load i32, i32* %arrayidx40, align 4
  %call41 = call %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32 %52, i32 24, i32 24, i32 1)
  store %struct._GdkPixbuf* %call41, %struct._GdkPixbuf** %thumb, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.then.37
  %53 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %53, %struct._GtkTreeIter* %iter)
  %54 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %55 to i64
  %56 = load i32*, i32** %items.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %56, i64 %idxprom43
  %57 = load i32, i32* %arrayidx44, align 4
  %58 = load i8*, i8** %label, align 8
  %59 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumb, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %54, %struct._GtkTreeIter* %iter, i32 0, i32 %57, i32 1, i8* %58, i32 3, %struct._GdkPixbuf* %59, i32 -1)
  %60 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumb, align 8
  %tobool45 = icmp ne %struct._GdkPixbuf* %60, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  %61 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %thumb, align 8
  %62 = bitcast %struct._GdkPixbuf* %61 to i8*
  call void @g_object_unref(i8* %62)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.42
  %63 = load i8*, i8** %label, align 8
  call void @g_free(i8* %63)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false
  %64 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %64 to i64
  %65 = load i32*, i32** %items.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %65, i64 %idxprom49
  %66 = load i32, i32* %arrayidx50, align 4
  %call51 = call i32 @gimp_item_is_group(i32 %66)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.end.48
  %67 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %67 to i64
  %68 = load i32*, i32** %items.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %68, i64 %idxprom56
  %69 = load i32, i32* %arrayidx57, align 4
  %call58 = call i32* @gimp_item_get_children(i32 %69, i32* %n_children)
  store i32* %call58, i32** %children, align 8
  %70 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %71 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  %72 = load i32, i32* %image.addr, align 4
  %73 = load i32, i32* %n_children, align 4
  %74 = load i32*, i32** %children, align 8
  %75 = load i32, i32* %tree_level.addr, align 4
  %add59 = add nsw i32 %75, 1
  call void @gimp_item_combo_box_model_add(%struct._GimpIntComboBox* %70, %struct._GtkListStore* %71, i32 %72, i32 %73, i32* %74, i32 %add59)
  %76 = load i32*, i32** %children, align 8
  %77 = bitcast i32* %76 to i8*
  call void @g_free(i8* %77)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.53, %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %78 = load i32, i32* %i, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i8*, i8** %indent, align 8
  call void @g_free(i8* %79)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare i32* @gimp_image_get_channels(i32, i32*) #1

declare i32* @gimp_image_get_vectors(i32, i32*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_combo_box_set_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_image_get_name(i32) #1

declare i8* @gimp_item_get_name(i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32, i32, i32, i32) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @g_object_unref(i8*) #1

declare i32 @gimp_item_is_group(i32) #1

declare i32* @gimp_item_get_children(i32, i32*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare i32 @gimp_item_is_valid(i32) #1

declare void @g_signal_stop_emission_by_name(i8*, i8*) #1

declare void @gtk_tree_model_foreach(%struct._GtkTreeModel*, i32 (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_item_combo_box_remove_items(%struct._GtkTreeModel* %model, %struct._GtkTreePath* %path, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %item_ID = alloca i32, align 4
  %remove = alloca %struct._GList**, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GList**
  store %struct._GList** %1, %struct._GList*** %remove, align 8
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %3, i32 0, i32* %item_ID, i32 -1)
  %4 = load i32, i32* %item_ID, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GList**, %struct._GList*** %remove, align 8
  %6 = load %struct._GList*, %struct._GList** %5, align 8
  %7 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %8 = bitcast %struct._GtkTreeIter* %7 to i8*
  %call = call noalias i8* @g_memdup(i8* %8, i32 32)
  %call1 = call %struct._GList* @g_list_prepend(%struct._GList* %6, i8* %call)
  %9 = load %struct._GList**, %struct._GList*** %remove, align 8
  store %struct._GList* %call1, %struct._GList** %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
