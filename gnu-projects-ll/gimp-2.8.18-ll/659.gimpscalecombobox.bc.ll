; ModuleID = './app/display/gimpscalecombobox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpScaleComboBoxClass = type { %struct._GtkComboBoxClass, void (%struct._GimpScaleComboBox*)* }
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
%struct._GimpScaleComboBox = type { %struct._GtkComboBox, double, %struct._GtkTreePath*, %struct._GList* }
%struct._GtkTreePath = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeRowReference = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkCellLayout = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkBorder = type { i32, i32, i32, i32 }
%struct._PangoContext = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque

@gimp_scale_combo_box_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpScaleComboBox\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"has-entry\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_scale_combo_box_set_scale = private unnamed_addr constant [31 x i8] c"gimp_scale_combo_box_set_scale\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_SCALE_COMBO_BOX (combo_box)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"scale > 0.0\00", align 1
@__func__.gimp_scale_combo_box_get_scale = private unnamed_addr constant [31 x i8] c"gimp_scale_combo_box_get_scale\00", align 1
@gimp_scale_combo_box_parent_class = internal global i8* null, align 8
@GimpScaleComboBox_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"entry-activated\00", align 1
@scale_combo_box_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"label-scale\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"width-chars\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"truncate-multiline\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"inner-border\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@g_utf8_skip = external constant i8*, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"%d\E2\80\89%%\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%.3g\E2\80\89%%\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_scale_combo_box_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_scale_combo_box_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_scale_combo_box_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 872, void (i8*, i8*)* bitcast (void (i8*)* @gimp_scale_combo_box_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpScaleComboBox*)* @gimp_scale_combo_box_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_scale_combo_box_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_scale_combo_box_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_scale_combo_box_parent_class, align 8
  %1 = load i32, i32* @GimpScaleComboBox_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpScaleComboBox_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpScaleComboBoxClass*
  call void @gimp_scale_combo_box_class_init(%struct._GimpScaleComboBoxClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_init(%struct._GimpScaleComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpScaleComboBox*, align 8
  store %struct._GimpScaleComboBox* %combo_box, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %scale = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %0, i32 0, i32 1
  store double 1.000000e+00, double* %scale, align 8
  %1 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %last_path = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %1, i32 0, i32 2
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %last_path, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_scale_combo_box_new() #3 {
entry:
  %call = call i64 @gimp_scale_combo_box_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_scale_combo_box_set_scale(%struct._GimpScaleComboBox* %combo_box, double %scale) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpScaleComboBox*, align 8
  %scale.addr = alloca double, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %persistent = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %this = alloca double, align 8
  %sibling = alloca %struct._GtkTreeIter, align 8
  %this38 = alloca double, align 8
  store %struct._GimpScaleComboBox* %combo_box, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  store double %scale, double* %scale.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpScaleComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_scale_combo_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_scale_combo_box_set_scale, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.55

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %scale.addr, align 8
  %cmp12 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_scale_combo_box_set_scale, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.55

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %15 = bitcast %struct._GimpScaleComboBox* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_combo_box_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkComboBox*
  %call19 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %16)
  store %struct._GtkTreeModel* %call19, %struct._GtkTreeModel** %model, align 8
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %18 = bitcast %struct._GtkTreeModel* %17 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_list_store_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call20)
  %19 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkListStore*
  store %struct._GtkListStore* %19, %struct._GtkListStore** %store, align 8
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call22 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %iter)
  store i32 %call22, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %21 = load i32, i32* %iter_valid, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %22, %struct._GtkTreeIter* %iter, i32 0, double* %this, i32 -1)
  %23 = load double, double* %this, align 8
  %24 = load double, double* %scale.addr, align 8
  %sub = fsub double %23, %24
  %call25 = call double @fabs(double %sub) #7
  %cmp26 = fcmp olt double %call25, 1.000000e-04
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  br label %for.end

