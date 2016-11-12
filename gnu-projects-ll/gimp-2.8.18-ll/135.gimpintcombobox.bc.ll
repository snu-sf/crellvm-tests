; ModuleID = './libgimpwidgets/gimpintcombobox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct.GimpIntComboBoxPrivate = type { %struct._GtkCellRenderer*, %struct._GtkCellRenderer*, i32 (i32, i8*)*, i8*, void (i8*)* }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkCellLayout = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }

@gimp_int_combo_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpIntComboBox\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_int_combo_box_new_array = private unnamed_addr constant [29 x i8] c"gimp_int_combo_box_new_array\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"n_values >= 0\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"labels != NULL || n_values == 0\00", align 1
@__func__.gimp_int_combo_box_prepend = private unnamed_addr constant [27 x i8] c"gimp_int_combo_box_prepend\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"GIMP_IS_INT_COMBO_BOX (combo_box)\00", align 1
@__func__.gimp_int_combo_box_append = private unnamed_addr constant [26 x i8] c"gimp_int_combo_box_append\00", align 1
@__func__.gimp_int_combo_box_set_active = private unnamed_addr constant [30 x i8] c"gimp_int_combo_box_set_active\00", align 1
@__func__.gimp_int_combo_box_get_active = private unnamed_addr constant [30 x i8] c"gimp_int_combo_box_get_active\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"value != NULL\00", align 1
@__func__.gimp_int_combo_box_connect = private unnamed_addr constant [27 x i8] c"gimp_int_combo_box_connect\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.gimp_int_combo_box_set_sensitivity = private unnamed_addr constant [35 x i8] c"gimp_int_combo_box_set_sensitivity\00", align 1
@gimp_int_combo_box_parent_class = internal global i8* null, align 8
@GimpIntComboBox_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"gimpintcombobox.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"pixbuf\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_int_combo_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_int_combo_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_int_combo_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_combo_box_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 864, void (i8*, i8*)* bitcast (void (i8*)* @gimp_int_combo_box_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpIntComboBox*)* @gimp_int_combo_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_int_combo_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_int_combo_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_int_combo_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_int_combo_box_parent_class, align 8
  %1 = load i32, i32* @GimpIntComboBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpIntComboBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpIntComboBoxClass*
  call void @gimp_int_combo_box_class_init(%struct._GimpIntComboBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_int_combo_box_init(%struct._GimpIntComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %priv = alloca %struct.GimpIntComboBoxPrivate*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpIntComboBoxPrivate*
  %3 = bitcast %struct.GimpIntComboBoxPrivate* %2 to i8*
  %4 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpIntComboBox, %struct._GimpIntComboBox* %4, i32 0, i32 1
  store i8* %3, i8** %priv2, align 8
  %5 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpIntComboBox, %struct._GimpIntComboBox* %5, i32 0, i32 1
  %6 = load i8*, i8** %priv3, align 8
  %7 = bitcast i8* %6 to %struct.GimpIntComboBoxPrivate*
  store %struct.GimpIntComboBoxPrivate* %7, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %call4 = call %struct._GtkListStore* @gimp_int_store_new()
  store %struct._GtkListStore* %call4, %struct._GtkListStore** %store, align 8
  %8 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %9 = bitcast %struct._GimpIntComboBox* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_combo_box_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkComboBox*
  %11 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %12 = bitcast %struct._GtkListStore* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_tree_model_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTreeModel*
  call void @gtk_combo_box_set_model(%struct._GtkComboBox* %10, %struct._GtkTreeModel* %13)
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %15 = bitcast %struct._GtkListStore* %14 to i8*
  call void @g_object_unref(i8* %15)
  %call9 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call9, %struct._GtkCellRenderer** %cell, align 8
  %16 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %pixbuf_renderer = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %16, i32 0, i32 0
  store %struct._GtkCellRenderer* %call9, %struct._GtkCellRenderer** %pixbuf_renderer, align 8
  %17 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %18 = bitcast %struct._GimpIntComboBox* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_cell_layout_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkCellLayout*
  %20 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %19, %struct._GtkCellRenderer* %20, i32 0)
  %21 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %22 = bitcast %struct._GimpIntComboBox* %21 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_cell_layout_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call12)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkCellLayout*
  %24 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %23, %struct._GtkCellRenderer* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 3, i8* null)
  %call14 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call14, %struct._GtkCellRenderer** %cell, align 8
  %25 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %text_renderer = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %25, i32 0, i32 1
  store %struct._GtkCellRenderer* %call14, %struct._GtkCellRenderer** %text_renderer, align 8
  %26 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %27 = bitcast %struct._GimpIntComboBox* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_cell_layout_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkCellLayout*
  %29 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %28, %struct._GtkCellRenderer* %29, i32 1)
  %30 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %31 = bitcast %struct._GimpIntComboBox* %30 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_cell_layout_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call17)
  %32 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkCellLayout*
  %33 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %32, %struct._GtkCellRenderer* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* null)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_int_combo_box_new(i8* %first_label, i32 %first_value, ...) #3 {
