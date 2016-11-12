; ModuleID = './libgimpwidgets/gimpcolorprofilecombobox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorProfileComboBoxClass = type { %struct._GtkComboBoxClass, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpColorProfileComboBox = type { %struct._GtkComboBox, %struct._GtkWidget* }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkCellLayout = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpColorProfileStore = type { %struct._GtkListStore, i8* }
%struct.GimpColorProfileComboBoxPrivate = type { %struct._GtkTreePath* }
%struct._GtkTreePath = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_color_profile_combo_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpColorProfileComboBox\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_profile_combo_box_new = private unnamed_addr constant [33 x i8] c"gimp_color_profile_combo_box_new\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_DIALOG (dialog)\00", align 1
@__func__.gimp_color_profile_combo_box_new_with_model = private unnamed_addr constant [44 x i8] c"gimp_color_profile_combo_box_new_with_model\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_COLOR_PROFILE_STORE (model)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dialog\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@__func__.gimp_color_profile_combo_box_add = private unnamed_addr constant [33 x i8] c"gimp_color_profile_combo_box_add\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"GIMP_IS_COLOR_PROFILE_COMBO_BOX (combo)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"label != NULL || filename == NULL\00", align 1
@__func__.gimp_color_profile_combo_box_set_active = private unnamed_addr constant [40 x i8] c"gimp_color_profile_combo_box_set_active\00", align 1
@__func__.gimp_color_profile_combo_box_get_active = private unnamed_addr constant [40 x i8] c"gimp_color_profile_combo_box_get_active\00", align 1
@gimp_color_profile_combo_box_parent_class = internal global i8* null, align 8
@GimpColorProfileComboBox_private_offset = internal global i32 0, align 4
@__func__.gimp_color_profile_combo_box_set_property = private unnamed_addr constant [42 x i8] c"gimp_color_profile_combo_box_set_property\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"combo_box->dialog == NULL\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"gimpcolorprofilecombobox.c\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"text\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_profile_combo_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_profile_combo_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_profile_combo_box_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_combo_box_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 896, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_profile_combo_box_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorProfileComboBox*)* @gimp_color_profile_combo_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_profile_combo_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_profile_combo_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_combo_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_profile_combo_box_parent_class, align 8
  %1 = load i32, i32* @GimpColorProfileComboBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorProfileComboBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorProfileComboBoxClass*
  call void @gimp_color_profile_combo_box_class_init(%struct._GimpColorProfileComboBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_combo_box_init(%struct._GimpColorProfileComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpColorProfileComboBox*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  store %struct._GimpColorProfileComboBox* %combo_box, %struct._GimpColorProfileComboBox** %combo_box.addr, align 8
  %call = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call, %struct._GtkCellRenderer** %cell, align 8
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %1 = bitcast %struct._GtkCellRenderer* %0 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 3, i8* null)
  %2 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo_box.addr, align 8
  %3 = bitcast %struct._GimpColorProfileComboBox* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_cell_layout_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkCellLayout*
  %5 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %4, %struct._GtkCellRenderer* %5, i32 1)
  %6 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo_box.addr, align 8
  %7 = bitcast %struct._GimpColorProfileComboBox* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_cell_layout_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkCellLayout*
  %9 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %8, %struct._GtkCellRenderer* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* null)
  %10 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo_box.addr, align 8
  %11 = bitcast %struct._GimpColorProfileComboBox* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_combo_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_row_separator_func(%struct._GtkComboBox* %12, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @gimp_color_profile_row_separator_func, i8* null, void (i8*)* null)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_profile_combo_box_new(%struct._GtkWidget* %dialog, i8* %history) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %history.addr = alloca i8*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i8* %history, i8** %history.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_color_profile_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %history.addr, align 8
  %call11 = call %struct._GtkListStore* @gimp_color_profile_store_new(i8* %13)
  store %struct._GtkListStore* %call11, %struct._GtkListStore** %store, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %15 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %16 = bitcast %struct._GtkListStore* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_tree_model_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTreeModel*
  %call14 = call %struct._GtkWidget* @gimp_color_profile_combo_box_new_with_model(%struct._GtkWidget* %14, %struct._GtkTreeModel* %17)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %combo, align 8
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %19 = bitcast %struct._GtkListStore* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  store %struct._GtkWidget* %20, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %21
}

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkListStore* @gimp_color_profile_store_new(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_profile_combo_box_new_with_model(%struct._GtkWidget* %dialog, %struct._GtkTreeModel* %model) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_dialog_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_color_profile_combo_box_new_with_model, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %14 = bitcast %struct._GtkTreeModel* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_color_profile_store_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_color_profile_combo_box_new_with_model, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_color_profile_combo_box_get_type() #6
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %27 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._GtkWidget* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._GtkTreeModel* %27, i8* null)
  %28 = bitcast i8* %call40 to %struct._GtkWidget*
  store %struct._GtkWidget* %28, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %29
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_profile_store_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_profile_combo_box_add(%struct._GimpColorProfileComboBox* %combo, i8* %filename, i8* %label) #3 {
entry:
  %combo.addr = alloca %struct._GimpColorProfileComboBox*, align 8
  %filename.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorProfileComboBox* %combo, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %1 = bitcast %struct._GimpColorProfileComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_profile_combo_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_color_profile_combo_box_add, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %label.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i8*, i8** %filename.addr, align 8
  %cmp13 = icmp eq i8* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_color_profile_combo_box_add, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %16 = bitcast %struct._GimpColorProfileComboBox* %15 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_combo_box_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call18)
  %17 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkComboBox*
  %call20 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %17)
  store %struct._GtkTreeModel* %call20, %struct._GtkTreeModel** %model, align 8
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %19 = bitcast %struct._GtkTreeModel* %18 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_color_profile_store_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call21)
  %20 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpColorProfileStore*
  %21 = load i8*, i8** %filename.addr, align 8
  %22 = load i8*, i8** %label.addr, align 8
  call void @gimp_color_profile_store_add(%struct._GimpColorProfileStore* %20, i8* %21, i8* %22)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