if.end.28:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %25 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call29 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %25, %struct._GtkTreeIter* %iter)
  store i32 %call29, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  %26 = load i32, i32* %iter_valid, align 4
  %tobool30 = icmp ne i32 %26, 0
  br i1 %tobool30, label %if.end.46, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %27 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call33 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %27, %struct._GtkTreeIter* %sibling)
  store i32 %call33, i32* %iter_valid, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.42, %if.then.31
  %28 = load i32, i32* %iter_valid, align 4
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %for.body.36, label %for.end.44

for.body.36:                                      ; preds = %for.cond.34
  %29 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %29, %struct._GtkTreeIter* %sibling, i32 0, double* %this38, i32 -1)
  %30 = load double, double* %this38, align 8
  %31 = load double, double* %scale.addr, align 8
  %cmp39 = fcmp olt double %30, %31
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body.36
  br label %for.end.44

if.end.41:                                        ; preds = %for.body.36
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %32 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call43 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %32, %struct._GtkTreeIter* %sibling)
  store i32 %call43, i32* %iter_valid, align 4
  br label %for.cond.34

for.end.44:                                       ; preds = %if.then.40, %for.cond.34
  %33 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %34 = load i32, i32* %iter_valid, align 4
  %tobool45 = icmp ne i32 %34, 0
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.44
  br label %cond.end

cond.false:                                       ; preds = %for.end.44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GtkTreeIter* [ %sibling, %cond.true ], [ null, %cond.false ]
  call void @gtk_list_store_insert_before(%struct._GtkListStore* %33, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %cond)
  %35 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %36 = load double, double* %scale.addr, align 8
  call void @gimp_scale_combo_box_scale_iter_set(%struct._GtkListStore* %35, %struct._GtkTreeIter* %iter, double %36, i32 0)
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end, %for.end
  %37 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %38 = bitcast %struct._GimpScaleComboBox* %37 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_combo_box_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call47)
  %39 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active_iter(%struct._GtkComboBox* %39, %struct._GtkTreeIter* %iter)
  %40 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %40, %struct._GtkTreeIter* %iter, i32 2, i32* %persistent, i32 -1)
  %41 = load i32, i32* %persistent, align 4
  %tobool49 = icmp ne i32 %41, 0
  br i1 %tobool49, label %if.end.55, label %if.then.50

if.then.50:                                       ; preds = %if.end.46
  %42 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  call void @gimp_scale_combo_box_mru_add(%struct._GimpScaleComboBox* %42, %struct._GtkTreeIter* %iter)
  %43 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call51 = call i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel* %43, %struct._GtkTreeIter* null)
  %cmp52 = icmp sgt i32 %call51, 10
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.50
  %44 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  call void @gimp_scale_combo_box_mru_remove_last(%struct._GimpScaleComboBox* %44)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.9, %if.else.14, %if.end.54, %if.end.46
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_insert_before(%struct._GtkListStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_scale_iter_set(%struct._GtkListStore* %store, %struct._GtkTreeIter* %iter, double %scale, i32 %persistent) #3 {
entry:
  %store.addr = alloca %struct._GtkListStore*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %scale.addr = alloca double, align 8
  %persistent.addr = alloca i32, align 4
  %label = alloca [32 x i8], align 16
  store %struct._GtkListStore* %store, %struct._GtkListStore** %store.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store i32 %persistent, i32* %persistent.addr, align 4
  %0 = load double, double* %scale.addr, align 8
  %cmp = fcmp ogt double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %label, i32 0, i32 0
  %1 = load double, double* %scale.addr, align 8
  %mul = fmul double 1.000000e+02, %1
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %call = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %label, i32 0, i32 0
  %2 = load double, double* %scale.addr, align 8
  %mul2 = fmul double 1.000000e+02, %2
  %call3 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay1, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), double %mul2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  %4 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %5 = load double, double* %scale.addr, align 8
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %label, i32 0, i32 0
  %6 = load i32, i32* %persistent.addr, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %3, %struct._GtkTreeIter* %4, i32 0, double %5, i32 1, i8* %arraydecay4, i32 2, i32 %6, i32 -1)
  ret void
}