entry:
  %first_label.addr = alloca i8*, align 8
  %first_value.addr = alloca i32, align 4
  %combo_box = alloca %struct._GtkWidget*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %first_label, i8** %first_label.addr, align 8
  store i32 %first_value, i32* %first_value.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %first_label.addr, align 8
  %1 = load i32, i32* %first_value.addr, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call %struct._GtkWidget* @gimp_int_combo_box_new_valist(i8* %0, i32 %1, %struct.__va_list_tag* %arraydecay2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %combo_box, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  ret %struct._GtkWidget* %2
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_int_combo_box_new_valist(i8* %first_label, i32 %first_value, %struct.__va_list_tag* %values) #3 {
entry:
  %first_label.addr = alloca i8*, align 8
  %first_value.addr = alloca i32, align 4
  %values.addr = alloca %struct.__va_list_tag*, align 8
  %combo_box = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %label = alloca i8*, align 8
  %value = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  store i8* %first_label, i8** %first_label.addr, align 8
  store i32 %first_value, i32* %first_value.addr, align 4
  store %struct.__va_list_tag* %values, %struct.__va_list_tag** %values.addr, align 8
  %call = call i64 @gimp_int_combo_box_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %0, %struct._GtkWidget** %combo_box, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_combo_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkComboBox*
  %call4 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %3)
  %4 = bitcast %struct._GtkTreeModel* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_list_store_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkListStore*
  store %struct._GtkListStore* %5, %struct._GtkListStore** %store, align 8
  %6 = load i8*, i8** %first_label.addr, align 8
  store i8* %6, i8** %label, align 8
  %7 = load i32, i32* %first_value.addr, align 4
  store i32 %7, i32* %value, align 4
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end.16, %entry
  %8 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast %struct._GtkTreeIter* %iter to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 32, i32 8, i1 false)
  %10 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %10, %struct._GtkTreeIter* %iter)
  %11 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %12 = load i32, i32* %value, align 4
  %13 = load i8*, i8** %label, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %11, %struct._GtkTreeIter* %iter, i32 0, i32 %12, i32 1, i8* %13, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.__va_list_tag*, %struct.__va_list_tag** %values.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.inc
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 3
  %reg_save_area = load i8*, i8** %15
  %16 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %17 = bitcast i8* %16 to i8**
  %18 = add i32 %gp_offset, 8
  store i32 %18, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.inc
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %19 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %17, %vaarg.in_reg ], [ %19, %vaarg.in_mem ]
  %20 = load i8*, i8** %vaarg.addr
  store i8* %20, i8** %label, align 8
  %21 = load %struct.__va_list_tag*, %struct.__va_list_tag** %values.addr, align 8
  %gp_offset_p7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 0
  %gp_offset8 = load i32, i32* %gp_offset_p7
  %fits_in_gp9 = icmp ule i32 %gp_offset8, 40
  br i1 %fits_in_gp9, label %vaarg.in_reg.10, label %vaarg.in_mem.12