declare void @gimp_color_profile_store_add(%struct._GimpColorProfileStore*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_profile_combo_box_set_active(%struct._GimpColorProfileComboBox* %combo, i8* %filename, i8* %label) #3 {
entry:
  %combo.addr = alloca %struct._GimpColorProfileComboBox*, align 8
  %filename.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorProfileComboBox* %combo, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %1 = bitcast %struct._GimpColorProfileComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_profile_combo_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_color_profile_combo_box_set_active, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %14 = bitcast %struct._GimpColorProfileComboBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_combo_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkComboBox*
  %call13 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %15)
  store %struct._GtkTreeModel* %call13, %struct._GtkTreeModel** %model, align 8
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %17 = bitcast %struct._GtkTreeModel* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_color_profile_store_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpColorProfileStore*
  %19 = load i8*, i8** %filename.addr, align 8
  %20 = load i8*, i8** %label.addr, align 8
  %call16 = call i32 @_gimp_color_profile_store_history_add(%struct._GimpColorProfileStore* %18, i8* %19, i8* %20, %struct._GtkTreeIter* %iter)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %do.end
  %21 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %22 = bitcast %struct._GimpColorProfileComboBox* %21 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_combo_box_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active_iter(%struct._GtkComboBox* %23, %struct._GtkTreeIter* %iter)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.18, %do.end
  ret void
}

declare hidden i32 @_gimp_color_profile_store_history_add(%struct._GimpColorProfileStore*, i8*, i8*, %struct._GtkTreeIter*) #1