declare void @gtk_combo_box_set_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_mru_add(%struct._GimpScaleComboBox* %combo_box, %struct._GtkTreeIter* %iter) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpScaleComboBox*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %list = alloca %struct._GList*, align 8
  %found = alloca i32, align 4
  %this = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpScaleComboBox* %combo_box, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpScaleComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %2)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %4 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call3 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %4)
  store %struct._GtkTreePath* %call3, %struct._GtkTreePath** %path, align 8
  %5 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %mru, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  store i32 0, i32* %found, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %found, align 4
  %tobool4 = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct._GtkTreeRowReference*
  %call5 = call %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference* %12)
  store %struct._GtkTreePath* %call5, %struct._GtkTreePath** %this, align 8
  %13 = load %struct._GtkTreePath*, %struct._GtkTreePath** %this, align 8
  %14 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call6 = call i32 @gtk_tree_path_compare(%struct._GtkTreePath* %13, %struct._GtkTreePath* %14)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool7 = icmp ne %struct._GList* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %17 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru9 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %17, i32 0, i32 3
  %18 = load %struct._GList*, %struct._GList** %mru9, align 8
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %call10 = call %struct._GList* @g_list_remove_link(%struct._GList* %18, %struct._GList* %19)
  %20 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru11 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %20, i32 0, i32 3
  store %struct._GList* %call10, %struct._GList** %mru11, align 8
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %22 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru12 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %22, i32 0, i32 3
  %23 = load %struct._GList*, %struct._GList** %mru12, align 8
  %call13 = call %struct._GList* @g_list_concat(%struct._GList* %21, %struct._GList* %23)
  %24 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru14 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %24, i32 0, i32 3
  store %struct._GList* %call13, %struct._GList** %mru14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  store i32 1, i32* %found, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %for.body
  %25 = load %struct._GtkTreePath*, %struct._GtkTreePath** %this, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %25)
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %27, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %28 = load i32, i32* %found, align 4
  %tobool16 = icmp ne i32 %28, 0
  br i1 %tobool16, label %if.end.22, label %if.then.17

if.then.17:                                       ; preds = %for.end
  %29 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru18 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %29, i32 0, i32 3
  %30 = load %struct._GList*, %struct._GList** %mru18, align 8
  %31 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %32 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call19 = call %struct._GtkTreeRowReference* @gtk_tree_row_reference_new(%struct._GtkTreeModel* %31, %struct._GtkTreePath* %32)
  %33 = bitcast %struct._GtkTreeRowReference* %call19 to i8*
  %call20 = call %struct._GList* @g_list_prepend(%struct._GList* %30, i8* %33)
  %34 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru21 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %34, i32 0, i32 3
  store %struct._GList* %call20, %struct._GList** %mru21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %for.end
  %35 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %35)
  ret void
}