vaarg.in_reg.10:                                  ; preds = %vaarg.end
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 3
  %reg_save_area11 = load i8*, i8** %22
  %23 = getelementptr i8, i8* %reg_save_area11, i32 %gp_offset8
  %24 = bitcast i8* %23 to i32*
  %25 = add i32 %gp_offset8, 8
  store i32 %25, i32* %gp_offset_p7
  br label %vaarg.end.16

vaarg.in_mem.12:                                  ; preds = %vaarg.end
  %overflow_arg_area_p13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 2
  %overflow_arg_area14 = load i8*, i8** %overflow_arg_area_p13
  %26 = bitcast i8* %overflow_arg_area14 to i32*
  %overflow_arg_area.next15 = getelementptr i8, i8* %overflow_arg_area14, i32 8
  store i8* %overflow_arg_area.next15, i8** %overflow_arg_area_p13
  br label %vaarg.end.16

vaarg.end.16:                                     ; preds = %vaarg.in_mem.12, %vaarg.in_reg.10
  %vaarg.addr17 = phi i32* [ %24, %vaarg.in_reg.10 ], [ %26, %vaarg.in_mem.12 ]
  %27 = load i32, i32* %vaarg.addr17
  store i32 %27, i32* %value, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  ret %struct._GtkWidget* %28
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 %n_values, i8** %labels) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %n_values.addr = alloca i32, align 4
  %labels.addr = alloca i8**, align 8
  %combo_box = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %i = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  store i32 %n_values, i32* %n_values.addr, align 4
  store i8** %labels, i8*** %labels.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %n_values.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_int_combo_box_new_array, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8**, i8*** %labels.addr, align 8
  %cmp2 = icmp ne i8** %1, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load i32, i32* %n_values.addr, align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_int_combo_box_new_array, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_int_combo_box_get_type() #7
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %3 = bitcast i8* %call8 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %combo_box, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_combo_box_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call9)
  %6 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkComboBox*
  %call11 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %6)
  %7 = bitcast %struct._GtkTreeModel* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_list_store_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call12)
  %8 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkListStore*
  store %struct._GtkListStore* %8, %struct._GtkListStore** %store, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.7
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n_values.addr, align 4
  %cmp14 = icmp slt i32 %9, %10
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %labels.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.body
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter)
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i8**, i8*** %labels.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 %idxprom16
  %19 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i8* @gettext(i8* %19) #4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %15, %struct._GtkTreeIter* %iter, i32 0, i32 %16, i32 1, i8* %call18, i32 -1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  store %struct._GtkWidget* %21, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.5, %if.else
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %22
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define void @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %combo_box, ...) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_int_combo_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_int_combo_box_prepend, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %14 = bitcast %struct._GimpIntComboBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_combo_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkComboBox*
  %call13 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %15)
  %16 = bitcast %struct._GtkTreeModel* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_list_store_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkListStore*
  store %struct._GtkListStore* %17, %struct._GtkListStore** %store, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay16 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay16)
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_prepend(%struct._GtkListStore* %18, %struct._GtkTreeIter* %iter)
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gtk_list_store_set_valist(%struct._GtkListStore* %19, %struct._GtkTreeIter* %iter, %struct.__va_list_tag* %arraydecay17)
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1819 = bitcast %struct.__va_list_tag* %arraydecay18 to i8*
  call void @llvm.va_end(i8* %arraydecay1819)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #6

declare void @gtk_list_store_prepend(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set_valist(%struct._GtkListStore*, %struct._GtkTreeIter*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define void @gimp_int_combo_box_append(%struct._GimpIntComboBox* %combo_box, ...) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_int_combo_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_int_combo_box_append, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %14 = bitcast %struct._GimpIntComboBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_combo_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkComboBox*
  %call13 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %15)
  %16 = bitcast %struct._GtkTreeModel* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_list_store_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkListStore*
  store %struct._GtkListStore* %17, %struct._GtkListStore** %store, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay16 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay16)
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %18, %struct._GtkTreeIter* %iter)
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gtk_list_store_set_valist(%struct._GtkListStore* %19, %struct._GtkTreeIter* %iter, %struct.__va_list_tag* %arraydecay17)
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1819 = bitcast %struct.__va_list_tag* %arraydecay18 to i8*
  call void @llvm.va_end(i8* %arraydecay1819)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %combo_box, i32 %value) #3 {