declare void @gtk_combo_box_set_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_color_profile_combo_box_get_active(%struct._GimpColorProfileComboBox* %combo) #3 {
entry:
  %retval = alloca i8*, align 8
  %combo.addr = alloca %struct._GimpColorProfileComboBox*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %filename = alloca i8*, align 8
  %type = alloca i32, align 4
  store %struct._GimpColorProfileComboBox* %combo, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %1 = bitcast %struct._GimpColorProfileComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_profile_combo_box_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_color_profile_combo_box_get_active, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %14 = bitcast %struct._GimpColorProfileComboBox* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_combo_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkComboBox*
  %call13 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %15)
  store %struct._GtkTreeModel* %call13, %struct._GtkTreeModel** %model, align 8
  %16 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo.addr, align 8
  %17 = bitcast %struct._GimpColorProfileComboBox* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_combo_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkComboBox*
  %call16 = call i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox* %18, %struct._GtkTreeIter* %iter)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %do.end
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter, i32 0, i32* %type, i32 2, i8** %filename, i32 -1)
  %20 = load i32, i32* %type, align 4
  %cmp21 = icmp eq i32 %20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  %21 = load i8*, i8** %filename, align 8
  store i8* %21, i8** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.18
  %22 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.else.9
  %23 = load i8*, i8** %retval
  ret i8* %23
}