declare i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_mru_remove_last(%struct._GimpScaleComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpScaleComboBox*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %last = alloca %struct._GList*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpScaleComboBox* %combo_box, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %0, i32 0, i32 3
  %1 = load %struct._GList*, %struct._GList** %mru, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %3 = bitcast %struct._GimpScaleComboBox* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %4)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %5 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru3 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %mru3, align 8
  %call4 = call %struct._GList* @g_list_last(%struct._GList* %6)
  store %struct._GList* %call4, %struct._GList** %last, align 8
  %7 = load %struct._GList*, %struct._GList** %last, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GtkTreeRowReference*
  %call5 = call %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference* %9)
  store %struct._GtkTreePath* %call5, %struct._GtkTreePath** %path, align 8
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call6 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.end
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %13 = bitcast %struct._GtkTreeModel* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_list_store_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkListStore*
  %call11 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter)
  %15 = load %struct._GList*, %struct._GList** %last, align 8
  %data12 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data12, align 8
  %17 = bitcast i8* %16 to %struct._GtkTreeRowReference*
  call void @gtk_tree_row_reference_free(%struct._GtkTreeRowReference* %17)
  %18 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru13 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %18, i32 0, i32 3
  %19 = load %struct._GList*, %struct._GList** %mru13, align 8
  %20 = load %struct._GList*, %struct._GList** %last, align 8
  %call14 = call %struct._GList* @g_list_delete_link(%struct._GList* %19, %struct._GList* %20)
  %21 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %mru15 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %21, i32 0, i32 3
  store %struct._GList* %call14, %struct._GList** %mru15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.8, %if.end
  %22 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %22)
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_scale_combo_box_get_scale(%struct._GimpScaleComboBox* %combo_box) #3 {
entry:
  %retval = alloca double, align 8
  %combo_box.addr = alloca %struct._GimpScaleComboBox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpScaleComboBox* %combo_box, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpScaleComboBox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_scale_combo_box_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_scale_combo_box_get_scale, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %scale = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %13, i32 0, i32 1
  %14 = load double, double* %scale, align 8
  store double %14, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load double, double* %retval
  ret double %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_class_init(%struct._GimpScaleComboBoxClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpScaleComboBoxClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpScaleComboBoxClass* %klass, %struct._GimpScaleComboBoxClass** %klass.addr, align 8
  %0 = load %struct._GimpScaleComboBoxClass*, %struct._GimpScaleComboBoxClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpScaleComboBoxClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpScaleComboBoxClass*, %struct._GimpScaleComboBoxClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpScaleComboBoxClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpScaleComboBoxClass*, %struct._GimpScaleComboBoxClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpScaleComboBoxClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i64 %8, i32 1, i32 864, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @scale_combo_box_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_scale_combo_box_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_scale_combo_box_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_scale_combo_box_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %12 = load %struct._GimpScaleComboBoxClass*, %struct._GimpScaleComboBoxClass** %klass.addr, align 8
  %entry_activated = getelementptr inbounds %struct._GimpScaleComboBoxClass, %struct._GimpScaleComboBoxClass* %12, i32 0, i32 1
  store void (%struct._GimpScaleComboBox*)* null, void (%struct._GimpScaleComboBox*)** %entry_activated, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 1.000000e+00, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %13, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %combo_box = alloca %struct._GimpScaleComboBox*, align 8
  %entry2 = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %layout = alloca %struct._GtkCellLayout*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %border = alloca %struct._GtkBorder, align 4
  %i = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_scale_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpScaleComboBox*
  store %struct._GimpScaleComboBox* %2, %struct._GimpScaleComboBox** %combo_box, align 8
  %3 = bitcast %struct._GtkBorder* %border to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  %4 = load i8*, i8** @gimp_scale_combo_box_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** @gimp_scale_combo_box_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed5 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 9
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed5, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 60, i64 64, i64 20)
  store %struct._GtkListStore* %call6, %struct._GtkListStore** %store, align 8
  %13 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %14 = bitcast %struct._GimpScaleComboBox* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_combo_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkComboBox*
  %16 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %17 = bitcast %struct._GtkListStore* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_model_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeModel*
  call void @gtk_combo_box_set_model(%struct._GtkComboBox* %15, %struct._GtkTreeModel* %18)
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %20 = bitcast %struct._GtkListStore* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %22 = bitcast %struct._GimpScaleComboBox* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_combo_box_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_entry_text_column(%struct._GtkComboBox* %23, i32 1)
  %24 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %25 = bitcast %struct._GimpScaleComboBox* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_bin_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBin*
  %call15 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %26)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %entry2, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double 1.000000e+00, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._GtkBorder* %border, i8* null)
  %29 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %30 = bitcast %struct._GimpScaleComboBox* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_cell_layout_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkCellLayout*
  store %struct._GtkCellLayout* %31, %struct._GtkCellLayout** %layout, align 8
  %call18 = call i64 @gtk_cell_renderer_text_get_type() #7
  %call19 = call i8* (i64, i8*, ...) @g_object_new(i64 %call18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double 1.000000e+00, i8* null)
  %32 = bitcast i8* %call19 to %struct._GtkCellRenderer*
  store %struct._GtkCellRenderer* %32, %struct._GtkCellRenderer** %cell, align 8
  %33 = load %struct._GtkCellLayout*, %struct._GtkCellLayout** %layout, align 8
  call void @gtk_cell_layout_clear(%struct._GtkCellLayout* %33)
  %34 = load %struct._GtkCellLayout*, %struct._GtkCellLayout** %layout, align 8
  %35 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_cell_layout_pack_start(%struct._GtkCellLayout* %34, %struct._GtkCellRenderer* %35, i32 1)
  %36 = load %struct._GtkCellLayout*, %struct._GtkCellLayout** %layout, align 8
  %37 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) @gtk_cell_layout_set_attributes(%struct._GtkCellLayout* %36, %struct._GtkCellRenderer* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* null)
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %38 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %38, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %39, %struct._GtkTreeIter* %iter)
  %40 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %41 = load i32, i32* %i, align 4
  %conv = sitofp i32 %41 to double
  call void @gimp_scale_combo_box_scale_iter_set(%struct._GtkListStore* %40, %struct._GtkTreeIter* %iter, double %conv, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %div = sdiv i32 %42, 2
  store i32 %div, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.26, %for.end
  %43 = load i32, i32* %i, align 4
  %cmp21 = icmp sle i32 %43, 8
  br i1 %cmp21, label %for.body.23, label %for.end.27

for.body.23:                                      ; preds = %for.cond.20
  %44 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %44, %struct._GtkTreeIter* %iter)
  %45 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %46 = load i32, i32* %i, align 4
  %conv24 = sitofp i32 %46 to double
  %div25 = fdiv double 1.000000e+00, %conv24
  call void @gimp_scale_combo_box_scale_iter_set(%struct._GtkListStore* %45, %struct._GtkTreeIter* %iter, double %div25, i32 1)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.23
  %47 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %47, 2
  store i32 %mul, i32* %i, align 4
  br label %for.cond.20