entry:
  %retval = alloca i32, align 4
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %value.addr = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_int_combo_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_int_combo_box_set_active, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %14 = bitcast %struct._GimpIntComboBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_combo_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkComboBox*
  %call13 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %15)
  store %struct._GtkTreeModel* %call13, %struct._GtkTreeModel** %model, align 8
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %17 = load i32, i32* %value.addr, align 4
  %call14 = call i32 @gimp_int_store_lookup_by_value(%struct._GtkTreeModel* %16, i32 %17, %struct._GtkTreeIter* %iter)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %do.end
  %18 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %19 = bitcast %struct._GimpIntComboBox* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_combo_box_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active_iter(%struct._GtkComboBox* %20, %struct._GtkTreeIter* %iter)
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.16, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gimp_int_store_lookup_by_value(%struct._GtkTreeModel*, i32, %struct._GtkTreeIter*) #1

declare void @gtk_combo_box_set_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %combo_box, i32* %value) #3 {
entry:
  %retval = alloca i32, align 4
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %value.addr = alloca i32*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_int_combo_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_int_combo_box_get_active, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %value.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_int_combo_box_get_active, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %15 = bitcast %struct._GimpIntComboBox* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_combo_box_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkComboBox*
  %call19 = call i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox* %16, %struct._GtkTreeIter* %iter)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %do.end.16
  %17 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %18 = bitcast %struct._GimpIntComboBox* %17 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_combo_box_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call22)
  %19 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkComboBox*
  %call24 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %19)
  %20 = load i32*, i32** %value.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %call24, %struct._GtkTreeIter* %iter, i32 0, i32* %20, i32 -1)
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %do.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.21, %if.else.14, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %combo_box, i32 %value, void ()* %callback, i8* %data) #3 {
entry:
  %retval = alloca i64, align 8
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %value.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 8
  %data.addr = alloca i8*, align 8
  %handler = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 0, i64* %handler, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_int_combo_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_int_combo_box_connect, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load void ()*, void ()** %callback.addr, align 8
  %tobool11 = icmp ne void ()* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %15 = bitcast %struct._GimpIntComboBox* %14 to i8*
  %16 = load void ()*, void ()** %callback.addr, align 8
  %17 = load i8*, i8** %data.addr, align 8
  %call13 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), void ()* %16, i8* %17, void (i8*, %struct._GClosure*)* null, i32 0)
  store i64 %call13, i64* %handler, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %19 = load i32, i32* %value.addr, align 4
  %call15 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %18, i32 %19)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %20 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %21 = bitcast %struct._GimpIntComboBox* %20 to i8*
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* null)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %22 = load i64, i64* %handler, align 8
  store i64 %22, i64* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.9
  %23 = load i64, i64* %retval
  ret i64 %23
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @g_signal_emit_by_name(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_int_combo_box_set_sensitivity(%struct._GimpIntComboBox* %combo_box, i32 (i32, i8*)* %func, i8* %data, void (i8*)* %destroy) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpIntComboBox*, align 8
  %func.addr = alloca i32 (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %destroy.addr = alloca void (i8*)*, align 8
  %priv = alloca %struct.GimpIntComboBoxPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %d = alloca void (i8*)*, align 8
  store %struct._GimpIntComboBox* %combo_box, %struct._GimpIntComboBox** %combo_box.addr, align 8
  store i32 (i32, i8*)* %func, i32 (i32, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store void (i8*)* %destroy, void (i8*)** %destroy.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpIntComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_int_combo_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_int_combo_box_set_sensitivity, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpIntComboBox, %struct._GimpIntComboBox* %13, i32 0, i32 1
  %14 = load i8*, i8** %priv11, align 8
  %15 = bitcast i8* %14 to %struct.GimpIntComboBoxPrivate*
  store %struct.GimpIntComboBoxPrivate* %15, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %16 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_destroy = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %16, i32 0, i32 4
  %17 = load void (i8*)*, void (i8*)** %sensitivity_destroy, align 8
  %tobool12 = icmp ne void (i8*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_destroy15 = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %18, i32 0, i32 4
  %19 = load void (i8*)*, void (i8*)** %sensitivity_destroy15, align 8
  store void (i8*)* %19, void (i8*)** %d, align 8
  %20 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_destroy16 = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %20, i32 0, i32 4
  store void (i8*)* null, void (i8*)** %sensitivity_destroy16, align 8
  %21 = load void (i8*)*, void (i8*)** %d, align 8
  %22 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_data = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %22, i32 0, i32 3
  %23 = load i8*, i8** %sensitivity_data, align 8
  call void %21(i8* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %do.end
  %24 = load i32 (i32, i8*)*, i32 (i32, i8*)** %func.addr, align 8
  %25 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_func = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %25, i32 0, i32 2
  store i32 (i32, i8*)* %24, i32 (i32, i8*)** %sensitivity_func, align 8
  %26 = load i8*, i8** %data.addr, align 8
  %27 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_data18 = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %27, i32 0, i32 3
  store i8* %26, i8** %sensitivity_data18, align 8
  %28 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %29 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_destroy19 = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %29, i32 0, i32 4
  store void (i8*)* %28, void (i8*)** %sensitivity_destroy19, align 8
  %30 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %31 = bitcast %struct._GimpIntComboBox* %30 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_cell_layout_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call20)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkCellLayout*
  %33 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %pixbuf_renderer = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %33, i32 0, i32 0
  %34 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %pixbuf_renderer, align 8
  %35 = load i32 (i32, i8*)*, i32 (i32, i8*)** %func.addr, align 8
  %tobool22 = icmp ne i32 (i32, i8*)* %35, null
  %cond = select i1 %tobool22, void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @gimp_int_combo_box_data_func, void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* null
  %36 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %37 = bitcast %struct.GimpIntComboBoxPrivate* %36 to i8*
  call void @gtk_cell_layout_set_cell_data_func(%struct._GtkCellLayout* %32, %struct._GtkCellRenderer* %34, void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* %cond, i8* %37, void (i8*)* null)
  %38 = load %struct._GimpIntComboBox*, %struct._GimpIntComboBox** %combo_box.addr, align 8
  %39 = bitcast %struct._GimpIntComboBox* %38 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_cell_layout_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call23)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkCellLayout*
  %41 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %text_renderer = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %41, i32 0, i32 1
  %42 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %text_renderer, align 8
  %43 = load i32 (i32, i8*)*, i32 (i32, i8*)** %func.addr, align 8
  %tobool25 = icmp ne i32 (i32, i8*)* %43, null
  %cond26 = select i1 %tobool25, void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @gimp_int_combo_box_data_func, void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* null
  %44 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %45 = bitcast %struct.GimpIntComboBoxPrivate* %44 to i8*
  call void @gtk_cell_layout_set_cell_data_func(%struct._GtkCellLayout* %40, %struct._GtkCellRenderer* %42, void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* %cond26, i8* %45, void (i8*)* null)
  br label %return

return:                                           ; preds = %if.end.17, %if.else.9
  ret void
}

declare void @gtk_cell_layout_set_cell_data_func(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_int_combo_box_data_func(%struct._GtkCellLayout* %layout, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %layout.addr = alloca %struct._GtkCellLayout*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %priv = alloca %struct.GimpIntComboBoxPrivate*, align 8
  %value = alloca i32, align 4
  %sensitive = alloca i32, align 4
  store %struct._GtkCellLayout* %layout, %struct._GtkCellLayout** %layout.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpIntComboBoxPrivate*
  store %struct.GimpIntComboBoxPrivate* %1, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %2 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_func = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %2, i32 0, i32 2
  %3 = load i32 (i32, i8*)*, i32 (i32, i8*)** %sensitivity_func, align 8
  %tobool = icmp ne i32 (i32, i8*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %5 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %5, i32 0, i32* %value, i32 -1)
  %6 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_func1 = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %6, i32 0, i32 2
  %7 = load i32 (i32, i8*)*, i32 (i32, i8*)** %sensitivity_func1, align 8
  %8 = load i32, i32* %value, align 4
  %9 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_data = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %9, i32 0, i32 3
  %10 = load i8*, i8** %sensitivity_data, align 8
  %call = call i32 %7(i32 %8, i8* %10)
  store i32 %call, i32* %sensitive, align 4
  %11 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %12 = bitcast %struct._GtkCellRenderer* %11 to i8*
  %13 = load i32, i32* %sensitive, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 %13, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_int_combo_box_class_init(%struct._GimpIntComboBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpIntComboBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpIntComboBoxClass* %klass, %struct._GimpIntComboBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpIntComboBoxClass*, %struct._GimpIntComboBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpIntComboBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_int_combo_box_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_int_combo_box_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_int_combo_box_finalize, void (%struct._GObject*)** %finalize, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @pango_ellipsize_mode_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %8 = bitcast %struct._GObjectClass* %7 to i8*
  call void @g_type_class_add_private(i8* %8, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_int_combo_box_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %priv = alloca %struct.GimpIntComboBoxPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpIntComboBox*
  %priv1 = getelementptr inbounds %struct._GimpIntComboBox, %struct._GimpIntComboBox* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpIntComboBoxPrivate*
  store %struct.GimpIntComboBoxPrivate* %3, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %4 = load i32, i32* %property_id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %text_renderer = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %5, i32 0, i32 1
  %6 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %text_renderer, align 8
  %7 = bitcast %struct._GtkCellRenderer* %6 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_set_property(%struct._GObject* %8, i8* %10, %struct._GValue* %11)
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
  %name2 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name2, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %15, i8* %17, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_int_combo_box_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %priv = alloca %struct.GimpIntComboBoxPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpIntComboBox*
  %priv1 = getelementptr inbounds %struct._GimpIntComboBox, %struct._GimpIntComboBox* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpIntComboBoxPrivate*
  store %struct.GimpIntComboBoxPrivate* %3, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %4 = load i32, i32* %property_id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %text_renderer = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %5, i32 0, i32 1
  %6 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %text_renderer, align 8
  %7 = bitcast %struct._GtkCellRenderer* %6 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_get_property(%struct._GObject* %8, i8* %10, %struct._GValue* %11)
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
  %name2 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name2, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %15, i8* %17, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_int_combo_box_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct.GimpIntComboBoxPrivate*, align 8
  %d = alloca void (i8*)*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GimpIntComboBox*
  %priv1 = getelementptr inbounds %struct._GimpIntComboBox, %struct._GimpIntComboBox* %1, i32 0, i32 1
  %2 = load i8*, i8** %priv1, align 8
  %3 = bitcast i8* %2 to %struct.GimpIntComboBoxPrivate*
  store %struct.GimpIntComboBoxPrivate* %3, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %4 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_destroy = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %4, i32 0, i32 4
  %5 = load void (i8*)*, void (i8*)** %sensitivity_destroy, align 8
  %tobool = icmp ne void (i8*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_destroy2 = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %6, i32 0, i32 4
  %7 = load void (i8*)*, void (i8*)** %sensitivity_destroy2, align 8
  store void (i8*)* %7, void (i8*)** %d, align 8
  %8 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_destroy3 = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %8, i32 0, i32 4
  store void (i8*)* null, void (i8*)** %sensitivity_destroy3, align 8
  %9 = load void (i8*)*, void (i8*)** %d, align 8
  %10 = load %struct.GimpIntComboBoxPrivate*, %struct.GimpIntComboBoxPrivate** %priv, align 8
  %sensitivity_data = getelementptr inbounds %struct.GimpIntComboBoxPrivate, %struct.GimpIntComboBoxPrivate* %10, i32 0, i32 3
  %11 = load i8*, i8** %sensitivity_data, align 8
  call void %9(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** @gimp_int_combo_box_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 6
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @pango_ellipsize_mode_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GtkListStore* @gimp_int_store_new() #1

declare void @gtk_combo_box_set_model(%struct._GtkComboBox*, %struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_object_unref(i8*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new() #1

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_cell_layout_set_attributes(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @g_object_set(i8*, i8*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