declare i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @g_free(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_combo_box_class_init(%struct._GimpColorProfileComboBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorProfileComboBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %combo_class = alloca %struct._GtkComboBoxClass*, align 8
  store %struct._GimpColorProfileComboBoxClass* %klass, %struct._GimpColorProfileComboBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpColorProfileComboBoxClass*, %struct._GimpColorProfileComboBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorProfileComboBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorProfileComboBoxClass*, %struct._GimpColorProfileComboBoxClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorProfileComboBoxClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_combo_box_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkComboBoxClass*
  store %struct._GtkComboBoxClass* %5, %struct._GtkComboBoxClass** %combo_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_profile_combo_box_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_profile_combo_box_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_profile_combo_box_finalize, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GtkComboBoxClass*, %struct._GtkComboBoxClass** %combo_class, align 8
  %changed = getelementptr inbounds %struct._GtkComboBoxClass, %struct._GtkComboBoxClass* %9, i32 0, i32 1
  store void (%struct._GtkComboBox*)* @gimp_color_profile_combo_box_changed, void (%struct._GtkComboBox*)** %changed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gtk_dialog_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_color_profile_store_get_type() #6
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call6)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %13 = bitcast %struct._GObjectClass* %12 to i8*
  call void @g_type_class_add_private(i8* %13, i64 8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_combo_box_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %combo_box = alloca %struct._GimpColorProfileComboBox*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_profile_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorProfileComboBox*
  store %struct._GimpColorProfileComboBox* %2, %struct._GimpColorProfileComboBox** %combo_box, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %4 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo_box, align 8
  %dialog = getelementptr inbounds %struct._GimpColorProfileComboBox, %struct._GimpColorProfileComboBox* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %cmp = icmp eq %struct._GtkWidget* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_color_profile_combo_box_set_property, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %6)
  %7 = bitcast i8* %call2 to %struct._GtkWidget*
  %8 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo_box, align 8
  %dialog3 = getelementptr inbounds %struct._GimpColorProfileComboBox, %struct._GimpColorProfileComboBox* %8, i32 0, i32 1
  store %struct._GtkWidget* %7, %struct._GtkWidget** %dialog3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo_box, align 8
  %10 = bitcast %struct._GimpColorProfileComboBox* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_combo_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkComboBox*
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i8* @g_value_get_object(%struct._GValue* %12)
  %13 = bitcast i8* %call7 to %struct._GtkTreeModel*
  call void @gtk_combo_box_set_model(%struct._GtkComboBox* %11, %struct._GtkTreeModel* %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.8

do.body.8:                                        ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %17, i8* %19, i8* %call9, i8* %call12)
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end.13, %sw.bb.4, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_combo_box_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %combo_box = alloca %struct._GimpColorProfileComboBox*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_profile_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorProfileComboBox*
  store %struct._GimpColorProfileComboBox* %2, %struct._GimpColorProfileComboBox** %combo_box, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo_box, align 8
  %dialog = getelementptr inbounds %struct._GimpColorProfileComboBox, %struct._GimpColorProfileComboBox* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo_box, align 8
  %10 = bitcast %struct._GimpColorProfileComboBox* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_combo_box_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkComboBox*
  %call5 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %11)
  %12 = bitcast %struct._GtkTreeModel* %call5 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %16, i8* %18, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_combo_box_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %combo = alloca %struct._GimpColorProfileComboBox*, align 8
  %priv = alloca %struct.GimpColorProfileComboBoxPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_profile_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorProfileComboBox*
  store %struct._GimpColorProfileComboBox* %2, %struct._GimpColorProfileComboBox** %combo, align 8
  %3 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo, align 8
  %dialog = getelementptr inbounds %struct._GimpColorProfileComboBox, %struct._GimpColorProfileComboBox* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo, align 8
  %dialog2 = getelementptr inbounds %struct._GimpColorProfileComboBox, %struct._GimpColorProfileComboBox* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo, align 8
  %dialog3 = getelementptr inbounds %struct._GimpColorProfileComboBox, %struct._GimpColorProfileComboBox* %8, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpColorProfileComboBox*, %struct._GimpColorProfileComboBox** %combo, align 8
  %10 = bitcast %struct._GimpColorProfileComboBox* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_profile_combo_box_get_type() #6
  %call5 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast i8* %call5 to %struct.GimpColorProfileComboBoxPrivate*
  store %struct.GimpColorProfileComboBoxPrivate* %11, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %12 = load %struct.GimpColorProfileComboBoxPrivate*, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %last_path = getelementptr inbounds %struct.GimpColorProfileComboBoxPrivate, %struct.GimpColorProfileComboBoxPrivate* %12, i32 0, i32 0
  %13 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path, align 8
  %tobool6 = icmp ne %struct._GtkTreePath* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.GimpColorProfileComboBoxPrivate*, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %last_path8 = getelementptr inbounds %struct.GimpColorProfileComboBoxPrivate, %struct.GimpColorProfileComboBoxPrivate* %14, i32 0, i32 0
  %15 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path8, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %15)
  %16 = load %struct.GimpColorProfileComboBoxPrivate*, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %last_path9 = getelementptr inbounds %struct.GimpColorProfileComboBoxPrivate, %struct.GimpColorProfileComboBoxPrivate* %16, i32 0, i32 0
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %last_path9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %17 = load i8*, i8** @gimp_color_profile_combo_box_parent_class, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 80)
  %19 = bitcast %struct._GTypeClass* %call11 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 6
  %20 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %20(%struct._GObject* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_combo_box_changed(%struct._GtkComboBox* %combo) #3 {
entry:
  %combo.addr = alloca %struct._GtkComboBox*, align 8
  %priv = alloca %struct.GimpColorProfileComboBoxPrivate*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %type = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkComboBox* %combo, %struct._GtkComboBox** %combo.addr, align 8
  %0 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %call = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %call1 = call i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox* %1, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 0, i32* %type, i32 -1)
  %3 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %4 = bitcast %struct._GtkComboBox* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_profile_combo_box_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpColorProfileComboBoxPrivate*
  store %struct.GimpColorProfileComboBoxPrivate* %5, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %8 = bitcast %struct._GtkComboBox* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_profile_combo_box_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorProfileComboBox*
  %dialog6 = getelementptr inbounds %struct._GimpColorProfileComboBox, %struct._GimpColorProfileComboBox* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog6, align 8
  store %struct._GtkWidget* %10, %struct._GtkWidget** %dialog, align 8
  %11 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %12 = bitcast %struct._GtkComboBox* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %13)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %parent, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst, align 8
  %call10 = call i64 @gtk_window_get_type() #6
  store i64 %call10, i64* %__t, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool11 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %sw.bb
  store i32 0, i32* %__r, align 4
  br label %if.end.19