for.end.27:                                       ; preds = %for.cond.20
  %48 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %49 = bitcast %struct._GimpScaleComboBox* %48 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpScaleComboBox*)* @gimp_scale_combo_box_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %53 = bitcast %struct._GimpScaleComboBox* %52 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpScaleComboBox*)* @gimp_scale_combo_box_entry_activate to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %56 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %57 = bitcast %struct._GimpScaleComboBox* %56 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventKey*, %struct._GimpScaleComboBox*)* @gimp_scale_combo_box_entry_key_press to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %combo_box = alloca %struct._GimpScaleComboBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_scale_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpScaleComboBox*
  store %struct._GimpScaleComboBox* %2, %struct._GimpScaleComboBox** %combo_box, align 8
  %3 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %last_path = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %3, i32 0, i32 2
  %4 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path, align 8
  %tobool = icmp ne %struct._GtkTreePath* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %last_path2 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %5, i32 0, i32 2
  %6 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path2, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %6)
  %7 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %last_path3 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %7, i32 0, i32 2
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %last_path3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %mru = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %8, i32 0, i32 3
  %9 = load %struct._GList*, %struct._GList** %mru, align 8
  %tobool4 = icmp ne %struct._GList* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %mru6 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %10, i32 0, i32 3
  %11 = load %struct._GList*, %struct._GList** %mru6, align 8
  call void @g_list_free_full(%struct._GList* %11, void (i8*)* bitcast (void (%struct._GtkTreeRowReference*)* @gtk_tree_row_reference_free to void (i8*)*))
  %12 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box, align 8
  %mru7 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %12, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %mru7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_scale_combo_box_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %rc_style = alloca %struct._GtkRcStyle*, align 8
  %font_size = alloca i32, align 4
  %scale = alloca double, align 8
  %context = alloca %struct._PangoContext*, align 8
  %font_desc9 = alloca %struct._PangoFontDescription*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load i8*, i8** @gimp_scale_combo_box_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 17
  %3 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %3(%struct._GtkWidget* %4, %struct._GtkStyle* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), double* %scale, i8* null)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_bin_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBin*
  %call5 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %9)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %entry1, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call %struct._GtkRcStyle* @gtk_widget_get_modifier_style(%struct._GtkWidget* %12)
  store %struct._GtkRcStyle* %call8, %struct._GtkRcStyle** %rc_style, align 8
  %13 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  %font_desc = getelementptr inbounds %struct._GtkRcStyle, %struct._GtkRcStyle* %13, i32 0, i32 3
  %14 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %tobool = icmp ne %struct._PangoFontDescription* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call10 = call %struct._PangoContext* @gtk_widget_get_pango_context(%struct._GtkWidget* %15)
  store %struct._PangoContext* %call10, %struct._PangoContext** %context, align 8
  %16 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %call11 = call %struct._PangoFontDescription* @pango_context_get_font_description(%struct._PangoContext* %16)
  store %struct._PangoFontDescription* %call11, %struct._PangoFontDescription** %font_desc9, align 8
  %17 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc9, align 8
  %call12 = call %struct._PangoFontDescription* @pango_font_description_copy(%struct._PangoFontDescription* %17)
  %18 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  %font_desc13 = getelementptr inbounds %struct._GtkRcStyle, %struct._GtkRcStyle* %18, i32 0, i32 3
  store %struct._PangoFontDescription* %call12, %struct._PangoFontDescription** %font_desc13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  %font_desc14 = getelementptr inbounds %struct._GtkRcStyle, %struct._GtkRcStyle* %19, i32 0, i32 3
  %20 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc14, align 8
  %call15 = call i32 @pango_font_description_get_size(%struct._PangoFontDescription* %20) #8
  store i32 %call15, i32* %font_size, align 4
  %21 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  %font_desc16 = getelementptr inbounds %struct._GtkRcStyle, %struct._GtkRcStyle* %21, i32 0, i32 3
  %22 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc16, align 8
  %23 = load double, double* %scale, align 8
  %24 = load i32, i32* %font_size, align 4
  %conv = sitofp i32 %24 to double
  %mul = fmul double %23, %conv
  %conv17 = fptosi double %mul to i32
  call void @pango_font_description_set_size(%struct._PangoFontDescription* %22, i32 %conv17)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  %28 = load %struct._GtkRcStyle*, %struct._GtkRcStyle** %rc_style, align 8
  call void @gtk_widget_modify_style(%struct._GtkWidget* %27, %struct._GtkRcStyle* %28)
  ret void
}

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare void @gtk_combo_box_set_model(%struct._GtkComboBox*, %struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_object_unref(i8*) #1

declare void @gtk_combo_box_set_entry_text_column(%struct._GtkComboBox*, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_renderer_text_get_type() #2

declare void @gtk_cell_layout_clear(%struct._GtkCellLayout*) #1

declare void @gtk_cell_layout_pack_start(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_cell_layout_set_attributes(%struct._GtkCellLayout*, %struct._GtkCellRenderer*, ...) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_changed(%struct._GimpScaleComboBox* %combo_box) #3 {
entry:
  %combo_box.addr = alloca %struct._GimpScaleComboBox*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %scale = alloca double, align 8
  store %struct._GimpScaleComboBox* %combo_box, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %0 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %1 = bitcast %struct._GimpScaleComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox* %2, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %4 = bitcast %struct._GimpScaleComboBox* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_combo_box_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkComboBox*
  %call5 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %5)
  store %struct._GtkTreeModel* %call5, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %iter, i32 0, double* %scale, i32 -1)
  %7 = load double, double* %scale, align 8
  %cmp = fcmp ogt double %7, 0.000000e+00
  br i1 %cmp, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.then
  %8 = load double, double* %scale, align 8
  %9 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %scale7 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %9, i32 0, i32 1
  store double %8, double* %scale7, align 8
  %10 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %last_path = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %10, i32 0, i32 2
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path, align 8
  %tobool8 = icmp ne %struct._GtkTreePath* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.6
  %12 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %last_path10 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %12, i32 0, i32 2
  %13 = load %struct._GtkTreePath*, %struct._GtkTreePath** %last_path10, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.6
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call11 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %iter)
  %15 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %last_path12 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %15, i32 0, i32 2
  store %struct._GtkTreePath* %call11, %struct._GtkTreePath** %last_path12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_combo_box_entry_activate(%struct._GtkWidget* %entry1, %struct._GimpScaleComboBox* %combo_box) #3 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %combo_box.addr = alloca %struct._GimpScaleComboBox*, align 8
  %text = alloca i8*, align 8
  %scale = alloca double, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct._GimpScaleComboBox* %combo_box, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  store i8* %call3, i8** %text, align 8
  %3 = load i8*, i8** %text, align 8
  %call4 = call i32 @gimp_scale_combo_box_parse_text(i8* %3, double* %scale)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load double, double* %scale, align 8
  %cmp = fcmp oge double %4, 3.906250e-03
  br i1 %cmp, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load double, double* %scale, align 8
  %cmp6 = fcmp ole double %5, 2.560000e+02
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.5
  %6 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %7 = load double, double* %scale, align 8
  call void @gimp_scale_combo_box_set_scale(%struct._GimpScaleComboBox* %6, double %7)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.5, %land.lhs.true, %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  call void @gtk_widget_error_bell(%struct._GtkWidget* %8)
  %9 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %10 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %scale7 = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %10, i32 0, i32 1
  %11 = load double, double* %scale7, align 8
  call void @gimp_scale_combo_box_set_scale(%struct._GimpScaleComboBox* %9, double %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %13 = bitcast %struct._GimpScaleComboBox* %12 to i8*
  %14 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @scale_combo_box_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %13, i32 %14, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_scale_combo_box_entry_key_press(%struct._GtkWidget* %entry1, %struct._GdkEventKey* %event, %struct._GimpScaleComboBox* %combo_box) #3 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventKey*, align 8
  %combo_box.addr = alloca %struct._GimpScaleComboBox*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct._GdkEventKey* %event, %struct._GdkEventKey** %event.addr, align 8
  store %struct._GimpScaleComboBox* %combo_box, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %0 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %0, i32 0, i32 5
  %1 = load i32, i32* %keyval, align 4
  %cmp = icmp eq i32 %1, 65307
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %3 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %scale = getelementptr inbounds %struct._GimpScaleComboBox, %struct._GimpScaleComboBox* %3, i32 0, i32 1
  %4 = load double, double* %scale, align 8
  call void @gimp_scale_combo_box_set_scale(%struct._GimpScaleComboBox* %2, double %4)
  %5 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  %6 = bitcast %struct._GimpScaleComboBox* %5 to i8*
  %7 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @scale_combo_box_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %6, i32 %7, i32 0)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval2 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %8, i32 0, i32 5
  %9 = load i32, i32* %keyval2, align 4
  %cmp3 = icmp eq i32 %9, 65289
  br i1 %cmp3, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval4 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %10, i32 0, i32 5
  %11 = load i32, i32* %keyval4, align 4
  %cmp5 = icmp eq i32 %11, 65417
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %12 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval7 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %12, i32 0, i32 5
  %13 = load i32, i32* %keyval7, align 4
  %cmp8 = icmp eq i32 %13, 65056
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %15 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo_box.addr, align 8
  call void @gimp_scale_combo_box_entry_activate(%struct._GtkWidget* %14, %struct._GimpScaleComboBox* %15)
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_scale_combo_box_parse_text(i8* %text, double* %scale) #3 {
entry:
  %retval = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %scale.addr = alloca double*, align 8
  %end = alloca i8*, align 8
  %left_number = alloca double, align 8
  %right_number = alloca double, align 8
  store i8* %text, i8** %text.addr, align 8
  store double* %scale, double** %scale.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call double @strtod(i8* %0, i8** %end) #5
  store double %call, double* %left_number, align 8
  %1 = load i8*, i8** %end, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %cmp = icmp eq i8* %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %end, align 8
  store i8* %3, i8** %text.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i8*, i8** %text.addr, align 8
  %call1 = call i32 @g_utf8_get_char(i8* %4) #8
  %call2 = call i32 @g_unichar_isspace(i32 %call1) #7
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %text.addr, align 8
  %6 = load i8*, i8** %text.addr, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom = zext i8 %7 to i64
  %8 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %text.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i8*, i8** %text.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv3 = sext i8 %11 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %12 = load i8*, i8** %text.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv6 = sext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 37
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %while.end
  %14 = load double, double* %left_number, align 8
  %div = fdiv double %14, 1.000000e+02
  %15 = load double*, double** %scale.addr, align 8
  store double %div, double* %15, align 8
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %16 = load i8*, i8** %text.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv11 = sext i8 %17 to i32
  %cmp12 = icmp ne i32 %conv11, 47
  br i1 %cmp12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.10
  %18 = load i8*, i8** %text.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv14 = sext i8 %19 to i32
  %cmp15 = icmp ne i32 %conv14, 58
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %20 = load double, double* %left_number, align 8
  %21 = load double*, double** %scale.addr, align 8
  store double %20, double* %21, align 8
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true, %if.end.10
  %22 = load i8*, i8** %text.addr, align 8
  %23 = load i8*, i8** %text.addr, align 8
  %24 = load i8, i8* %23, align 1
  %idxprom19 = zext i8 %24 to i64
  %25 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 %idxprom19
  %26 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %26 to i32
  %idx.ext22 = sext i32 %conv21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %22, i64 %idx.ext22
  store i8* %add.ptr23, i8** %text.addr, align 8
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.28, %if.end.18
  %27 = load i8*, i8** %text.addr, align 8
  %call25 = call i32 @g_utf8_get_char(i8* %27) #8
  %call26 = call i32 @g_unichar_isspace(i32 %call25) #7
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %while.body.28, label %while.end.34

while.body.28:                                    ; preds = %while.cond.24
  %28 = load i8*, i8** %text.addr, align 8
  %29 = load i8*, i8** %text.addr, align 8
  %30 = load i8, i8* %29, align 1
  %idxprom29 = zext i8 %30 to i64
  %31 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %31, i64 %idxprom29
  %32 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %32 to i32
  %idx.ext32 = sext i32 %conv31 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %28, i64 %idx.ext32
  store i8* %add.ptr33, i8** %text.addr, align 8
  br label %while.cond.24

while.end.34:                                     ; preds = %while.cond.24
  %33 = load i8*, i8** %text.addr, align 8
  %call35 = call double @strtod(i8* %33, i8** %end) #5
  store double %call35, double* %right_number, align 8
  %34 = load i8*, i8** %end, align 8
  %35 = load i8*, i8** %text.addr, align 8
  %cmp36 = icmp eq i8* %34, %35
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %while.end.34
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %while.end.34
  %36 = load double, double* %right_number, align 8
  %cmp40 = fcmp oeq double %36, 0.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %37 = load double, double* %left_number, align 8
  %38 = load double, double* %right_number, align 8
  %div44 = fdiv double %37, %38
  %39 = load double*, double** %scale.addr, align 8
  store double %div44, double* %39, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.42, %if.then.38, %if.then.17, %if.then.9, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare void @gtk_widget_error_bell(%struct._GtkWidget*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #6

; Function Attrs: nounwind readnone
declare i32 @g_unichar_isspace(i32) #2

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #4

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gtk_tree_row_reference_free(%struct._GtkTreeRowReference*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare %struct._GtkRcStyle* @gtk_widget_get_modifier_style(%struct._GtkWidget*) #1

declare %struct._PangoContext* @gtk_widget_get_pango_context(%struct._GtkWidget*) #1

declare %struct._PangoFontDescription* @pango_context_get_font_description(%struct._PangoContext*) #1

declare %struct._PangoFontDescription* @pango_font_description_copy(%struct._PangoFontDescription*) #1

; Function Attrs: nounwind readonly
declare i32 @pango_font_description_get_size(%struct._PangoFontDescription*) #4

declare void @pango_font_description_set_size(%struct._PangoFontDescription*, i32) #1

declare void @gtk_widget_modify_style(%struct._GtkWidget*, %struct._GtkRcStyle*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference*) #1

declare i32 @gtk_tree_path_compare(%struct._GtkTreePath*, %struct._GtkTreePath*) #1

declare %struct._GList* @g_list_remove_link(%struct._GList*, %struct._GList*) #1

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GtkTreeRowReference* @gtk_tree_row_reference_new(%struct._GtkTreeModel*, %struct._GtkTreePath*) #1

declare %struct._GList* @g_list_last(%struct._GList*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare %struct._GList* @g_list_delete_link(%struct._GList*, %struct._GList*) #1

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