if.else:                                          ; preds = %sw.bb
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool13 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool13, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %22 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %21, %22
  br i1 %cmp, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %land.lhs.true, %if.else
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %24 = load i64, i64* %__t, align 8
  %call17 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call17, i32* %__r, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %25 = load i32, i32* %__r, align 4
  store i32 %25, i32* %tmp
  %26 = load i32, i32* %tmp
  %tobool20 = icmp ne i32 %26, 0
  br i1 %tobool20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.19
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_window_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWindow*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_window_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %29, %struct._GtkWindow* %32)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.end.19
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_window_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %35)
  %36 = load %struct.GimpColorProfileComboBoxPrivate*, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %last_path = getelementptr inbounds %struct.GimpColorProfileComboBoxPrivate, %struct.GimpColorProfileComboBoxPrivate* %36, i32 0, i32 0
  %37 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path, align 8
  %tobool29 = icmp ne %struct._GtkTreePath* %37, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %if.end.26
  %38 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %39 = load %struct.GimpColorProfileComboBoxPrivate*, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %last_path31 = getelementptr inbounds %struct.GimpColorProfileComboBoxPrivate, %struct.GimpColorProfileComboBoxPrivate* %39, i32 0, i32 0
  %40 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path31, align 8
  %call32 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %38, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %40)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.30
  %41 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  call void @gtk_combo_box_set_active_iter(%struct._GtkComboBox* %41, %struct._GtkTreeIter* %iter)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.30, %if.end.26
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end
  %42 = load %struct.GimpColorProfileComboBoxPrivate*, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %last_path37 = getelementptr inbounds %struct.GimpColorProfileComboBoxPrivate, %struct.GimpColorProfileComboBoxPrivate* %42, i32 0, i32 0
  %43 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path37, align 8
  %tobool38 = icmp ne %struct._GtkTreePath* %43, null
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %sw.bb.36
  %44 = load %struct.GimpColorProfileComboBoxPrivate*, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %last_path40 = getelementptr inbounds %struct.GimpColorProfileComboBoxPrivate, %struct.GimpColorProfileComboBoxPrivate* %44, i32 0, i32 0
  %45 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path40, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %45)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %sw.bb.36
  %46 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call42 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %46, %struct._GtkTreeIter* %iter)
  %47 = load %struct.GimpColorProfileComboBoxPrivate*, %struct.GimpColorProfileComboBoxPrivate** %priv, align 8
  %last_path43 = getelementptr inbounds %struct.GimpColorProfileComboBoxPrivate, %struct.GimpColorProfileComboBoxPrivate* %47, i32 0, i32 0
  store %struct._GtkTreePath* %call42, %struct._GtkTreePath** %last_path43, align 8
  %48 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %49 = bitcast %struct._GtkTreeModel* %48 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_color_profile_store_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call44)
  %50 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpColorProfileStore*
  call void @_gimp_color_profile_store_history_reorder(%struct._GimpColorProfileStore* %50, %struct._GtkTreeIter* %iter)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %if.end.41, %if.end.35
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare void @gtk_combo_box_set_model(%struct._GtkComboBox*, %struct._GtkTreeModel*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare hidden void @_gimp_color_profile_store_history_reorder(%struct._GimpColorProfileStore*, %struct._GtkTreeIter*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

declare void @gtk_cell_layout_set_attributes(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) #1

declare void @gtk_combo_box_set_row_separator_func(%struct._GtkComboBox*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_profile_row_separator_func(%struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %type = alloca i32, align 4
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, i32* %type, i32 -1)
  %2 = load i32, i32* %type, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %3 = load i32, i32* %retval
  ret i32 %3
}

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
