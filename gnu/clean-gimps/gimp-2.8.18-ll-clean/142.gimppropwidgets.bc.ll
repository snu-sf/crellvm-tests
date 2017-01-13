; ModuleID = './libgimpwidgets/gimppropwidgets.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpIntStore = type { %struct._GtkListStore, %struct._GtkTreeIter* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkComboBoxText = type { %struct._GtkComboBox, %struct._GtkComboBoxTextPrivate* }
%struct._GtkComboBoxTextPrivate = type opaque
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GimpEnumLabel = type { %struct._GtkLabel, %struct._GEnumClass* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpecInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GParamSpecUInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GParamSpecDouble = type { %struct._GParamSpec, double, double, double, double }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GParamSpecUInt64 = type { %struct._GParamSpec, i64, i64, i64 }
%struct._GimpMemsizeEntry = type { %struct._GtkBox, i64, i64, i64, i32, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkEditable = type opaque
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GimpStringComboBox = type { %struct._GtkComboBox, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GtkFileChooser = type opaque
%struct._GimpPathEditor = type { %struct._GtkBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkTreeSelection*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpUnitStore = type { %struct._GObject }
%struct._GimpUnitComboBox = type { %struct._GtkComboBox }
%struct._GimpUnitMenu = type { %struct._GtkOptionMenu, i8*, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkOptionMenu = type { %struct._GtkButton, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.0, %struct._GdkDrawable*, i32 }
%union.anon.0 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque
%struct._GtkExpander = type { %struct._GtkBin, %struct._GtkExpanderPrivate* }
%struct._GtkExpanderPrivate = type opaque

@.str = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_prop_check_button_new = private unnamed_addr constant [27 x i8] c"gimp_prop_check_button_new\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"G_IS_OBJECT (config)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"property_name != NULL\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@__func__.gimp_prop_enum_check_button_new = private unnamed_addr constant [32 x i8] c"gimp_prop_enum_check_button_new\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"false-value\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"true-value\00", align 1
@__func__.gimp_prop_int_combo_box_new = private unnamed_addr constant [28 x i8] c"gimp_prop_int_combo_box_new\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.gimp_prop_enum_combo_box_new = private unnamed_addr constant [29 x i8] c"gimp_prop_enum_combo_box_new\00", align 1
@__func__.gimp_prop_boolean_combo_box_new = private unnamed_addr constant [32 x i8] c"gimp_prop_boolean_combo_box_new\00", align 1
@__func__.gimp_prop_enum_radio_frame_new = private unnamed_addr constant [31 x i8] c"gimp_prop_enum_radio_frame_new\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"radio-button\00", align 1
@__func__.gimp_prop_enum_radio_box_new = private unnamed_addr constant [29 x i8] c"gimp_prop_enum_radio_box_new\00", align 1
@__func__.gimp_prop_enum_label_new = private unnamed_addr constant [25 x i8] c"gimp_prop_enum_label_new\00", align 1
@__func__.gimp_prop_boolean_radio_frame_new = private unnamed_addr constant [34 x i8] c"gimp_prop_boolean_radio_frame_new\00", align 1
@__func__.gimp_prop_enum_stock_box_new = private unnamed_addr constant [29 x i8] c"gimp_prop_enum_stock_box_new\00", align 1
@__func__.gimp_prop_spin_button_new = private unnamed_addr constant [26 x i8] c"gimp_prop_spin_button_new\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@__func__.gimp_prop_hscale_new = private unnamed_addr constant [21 x i8] c"gimp_prop_hscale_new\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"digits\00", align 1
@__func__.gimp_prop_scale_entry_new = private unnamed_addr constant [26 x i8] c"gimp_prop_scale_entry_new\00", align 1
@__func__.gimp_prop_opacity_entry_new = private unnamed_addr constant [28 x i8] c"gimp_prop_opacity_entry_new\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"opacity-scale\00", align 1
@__func__.gimp_prop_memsize_entry_new = private unnamed_addr constant [28 x i8] c"gimp_prop_memsize_entry_new\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"uint64_spec->minimum <= GIMP_MAX_MEMSIZE\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"uint64_spec->maximum <= GIMP_MAX_MEMSIZE\00", align 1
@__func__.gimp_prop_label_new = private unnamed_addr constant [20 x i8] c"gimp_prop_label_new\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"%s: property '%s' of %s is not transformable to string\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"gimppropwidgets.c:1609\00", align 1
@__func__.gimp_prop_entry_new = private unnamed_addr constant [20 x i8] c"gimp_prop_entry_new\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.gimp_prop_text_buffer_new = private unnamed_addr constant [26 x i8] c"gimp_prop_text_buffer_new\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"max-len\00", align 1
@__func__.gimp_prop_string_combo_box_new = private unnamed_addr constant [31 x i8] c"gimp_prop_string_combo_box_new\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"GTK_IS_TREE_MODEL (model)\00", align 1
@__func__.gimp_prop_file_chooser_button_new = private unnamed_addr constant [34 x i8] c"gimp_prop_file_chooser_button_new\00", align 1
@__func__.gimp_prop_file_chooser_button_new_with_dialog = private unnamed_addr constant [46 x i8] c"gimp_prop_file_chooser_button_new_with_dialog\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"GTK_IS_FILE_CHOOSER_DIALOG (dialog)\00", align 1
@__func__.gimp_prop_path_editor_new = private unnamed_addr constant [26 x i8] c"gimp_prop_path_editor_new\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"path_property_name != NULL\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"gimp-config-param-spec-path\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"path-changed\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"gimp-config-param-spec-writable\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"writable-changed\00", align 1
@__func__.gimp_prop_size_entry_new = private unnamed_addr constant [25 x i8] c"gimp_prop_size_entry_new\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"value-is-pixel\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"gimp-config-param-spec\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"refval-changed\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"gimp-config-param-spec-unit\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"unit-changed\00", align 1
@__func__.gimp_prop_coordinates_connect = private unnamed_addr constant [30 x i8] c"gimp_prop_coordinates_connect\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"GIMP_IS_SIZE_ENTRY (entry)\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"GIMP_SIZE_ENTRY (entry)->number_of_fields == 2\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"chainbutton == NULL || GIMP_IS_CHAIN_BUTTON (chainbutton)\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"gimp-config-param-spec-x\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"gimp-config-param-spec-y\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"old-x-value\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"old-y-value\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"chainbutton\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"old-unit-value\00", align 1
@__func__.gimp_prop_color_area_new = private unnamed_addr constant [25 x i8] c"gimp_prop_color_area_new\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@__func__.gimp_prop_unit_combo_box_new = private unnamed_addr constant [29 x i8] c"gimp_prop_unit_combo_box_new\00", align 1
@__func__.gimp_prop_unit_menu_new = private unnamed_addr constant [24 x i8] c"gimp_prop_unit_menu_new\00", align 1
@__func__.gimp_prop_stock_image_new = private unnamed_addr constant [26 x i8] c"gimp_prop_stock_image_new\00", align 1
@__func__.gimp_prop_expander_new = private unnamed_addr constant [23 x i8] c"gimp_prop_expander_new\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"notify::expanded\00", align 1
@gimp_prop_widgets_param_spec_quark.param_spec_quark = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"%s: unhandled param spec of type %s\00", align 1
@__func__.gimp_prop_adjustment_notify = private unnamed_addr constant [28 x i8] c"gimp_prop_adjustment_notify\00", align 1
@__func__.gimp_prop_memsize_callback = private unnamed_addr constant [27 x i8] c"gimp_prop_memsize_callback\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"G_IS_PARAM_SPEC_UINT64 (param_spec)\00", align 1
@__func__.gimp_prop_memsize_notify = private unnamed_addr constant [25 x i8] c"gimp_prop_memsize_notify\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"max-length\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"This text input field is limited to %d character.\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"This text input field is limited to %d characters.\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"file-set\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"constrains-ratio\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"%s: %s has no property named '%s'\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"%s: property '%s' of %s is not a %s\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"%s: property '%s' of %s is writable\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"%s: property '%s' of %s is not numeric\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"notify::\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %config, i8* %property_name, i8* %label) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_check_button_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_check_button_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 2
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_check_button_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %11 = load i8*, i8** %label.addr, align 8
  %call10 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %11)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %button, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_toggle_button_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkToggleButton*
  %15 = load i32, i32* %value, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %14, i32 %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %18, %struct._GtkWidget* %19, %struct._GParamSpec* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %24 = bitcast %struct._GObject* %23 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_check_button_callback to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %26 = load i8*, i8** %property_name.addr, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  call void @connect_notify(%struct._GObject* %25, i8* %26, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_check_button_notify to void ()*), i8* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %29, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.else.3, %if.else
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %30
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %object, i8* %property_name, i64 %type, i8* %strloc) #0 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %type.addr = alloca i64, align 8
  %strloc.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i8* %strloc, i8** %strloc.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64, i64* %type.addr, align 8
  %3 = load i8*, i8** %strloc.addr, align 8
  %call = call %struct._GParamSpec* @check_param_spec(%struct._GObject* %0, i8* %1, i64 %2, i8* %3)
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %strloc.addr, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %8, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 4
  %11 = load i64, i64* %owner_type, align 8
  %call1 = call i8* @g_type_name(i64 %11)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0), i8* %7, i8* %9, i8* %call1)
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %13
}

declare void @g_object_get(i8*, i8*, ...) #2

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #2

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @set_param_spec(%struct._GObject* %object, %struct._GtkWidget* %widget, %struct._GParamSpec* %param_spec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %blurb = alloca i8*, align 8
  %domain = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %tobool = icmp ne %struct._GObject* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call = call i32 @gimp_prop_widgets_param_spec_quark() #8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %3 = bitcast %struct._GParamSpec* %2 to i8*
  call void @g_object_set_qdata(%struct._GObject* %1, i32 %call, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call3 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %5)
  store i8* %call3, i8** %blurb, align 8
  %6 = load i8*, i8** %blurb, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.then.2
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 4
  %8 = load i64, i64* %owner_type, align 8
  %call6 = call i8* @gimp_type_get_translation_domain(i64 %8)
  store i8* %call6, i8** %domain, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = load i8*, i8** %domain, align 8
  %11 = load i8*, i8** %blurb, align 8
  %call7 = call i8* @dgettext(i8* %10, i8* %11) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %9, i8* %call7, i8* null)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.then.2
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_check_button_callback(%struct._GtkWidget* %widget, %struct._GObject* %config) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %5 = bitcast %struct._GObject* %4 to i8*
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %call4 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %10)
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* %7, i32 %call4, i8* null)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_button_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleButton*
  call void @gimp_toggle_button_sensitive_update(%struct._GtkToggleButton* %13)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @connect_notify(%struct._GObject* %config, i8* %property_name, void ()* %callback, i8* %callback_data) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %notify_name = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  %0 = load i8*, i8** %property_name.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* %0, i8* null)
  store i8* %call, i8** %notify_name, align 8
  %1 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %2 = bitcast %struct._GObject* %1 to i8*
  %3 = load i8*, i8** %notify_name, align 8
  %4 = load void ()*, void ()** %callback.addr, align 8
  %5 = load i8*, i8** %callback_data.addr, align 8
  %call1 = call i64 @g_signal_connect_object(i8* %2, i8* %3, void ()* %4, i8* %5, i32 0)
  %6 = load i8*, i8** %notify_name, align 8
  call void @g_free(i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_check_button_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %button) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %6)
  %7 = load i32, i32* %value, align 4
  %cmp = icmp ne i32 %call2, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %11 = bitcast %struct._GObject* %10 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_check_button_callback to i8*), i8* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toggle_button_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call4)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToggleButton*
  %15 = load i32, i32* %value, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %14, i32 %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_toggle_button_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkToggleButton*
  call void @gimp_toggle_button_sensitive_update(%struct._GtkToggleButton* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = bitcast %struct._GObject* %21 to i8*
  %call8 = call i32 @g_signal_handlers_unblock_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_check_button_callback to i8*), i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_enum_check_button_new(%struct._GObject* %config, i8* %property_name, i8* %label, i32 %false_value, i32 %true_value) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %false_value.addr = alloca i32, align 4
  %true_value.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %false_value, i32* %false_value.addr, align 4
  store i32 %true_value, i32* %true_value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_prop_enum_check_button_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_prop_enum_check_button_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 10
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_prop_enum_check_button_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %11 = load i8*, i8** %label.addr, align 8
  %call10 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %11)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %button, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_toggle_button_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkToggleButton*
  %15 = load i32, i32* %value, align 4
  %16 = load i32, i32* %true_value.addr, align 4
  %cmp13 = icmp eq i32 %15, %16
  %conv = zext i1 %cmp13 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %14, i32 %conv)
  %17 = load i32, i32* %value, align 4
  %18 = load i32, i32* %false_value.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.9
  %19 = load i32, i32* %value, align 4
  %20 = load i32, i32* %true_value.addr, align 4
  %cmp16 = icmp ne i32 %19, %20
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_toggle_button_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_inconsistent(%struct._GtkToggleButton* %23, i32 1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %land.lhs.true, %if.end.9
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %26, %struct._GtkWidget* %27, %struct._GParamSpec* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %32 = load i32, i32* %false_value.addr, align 4
  %conv24 = sext i32 %32 to i64
  %33 = inttoptr i64 %conv24 to i8*
  call void @g_object_set_data(%struct._GObject* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %37 = load i32, i32* %true_value.addr, align 4
  %conv26 = sext i32 %37 to i64
  %38 = inttoptr i64 %conv26 to i8*
  call void @g_object_set_data(%struct._GObject* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %42 = bitcast %struct._GObject* %41 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_enum_check_button_callback to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %44 = load i8*, i8** %property_name.addr, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  call void @connect_notify(%struct._GObject* %43, i8* %44, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_enum_check_button_notify to void ()*), i8* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %47, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.8, %if.else.3, %if.else
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %48
}

declare void @gtk_toggle_button_set_inconsistent(%struct._GtkToggleButton*, i32) #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_enum_check_button_callback(%struct._GtkWidget* %widget, %struct._GObject* %config) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %false_value = alloca i32, align 4
  %true_value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %7 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %false_value, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %11 = ptrtoint i8* %call5 to i64
  %conv6 = trunc i64 %11 to i32
  store i32 %conv6, i32* %true_value, align 4
  %12 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %13 = bitcast %struct._GObject* %12 to i8*
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_toggle_button_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkToggleButton*
  %call9 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %18)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load i32, i32* %true_value, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %20 = load i32, i32* %false_value, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  call void (i8*, i8*, ...) @g_object_set(i8* %13, i8* %15, i32 %cond, i8* null)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_toggle_button_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_inconsistent(%struct._GtkToggleButton* %23, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_toggle_button_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkToggleButton*
  call void @gimp_toggle_button_sensitive_update(%struct._GtkToggleButton* %26)
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_enum_check_button_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %button) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  %false_value = alloca i32, align 4
  %true_value = alloca i32, align 4
  %active = alloca i32, align 4
  %inconsistent = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i32 0, i32* %active, align 4
  store i32 0, i32* %inconsistent, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %7 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %false_value, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %11 = ptrtoint i8* %call3 to i64
  %conv4 = trunc i64 %11 to i32
  store i32 %conv4, i32* %true_value, align 4
  %12 = load i32, i32* %value, align 4
  %13 = load i32, i32* %true_value, align 4
  %cmp = icmp eq i32 %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %active, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %value, align 4
  %15 = load i32, i32* %false_value, align 4
  %cmp6 = icmp ne i32 %14, %15
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  store i32 1, i32* %inconsistent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_toggle_button_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkToggleButton*
  %19 = load i32, i32* %inconsistent, align 4
  call void @gtk_toggle_button_set_inconsistent(%struct._GtkToggleButton* %18, i32 %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_toggle_button_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkToggleButton*
  %call14 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %22)
  %23 = load i32, i32* %active, align 4
  %cmp15 = icmp ne i32 %call14, %23
  br i1 %cmp15, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end.9
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %27 = bitcast %struct._GObject* %26 to i8*
  %call18 = call i32 @g_signal_handlers_block_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_enum_check_button_callback to i8*), i8* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_toggle_button_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkToggleButton*
  %31 = load i32, i32* %active, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %30, i32 %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_toggle_button_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call21)
  %34 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkToggleButton*
  call void @gimp_toggle_button_sensitive_update(%struct._GtkToggleButton* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %38 = bitcast %struct._GObject* %37 to i8*
  %call23 = call i32 @g_signal_handlers_unblock_matched(i8* %36, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_enum_check_button_callback to i8*), i8* %38)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.17, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_int_combo_box_new(%struct._GObject* %config, i8* %property_name, %struct._GimpIntStore* %store) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %store.addr = alloca %struct._GimpIntStore*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %combo_box = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store %struct._GimpIntStore* %store, %struct._GimpIntStore** %store.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_int_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_int_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 3
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_int_combo_box_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %call10 = call i64 @gimp_int_combo_box_get_type() #8
  %11 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %call11 = call i8* (i64, i8*, ...) @g_object_new(i64 %call10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._GimpIntStore* %11, i8* null)
  %12 = bitcast i8* %call11 to %struct._GtkWidget*
  store %struct._GtkWidget* %12, %struct._GtkWidget** %combo_box, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_int_combo_box_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpIntComboBox*
  %16 = load i32, i32* %value, align 4
  %call14 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %15, i32 %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %19 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %20 = bitcast %struct._GObject* %19 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_int_combo_box_callback to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %23, %struct._GtkWidget* %24, %struct._GParamSpec* %25)
  %26 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %27 = load i8*, i8** %property_name.addr, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  call void @connect_notify(%struct._GObject* %26, i8* %27, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_int_combo_box_notify to void ()*), i8* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  store %struct._GtkWidget* %30, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.else.3, %if.else
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

declare i8* @g_object_new(i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_int_combo_box_callback(%struct._GtkWidget* %widget, %struct._GObject* %config) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.7

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_int_combo_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpIntComboBox*
  %call4 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %6, i32* %value)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* %10, i32 %11, i8* null)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then, %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_int_combo_box_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %combo_box) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %combo_box.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %combo_box, %struct._GtkWidget** %combo_box.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_int_combo_box_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_int_combo_box_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %11 = load i32, i32* %value, align 4
  %call3 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %10, i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_int_combo_box_callback to i8*), i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %config, i8* %property_name, i32 %minimum, i32 %maximum) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %combo_box = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  %store = alloca %struct._GtkListStore*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 10
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_combo_box_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %11 = load i32, i32* %minimum.addr, align 4
  %12 = load i32, i32* %maximum.addr, align 4
  %cmp10 = icmp ne i32 %11, %12
  br i1 %cmp10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 3
  %14 = load i64, i64* %value_type, align 8
  %15 = load i32, i32* %minimum.addr, align 4
  %16 = load i32, i32* %maximum.addr, align 4
  %call12 = call %struct._GtkListStore* @gimp_enum_store_new_with_range(i64 %14, i32 %15, i32 %16)
  store %struct._GtkListStore* %call12, %struct._GtkListStore** %store, align 8
  %call13 = call i64 @gimp_enum_combo_box_get_type() #8
  %17 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %call14 = call i8* (i64, i8*, ...) @g_object_new(i64 %call13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._GtkListStore* %17, i8* null)
  %18 = bitcast i8* %call14 to %struct._GtkWidget*
  store %struct._GtkWidget* %18, %struct._GtkWidget** %combo_box, align 8
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %20 = bitcast %struct._GtkListStore* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.18

if.else.15:                                       ; preds = %if.end.9
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type16 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 3
  %22 = load i64, i64* %value_type16, align 8
  %call17 = call %struct._GtkWidget* @gimp_enum_combo_box_new(i64 %22)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %combo_box, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.11
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_int_combo_box_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpIntComboBox*
  %26 = load i32, i32* %value, align 4
  %call21 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %25, i32 %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %30 = bitcast %struct._GObject* %29 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_int_combo_box_callback to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %33, %struct._GtkWidget* %34, %struct._GParamSpec* %35)
  %36 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %37 = load i8*, i8** %property_name.addr, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  call void @connect_notify(%struct._GObject* %36, i8* %37, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_int_combo_box_notify to void ()*), i8* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  store %struct._GtkWidget* %40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.8, %if.else.3, %if.else
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %41
}

declare %struct._GtkListStore* @gimp_enum_store_new_with_range(i64, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_combo_box_get_type() #3

declare void @g_object_unref(i8*) #2

declare %struct._GtkWidget* @gimp_enum_combo_box_new(i64) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_boolean_combo_box_new(%struct._GObject* %config, i8* %property_name, i8* %true_text, i8* %false_text) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %true_text.addr = alloca i8*, align 8
  %false_text.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %combo_box = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %true_text, i8** %true_text.addr, align 8
  store i8* %false_text, i8** %false_text.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_prop_boolean_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_prop_boolean_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 2
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_prop_boolean_combo_box_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %call10 = call %struct._GtkWidget* @gtk_combo_box_text_new()
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %combo_box, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_combo_box_text_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkComboBoxText*
  %14 = load i8*, i8** %true_text.addr, align 8
  call void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText* %13, i8* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_combo_box_text_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkComboBoxText*
  %18 = load i8*, i8** %false_text.addr, align 8
  call void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText* %17, i8* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_combo_box_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkComboBox*
  %22 = load i32, i32* %value, align 4
  %tobool17 = icmp ne i32 %22, 0
  %cond = select i1 %tobool17, i32 0, i32 1
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %21, i32 %cond)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %26 = bitcast %struct._GObject* %25 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_boolean_combo_box_callback to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %29, %struct._GtkWidget* %30, %struct._GParamSpec* %31)
  %32 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %33 = load i8*, i8** %property_name.addr, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  call void @connect_notify(%struct._GObject* %32, i8* %33, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_boolean_combo_box_notify to void ()*), i8* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  store %struct._GtkWidget* %36, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.else.3, %if.else
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %37
}

declare %struct._GtkWidget* @gtk_combo_box_text_new() #2

declare void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_text_get_type() #3

declare void @gtk_combo_box_set_active(%struct._GtkComboBox*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_boolean_combo_box_callback(%struct._GtkWidget* %widget, %struct._GObject* %config) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_combo_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkComboBox*
  %call4 = call i32 @gtk_combo_box_get_active(%struct._GtkComboBox* %6)
  store i32 %call4, i32* %value, align 4
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %value, align 4
  %tobool5 = icmp ne i32 %11, 0
  %cond = select i1 %tobool5, i32 0, i32 1
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* %10, i32 %cond, i8* null)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_boolean_combo_box_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %combo_box) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %combo_box.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %combo_box, %struct._GtkWidget** %combo_box.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_boolean_combo_box_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_combo_box_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkComboBox*
  %11 = load i32, i32* %value, align 4
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 0, i32 1
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %10, i32 %cond)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_boolean_combo_box_callback to i8*), i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_enum_radio_frame_new(%struct._GObject* %config, i8* %property_name, i8* %title, i32 %minimum, i32 %maximum) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_prop_enum_radio_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_prop_enum_radio_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 10
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_prop_enum_radio_frame_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %11 = load i32, i32* %minimum.addr, align 4
  %12 = load i32, i32* %maximum.addr, align 4
  %cmp10 = icmp ne i32 %11, %12
  br i1 %cmp10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 3
  %14 = load i64, i64* %value_type, align 8
  %15 = load i32, i32* %minimum.addr, align 4
  %16 = load i32, i32* %maximum.addr, align 4
  %17 = load i8*, i8** %title.addr, align 8
  %call12 = call %struct._GtkWidget* @gtk_label_new(i8* %17)
  %18 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %19 = bitcast %struct._GObject* %18 to i8*
  %call13 = call %struct._GtkWidget* @gimp_enum_radio_frame_new_with_range(i64 %14, i32 %15, i32 %16, %struct._GtkWidget* %call12, void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_radio_button_callback to void ()*), i8* %19, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %frame, align 8
  br label %if.end.18

if.else.14:                                       ; preds = %if.end.9
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type15 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 3
  %21 = load i64, i64* %value_type15, align 8
  %22 = load i8*, i8** %title.addr, align 8
  %call16 = call %struct._GtkWidget* @gtk_label_new(i8* %22)
  %23 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %24 = bitcast %struct._GObject* %23 to i8*
  %call17 = call %struct._GtkWidget* @gimp_enum_radio_frame_new(i64 %21, %struct._GtkWidget* %call16, void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_radio_button_callback to void ()*), i8* %24, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %frame, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.14, %if.then.11
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_radio_button_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkRadioButton*
  %28 = load i32, i32* %value, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %27, i32 %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_radio_spec(%struct._GObject* %31, %struct._GParamSpec* %32)
  %33 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %34 = load i8*, i8** %property_name.addr, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  call void @connect_notify(%struct._GObject* %33, i8* %34, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_radio_button_notify to void ()*), i8* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  call void @g_object_set_data(%struct._GObject* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %42, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.8, %if.else.3, %if.else
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %43
}

declare %struct._GtkWidget* @gimp_enum_radio_frame_new_with_range(i64, i32, i32, %struct._GtkWidget*, void ()*, i8*, %struct._GtkWidget**) #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_radio_button_callback(%struct._GtkWidget* %widget, %struct._GObject* %config) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %5)
  store %struct._GParamSpec* %call4, %struct._GParamSpec** %param_spec, align 8
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool5 = icmp ne %struct._GParamSpec* %6, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  br label %if.end.9

if.end:                                           ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i8* @g_object_get_data(%struct._GObject* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0))
  %10 = ptrtoint i8* %call8 to i64
  %conv = trunc i64 %10 to i32
  store i32 %conv, i32* %value, align 4
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load i32, i32* %value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, i32 %15, i8* null)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_enum_radio_frame_new(i64, %struct._GtkWidget*, void ()*, i8*, %struct._GtkWidget**) #2

declare void @gimp_int_radio_group_set_active(%struct._GtkRadioButton*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @set_radio_spec(%struct._GObject* %object, %struct._GParamSpec* %param_spec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_radio_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkRadioButton*
  %call2 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %2)
  store %struct._GSList* %call2, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GObject*
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  call void @set_param_spec(%struct._GObject* %6, %struct._GtkWidget* null, %struct._GParamSpec* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool3 = icmp ne %struct._GSList* %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %9 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 1
  %10 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_radio_button_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %button) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_radio_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkRadioButton*
  %7 = load i32, i32* %value, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_enum_radio_box_new(%struct._GObject* %config, i8* %property_name, i32 %minimum, i32 %maximum) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_radio_box_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_radio_box_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 10
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_radio_box_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %11 = load i32, i32* %minimum.addr, align 4
  %12 = load i32, i32* %maximum.addr, align 4
  %cmp10 = icmp ne i32 %11, %12
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 3
  %14 = load i64, i64* %value_type, align 8
  %15 = load i32, i32* %minimum.addr, align 4
  %16 = load i32, i32* %maximum.addr, align 4
  %17 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %18 = bitcast %struct._GObject* %17 to i8*
  %call12 = call %struct._GtkWidget* @gimp_enum_radio_box_new_with_range(i64 %14, i32 %15, i32 %16, void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_radio_button_callback to void ()*), i8* %18, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %vbox, align 8
  br label %if.end.16

if.else.13:                                       ; preds = %if.end.9
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type14 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 3
  %20 = load i64, i64* %value_type14, align 8
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = bitcast %struct._GObject* %21 to i8*
  %call15 = call %struct._GtkWidget* @gimp_enum_radio_box_new(i64 %20, void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_radio_button_callback to void ()*), i8* %22, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %vbox, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.11
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_radio_button_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkRadioButton*
  %26 = load i32, i32* %value, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %25, i32 %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_radio_spec(%struct._GObject* %29, %struct._GParamSpec* %30)
  %31 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %32 = load i8*, i8** %property_name.addr, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  call void @connect_notify(%struct._GObject* %31, i8* %32, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_radio_button_notify to void ()*), i8* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  call void @g_object_set_data(%struct._GObject* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  store %struct._GtkWidget* %40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.8, %if.else.3, %if.else
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %41
}

declare %struct._GtkWidget* @gimp_enum_radio_box_new_with_range(i64, i32, i32, void ()*, i8*, %struct._GtkWidget**) #2

declare %struct._GtkWidget* @gimp_enum_radio_box_new(i64, void ()*, i8*, %struct._GtkWidget**) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_enum_label_new(%struct._GObject* %config, i8* %property_name) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_enum_label_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_enum_label_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 10
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_enum_label_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 3
  %12 = load i64, i64* %value_type, align 8
  %13 = load i32, i32* %value, align 4
  %call10 = call %struct._GtkWidget* @gimp_enum_label_new(i64 %12, i32 %13)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %label, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %16, %struct._GtkWidget* %17, %struct._GParamSpec* %18)
  %19 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %20 = load i8*, i8** %property_name.addr, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  call void @connect_notify(%struct._GObject* %19, i8* %20, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_enum_label_notify to void ()*), i8* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  store %struct._GtkWidget* %23, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.else.3, %if.else
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GParamSpec* @check_param_spec(%struct._GObject* %object, i8* %property_name, i64 %type, i8* %strloc) #0 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %type.addr = alloca i64, align 8
  %strloc.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i8* %strloc, i8** %strloc.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i8*, i8** %strloc.addr, align 8
  %call = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %0, i8* %1, i8* %2)
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %5 = bitcast %struct._GParamSpec* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %type.addr, align 8
  %call1 = call i32 @g_type_is_a(i64 %7, i64 %8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8*, i8** %strloc.addr, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 4
  %13 = load i64, i64* %owner_type, align 8
  %call3 = call i8* @g_type_name(i64 %13)
  %14 = load i64, i64* %type.addr, align 8
  %call4 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0), i8* %9, i8* %11, i8* %call3, i8* %call4)
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %16
}

declare %struct._GtkWidget* @gimp_enum_label_new(i64, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_enum_label_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %label) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %label.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_enum_label_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnumLabel*
  %7 = load i32, i32* %value, align 4
  call void @gimp_enum_label_set_value(%struct._GimpEnumLabel* %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_boolean_radio_frame_new(%struct._GObject* %config, i8* %property_name, i8* %title, i8* %true_text, i8* %false_text) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %true_text.addr = alloca i8*, align 8
  %false_text.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %true_text, i8** %true_text.addr, align 8
  store i8* %false_text, i8** %false_text.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_prop_boolean_radio_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_prop_boolean_radio_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 2
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_prop_boolean_radio_frame_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %11 = load i8*, i8** %title.addr, align 8
  %12 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %13 = bitcast %struct._GObject* %12 to i8*
  %14 = load i32, i32* %value, align 4
  %15 = load i8*, i8** %false_text.addr, align 8
  %16 = load i8*, i8** %true_text.addr, align 8
  %call10 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %11, void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_radio_button_callback to void ()*), i8* %13, i32 %14, i8* %15, i32 0, %struct._GtkWidget** %button, i8* %16, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %frame, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_radio_spec(%struct._GObject* %19, %struct._GParamSpec* %20)
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = load i8*, i8** %property_name.addr, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  call void @connect_notify(%struct._GObject* %21, i8* %22, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_radio_button_notify to void ()*), i8* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  call void @g_object_set_data(%struct._GObject* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %30, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.else.3, %if.else
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %config, i8* %property_name, i8* %stock_prefix, i32 %minimum, i32 %maximum) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %stock_prefix.addr = alloca i8*, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %stock_prefix, i8** %stock_prefix.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_stock_box_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_stock_box_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 10
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_enum_stock_box_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %value, i8* null)
  %11 = load i32, i32* %minimum.addr, align 4
  %12 = load i32, i32* %maximum.addr, align 4
  %cmp10 = icmp ne i32 %11, %12
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 3
  %14 = load i64, i64* %value_type, align 8
  %15 = load i32, i32* %minimum.addr, align 4
  %16 = load i32, i32* %maximum.addr, align 4
  %17 = load i8*, i8** %stock_prefix.addr, align 8
  %18 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %19 = bitcast %struct._GObject* %18 to i8*
  %call12 = call %struct._GtkWidget* @gimp_enum_stock_box_new_with_range(i64 %14, i32 %15, i32 %16, i8* %17, i32 1, void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_radio_button_callback to void ()*), i8* %19, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %box, align 8
  br label %if.end.16

if.else.13:                                       ; preds = %if.end.9
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type14 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 3
  %21 = load i64, i64* %value_type14, align 8
  %22 = load i8*, i8** %stock_prefix.addr, align 8
  %23 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %24 = bitcast %struct._GObject* %23 to i8*
  %call15 = call %struct._GtkWidget* @gimp_enum_stock_box_new(i64 %21, i8* %22, i32 1, void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_radio_button_callback to void ()*), i8* %24, %struct._GtkWidget** %button)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %box, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.11
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_radio_button_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkRadioButton*
  %28 = load i32, i32* %value, align 4
  call void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %27, i32 %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_radio_spec(%struct._GObject* %31, %struct._GParamSpec* %32)
  %33 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %34 = load i8*, i8** %property_name.addr, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  call void @connect_notify(%struct._GObject* %33, i8* %34, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_radio_button_notify to void ()*), i8* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  store %struct._GtkWidget* %37, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.8, %if.else.3, %if.else
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %38
}

declare %struct._GtkWidget* @gimp_enum_stock_box_new_with_range(i64, i32, i32, i8*, i32, void ()*, i8*, %struct._GtkWidget**) #2

declare %struct._GtkWidget* @gimp_enum_stock_box_new(i64, i8*, i32, void ()*, i8*, %struct._GtkWidget**) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject* %config, i8* %property_name, double %step_increment, double %page_increment, i32 %digits) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %value = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %0, i8* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_spin_button_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call1 = call i32 @get_numeric_values(%struct._GObject* %3, %struct._GParamSpec* %4, double* %value, double* %lower, double* %upper, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_spin_button_new, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %7 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 13
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end.4
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.6
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %digits.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %20 = load double, double* %value, align 8
  %21 = load double, double* %lower, align 8
  %22 = load double, double* %upper, align 8
  %23 = load double, double* %step_increment.addr, align 8
  %24 = load double, double* %page_increment.addr, align 8
  %25 = load i32, i32* %digits.addr, align 4
  %call17 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %20, double %21, double %22, double %23, double %24, double 0.000000e+00, double 1.000000e+00, i32 %25)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %spinbutton, align 8
  %26 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %27 = bitcast %struct._GtkObject* %26 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %28, %struct._GtkWidget* %29, %struct._GParamSpec* %30)
  %31 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %32 = bitcast %struct._GtkObject* %31 to i8*
  %33 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %34 = bitcast %struct._GObject* %33 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GObject*)* @gimp_prop_adjustment_callback to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %36 = load i8*, i8** %property_name.addr, align 8
  %37 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %38 = bitcast %struct._GtkObject* %37 to i8*
  call void @connect_notify(%struct._GObject* %35, i8* %36, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkAdjustment*)* @gimp_prop_adjustment_notify to void ()*), i8* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  store %struct._GtkWidget* %39, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.3, %if.then
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %40
}

; Function Attrs: nounwind uwtable
define internal %struct._GParamSpec* @find_param_spec(%struct._GObject* %object, i8* %property_name, i8* %strloc) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %strloc.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %strloc, i8** %strloc.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GObjectClass*
  %4 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %3, i8* %4)
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %strloc.addr, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %8 = bitcast %struct._GObject* %7 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %10)
  %11 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0), i8* %6, i8* %call2, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  ret %struct._GParamSpec* %12
}

; Function Attrs: nounwind uwtable
define internal i32 @get_numeric_values(%struct._GObject* %object, %struct._GParamSpec* %param_spec, double* %value, double* %lower, double* %upper, i8* %strloc) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca double*, align 8
  %lower.addr = alloca double*, align 8
  %upper.addr = alloca double*, align 8
  %strloc.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %int_spec = alloca %struct._GParamSpecInt*, align 8
  %int_value = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %uint_spec = alloca %struct._GParamSpecUInt*, align 8
  %uint_value = alloca i32, align 4
  %__inst52 = alloca %struct._GTypeInstance*, align 8
  %__t54 = alloca i64, align 8
  %__r57 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  %double_spec = alloca %struct._GParamSpecDouble*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store double* %value, double** %value.addr, align 8
  store double* %lower, double** %lower.addr, align 8
  store double* %upper, double** %upper.addr, align 8
  store i8* %strloc, i8** %strloc.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 3
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.then.7, label %if.else.14

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  %17 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %17, i64 3
  %18 = load i64, i64* %arrayidx9, align 8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %18)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GParamSpecInt*
  store %struct._GParamSpecInt* %19, %struct._GParamSpecInt** %int_spec, align 8
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %21, i8* %23, i32* %int_value, i8* null)
  %24 = load i32, i32* %int_value, align 4
  %conv = sitofp i32 %24 to double
  %25 = load double*, double** %value.addr, align 8
  store double %conv, double* %25, align 8
  %26 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %int_spec, align 8
  %minimum = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %26, i32 0, i32 1
  %27 = load i32, i32* %minimum, align 4
  %conv12 = sitofp i32 %27 to double
  %28 = load double*, double** %lower.addr, align 8
  store double %conv12, double* %28, align 8
  %29 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %int_spec, align 8
  %maximum = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %29, i32 0, i32 2
  %30 = load i32, i32* %maximum, align 4
  %conv13 = sitofp i32 %30 to double
  %31 = load double*, double** %upper.addr, align 8
  store double %conv13, double* %31, align 8
  br label %if.end.89

if.else.14:                                       ; preds = %if.end.5
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %33 = bitcast %struct._GParamSpec* %32 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %33, %struct._GTypeInstance** %__inst16, align 8
  %34 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %34, i64 4
  %35 = load i64, i64* %arrayidx19, align 8
  store i64 %35, i64* %__t18, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.else.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.36

if.else.24:                                       ; preds = %if.else.14
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.33

land.lhs.true.27:                                 ; preds = %if.else.24
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type29, align 8
  %42 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %41, %42
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.35

if.else.33:                                       ; preds = %land.lhs.true.27, %if.else.24
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %44 = load i64, i64* %__t18, align 8
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #7
  store i32 %call34, i32* %__r21, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.23
  %45 = load i32, i32* %__r21, align 4
  store i32 %45, i32* %tmp37
  %46 = load i32, i32* %tmp37
  %tobool38 = icmp ne i32 %46, 0
  br i1 %tobool38, label %if.then.39, label %if.else.50

if.then.39:                                       ; preds = %if.end.36
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %48 = bitcast %struct._GParamSpec* %47 to %struct._GTypeInstance*
  %49 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %49, i64 4
  %50 = load i64, i64* %arrayidx41, align 8
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %50)
  %51 = bitcast %struct._GTypeInstance* %call42 to %struct._GParamSpecUInt*
  store %struct._GParamSpecUInt* %51, %struct._GParamSpecUInt** %uint_spec, align 8
  %52 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %53 = bitcast %struct._GObject* %52 to i8*
  %54 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name44 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %54, i32 0, i32 1
  %55 = load i8*, i8** %name44, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %53, i8* %55, i32* %uint_value, i8* null)
  %56 = load i32, i32* %uint_value, align 4
  %conv45 = uitofp i32 %56 to double
  %57 = load double*, double** %value.addr, align 8
  store double %conv45, double* %57, align 8
  %58 = load %struct._GParamSpecUInt*, %struct._GParamSpecUInt** %uint_spec, align 8
  %minimum46 = getelementptr inbounds %struct._GParamSpecUInt, %struct._GParamSpecUInt* %58, i32 0, i32 1
  %59 = load i32, i32* %minimum46, align 4
  %conv47 = uitofp i32 %59 to double
  %60 = load double*, double** %lower.addr, align 8
  store double %conv47, double* %60, align 8
  %61 = load %struct._GParamSpecUInt*, %struct._GParamSpecUInt** %uint_spec, align 8
  %maximum48 = getelementptr inbounds %struct._GParamSpecUInt, %struct._GParamSpecUInt* %61, i32 0, i32 2
  %62 = load i32, i32* %maximum48, align 4
  %conv49 = uitofp i32 %62 to double
  %63 = load double*, double** %upper.addr, align 8
  store double %conv49, double* %63, align 8
  br label %if.end.88

if.else.50:                                       ; preds = %if.end.36
  %64 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %65 = bitcast %struct._GParamSpec* %64 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %65, %struct._GTypeInstance** %__inst52, align 8
  %66 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx55 = getelementptr inbounds i64, i64* %66, i64 13
  %67 = load i64, i64* %arrayidx55, align 8
  store i64 %67, i64* %__t54, align 8
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst52, align 8
  %tobool58 = icmp ne %struct._GTypeInstance* %68, null
  br i1 %tobool58, label %if.else.60, label %if.then.59

if.then.59:                                       ; preds = %if.else.50
  store i32 0, i32* %__r57, align 4
  br label %if.end.72

if.else.60:                                       ; preds = %if.else.50
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst52, align 8
  %g_class61 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class61, align 8
  %tobool62 = icmp ne %struct._GTypeClass* %70, null
  br i1 %tobool62, label %land.lhs.true.63, label %if.else.69

land.lhs.true.63:                                 ; preds = %if.else.60
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst52, align 8
  %g_class64 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class64, align 8
  %g_type65 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %72, i32 0, i32 0
  %73 = load i64, i64* %g_type65, align 8
  %74 = load i64, i64* %__t54, align 8
  %cmp66 = icmp eq i64 %73, %74
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.63
  store i32 1, i32* %__r57, align 4
  br label %if.end.71

if.else.69:                                       ; preds = %land.lhs.true.63, %if.else.60
  %75 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst52, align 8
  %76 = load i64, i64* %__t54, align 8
  %call70 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %75, i64 %76) #7
  store i32 %call70, i32* %__r57, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.59
  %77 = load i32, i32* %__r57, align 4
  store i32 %77, i32* %tmp73
  %78 = load i32, i32* %tmp73
  %tobool74 = icmp ne i32 %78, 0
  br i1 %tobool74, label %if.then.75, label %if.else.82

if.then.75:                                       ; preds = %if.end.72
  %79 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %80 = bitcast %struct._GParamSpec* %79 to %struct._GTypeInstance*
  %81 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %81, i64 13
  %82 = load i64, i64* %arrayidx77, align 8
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %82)
  %83 = bitcast %struct._GTypeInstance* %call78 to %struct._GParamSpecDouble*
  store %struct._GParamSpecDouble* %83, %struct._GParamSpecDouble** %double_spec, align 8
  %84 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %85 = bitcast %struct._GObject* %84 to i8*
  %86 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name79 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %86, i32 0, i32 1
  %87 = load i8*, i8** %name79, align 8
  %88 = load double*, double** %value.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %85, i8* %87, double* %88, i8* null)
  %89 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %double_spec, align 8
  %minimum80 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %89, i32 0, i32 1
  %90 = load double, double* %minimum80, align 8
  %91 = load double*, double** %lower.addr, align 8
  store double %90, double* %91, align 8
  %92 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %double_spec, align 8
  %maximum81 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %92, i32 0, i32 2
  %93 = load double, double* %maximum81, align 8
  %94 = load double*, double** %upper.addr, align 8
  store double %93, double* %94, align 8
  br label %if.end.87

if.else.82:                                       ; preds = %if.end.72
  %95 = load i8*, i8** %strloc.addr, align 8
  %96 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name83 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %96, i32 0, i32 1
  %97 = load i8*, i8** %name83, align 8
  %98 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %99 = bitcast %struct._GObject* %98 to %struct._GTypeInstance*
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %99, i32 0, i32 0
  %100 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %g_type85 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %100, i32 0, i32 0
  %101 = load i64, i64* %g_type85, align 8
  %call86 = call i8* @g_type_name(i64 %101)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* %95, i8* %97, i8* %call86)
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.75
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.39
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.else.82
  %102 = load i32, i32* %retval
  ret i32 %102
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_adjustment_callback(%struct._GtkAdjustment* %adjustment, %struct._GObject* %config) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %__inst72 = alloca %struct._GTypeInstance*, align 8
  %__t74 = alloca i64, align 8
  %__r77 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  %__inst100 = alloca %struct._GTypeInstance*, align 8
  %__t102 = alloca i64, align 8
  %__r105 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  %__inst128 = alloca %struct._GTypeInstance*, align 8
  %__t130 = alloca i64, align 8
  %__r133 = alloca i32, align 4
  %tmp149 = alloca i32, align 4
  %__inst156 = alloca %struct._GTypeInstance*, align 8
  %__t158 = alloca i64, align 8
  %__r161 = alloca i32, align 4
  %tmp177 = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = bitcast %struct._GtkAdjustment* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.193

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  store double %call2, double* %value, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %7 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 3
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.4
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name, align 8
  %24 = load double, double* %value, align 8
  %conv = fptosi double %24 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %21, i8* %23, i32 %conv, i8* null)
  br label %if.end.193

if.else.14:                                       ; preds = %if.end.11
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %26, %struct._GTypeInstance** %__inst16, align 8
  %27 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %27, i64 4
  %28 = load i64, i64* %arrayidx19, align 8
  store i64 %28, i64* %__t18, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.else.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.36

if.else.24:                                       ; preds = %if.else.14
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.33

land.lhs.true.27:                                 ; preds = %if.else.24
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type29, align 8
  %35 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %34, %35
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.35

if.else.33:                                       ; preds = %land.lhs.true.27, %if.else.24
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %37 = load i64, i64* %__t18, align 8
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #7
  store i32 %call34, i32* %__r21, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.23
  %38 = load i32, i32* %__r21, align 4
  store i32 %38, i32* %tmp37
  %39 = load i32, i32* %tmp37
  %tobool38 = icmp ne i32 %39, 0
  br i1 %tobool38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.end.36
  %40 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %41 = bitcast %struct._GObject* %40 to i8*
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name40 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %42, i32 0, i32 1
  %43 = load i8*, i8** %name40, align 8
  %44 = load double, double* %value, align 8
  %conv41 = fptoui double %44 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %41, i8* %43, i32 %conv41, i8* null)
  br label %if.end.192

if.else.42:                                       ; preds = %if.end.36
  %45 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %46 = bitcast %struct._GParamSpec* %45 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %46, %struct._GTypeInstance** %__inst44, align 8
  %47 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %47, i64 5
  %48 = load i64, i64* %arrayidx47, align 8
  store i64 %48, i64* %__t46, align 8
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %49, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.else.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.64

if.else.52:                                       ; preds = %if.else.42
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %51, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.61

land.lhs.true.55:                                 ; preds = %if.else.52
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %52, i32 0, i32 0
  %53 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %53, i32 0, i32 0
  %54 = load i64, i64* %g_type57, align 8
  %55 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %54, %55
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.63

if.else.61:                                       ; preds = %land.lhs.true.55, %if.else.52
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %57 = load i64, i64* %__t46, align 8
  %call62 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %56, i64 %57) #7
  store i32 %call62, i32* %__r49, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.60
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.51
  %58 = load i32, i32* %__r49, align 4
  store i32 %58, i32* %tmp65
  %59 = load i32, i32* %tmp65
  %tobool66 = icmp ne i32 %59, 0
  br i1 %tobool66, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.end.64
  %60 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %61 = bitcast %struct._GObject* %60 to i8*
  %62 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name68 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %62, i32 0, i32 1
  %63 = load i8*, i8** %name68, align 8
  %64 = load double, double* %value, align 8
  %conv69 = fptosi double %64 to i64
  call void (i8*, i8*, ...) @g_object_set(i8* %61, i8* %63, i64 %conv69, i8* null)
  br label %if.end.191

if.else.70:                                       ; preds = %if.end.64
  %65 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %66 = bitcast %struct._GParamSpec* %65 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %66, %struct._GTypeInstance** %__inst72, align 8
  %67 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx75 = getelementptr inbounds i64, i64* %67, i64 6
  %68 = load i64, i64* %arrayidx75, align 8
  store i64 %68, i64* %__t74, align 8
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst72, align 8
  %tobool78 = icmp ne %struct._GTypeInstance* %69, null
  br i1 %tobool78, label %if.else.80, label %if.then.79

if.then.79:                                       ; preds = %if.else.70
  store i32 0, i32* %__r77, align 4
  br label %if.end.92

if.else.80:                                       ; preds = %if.else.70
  %70 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst72, align 8
  %g_class81 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %70, i32 0, i32 0
  %71 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class81, align 8
  %tobool82 = icmp ne %struct._GTypeClass* %71, null
  br i1 %tobool82, label %land.lhs.true.83, label %if.else.89

land.lhs.true.83:                                 ; preds = %if.else.80
  %72 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst72, align 8
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %72, i32 0, i32 0
  %73 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %g_type85 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %73, i32 0, i32 0
  %74 = load i64, i64* %g_type85, align 8
  %75 = load i64, i64* %__t74, align 8
  %cmp86 = icmp eq i64 %74, %75
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %land.lhs.true.83
  store i32 1, i32* %__r77, align 4
  br label %if.end.91

if.else.89:                                       ; preds = %land.lhs.true.83, %if.else.80
  %76 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst72, align 8
  %77 = load i64, i64* %__t74, align 8
  %call90 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %76, i64 %77) #7
  store i32 %call90, i32* %__r77, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.79
  %78 = load i32, i32* %__r77, align 4
  store i32 %78, i32* %tmp93
  %79 = load i32, i32* %tmp93
  %tobool94 = icmp ne i32 %79, 0
  br i1 %tobool94, label %if.then.95, label %if.else.98

if.then.95:                                       ; preds = %if.end.92
  %80 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %81 = bitcast %struct._GObject* %80 to i8*
  %82 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name96 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %82, i32 0, i32 1
  %83 = load i8*, i8** %name96, align 8
  %84 = load double, double* %value, align 8
  %conv97 = fptoui double %84 to i64
  call void (i8*, i8*, ...) @g_object_set(i8* %81, i8* %83, i64 %conv97, i8* null)
  br label %if.end.190

if.else.98:                                       ; preds = %if.end.92
  %85 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %86 = bitcast %struct._GParamSpec* %85 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %86, %struct._GTypeInstance** %__inst100, align 8
  %87 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx103 = getelementptr inbounds i64, i64* %87, i64 7
  %88 = load i64, i64* %arrayidx103, align 8
  store i64 %88, i64* %__t102, align 8
  %89 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst100, align 8
  %tobool106 = icmp ne %struct._GTypeInstance* %89, null
  br i1 %tobool106, label %if.else.108, label %if.then.107

if.then.107:                                      ; preds = %if.else.98
  store i32 0, i32* %__r105, align 4
  br label %if.end.120

if.else.108:                                      ; preds = %if.else.98
  %90 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst100, align 8
  %g_class109 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %90, i32 0, i32 0
  %91 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class109, align 8
  %tobool110 = icmp ne %struct._GTypeClass* %91, null
  br i1 %tobool110, label %land.lhs.true.111, label %if.else.117

land.lhs.true.111:                                ; preds = %if.else.108
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst100, align 8
  %g_class112 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %92, i32 0, i32 0
  %93 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class112, align 8
  %g_type113 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %93, i32 0, i32 0
  %94 = load i64, i64* %g_type113, align 8
  %95 = load i64, i64* %__t102, align 8
  %cmp114 = icmp eq i64 %94, %95
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %land.lhs.true.111
  store i32 1, i32* %__r105, align 4
  br label %if.end.119

if.else.117:                                      ; preds = %land.lhs.true.111, %if.else.108
  %96 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst100, align 8
  %97 = load i64, i64* %__t102, align 8
  %call118 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %96, i64 %97) #7
  store i32 %call118, i32* %__r105, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.then.116
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.107
  %98 = load i32, i32* %__r105, align 4
  store i32 %98, i32* %tmp121
  %99 = load i32, i32* %tmp121
  %tobool122 = icmp ne i32 %99, 0
  br i1 %tobool122, label %if.then.123, label %if.else.126

if.then.123:                                      ; preds = %if.end.120
  %100 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %101 = bitcast %struct._GObject* %100 to i8*
  %102 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name124 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %102, i32 0, i32 1
  %103 = load i8*, i8** %name124, align 8
  %104 = load double, double* %value, align 8
  %conv125 = fptosi double %104 to i64
  call void (i8*, i8*, ...) @g_object_set(i8* %101, i8* %103, i64 %conv125, i8* null)
  br label %if.end.189

if.else.126:                                      ; preds = %if.end.120
  %105 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %106 = bitcast %struct._GParamSpec* %105 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %106, %struct._GTypeInstance** %__inst128, align 8
  %107 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx131 = getelementptr inbounds i64, i64* %107, i64 8
  %108 = load i64, i64* %arrayidx131, align 8
  store i64 %108, i64* %__t130, align 8
  %109 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst128, align 8
  %tobool134 = icmp ne %struct._GTypeInstance* %109, null
  br i1 %tobool134, label %if.else.136, label %if.then.135

if.then.135:                                      ; preds = %if.else.126
  store i32 0, i32* %__r133, align 4
  br label %if.end.148

if.else.136:                                      ; preds = %if.else.126
  %110 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst128, align 8
  %g_class137 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %110, i32 0, i32 0
  %111 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class137, align 8
  %tobool138 = icmp ne %struct._GTypeClass* %111, null
  br i1 %tobool138, label %land.lhs.true.139, label %if.else.145

land.lhs.true.139:                                ; preds = %if.else.136
  %112 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst128, align 8
  %g_class140 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %112, i32 0, i32 0
  %113 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class140, align 8
  %g_type141 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %113, i32 0, i32 0
  %114 = load i64, i64* %g_type141, align 8
  %115 = load i64, i64* %__t130, align 8
  %cmp142 = icmp eq i64 %114, %115
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %land.lhs.true.139
  store i32 1, i32* %__r133, align 4
  br label %if.end.147

if.else.145:                                      ; preds = %land.lhs.true.139, %if.else.136
  %116 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst128, align 8
  %117 = load i64, i64* %__t130, align 8
  %call146 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %116, i64 %117) #7
  store i32 %call146, i32* %__r133, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.145, %if.then.144
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.135
  %118 = load i32, i32* %__r133, align 4
  store i32 %118, i32* %tmp149
  %119 = load i32, i32* %tmp149
  %tobool150 = icmp ne i32 %119, 0
  br i1 %tobool150, label %if.then.151, label %if.else.154

if.then.151:                                      ; preds = %if.end.148
  %120 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %121 = bitcast %struct._GObject* %120 to i8*
  %122 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name152 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %122, i32 0, i32 1
  %123 = load i8*, i8** %name152, align 8
  %124 = load double, double* %value, align 8
  %conv153 = fptoui double %124 to i64
  call void (i8*, i8*, ...) @g_object_set(i8* %121, i8* %123, i64 %conv153, i8* null)
  br label %if.end.188

if.else.154:                                      ; preds = %if.end.148
  %125 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %126 = bitcast %struct._GParamSpec* %125 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %126, %struct._GTypeInstance** %__inst156, align 8
  %127 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx159 = getelementptr inbounds i64, i64* %127, i64 13
  %128 = load i64, i64* %arrayidx159, align 8
  store i64 %128, i64* %__t158, align 8
  %129 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst156, align 8
  %tobool162 = icmp ne %struct._GTypeInstance* %129, null
  br i1 %tobool162, label %if.else.164, label %if.then.163

if.then.163:                                      ; preds = %if.else.154
  store i32 0, i32* %__r161, align 4
  br label %if.end.176

if.else.164:                                      ; preds = %if.else.154
  %130 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst156, align 8
  %g_class165 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %130, i32 0, i32 0
  %131 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class165, align 8
  %tobool166 = icmp ne %struct._GTypeClass* %131, null
  br i1 %tobool166, label %land.lhs.true.167, label %if.else.173

land.lhs.true.167:                                ; preds = %if.else.164
  %132 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst156, align 8
  %g_class168 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %132, i32 0, i32 0
  %133 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class168, align 8
  %g_type169 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %133, i32 0, i32 0
  %134 = load i64, i64* %g_type169, align 8
  %135 = load i64, i64* %__t158, align 8
  %cmp170 = icmp eq i64 %134, %135
  br i1 %cmp170, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %land.lhs.true.167
  store i32 1, i32* %__r161, align 4
  br label %if.end.175

if.else.173:                                      ; preds = %land.lhs.true.167, %if.else.164
  %136 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst156, align 8
  %137 = load i64, i64* %__t158, align 8
  %call174 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %136, i64 %137) #7
  store i32 %call174, i32* %__r161, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.173, %if.then.172
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.163
  %138 = load i32, i32* %__r161, align 4
  store i32 %138, i32* %tmp177
  %139 = load i32, i32* %tmp177
  %tobool178 = icmp ne i32 %139, 0
  br i1 %tobool178, label %if.then.179, label %if.end.187

if.then.179:                                      ; preds = %if.end.176
  %140 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %141 = bitcast %struct._GtkAdjustment* %140 to %struct._GTypeInstance*
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 80)
  %142 = bitcast %struct._GTypeInstance* %call180 to %struct._GObject*
  %call181 = call i8* @g_object_get_data(%struct._GObject* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  %143 = ptrtoint i8* %call181 to i64
  %conv182 = trunc i64 %143 to i32
  %tobool183 = icmp ne i32 %conv182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.then.179
  %144 = load double, double* %value, align 8
  %div = fdiv double %144, 1.000000e+02
  store double %div, double* %value, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %if.then.179
  %145 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %146 = bitcast %struct._GObject* %145 to i8*
  %147 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name186 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %147, i32 0, i32 1
  %148 = load i8*, i8** %name186, align 8
  %149 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %146, i8* %148, double %149, i8* null)
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.185, %if.end.176
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.151
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.123
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.95
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.67
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.39
  br label %if.end.193

if.end.193:                                       ; preds = %if.then, %if.end.192, %if.then.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_adjustment_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkAdjustment* %adjustment) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %int_value = alloca i32, align 4
  %__inst11 = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %uint_value = alloca i32, align 4
  %__inst40 = alloca %struct._GTypeInstance*, align 8
  %__t42 = alloca i64, align 8
  %__r45 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %long_value = alloca i64, align 8
  %__inst69 = alloca %struct._GTypeInstance*, align 8
  %__t71 = alloca i64, align 8
  %__r74 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  %ulong_value = alloca i64, align 8
  %__inst98 = alloca %struct._GTypeInstance*, align 8
  %__t100 = alloca i64, align 8
  %__r103 = alloca i32, align 4
  %tmp119 = alloca i32, align 4
  %int64_value = alloca i64, align 8
  %__inst127 = alloca %struct._GTypeInstance*, align 8
  %__t129 = alloca i64, align 8
  %__r132 = alloca i32, align 4
  %tmp148 = alloca i32, align 4
  %uint64_value = alloca i64, align 8
  %__inst156 = alloca %struct._GTypeInstance*, align 8
  %__t158 = alloca i64, align 8
  %__r161 = alloca i32, align 4
  %tmp177 = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 3
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %16, i8* %18, i32* %int_value, i8* null)
  %19 = load i32, i32* %int_value, align 4
  %conv = sitofp i32 %19 to double
  store double %conv, double* %value, align 8
  br label %if.end.197

if.else.9:                                        ; preds = %if.end.5
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %21, %struct._GTypeInstance** %__inst11, align 8
  %22 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %22, i64 4
  %23 = load i64, i64* %arrayidx14, align 8
  store i64 %23, i64* %__t13, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst11, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %if.else.9
  store i32 0, i32* %__r16, align 4
  br label %if.end.31

if.else.19:                                       ; preds = %if.else.9
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst11, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %tobool21 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.else.28

land.lhs.true.22:                                 ; preds = %if.else.19
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst11, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %g_type24 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type24, align 8
  %30 = load i64, i64* %__t13, align 8
  %cmp25 = icmp eq i64 %29, %30
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.22
  store i32 1, i32* %__r16, align 4
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true.22, %if.else.19
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst11, align 8
  %32 = load i64, i64* %__t13, align 8
  %call29 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #7
  store i32 %call29, i32* %__r16, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.18
  %33 = load i32, i32* %__r16, align 4
  store i32 %33, i32* %tmp32
  %34 = load i32, i32* %tmp32
  %tobool33 = icmp ne i32 %34, 0
  br i1 %tobool33, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.end.31
  %35 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %36 = bitcast %struct._GObject* %35 to i8*
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name36 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %37, i32 0, i32 1
  %38 = load i8*, i8** %name36, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %36, i8* %38, i32* %uint_value, i8* null)
  %39 = load i32, i32* %uint_value, align 4
  %conv37 = uitofp i32 %39 to double
  store double %conv37, double* %value, align 8
  br label %if.end.196

if.else.38:                                       ; preds = %if.end.31
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %41 = bitcast %struct._GParamSpec* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst40, align 8
  %42 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %42, i64 5
  %43 = load i64, i64* %arrayidx43, align 8
  store i64 %43, i64* %__t42, align 8
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %tobool46 = icmp ne %struct._GTypeInstance* %44, null
  br i1 %tobool46, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %if.else.38
  store i32 0, i32* %__r45, align 4
  br label %if.end.60

if.else.48:                                       ; preds = %if.else.38
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %tobool50 = icmp ne %struct._GTypeClass* %46, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.57

land.lhs.true.51:                                 ; preds = %if.else.48
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %g_type53 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type53, align 8
  %50 = load i64, i64* %__t42, align 8
  %cmp54 = icmp eq i64 %49, %50
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.51
  store i32 1, i32* %__r45, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.51, %if.else.48
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %52 = load i64, i64* %__t42, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %51, i64 %52) #7
  store i32 %call58, i32* %__r45, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.47
  %53 = load i32, i32* %__r45, align 4
  store i32 %53, i32* %tmp61
  %54 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %54, 0
  br i1 %tobool62, label %if.then.63, label %if.else.67

if.then.63:                                       ; preds = %if.end.60
  %55 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %56 = bitcast %struct._GObject* %55 to i8*
  %57 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name65 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %57, i32 0, i32 1
  %58 = load i8*, i8** %name65, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %56, i8* %58, i64* %long_value, i8* null)
  %59 = load i64, i64* %long_value, align 8
  %conv66 = sitofp i64 %59 to double
  store double %conv66, double* %value, align 8
  br label %if.end.195

if.else.67:                                       ; preds = %if.end.60
  %60 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %61 = bitcast %struct._GParamSpec* %60 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %61, %struct._GTypeInstance** %__inst69, align 8
  %62 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %62, i64 6
  %63 = load i64, i64* %arrayidx72, align 8
  store i64 %63, i64* %__t71, align 8
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %tobool75 = icmp ne %struct._GTypeInstance* %64, null
  br i1 %tobool75, label %if.else.77, label %if.then.76

if.then.76:                                       ; preds = %if.else.67
  store i32 0, i32* %__r74, align 4
  br label %if.end.89

if.else.77:                                       ; preds = %if.else.67
  %65 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %g_class78 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %65, i32 0, i32 0
  %66 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class78, align 8
  %tobool79 = icmp ne %struct._GTypeClass* %66, null
  br i1 %tobool79, label %land.lhs.true.80, label %if.else.86

land.lhs.true.80:                                 ; preds = %if.else.77
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %g_class81 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class81, align 8
  %g_type82 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %68, i32 0, i32 0
  %69 = load i64, i64* %g_type82, align 8
  %70 = load i64, i64* %__t71, align 8
  %cmp83 = icmp eq i64 %69, %70
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.80
  store i32 1, i32* %__r74, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.80, %if.else.77
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %72 = load i64, i64* %__t71, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %71, i64 %72) #7
  store i32 %call87, i32* %__r74, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.76
  %73 = load i32, i32* %__r74, align 4
  store i32 %73, i32* %tmp90
  %74 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %74, 0
  br i1 %tobool91, label %if.then.92, label %if.else.96

if.then.92:                                       ; preds = %if.end.89
  %75 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %76 = bitcast %struct._GObject* %75 to i8*
  %77 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name94 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %77, i32 0, i32 1
  %78 = load i8*, i8** %name94, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %76, i8* %78, i64* %ulong_value, i8* null)
  %79 = load i64, i64* %ulong_value, align 8
  %conv95 = uitofp i64 %79 to double
  store double %conv95, double* %value, align 8
  br label %if.end.194

if.else.96:                                       ; preds = %if.end.89
  %80 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %81 = bitcast %struct._GParamSpec* %80 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %81, %struct._GTypeInstance** %__inst98, align 8
  %82 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx101 = getelementptr inbounds i64, i64* %82, i64 7
  %83 = load i64, i64* %arrayidx101, align 8
  store i64 %83, i64* %__t100, align 8
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst98, align 8
  %tobool104 = icmp ne %struct._GTypeInstance* %84, null
  br i1 %tobool104, label %if.else.106, label %if.then.105

if.then.105:                                      ; preds = %if.else.96
  store i32 0, i32* %__r103, align 4
  br label %if.end.118

if.else.106:                                      ; preds = %if.else.96
  %85 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst98, align 8
  %g_class107 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %85, i32 0, i32 0
  %86 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class107, align 8
  %tobool108 = icmp ne %struct._GTypeClass* %86, null
  br i1 %tobool108, label %land.lhs.true.109, label %if.else.115

land.lhs.true.109:                                ; preds = %if.else.106
  %87 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst98, align 8
  %g_class110 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %87, i32 0, i32 0
  %88 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class110, align 8
  %g_type111 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %88, i32 0, i32 0
  %89 = load i64, i64* %g_type111, align 8
  %90 = load i64, i64* %__t100, align 8
  %cmp112 = icmp eq i64 %89, %90
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %land.lhs.true.109
  store i32 1, i32* %__r103, align 4
  br label %if.end.117

if.else.115:                                      ; preds = %land.lhs.true.109, %if.else.106
  %91 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst98, align 8
  %92 = load i64, i64* %__t100, align 8
  %call116 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %91, i64 %92) #7
  store i32 %call116, i32* %__r103, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.115, %if.then.114
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.105
  %93 = load i32, i32* %__r103, align 4
  store i32 %93, i32* %tmp119
  %94 = load i32, i32* %tmp119
  %tobool120 = icmp ne i32 %94, 0
  br i1 %tobool120, label %if.then.121, label %if.else.125

if.then.121:                                      ; preds = %if.end.118
  %95 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %96 = bitcast %struct._GObject* %95 to i8*
  %97 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name123 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %97, i32 0, i32 1
  %98 = load i8*, i8** %name123, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %96, i8* %98, i64* %int64_value, i8* null)
  %99 = load i64, i64* %int64_value, align 8
  %conv124 = sitofp i64 %99 to double
  store double %conv124, double* %value, align 8
  br label %if.end.193

if.else.125:                                      ; preds = %if.end.118
  %100 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %101 = bitcast %struct._GParamSpec* %100 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %101, %struct._GTypeInstance** %__inst127, align 8
  %102 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx130 = getelementptr inbounds i64, i64* %102, i64 8
  %103 = load i64, i64* %arrayidx130, align 8
  store i64 %103, i64* %__t129, align 8
  %104 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst127, align 8
  %tobool133 = icmp ne %struct._GTypeInstance* %104, null
  br i1 %tobool133, label %if.else.135, label %if.then.134

if.then.134:                                      ; preds = %if.else.125
  store i32 0, i32* %__r132, align 4
  br label %if.end.147

if.else.135:                                      ; preds = %if.else.125
  %105 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst127, align 8
  %g_class136 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %105, i32 0, i32 0
  %106 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class136, align 8
  %tobool137 = icmp ne %struct._GTypeClass* %106, null
  br i1 %tobool137, label %land.lhs.true.138, label %if.else.144

land.lhs.true.138:                                ; preds = %if.else.135
  %107 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst127, align 8
  %g_class139 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %107, i32 0, i32 0
  %108 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class139, align 8
  %g_type140 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %108, i32 0, i32 0
  %109 = load i64, i64* %g_type140, align 8
  %110 = load i64, i64* %__t129, align 8
  %cmp141 = icmp eq i64 %109, %110
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %land.lhs.true.138
  store i32 1, i32* %__r132, align 4
  br label %if.end.146

if.else.144:                                      ; preds = %land.lhs.true.138, %if.else.135
  %111 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst127, align 8
  %112 = load i64, i64* %__t129, align 8
  %call145 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %111, i64 %112) #7
  store i32 %call145, i32* %__r132, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %if.then.143
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.134
  %113 = load i32, i32* %__r132, align 4
  store i32 %113, i32* %tmp148
  %114 = load i32, i32* %tmp148
  %tobool149 = icmp ne i32 %114, 0
  br i1 %tobool149, label %if.then.150, label %if.else.154

if.then.150:                                      ; preds = %if.end.147
  %115 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %116 = bitcast %struct._GObject* %115 to i8*
  %117 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name152 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %117, i32 0, i32 1
  %118 = load i8*, i8** %name152, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %116, i8* %118, i64* %uint64_value, i8* null)
  %119 = load i64, i64* %uint64_value, align 8
  %conv153 = uitofp i64 %119 to double
  store double %conv153, double* %value, align 8
  br label %if.end.192

if.else.154:                                      ; preds = %if.end.147
  %120 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %121 = bitcast %struct._GParamSpec* %120 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %121, %struct._GTypeInstance** %__inst156, align 8
  %122 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx159 = getelementptr inbounds i64, i64* %122, i64 13
  %123 = load i64, i64* %arrayidx159, align 8
  store i64 %123, i64* %__t158, align 8
  %124 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst156, align 8
  %tobool162 = icmp ne %struct._GTypeInstance* %124, null
  br i1 %tobool162, label %if.else.164, label %if.then.163

if.then.163:                                      ; preds = %if.else.154
  store i32 0, i32* %__r161, align 4
  br label %if.end.176

if.else.164:                                      ; preds = %if.else.154
  %125 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst156, align 8
  %g_class165 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %125, i32 0, i32 0
  %126 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class165, align 8
  %tobool166 = icmp ne %struct._GTypeClass* %126, null
  br i1 %tobool166, label %land.lhs.true.167, label %if.else.173

land.lhs.true.167:                                ; preds = %if.else.164
  %127 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst156, align 8
  %g_class168 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %127, i32 0, i32 0
  %128 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class168, align 8
  %g_type169 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %128, i32 0, i32 0
  %129 = load i64, i64* %g_type169, align 8
  %130 = load i64, i64* %__t158, align 8
  %cmp170 = icmp eq i64 %129, %130
  br i1 %cmp170, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %land.lhs.true.167
  store i32 1, i32* %__r161, align 4
  br label %if.end.175

if.else.173:                                      ; preds = %land.lhs.true.167, %if.else.164
  %131 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst156, align 8
  %132 = load i64, i64* %__t158, align 8
  %call174 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %131, i64 %132) #7
  store i32 %call174, i32* %__r161, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.173, %if.then.172
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.163
  %133 = load i32, i32* %__r161, align 4
  store i32 %133, i32* %tmp177
  %134 = load i32, i32* %tmp177
  %tobool178 = icmp ne i32 %134, 0
  br i1 %tobool178, label %if.then.179, label %if.else.187

if.then.179:                                      ; preds = %if.end.176
  %135 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %136 = bitcast %struct._GObject* %135 to i8*
  %137 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name180 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %137, i32 0, i32 1
  %138 = load i8*, i8** %name180, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %136, i8* %138, double* %value, i8* null)
  %139 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %140 = bitcast %struct._GtkAdjustment* %139 to %struct._GTypeInstance*
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 80)
  %141 = bitcast %struct._GTypeInstance* %call181 to %struct._GObject*
  %call182 = call i8* @g_object_get_data(%struct._GObject* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  %142 = ptrtoint i8* %call182 to i64
  %conv183 = trunc i64 %142 to i32
  %tobool184 = icmp ne i32 %conv183, 0
  br i1 %tobool184, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.then.179
  %143 = load double, double* %value, align 8
  %mul = fmul double %143, 1.000000e+02
  store double %mul, double* %value, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.then.179
  br label %if.end.191

if.else.187:                                      ; preds = %if.end.176
  %144 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %145 = bitcast %struct._GParamSpec* %144 to %struct._GTypeInstance*
  %g_class188 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %145, i32 0, i32 0
  %146 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class188, align 8
  %g_type189 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %146, i32 0, i32 0
  %147 = load i64, i64* %g_type189, align 8
  %call190 = call i8* @g_type_name(i64 %147)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_adjustment_notify, i32 0, i32 0), i8* %call190)
  br label %if.end.204

if.end.191:                                       ; preds = %if.end.186
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.150
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.121
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.92
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.63
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.34
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.7
  %148 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call198 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %148)
  %149 = load double, double* %value, align 8
  %cmp199 = fcmp une double %call198, %149
  br i1 %cmp199, label %if.then.201, label %if.end.204

if.then.201:                                      ; preds = %if.end.197
  %150 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %151 = bitcast %struct._GtkAdjustment* %150 to i8*
  %152 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %153 = bitcast %struct._GObject* %152 to i8*
  %call202 = call i32 @g_signal_handlers_block_matched(i8* %151, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GObject*)* @gimp_prop_adjustment_callback to i8*), i8* %153)
  %154 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %155 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %154, double %155)
  %156 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %157 = bitcast %struct._GtkAdjustment* %156 to i8*
  %158 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %159 = bitcast %struct._GObject* %158 to i8*
  %call203 = call i32 @g_signal_handlers_unblock_matched(i8* %157, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GObject*)* @gimp_prop_adjustment_callback to i8*), i8* %159)
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.187, %if.then.201, %if.end.197
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_hscale_new(%struct._GObject* %config, i8* %property_name, double %step_increment, double %page_increment, i32 %digits) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %value = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %0, i8* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_prop_hscale_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call1 = call i32 @get_numeric_values(%struct._GObject* %3, %struct._GParamSpec* %4, double* %value, double* %lower, double* %upper, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_prop_hscale_new, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %7 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 13
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end.4
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.6
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %digits.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %20 = load double, double* %value, align 8
  %21 = load double, double* %lower, align 8
  %22 = load double, double* %upper, align 8
  %23 = load double, double* %step_increment.addr, align 8
  %24 = load double, double* %page_increment.addr, align 8
  %call17 = call %struct._GtkObject* @gtk_adjustment_new(double %20, double %21, double %22, double %23, double %24, double 0.000000e+00)
  store %struct._GtkObject* %call17, %struct._GtkObject** %adjustment, align 8
  %call18 = call i64 @gtk_hscale_get_type() #8
  %25 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %26 = load i32, i32* %digits.addr, align 4
  %call19 = call i8* (i64, i8*, ...) @g_object_new(i64 %call18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct._GtkObject* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %26, i8* null)
  %27 = bitcast i8* %call19 to %struct._GtkWidget*
  store %struct._GtkWidget* %27, %struct._GtkWidget** %scale, align 8
  %28 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %29 = bitcast %struct._GtkObject* %28 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %30, %struct._GtkWidget* %31, %struct._GParamSpec* %32)
  %33 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %34 = bitcast %struct._GtkObject* %33 to i8*
  %35 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %36 = bitcast %struct._GObject* %35 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GObject*)* @gimp_prop_adjustment_callback to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %38 = load i8*, i8** %property_name.addr, align 8
  %39 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %40 = bitcast %struct._GtkObject* %39 to i8*
  call void @connect_notify(%struct._GObject* %37, i8* %38, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkAdjustment*)* @gimp_prop_adjustment_notify to void ()*), i8* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  store %struct._GtkWidget* %41, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.3, %if.then
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %42
}

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_hscale_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GtkObject* @gimp_prop_scale_entry_new(%struct._GObject* %config, i8* %property_name, %struct._GtkTable* %table, i32 %column, i32 %row, i8* %label, double %step_increment, double %page_increment, i32 %digits, i32 %limit_scale, double %lower_limit, double %upper_limit) #0 {
entry:
  %retval = alloca %struct._GtkObject*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %column.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %limit_scale.addr = alloca i32, align 4
  %lower_limit.addr = alloca double, align 8
  %upper_limit.addr = alloca double, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %tooltip = alloca i8*, align 8
  %value = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i32 %limit_scale, i32* %limit_scale.addr, align 4
  store double %lower_limit, double* %lower_limit.addr, align 8
  store double %upper_limit, double* %upper_limit.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %0, i8* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_scale_entry_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkObject* null, %struct._GtkObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call1 = call i32 @get_numeric_values(%struct._GObject* %3, %struct._GParamSpec* %4, double* %value, double* %lower, double* %upper, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_scale_entry_new, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._GtkObject* null, %struct._GtkObject** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %6 = bitcast %struct._GObject* %5 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call5 = call i8* @gimp_type_get_translation_domain(i64 %8)
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call6 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %9)
  %call7 = call i8* @dgettext(i8* %call5, i8* %call6) #5
  store i8* %call7, i8** %tooltip, align 8
  %10 = load i32, i32* %limit_scale.addr, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end.4
  %11 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %12 = load i32, i32* %column.addr, align 4
  %13 = load i32, i32* %row.addr, align 4
  %14 = load i8*, i8** %label.addr, align 8
  %15 = load double, double* %value, align 8
  %16 = load double, double* %lower, align 8
  %17 = load double, double* %upper, align 8
  %18 = load double, double* %step_increment.addr, align 8
  %19 = load double, double* %page_increment.addr, align 8
  %20 = load i32, i32* %digits.addr, align 4
  %21 = load i8*, i8** %tooltip, align 8
  %call10 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %11, i32 %12, i32 %13, i8* %14, i32 -1, i32 -1, double %15, double %16, double %17, double %18, double %19, i32 %20, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %21, i8* null)
  store %struct._GtkObject* %call10, %struct._GtkObject** %adjustment, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end.4
  %22 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %23 = load i32, i32* %column.addr, align 4
  %24 = load i32, i32* %row.addr, align 4
  %25 = load i8*, i8** %label.addr, align 8
  %26 = load double, double* %value, align 8
  %27 = load double, double* %lower_limit.addr, align 8
  %28 = load double, double* %upper_limit.addr, align 8
  %29 = load double, double* %step_increment.addr, align 8
  %30 = load double, double* %page_increment.addr, align 8
  %31 = load i32, i32* %digits.addr, align 4
  %32 = load double, double* %lower, align 8
  %33 = load double, double* %upper, align 8
  %34 = load i8*, i8** %tooltip, align 8
  %call11 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %22, i32 %23, i32 %24, i8* %25, i32 -1, i32 -1, double %26, double %27, double %28, double %29, double %30, i32 %31, i32 0, double %32, double %33, i8* %34, i8* null)
  store %struct._GtkObject* %call11, %struct._GtkObject** %adjustment, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  %35 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %36 = bitcast %struct._GtkObject* %35 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %37, %struct._GtkWidget* null, %struct._GParamSpec* %38)
  %39 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %40 = bitcast %struct._GtkObject* %39 to i8*
  %41 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %42 = bitcast %struct._GObject* %41 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GObject*)* @gimp_prop_adjustment_callback to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %44 = load i8*, i8** %property_name.addr, align 8
  %45 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %46 = bitcast %struct._GtkObject* %45 to i8*
  call void @connect_notify(%struct._GObject* %43, i8* %44, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkAdjustment*)* @gimp_prop_adjustment_notify to void ()*), i8* %46)
  %47 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  store %struct._GtkObject* %47, %struct._GtkObject** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.3, %if.then
  %48 = load %struct._GtkObject*, %struct._GtkObject** %retval
  ret %struct._GtkObject* %48
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare i8* @gimp_type_get_translation_domain(i64) #2

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #2

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GtkObject* @gimp_prop_opacity_entry_new(%struct._GObject* %config, i8* %property_name, %struct._GtkTable* %table, i32 %column, i32 %row, i8* %label) #0 {
entry:
  %retval = alloca %struct._GtkObject*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %table.addr = alloca %struct._GtkTable*, align 8
  %column.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %tooltip = alloca i8*, align 8
  %value = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_opacity_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkObject* null, %struct._GtkObject** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_opacity_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkObject* null, %struct._GtkObject** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 13
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_opacity_entry_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkObject* null, %struct._GtkObject** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, double* %value, i8* null)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call10 = call i8* @gimp_type_get_translation_domain(i64 %14)
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call11 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %15)
  %call12 = call i8* @dgettext(i8* %call10, i8* %call11) #5
  store i8* %call12, i8** %tooltip, align 8
  %16 = load double, double* %value, align 8
  %mul = fmul double %16, 1.000000e+02
  store double %mul, double* %value, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %19 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %19, i64 13
  %20 = load i64, i64* %arrayidx13, align 8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %20)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GParamSpecDouble*
  %minimum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %21, i32 0, i32 1
  %22 = load double, double* %minimum, align 8
  %mul15 = fmul double %22, 1.000000e+02
  store double %mul15, double* %lower, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %25 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %25, i64 13
  %26 = load i64, i64* %arrayidx16, align 8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %26)
  %27 = bitcast %struct._GTypeInstance* %call17 to %struct._GParamSpecDouble*
  %maximum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %27, i32 0, i32 2
  %28 = load double, double* %maximum, align 8
  %mul18 = fmul double %28, 1.000000e+02
  store double %mul18, double* %upper, align 8
  %29 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %30 = load i32, i32* %column.addr, align 4
  %31 = load i32, i32* %row.addr, align 4
  %32 = load i8*, i8** %label.addr, align 8
  %33 = load double, double* %value, align 8
  %34 = load double, double* %lower, align 8
  %35 = load double, double* %upper, align 8
  %36 = load i8*, i8** %tooltip, align 8
  %call19 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %29, i32 %30, i32 %31, i8* %32, i32 -1, i32 -1, double %33, double %34, double %35, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %36, i8* null)
  store %struct._GtkObject* %call19, %struct._GtkObject** %adjustment, align 8
  %37 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %38 = bitcast %struct._GtkObject* %37 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %39, %struct._GtkWidget* null, %struct._GParamSpec* %40)
  %41 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %42 = bitcast %struct._GtkObject* %41 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %44 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %45 = bitcast %struct._GtkObject* %44 to i8*
  %46 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %47 = bitcast %struct._GObject* %46 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GObject*)* @gimp_prop_adjustment_callback to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  %48 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %49 = load i8*, i8** %property_name.addr, align 8
  %50 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %51 = bitcast %struct._GtkObject* %50 to i8*
  call void @connect_notify(%struct._GObject* %48, i8* %49, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkAdjustment*)* @gimp_prop_adjustment_notify to void ()*), i8* %51)
  %52 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  store %struct._GtkObject* %52, %struct._GtkObject** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.else.3, %if.else
  %53 = load %struct._GtkObject*, %struct._GtkObject** %retval
  ret %struct._GtkObject* %53
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_memsize_entry_new(%struct._GObject* %config, i8* %property_name) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %uint64_spec = alloca %struct._GParamSpecUInt64*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %value = alloca i64, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_memsize_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.2
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_memsize_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %call7 = call i64 @gimp_param_memsize_get_type() #8
  %call8 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %call7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_memsize_entry_new, i32 0, i32 0))
  store %struct._GParamSpec* %call8, %struct._GParamSpec** %param_spec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool9 = icmp ne %struct._GParamSpec* %5, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %do.end.6
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %do.end.6
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %8 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %7, i8* %8, i64* %value, i8* null)
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %10 = bitcast %struct._GParamSpec* %9 to %struct._GTypeInstance*
  %11 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %11, i64 8
  %12 = load i64, i64* %arrayidx, align 8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %12)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GParamSpecUInt64*
  store %struct._GParamSpecUInt64* %13, %struct._GParamSpecUInt64** %uint64_spec, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.11
  %14 = load %struct._GParamSpecUInt64*, %struct._GParamSpecUInt64** %uint64_spec, align 8
  %minimum = getelementptr inbounds %struct._GParamSpecUInt64, %struct._GParamSpecUInt64* %14, i32 0, i32 1
  %15 = load i64, i64* %minimum, align 8
  %cmp14 = icmp ule i64 %15, 4398046511104
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_memsize_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %16 = load %struct._GParamSpecUInt64*, %struct._GParamSpecUInt64** %uint64_spec, align 8
  %maximum = getelementptr inbounds %struct._GParamSpecUInt64, %struct._GParamSpecUInt64* %16, i32 0, i32 2
  %17 = load i64, i64* %maximum, align 8
  %cmp20 = icmp ule i64 %17, 4398046511104
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_memsize_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %18 = load i64, i64* %value, align 8
  %19 = load %struct._GParamSpecUInt64*, %struct._GParamSpecUInt64** %uint64_spec, align 8
  %minimum25 = getelementptr inbounds %struct._GParamSpecUInt64, %struct._GParamSpecUInt64* %19, i32 0, i32 1
  %20 = load i64, i64* %minimum25, align 8
  %21 = load %struct._GParamSpecUInt64*, %struct._GParamSpecUInt64** %uint64_spec, align 8
  %maximum26 = getelementptr inbounds %struct._GParamSpecUInt64, %struct._GParamSpecUInt64* %21, i32 0, i32 2
  %22 = load i64, i64* %maximum26, align 8
  %call27 = call %struct._GtkWidget* @gimp_memsize_entry_new(i64 %18, i64 %20, i64 %22)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %entry1, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_memsize_entry_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call29)
  %28 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpMemsizeEntry*
  %spinbutton = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %28, i32 0, i32 6
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %25, %struct._GtkWidget* %29, %struct._GParamSpec* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %34 = bitcast %struct._GObject* %33 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpMemsizeEntry*, %struct._GObject*)* @gimp_prop_memsize_callback to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %36 = load i8*, i8** %property_name.addr, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  call void @connect_notify(%struct._GObject* %35, i8* %36, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpMemsizeEntry*)* @gimp_prop_memsize_notify to void ()*), i8* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  store %struct._GtkWidget* %39, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.24, %if.else.22, %if.else.16, %if.then.10, %if.else.4, %if.else
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %40
}

; Function Attrs: nounwind readnone
declare i64 @gimp_param_memsize_get_type() #3

declare %struct._GtkWidget* @gimp_memsize_entry_new(i64, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_memsize_entry_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_memsize_callback(%struct._GimpMemsizeEntry* %entry1, %struct._GObject* %config) #0 {
entry:
  %entry.addr = alloca %struct._GimpMemsizeEntry*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMemsizeEntry* %entry1, %struct._GimpMemsizeEntry** %entry.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpMemsizeEntry* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call2, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %5 = bitcast %struct._GParamSpec* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %6 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 8
  %7 = load i64, i64* %arrayidx, align 8
  store i64 %7, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.4
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_memsize_callback, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %19 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %20 = bitcast %struct._GObject* %19 to i8*
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %call16 = call i64 @gimp_memsize_entry_get_value(%struct._GimpMemsizeEntry* %23)
  call void (i8*, i8*, ...) @g_object_set(i8* %20, i8* %22, i64 %call16, i8* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.14, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_memsize_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpMemsizeEntry* %entry1) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %entry.addr = alloca %struct._GimpMemsizeEntry*, align 8
  %value = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpMemsizeEntry* %entry1, %struct._GimpMemsizeEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 8
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_memsize_notify, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %16, i8* %18, i64* %value, i8* null)
  %19 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %value11 = getelementptr inbounds %struct._GimpMemsizeEntry, %struct._GimpMemsizeEntry* %19, i32 0, i32 1
  %20 = load i64, i64* %value11, align 8
  %21 = load i64, i64* %value, align 8
  %cmp12 = icmp ne i64 %20, %21
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %22 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %23 = bitcast %struct._GimpMemsizeEntry* %22 to i8*
  %24 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %25 = bitcast %struct._GObject* %24 to i8*
  %call14 = call i32 @g_signal_handlers_block_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpMemsizeEntry*, %struct._GObject*)* @gimp_prop_memsize_callback to i8*), i8* %25)
  %26 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %27 = load i64, i64* %value, align 8
  call void @gimp_memsize_entry_set_value(%struct._GimpMemsizeEntry* %26, i64 %27)
  %28 = load %struct._GimpMemsizeEntry*, %struct._GimpMemsizeEntry** %entry.addr, align 8
  %29 = bitcast %struct._GimpMemsizeEntry* %28 to i8*
  %30 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %31 = bitcast %struct._GObject* %30 to i8*
  %call15 = call i32 @g_signal_handlers_unblock_matched(i8* %29, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpMemsizeEntry*, %struct._GObject*)* @gimp_prop_memsize_callback to i8*), i8* %31)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_label_new(%struct._GObject* %config, i8* %property_name) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_label_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_label_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %call6 = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %3, i8* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_label_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %5, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %6, i32 0, i32 3
  %7 = load i64, i64* %value_type, align 8
  %call10 = call i32 @g_value_type_transformable(i64 %7, i64 64)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %8, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 4
  %11 = load i64, i64* %owner_type, align 8
  %call13 = call i8* @g_type_name(i64 %11)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* %9, i8* %call13)
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %call15 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %label, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %14, %struct._GtkWidget* %15, %struct._GParamSpec* %16)
  %17 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %18 = load i8*, i8** %property_name.addr, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  call void @connect_notify(%struct._GObject* %17, i8* %18, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_label_notify to void ()*), i8* %20)
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gimp_prop_label_notify(%struct._GObject* %21, %struct._GParamSpec* %22, %struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  store %struct._GtkWidget* %24, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.8, %if.else.3, %if.else
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %25
}

declare i32 @g_value_type_transformable(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_label_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %label) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %label.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca %struct._GValue, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %str = alloca i8*, align 8
  %str_value = alloca %struct._GValue, align 8
  %str15 = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %1, i32 0, i32 3
  %2 = load i64, i64* %value_type, align 8
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %2)
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %3, i8* %5, %struct._GValue* %value)
  store %struct._GValue* %value, %struct._GValue** %__val, align 8
  store i64 64, i64* %__t, align 8
  %6 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %10 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %11 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %10, i64 %11) #7
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %if.end.4
  %call8 = call i8* @g_value_get_string(%struct._GValue* %value)
  store i8* %call8, i8** %str, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_label_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkLabel*
  %17 = load i8*, i8** %str, align 8
  %tobool11 = icmp ne i8* %17, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %18 = load i8*, i8** %str, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), %cond.false ]
  call void @gtk_label_set_text(%struct._GtkLabel* %16, i8* %cond)
  br label %if.end.26

if.else.12:                                       ; preds = %if.end.4
  %19 = bitcast %struct._GValue* %str_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 8, i1 false)
  %call16 = call %struct._GValue* @g_value_init(%struct._GValue* %str_value, i64 64)
  %call17 = call i32 @g_value_transform(%struct._GValue* %value, %struct._GValue* %str_value)
  %call18 = call i8* @g_value_get_string(%struct._GValue* %str_value)
  store i8* %call18, i8** %str15, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_label_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkLabel*
  %23 = load i8*, i8** %str15, align 8
  %tobool21 = icmp ne i8* %23, null
  br i1 %tobool21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %if.else.12
  %24 = load i8*, i8** %str15, align 8
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.else.12
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi i8* [ %24, %cond.true.22 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), %cond.false.23 ]
  call void @gtk_label_set_text(%struct._GtkLabel* %22, i8* %cond25)
  call void @g_value_unset(%struct._GValue* %str_value)
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end.24, %cond.end
  call void @g_value_unset(%struct._GValue* %value)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject* %config, i8* %property_name, i32 %max_len) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %max_len.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %max_len, i32* %max_len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.2
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_entry_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 14
  %6 = load i64, i64* %arrayidx, align 8
  %call7 = call %struct._GParamSpec* @check_param_spec(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_entry_new, i32 0, i32 0))
  store %struct._GParamSpec* %call7, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool8 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.end.6
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %do.end.6
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i8** %value, i8* null)
  %call11 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %entry1, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_entry_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkEntry*
  %14 = load i8*, i8** %value, align 8
  %tobool14 = icmp ne i8* %14, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load i8*, i8** %value, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), %cond.false ]
  call void @gtk_entry_set_text(%struct._GtkEntry* %13, i8* %cond)
  %16 = load i8*, i8** %value, align 8
  call void @g_free(i8* %16)
  %17 = load i32, i32* %max_len.addr, align 4
  %cmp15 = icmp sgt i32 %17, 0
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %cond.end
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_entry_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkEntry*
  %21 = load i32, i32* %max_len.addr, align 4
  call void @gtk_entry_set_max_length(%struct._GtkEntry* %20, i32 %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %cond.end
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_editable_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call20)
  %24 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkEditable*
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 2
  %26 = load i32, i32* %flags, align 4
  %and = and i32 %26, 2
  call void @gtk_editable_set_editable(%struct._GtkEditable* %24, i32 %and)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %29, %struct._GtkWidget* %30, %struct._GParamSpec* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %35 = bitcast %struct._GObject* %34 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_entry_callback to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %37 = load i8*, i8** %property_name.addr, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  call void @connect_notify(%struct._GObject* %36, i8* %37, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_entry_notify to void ()*), i8* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  store %struct._GtkWidget* %40, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.9, %if.else.4, %if.else
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %41
}

declare %struct._GtkWidget* @gtk_entry_new() #2

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @g_free(i8*) #2

declare void @gtk_entry_set_max_length(%struct._GtkEntry*, i32) #2

declare void @gtk_editable_set_editable(%struct._GtkEditable*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_entry_callback(%struct._GtkWidget* %entry1, %struct._GObject* %config) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %text = alloca i8*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call2, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_entry_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEntry*
  %call5 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %6)
  store i8* %call5, i8** %text, align 8
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_entry_notify to i8*), i8* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %text, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, i8* %15, i8* null)
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_entry_notify to i8*), i8* %19)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_entry_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %entry1) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_entry_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_entry_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEntry*
  %11 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i8*, i8** %value, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), %cond.false ]
  call void @gtk_entry_set_text(%struct._GtkEntry* %10, i8* %cond)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_entry_callback to i8*), i8* %16)
  %17 = load i8*, i8** %value, align 8
  call void @g_free(i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkTextBuffer* @gimp_prop_text_buffer_new(%struct._GObject* %config, i8* %property_name, i32 %max_len) #0 {
entry:
  %retval = alloca %struct._GtkTextBuffer*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %max_len.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %text_buffer = alloca %struct._GtkTextBuffer*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %max_len, i32* %max_len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_text_buffer_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkTextBuffer* null, %struct._GtkTextBuffer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_text_buffer_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkTextBuffer* null, %struct._GtkTextBuffer** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 14
  %6 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_text_buffer_new, i32 0, i32 0))
  store %struct._GParamSpec* %call6, %struct._GParamSpec** %param_spec, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool7 = icmp ne %struct._GParamSpec* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.end.5
  store %struct._GtkTextBuffer* null, %struct._GtkTextBuffer** %retval
  br label %return

if.end.9:                                         ; preds = %do.end.5
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i8** %value, i8* null)
  %call10 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  store %struct._GtkTextBuffer* %call10, %struct._GtkTextBuffer** %text_buffer, align 8
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %12 = load i8*, i8** %value, align 8
  %tobool11 = icmp ne i8* %12, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %13 = load i8*, i8** %value, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), %cond.false ]
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %11, i8* %cond, i32 -1)
  %14 = load i8*, i8** %value, align 8
  call void @g_free(i8* %14)
  %15 = load i32, i32* %max_len.addr, align 4
  %cmp12 = icmp sgt i32 %15, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %cond.end
  %16 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %17 = bitcast %struct._GtkTextBuffer* %16 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %19 = load i32, i32* %max_len.addr, align 4
  %conv = sext i32 %19 to i64
  %20 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %cond.end
  %21 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %22 = bitcast %struct._GtkTextBuffer* %21 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %23, %struct._GtkWidget* null, %struct._GParamSpec* %24)
  %25 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %26 = bitcast %struct._GtkTextBuffer* %25 to i8*
  %27 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %28 = bitcast %struct._GObject* %27 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTextBuffer*, %struct._GObject*)* @gimp_prop_text_buffer_callback to void ()*), i8* %28, void (i8*, %struct._GClosure*)* null, i32 0)
  %29 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %30 = load i8*, i8** %property_name.addr, align 8
  %31 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %32 = bitcast %struct._GtkTextBuffer* %31 to i8*
  call void @connect_notify(%struct._GObject* %29, i8* %30, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkTextBuffer*)* @gimp_prop_text_buffer_notify to void ()*), i8* %32)
  %33 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  store %struct._GtkTextBuffer* %33, %struct._GtkTextBuffer** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.8, %if.else.3, %if.else
  %34 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %retval
  ret %struct._GtkTextBuffer* %34
}

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #2

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_text_buffer_callback(%struct._GtkTextBuffer* %text_buffer, %struct._GObject* %config) #0 {
entry:
  %text_buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %start_iter = alloca %struct._GtkTextIter, align 8
  %end_iter = alloca %struct._GtkTextIter, align 8
  %text = alloca i8*, align 8
  %max_len = alloca i32, align 4
  store %struct._GtkTextBuffer* %text_buffer, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %1 = bitcast %struct._GtkTextBuffer* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %call2 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter, i32 0)
  store i8* %call2, i8** %text, align 8
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %7 = bitcast %struct._GtkTextBuffer* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0))
  %9 = ptrtoint i8* %call4 to i64
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %max_len, align 4
  %10 = load i32, i32* %max_len, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %11 = load i8*, i8** %text, align 8
  %call6 = call i64 @g_utf8_strlen(i8* %11, i64 -1) #7
  %12 = load i32, i32* %max_len, align 4
  %conv7 = sext i32 %12 to i64
  %cmp8 = icmp sgt i64 %call6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %13 = load i32, i32* %max_len, align 4
  %conv11 = sext i32 %13 to i64
  %call12 = call i8* @dngettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i32 0, i32 0), i64 %conv11) #5
  %14 = load i32, i32* %max_len, align 4
  call void (i8*, ...) @g_message(i8* %call12, i32 %14)
  %15 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %16 = load i32, i32* %max_len, align 4
  %sub = sub nsw i32 %16, 1
  call void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer* %15, %struct._GtkTextIter* %start_iter, i32 %sub)
  %17 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %17, %struct._GtkTextIter* %end_iter)
  %18 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  call void @gtk_text_buffer_delete(%struct._GtkTextBuffer* %18, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %if.end
  %19 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %20 = bitcast %struct._GObject* %19 to i8*
  %21 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %22 = bitcast %struct._GtkTextBuffer* %21 to i8*
  %call13 = call i32 @g_signal_handlers_block_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkTextBuffer*)* @gimp_prop_text_buffer_notify to i8*), i8* %22)
  %23 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %24 = bitcast %struct._GObject* %23 to i8*
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load i8*, i8** %text, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* %26, i8* %27, i8* null)
  %28 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %29 = bitcast %struct._GObject* %28 to i8*
  %30 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %31 = bitcast %struct._GtkTextBuffer* %30 to i8*
  %call14 = call i32 @g_signal_handlers_unblock_matched(i8* %29, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkTextBuffer*)* @gimp_prop_text_buffer_notify to i8*), i8* %31)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.10
  %32 = load i8*, i8** %text, align 8
  call void @g_free(i8* %32)
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_text_buffer_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkTextBuffer* %text_buffer) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %text_buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkTextBuffer* %text_buffer, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %5 = bitcast %struct._GtkTextBuffer* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTextBuffer*, %struct._GObject*)* @gimp_prop_text_buffer_callback to i8*), i8* %7)
  %8 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %9 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i8*, i8** %value, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), %cond.false ]
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %8, i8* %cond, i32 -1)
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer.addr, align 8
  %12 = bitcast %struct._GtkTextBuffer* %11 to i8*
  %13 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %call1 = call i32 @g_signal_handlers_unblock_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTextBuffer*, %struct._GObject*)* @gimp_prop_text_buffer_callback to i8*), i8* %14)
  %15 = load i8*, i8** %value, align 8
  call void @g_free(i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_string_combo_box_new(%struct._GObject* %config, i8* %property_name, %struct._GtkTreeModel* %model, i32 %id_column, i32 %label_column) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %id_column.addr = alloca i32, align 4
  %label_column.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %combo_box = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store i32 %id_column, i32* %id_column.addr, align 4
  store i32 %label_column, i32* %label_column.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_prop_string_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_prop_string_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %4 = bitcast %struct._GtkTreeModel* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gtk_tree_model_get_type() #8
  store i64 %call7, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool8, label %if.else.10, label %if.then.9

if.then.9:                                        ; preds = %do.body.6
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else.10:                                       ; preds = %do.body.6
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool11 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else.10
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp13 = icmp eq i64 %10, %11
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true, %if.else.10
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #7
  store i32 %call16, i32* %__r, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.9
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %15, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_prop_string_combo_box_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = load i8*, i8** %property_name.addr, align 8
  %18 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 14
  %19 = load i64, i64* %arrayidx, align 8
  %call24 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %16, i8* %17, i64 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_prop_string_combo_box_new, i32 0, i32 0))
  store %struct._GParamSpec* %call24, %struct._GParamSpec** %param_spec, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool25 = icmp ne %struct._GParamSpec* %20, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.27:                                        ; preds = %do.end.23
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = bitcast %struct._GObject* %21 to i8*
  %23 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %22, i8* %23, i8** %value, i8* null)
  %24 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %25 = load i32, i32* %id_column.addr, align 4
  %26 = load i32, i32* %label_column.addr, align 4
  %call28 = call %struct._GtkWidget* @gimp_string_combo_box_new(%struct._GtkTreeModel* %24, i32 %25, i32 %26)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %combo_box, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_string_combo_box_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call29)
  %29 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpStringComboBox*
  %30 = load i8*, i8** %value, align 8
  %call31 = call i32 @gimp_string_combo_box_set_active(%struct._GimpStringComboBox* %29, i8* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %34 = bitcast %struct._GObject* %33 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_string_combo_box_callback to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %37, %struct._GtkWidget* %38, %struct._GParamSpec* %39)
  %40 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %41 = load i8*, i8** %property_name.addr, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  call void @connect_notify(%struct._GObject* %40, i8* %41, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_string_combo_box_notify to void ()*), i8* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box, align 8
  store %struct._GtkWidget* %44, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.else.21, %if.else.3, %if.else
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %45
}

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare %struct._GtkWidget* @gimp_string_combo_box_new(%struct._GtkTreeModel*, i32, i32) #2

declare i32 @gimp_string_combo_box_set_active(%struct._GimpStringComboBox*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_string_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_string_combo_box_callback(%struct._GtkWidget* %widget, %struct._GObject* %config) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_string_combo_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpStringComboBox*
  %call4 = call i8* @gimp_string_combo_box_get_active(%struct._GimpStringComboBox* %6)
  store i8* %call4, i8** %value, align 8
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %11 = load i8*, i8** %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* %10, i8* %11, i8* null)
  %12 = load i8*, i8** %value, align 8
  call void @g_free(i8* %12)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_string_combo_box_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %combo_box) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %combo_box.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %combo_box, %struct._GtkWidget** %combo_box.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_string_combo_box_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_string_combo_box_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpStringComboBox*
  %11 = load i8*, i8** %value, align 8
  %call3 = call i32 @gimp_string_combo_box_set_active(%struct._GimpStringComboBox* %10, i8* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %combo_box.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_string_combo_box_callback to i8*), i8* %15)
  %16 = load i8*, i8** %value, align 8
  call void @g_free(i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_file_chooser_button_new(%struct._GObject* %config, i8* %property_name, i8* %title, i32 %action) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %action.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_prop_file_chooser_button_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_prop_file_chooser_button_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %property_name.addr, align 8
  %call6 = call i64 @gimp_param_config_path_get_type() #8
  %call7 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %call6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_prop_file_chooser_button_new, i32 0, i32 0))
  store %struct._GParamSpec* %call7, %struct._GParamSpec** %param_spec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool8 = icmp ne %struct._GParamSpec* %5, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %do.end.5
  %6 = load i8*, i8** %title.addr, align 8
  %7 = load i32, i32* %action.addr, align 4
  %call11 = call %struct._GtkWidget* @gtk_file_chooser_button_new(i8* %6, i32 %7)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %button, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %9 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call12 = call %struct._GtkWidget* @gimp_prop_file_chooser_button_setup(%struct._GtkWidget* %8, %struct._GObject* %9, %struct._GParamSpec* %10)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.else.3, %if.else
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %11
}

; Function Attrs: nounwind readnone
declare i64 @gimp_param_config_path_get_type() #3

declare %struct._GtkWidget* @gtk_file_chooser_button_new(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_prop_file_chooser_button_setup(%struct._GtkWidget* %button, %struct._GObject* %config, %struct._GParamSpec* %param_spec) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %value = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %value, align 8
  %call = call noalias i8* @gimp_config_path_expand(i8* %5, i32 1, %struct._GError** null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %filename, align 8
  %6 = load i8*, i8** %value, align 8
  call void @g_free(i8* %6)
  %7 = load i8*, i8** %filename, align 8
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %if.then, label %if.end.11

if.then:                                          ; preds = %cond.end
  %8 = load i8*, i8** %filename, align 8
  %call2 = call noalias i8* @g_path_get_basename(i8* %8)
  store i8* %call2, i8** %basename, align 8
  %9 = load i8*, i8** %basename, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %10 = load i8*, i8** %basename, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_file_chooser_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_show_hidden(%struct._GtkFileChooser* %14, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  %15 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  %19 = load i8*, i8** %filename, align 8
  %call10 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %18, i8* %19)
  %20 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %cond.end
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  call void @set_param_spec(%struct._GObject* %23, %struct._GtkWidget* %24, %struct._GParamSpec* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %29 = bitcast %struct._GObject* %28 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, %struct._GObject*)* @gimp_prop_file_chooser_button_callback to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name14 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 1
  %32 = load i8*, i8** %name14, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  call void @connect_notify(%struct._GObject* %30, i8* %32, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkFileChooser*)* @gimp_prop_file_chooser_button_notify to void ()*), i8* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  ret %struct._GtkWidget* %35
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_file_chooser_button_new_with_dialog(%struct._GObject* %config, i8* %property_name, %struct._GtkWidget* %dialog) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_prop_file_chooser_button_new_with_dialog, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_prop_file_chooser_button_new_with_dialog, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gtk_file_chooser_dialog_get_type() #8
  store i64 %call7, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool8, label %if.else.10, label %if.then.9

if.then.9:                                        ; preds = %do.body.6
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else.10:                                       ; preds = %do.body.6
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool11 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else.10
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp13 = icmp eq i64 %10, %11
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true, %if.else.10
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #7
  store i32 %call16, i32* %__r, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.9
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %15, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_prop_file_chooser_button_new_with_dialog, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = load i8*, i8** %property_name.addr, align 8
  %call24 = call i64 @gimp_param_config_path_get_type() #8
  %call25 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %16, i8* %17, i64 %call24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_prop_file_chooser_button_new_with_dialog, i32 0, i32 0))
  store %struct._GParamSpec* %call25, %struct._GParamSpec** %param_spec, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool26 = icmp ne %struct._GParamSpec* %18, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.end.23
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.28:                                        ; preds = %do.end.23
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call29 = call %struct._GtkWidget* @gtk_file_chooser_button_new_with_dialog(%struct._GtkWidget* %19)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %button, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call30 = call %struct._GtkWidget* @gimp_prop_file_chooser_button_setup(%struct._GtkWidget* %20, %struct._GObject* %21, %struct._GParamSpec* %22)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.27, %if.else.21, %if.else.3, %if.else
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %23
}

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_dialog_get_type() #3

declare %struct._GtkWidget* @gtk_file_chooser_button_new_with_dialog(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_path_editor_new(%struct._GObject* %config, i8* %path_property_name, i8* %writable_property_name, i8* %filesel_title) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %path_property_name.addr = alloca i8*, align 8
  %writable_property_name.addr = alloca i8*, align 8
  %filesel_title.addr = alloca i8*, align 8
  %path_param_spec = alloca %struct._GParamSpec*, align 8
  %writable_param_spec = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %path_property_name, i8** %path_property_name.addr, align 8
  store i8* %writable_property_name, i8** %writable_property_name.addr, align 8
  store i8* %filesel_title, i8** %filesel_title.addr, align 8
  store %struct._GParamSpec* null, %struct._GParamSpec** %writable_param_spec, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_path_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %path_property_name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_path_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load i8*, i8** %path_property_name.addr, align 8
  %call6 = call i64 @gimp_param_config_path_get_type() #8
  %call7 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %3, i8* %4, i64 %call6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_path_editor_new, i32 0, i32 0))
  store %struct._GParamSpec* %call7, %struct._GParamSpec** %path_param_spec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %path_param_spec, align 8
  %tobool8 = icmp ne %struct._GParamSpec* %5, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.end.5
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %do.end.5
  %6 = load i8*, i8** %writable_property_name.addr, align 8
  %tobool11 = icmp ne i8* %6, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.10
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = load i8*, i8** %writable_property_name.addr, align 8
  %call13 = call i64 @gimp_param_config_path_get_type() #8
  %call14 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %7, i8* %8, i64 %call13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_path_editor_new, i32 0, i32 0))
  store %struct._GParamSpec* %call14, %struct._GParamSpec** %writable_param_spec, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %writable_param_spec, align 8
  %tobool15 = icmp ne %struct._GParamSpec* %9, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.10
  %10 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %11 = bitcast %struct._GObject* %10 to i8*
  %12 = load i8*, i8** %path_property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %11, i8* %12, i8** %value, i8* null)
  %13 = load i8*, i8** %value, align 8
  %tobool19 = icmp ne i8* %13, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %14 = load i8*, i8** %value, align 8
  %call20 = call noalias i8* @gimp_config_path_expand(i8* %14, i32 1, %struct._GError** null)
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call20, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %filename, align 8
  %15 = load i8*, i8** %value, align 8
  call void @g_free(i8* %15)
  %16 = load i8*, i8** %filesel_title.addr, align 8
  %17 = load i8*, i8** %filename, align 8
  %call21 = call %struct._GtkWidget* @gimp_path_editor_new(i8* %16, i8* %17)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %editor, align 8
  %18 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %writable_property_name.addr, align 8
  %tobool22 = icmp ne i8* %19, null
  br i1 %tobool22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %cond.end
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load i8*, i8** %writable_property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %21, i8* %22, i8** %value, i8* null)
  %23 = load i8*, i8** %value, align 8
  %tobool24 = icmp ne i8* %23, null
  br i1 %tobool24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %if.then.23
  %24 = load i8*, i8** %value, align 8
  %call26 = call noalias i8* @gimp_config_path_expand(i8* %24, i32 1, %struct._GError** null)
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.then.23
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi i8* [ %call26, %cond.true.25 ], [ null, %cond.false.27 ]
  store i8* %cond29, i8** %filename, align 8
  %25 = load i8*, i8** %value, align 8
  call void @g_free(i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_path_editor_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call30)
  %28 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpPathEditor*
  %29 = load i8*, i8** %filename, align 8
  call void @gimp_path_editor_set_writable_path(%struct._GimpPathEditor* %28, i8* %29)
  %30 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %30)
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end.28, %cond.end
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %path_param_spec, align 8
  %35 = bitcast %struct._GParamSpec* %34 to i8*
  call void @g_object_set_data(%struct._GObject* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i8* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %39 = bitcast %struct._GObject* %38 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPathEditor*, %struct._GObject*)* @gimp_prop_path_editor_path_callback to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %41 = load i8*, i8** %path_property_name.addr, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  call void @connect_notify(%struct._GObject* %40, i8* %41, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpPathEditor*)* @gimp_prop_path_editor_path_notify to void ()*), i8* %43)
  %44 = load i8*, i8** %writable_property_name.addr, align 8
  %tobool35 = icmp ne i8* %44, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.32
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %writable_param_spec, align 8
  %49 = bitcast %struct._GParamSpec* %48 to i8*
  call void @g_object_set_data(%struct._GObject* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0), i8* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %53 = bitcast %struct._GObject* %52 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPathEditor*, %struct._GObject*)* @gimp_prop_path_editor_writable_callback to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %54 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %55 = load i8*, i8** %writable_property_name.addr, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  call void @connect_notify(%struct._GObject* %54, i8* %55, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpPathEditor*)* @gimp_prop_path_editor_writable_notify to void ()*), i8* %57)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.32
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  store %struct._GtkWidget* %58, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.16, %if.then.9, %if.else.3, %if.else
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %59
}

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #2

declare %struct._GtkWidget* @gimp_path_editor_new(i8*, i8*) #2

declare void @gimp_path_editor_set_writable_path(%struct._GimpPathEditor*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_path_editor_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_path_editor_path_callback(%struct._GimpPathEditor* %editor, %struct._GObject* %config) #0 {
entry:
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %path_param_spec = alloca %struct._GParamSpec*, align 8
  %writable_param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPathEditor* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GParamSpec*
  store %struct._GParamSpec* %3, %struct._GParamSpec** %path_param_spec, align 8
  %4 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpPathEditor* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0))
  %7 = bitcast i8* %call3 to %struct._GParamSpec*
  store %struct._GParamSpec* %7, %struct._GParamSpec** %writable_param_spec, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %path_param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.15

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %call4 = call i8* @gimp_path_editor_get_path(%struct._GimpPathEditor* %9)
  store i8* %call4, i8** %value, align 8
  %10 = load i8*, i8** %value, align 8
  %call5 = call noalias i8* @g_filename_to_utf8(i8* %10, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call5, i8** %utf8, align 8
  %11 = load i8*, i8** %value, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %13 = bitcast %struct._GObject* %12 to i8*
  %14 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpPathEditor* %14 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpPathEditor*)* @gimp_prop_path_editor_path_notify to i8*), i8* %15)
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %path_param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load i8*, i8** %utf8, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* %19, i8* %20, i8* null)
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = bitcast %struct._GObject* %21 to i8*
  %23 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %24 = bitcast %struct._GimpPathEditor* %23 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpPathEditor*)* @gimp_prop_path_editor_path_notify to i8*), i8* %24)
  %25 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %25)
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %writable_param_spec, align 8
  %tobool8 = icmp ne %struct._GParamSpec* %26, null
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %27 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %call10 = call i8* @gimp_path_editor_get_writable_path(%struct._GimpPathEditor* %27)
  store i8* %call10, i8** %value, align 8
  %28 = load i8*, i8** %value, align 8
  %call11 = call noalias i8* @g_filename_to_utf8(i8* %28, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call11, i8** %utf8, align 8
  %29 = load i8*, i8** %value, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %31 = bitcast %struct._GObject* %30 to i8*
  %32 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %33 = bitcast %struct._GimpPathEditor* %32 to i8*
  %call12 = call i32 @g_signal_handlers_block_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpPathEditor*)* @gimp_prop_path_editor_writable_notify to i8*), i8* %33)
  %34 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %35 = bitcast %struct._GObject* %34 to i8*
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %writable_param_spec, align 8
  %name13 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name13, align 8
  %38 = load i8*, i8** %utf8, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %35, i8* %37, i8* %38, i8* null)
  %39 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %40 = bitcast %struct._GObject* %39 to i8*
  %41 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %42 = bitcast %struct._GimpPathEditor* %41 to i8*
  %call14 = call i32 @g_signal_handlers_unblock_matched(i8* %40, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpPathEditor*)* @gimp_prop_path_editor_writable_notify to i8*), i8* %42)
  %43 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %43)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_path_editor_path_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpPathEditor* %editor) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %value = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %value, align 8
  %call = call noalias i8* @gimp_config_path_expand(i8* %5, i32 1, %struct._GError** null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %filename, align 8
  %6 = load i8*, i8** %value, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpPathEditor* %7 to i8*
  %9 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %10 = bitcast %struct._GObject* %9 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPathEditor*, %struct._GObject*)* @gimp_prop_path_editor_path_callback to i8*), i8* %10)
  %11 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %12 = load i8*, i8** %filename, align 8
  call void @gimp_path_editor_set_path(%struct._GimpPathEditor* %11, i8* %12)
  %13 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpPathEditor* %13 to i8*
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %call2 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPathEditor*, %struct._GObject*)* @gimp_prop_path_editor_path_callback to i8*), i8* %16)
  %17 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_path_editor_writable_callback(%struct._GimpPathEditor* %editor, %struct._GObject* %config) #0 {
entry:
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPathEditor* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GParamSpec*
  store %struct._GParamSpec* %3, %struct._GParamSpec** %param_spec, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %call2 = call i8* @gimp_path_editor_get_writable_path(%struct._GimpPathEditor* %5)
  store i8* %call2, i8** %value, align 8
  %6 = load i8*, i8** %value, align 8
  %call3 = call noalias i8* @g_filename_to_utf8(i8* %6, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call3, i8** %utf8, align 8
  %7 = load i8*, i8** %value, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %11 = bitcast %struct._GimpPathEditor* %10 to i8*
  %call4 = call i32 @g_signal_handlers_block_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpPathEditor*)* @gimp_prop_path_editor_writable_notify to i8*), i8* %11)
  %12 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %13 = bitcast %struct._GObject* %12 to i8*
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load i8*, i8** %utf8, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %13, i8* %15, i8* %16, i8* null)
  %17 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %18 = bitcast %struct._GObject* %17 to i8*
  %19 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %20 = bitcast %struct._GimpPathEditor* %19 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpPathEditor*)* @gimp_prop_path_editor_writable_notify to i8*), i8* %20)
  %21 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %21)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_path_editor_writable_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpPathEditor* %editor) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %editor.addr = alloca %struct._GimpPathEditor*, align 8
  %value = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpPathEditor* %editor, %struct._GimpPathEditor** %editor.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %value, align 8
  %call = call noalias i8* @gimp_config_path_expand(i8* %5, i32 1, %struct._GError** null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %filename, align 8
  %6 = load i8*, i8** %value, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpPathEditor* %7 to i8*
  %9 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %10 = bitcast %struct._GObject* %9 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPathEditor*, %struct._GObject*)* @gimp_prop_path_editor_writable_callback to i8*), i8* %10)
  %11 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %12 = load i8*, i8** %filename, align 8
  call void @gimp_path_editor_set_writable_path(%struct._GimpPathEditor* %11, i8* %12)
  %13 = load %struct._GimpPathEditor*, %struct._GimpPathEditor** %editor.addr, align 8
  %14 = bitcast %struct._GimpPathEditor* %13 to i8*
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %call2 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPathEditor*, %struct._GObject*)* @gimp_prop_path_editor_writable_callback to i8*), i8* %16)
  %17 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_size_entry_new(%struct._GObject* %config, i8* %property_name, i32 %property_is_pixel, i8* %unit_property_name, i8* %unit_format, i32 %update_policy, double %resolution) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %property_is_pixel.addr = alloca i32, align 4
  %unit_property_name.addr = alloca i8*, align 8
  %unit_format.addr = alloca i8*, align 8
  %update_policy.addr = alloca i32, align 4
  %resolution.addr = alloca double, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %unit_param_spec = alloca %struct._GParamSpec*, align 8
  %show_pixels = alloca i32, align 4
  %show_percent = alloca i32, align 4
  %value = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %unit_value = alloca i32, align 4
  %value8 = alloca %struct._GValue, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %property_is_pixel, i32* %property_is_pixel.addr, align 4
  store i8* %unit_property_name, i8** %unit_property_name.addr, align 8
  store i8* %unit_format, i8** %unit_format.addr, align 8
  store i32 %update_policy, i32* %update_policy.addr, align 4
  store double %resolution, double* %resolution.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %0, i8* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_size_entry_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call2 = call i32 @get_numeric_values(%struct._GObject* %3, %struct._GParamSpec* %4, double* %value, double* %lower, double* %upper, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_size_entry_new, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i8*, i8** %unit_property_name.addr, align 8
  %tobool6 = icmp ne i8* %5, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %6 = bitcast %struct._GValue* %value8 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false)
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = load i8*, i8** %unit_property_name.addr, align 8
  %call9 = call i64 @gimp_param_unit_get_type() #8
  %call10 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %7, i8* %8, i64 %call9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_size_entry_new, i32 0, i32 0))
  store %struct._GParamSpec* %call10, %struct._GParamSpec** %unit_param_spec, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool11 = icmp ne %struct._GParamSpec* %9, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.7
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 3
  %11 = load i64, i64* %value_type, align 8
  %call14 = call %struct._GValue* @g_value_init(%struct._GValue* %value8, i64 %11)
  call void @g_value_set_int(%struct._GValue* %value8, i32 0)
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %call15 = call i32 @g_param_value_validate(%struct._GParamSpec* %12, %struct._GValue* %value8)
  %cmp = icmp eq i32 %call15, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %show_pixels, align 4
  call void @g_value_set_int(%struct._GValue* %value8, i32 65536)
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %call16 = call i32 @g_param_value_validate(%struct._GParamSpec* %13, %struct._GValue* %value8)
  %cmp17 = icmp eq i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %show_percent, align 4
  call void @g_value_unset(%struct._GValue* %value8)
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %16 = load i8*, i8** %unit_property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %15, i8* %16, i32* %unit_value, i8* null)
  br label %if.end.19

if.else:                                          ; preds = %if.end.5
  store %struct._GParamSpec* null, %struct._GParamSpec** %unit_param_spec, align 8
  store i32 1, i32* %unit_value, align 4
  store i32 0, i32* %show_pixels, align 4
  store i32 0, i32* %show_percent, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.13
  %17 = load i32, i32* %unit_value, align 4
  %18 = load i8*, i8** %unit_format.addr, align 8
  %19 = load i32, i32* %show_pixels, align 4
  %20 = load i32, i32* %show_percent, align 4
  %21 = load double, double* %lower, align 8
  %22 = load double, double* %upper, align 8
  %call20 = call i32 @gimp_prop_size_entry_num_chars(double %21, double %22)
  %23 = load i32, i32* %update_policy.addr, align 4
  %call21 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %17, i8* %18, i32 %19, i32 %20, i32 0, i32 %call20, i32 %23)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %entry1, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %26, i32 1, i32 2)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_size_entry_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpSizeEntry*
  %call26 = call %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry* %29, i32 0)
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* null, %struct._GtkWidget* %call26, %struct._GParamSpec* %30)
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool27 = icmp ne %struct._GParamSpec* %31, null
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.19
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_size_entry_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call29)
  %34 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpSizeEntry*
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %34, i32 0, i32 3
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  call void @set_param_spec(%struct._GObject* null, %struct._GtkWidget* %35, %struct._GParamSpec* %36)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.19
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_size_entry_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call32)
  %39 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpSizeEntry*
  %40 = load i32, i32* %unit_value, align 4
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %39, i32 %40)
  %41 = load i32, i32* %update_policy.addr, align 4
  %cmp34 = icmp eq i32 %41, 1
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.31
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_size_entry_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call37)
  %44 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpSizeEntry*
  %45 = load double, double* %resolution.addr, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %44, i32 0, double %45, i32 0)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.31
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_size_entry_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call40)
  %48 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpSizeEntry*
  %49 = load double, double* %lower, align 8
  %50 = load double, double* %upper, align 8
  call void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry* %48, i32 0, double %49, double %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call42 to %struct._GObject*
  %54 = load i32, i32* %property_is_pixel.addr, align 4
  %tobool43 = icmp ne i32 %54, 0
  %cond = select i1 %tobool43, i32 1, i32 0
  %conv44 = sext i32 %cond to i64
  %55 = inttoptr i64 %conv44 to i8*
  call void @g_object_set_data(%struct._GObject* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* %55)
  %56 = load i32, i32* %property_is_pixel.addr, align 4
  %tobool45 = icmp ne i32 %56, 0
  br i1 %tobool45, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %if.end.39
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_size_entry_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call47)
  %59 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpSizeEntry*
  %60 = load double, double* %value, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %59, i32 0, double %60)
  br label %if.end.52

if.else.49:                                       ; preds = %if.end.39
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_size_entry_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call50)
  %63 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpSizeEntry*
  %64 = load double, double* %value, align 8
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %63, i32 0, double %64)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.46
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 80)
  %67 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %68 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %69 = bitcast %struct._GParamSpec* %68 to i8*
  call void @g_object_set_data(%struct._GObject* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i8* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %72 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %73 = bitcast %struct._GObject* %72 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_size_entry_callback to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %76 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %77 = bitcast %struct._GObject* %76 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_size_entry_callback to void ()*), i8* %77, void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %79 = load i8*, i8** %property_name.addr, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  call void @connect_notify(%struct._GObject* %78, i8* %79, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpSizeEntry*)* @gimp_prop_size_entry_notify to void ()*), i8* %81)
  %82 = load i8*, i8** %unit_property_name.addr, align 8
  %tobool56 = icmp ne i8* %82, null
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.52
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 80)
  %85 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  %86 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %87 = bitcast %struct._GParamSpec* %86 to i8*
  call void @g_object_set_data(%struct._GObject* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %87)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %90 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %91 = bitcast %struct._GObject* %90 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_size_entry_callback to void ()*), i8* %91, void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %93 = load i8*, i8** %unit_property_name.addr, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %95 = bitcast %struct._GtkWidget* %94 to i8*
  call void @connect_notify(%struct._GObject* %92, i8* %93, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpSizeEntry*)* @gimp_prop_size_entry_notify_unit to void ()*), i8* %95)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.52
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  store %struct._GtkWidget* %96, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.12, %if.then.4, %if.then
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %97
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_param_unit_get_type() #3

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #2

declare void @g_value_set_int(%struct._GValue*, i32) #2

declare i32 @g_param_value_validate(%struct._GParamSpec*, %struct._GValue*) #2

declare void @g_value_unset(%struct._GValue*) #2

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_prop_size_entry_num_chars(double %lower, double %upper) #0 {
entry:
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %lower_chars = alloca i32, align 4
  %upper_chars = alloca i32, align 4
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  %0 = load double, double* %lower.addr, align 8
  %call = call double @fabs(double %0) #8
  %call1 = call double @log(double %call) #5
  %call2 = call double @log(double 1.000000e+01) #5
  %div = fdiv double %call1, %call2
  %conv = fptosi double %div to i32
  store i32 %conv, i32* %lower_chars, align 4
  %1 = load double, double* %upper.addr, align 8
  %call3 = call double @fabs(double %1) #8
  %call4 = call double @log(double %call3) #5
  %call5 = call double @log(double 1.000000e+01) #5
  %div6 = fdiv double %call4, %call5
  %conv7 = fptosi double %div6 to i32
  store i32 %conv7, i32* %upper_chars, align 4
  %2 = load double, double* %lower.addr, align 8
  %cmp = fcmp olt double %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %lower_chars, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %lower_chars, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load double, double* %upper.addr, align 8
  %cmp9 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %5 = load i32, i32* %upper_chars, align 4
  %inc12 = add nsw i32 %5, 1
  store i32 %inc12, i32* %upper_chars, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %6 = load i32, i32* %lower_chars, align 4
  %7 = load i32, i32* %upper_chars, align 4
  %cmp14 = icmp sgt i32 %6, %7
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %8 = load i32, i32* %lower_chars, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %9 = load i32, i32* %upper_chars, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  ret i32 %cond
}

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #2

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #2

declare void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry*, i32, double, double) #2

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #2

declare void @gimp_size_entry_set_value(%struct._GimpSizeEntry*, i32, double) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_size_entry_callback(%struct._GimpSizeEntry* %entry1, %struct._GObject* %config) #0 {
entry:
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %unit_param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca double, align 8
  %value_is_pixel = alloca i32, align 4
  %unit_value = alloca i32, align 4
  %old_unit = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst39 = alloca %struct._GTypeInstance*, align 8
  %__t41 = alloca i64, align 8
  %__r44 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0))
  %3 = bitcast i8* %call2 to %struct._GParamSpec*
  store %struct._GParamSpec* %3, %struct._GParamSpec** %param_spec, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.71

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %6 = bitcast %struct._GimpSizeEntry* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0))
  %8 = bitcast i8* %call4 to %struct._GParamSpec*
  store %struct._GParamSpec* %8, %struct._GParamSpec** %unit_param_spec, align 8
  %9 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %10 = bitcast %struct._GimpSizeEntry* %9 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i8* @g_object_get_data(%struct._GObject* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0))
  %12 = ptrtoint i8* %call6 to i64
  %conv = trunc i64 %12 to i32
  store i32 %conv, i32* %value_is_pixel, align 4
  %13 = load i32, i32* %value_is_pixel, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %14 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call9 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %14, i32 0)
  store double %call9, double* %value, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call10 = call double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %15, i32 0)
  store double %call10, double* %value, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %16 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call12 = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %16)
  store i32 %call12, i32* %unit_value, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool13 = icmp ne %struct._GParamSpec* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.11
  %18 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %19 = bitcast %struct._GObject* %18 to i8*
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %19, i8* %21, i32* %old_unit, i8* null)
  %22 = load i32, i32* %unit_value, align 4
  %23 = load i32, i32* %old_unit, align 4
  %cmp = icmp eq i32 %22, %23
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.14
  store %struct._GParamSpec* null, %struct._GParamSpec** %unit_param_spec, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.11
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %25 = bitcast %struct._GParamSpec* %24 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %25, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %26, i64 3
  %27 = load i64, i64* %arrayidx, align 8
  store i64 %27, i64* %__t, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* %__r, align 4
  br label %if.end.30

if.else.21:                                       ; preds = %if.end.18
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool22 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool22, label %land.lhs.true, label %if.else.27

land.lhs.true:                                    ; preds = %if.else.21
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type, align 8
  %34 = load i64, i64* %__t, align 8
  %cmp24 = icmp eq i64 %33, %34
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.29

if.else.27:                                       ; preds = %land.lhs.true, %if.else.21
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %36 = load i64, i64* %__t, align 8
  %call28 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #7
  store i32 %call28, i32* %__r, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.20
  %37 = load i32, i32* %__r, align 4
  store i32 %37, i32* %tmp
  %38 = load i32, i32* %tmp
  %tobool31 = icmp ne i32 %38, 0
  br i1 %tobool31, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.end.30
  %39 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %40 = bitcast %struct._GObject* %39 to i8*
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name33 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %41, i32 0, i32 1
  %42 = load i8*, i8** %name33, align 8
  %43 = load double, double* %value, align 8
  %add = fadd double %43, 5.000000e-01
  %conv34 = fptosi double %add to i32
  %44 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool35 = icmp ne %struct._GParamSpec* %44, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.32
  %45 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %name36 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %45, i32 0, i32 1
  %46 = load i8*, i8** %name36, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %46, %cond.true ], [ null, %cond.false ]
  %47 = load i32, i32* %unit_value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %40, i8* %42, i32 %conv34, i8* %cond, i32 %47, i8* null)
  br label %if.end.71

if.else.37:                                       ; preds = %if.end.30
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %49 = bitcast %struct._GParamSpec* %48 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %49, %struct._GTypeInstance** %__inst39, align 8
  %50 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %50, i64 13
  %51 = load i64, i64* %arrayidx42, align 8
  store i64 %51, i64* %__t41, align 8
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %tobool45 = icmp ne %struct._GTypeInstance* %52, null
  br i1 %tobool45, label %if.else.47, label %if.then.46

if.then.46:                                       ; preds = %if.else.37
  store i32 0, i32* %__r44, align 4
  br label %if.end.59

if.else.47:                                       ; preds = %if.else.37
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %g_class48 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class48, align 8
  %tobool49 = icmp ne %struct._GTypeClass* %54, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.else.56

land.lhs.true.50:                                 ; preds = %if.else.47
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %g_type52 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %56, i32 0, i32 0
  %57 = load i64, i64* %g_type52, align 8
  %58 = load i64, i64* %__t41, align 8
  %cmp53 = icmp eq i64 %57, %58
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.50
  store i32 1, i32* %__r44, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %land.lhs.true.50, %if.else.47
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %60 = load i64, i64* %__t41, align 8
  %call57 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %59, i64 %60) #7
  store i32 %call57, i32* %__r44, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.46
  %61 = load i32, i32* %__r44, align 4
  store i32 %61, i32* %tmp60
  %62 = load i32, i32* %tmp60
  %tobool61 = icmp ne i32 %62, 0
  br i1 %tobool61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.end.59
  %63 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %64 = bitcast %struct._GObject* %63 to i8*
  %65 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name63 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %65, i32 0, i32 1
  %66 = load i8*, i8** %name63, align 8
  %67 = load double, double* %value, align 8
  %68 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool64 = icmp ne %struct._GParamSpec* %68, null
  br i1 %tobool64, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %if.then.62
  %69 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %name66 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %69, i32 0, i32 1
  %70 = load i8*, i8** %name66, align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %if.then.62
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.65
  %cond69 = phi i8* [ %70, %cond.true.65 ], [ null, %cond.false.67 ]
  %71 = load i32, i32* %unit_value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %64, i8* %66, double %67, i8* %cond69, i32 %71, i8* null)
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end.68, %if.end.59
  br label %if.end.71

if.end.71:                                        ; preds = %if.then, %if.end.70, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_size_entry_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpSizeEntry* %entry1) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %value = alloca double, align 8
  %entry_value = alloca double, align 8
  %value_is_pixel = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %int_value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 3
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %16, i8* %18, i32* %int_value, i8* null)
  %19 = load i32, i32* %int_value, align 4
  %conv = sitofp i32 %19 to double
  store double %conv, double* %value, align 8
  br label %if.end.12

if.else.10:                                       ; preds = %if.end.6
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name11 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name11, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %21, i8* %23, double* %value, i8* null)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  %24 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %25 = bitcast %struct._GimpSizeEntry* %24 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %call14 = call i8* @g_object_get_data(%struct._GObject* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0))
  %27 = ptrtoint i8* %call14 to i64
  %conv15 = trunc i64 %27 to i32
  store i32 %conv15, i32* %value_is_pixel, align 4
  %28 = load i32, i32* %value_is_pixel, align 4
  %tobool16 = icmp ne i32 %28, 0
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end.12
  %29 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call18 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %29, i32 0)
  store double %call18, double* %entry_value, align 8
  br label %if.end.21

if.else.19:                                       ; preds = %if.end.12
  %30 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call20 = call double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %30, i32 0)
  store double %call20, double* %entry_value, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.17
  %31 = load double, double* %value, align 8
  %32 = load double, double* %entry_value, align 8
  %cmp22 = fcmp une double %31, %32
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.end.21
  %33 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %34 = bitcast %struct._GimpSizeEntry* %33 to i8*
  %35 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %36 = bitcast %struct._GObject* %35 to i8*
  %call25 = call i32 @g_signal_handlers_block_matched(i8* %34, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_size_entry_callback to i8*), i8* %36)
  %37 = load i32, i32* %value_is_pixel, align 4
  %tobool26 = icmp ne i32 %37, 0
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.then.24
  %38 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %39 = load double, double* %value, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %38, i32 0, double %39)
  br label %if.end.29

if.else.28:                                       ; preds = %if.then.24
  %40 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %41 = load double, double* %value, align 8
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %40, i32 0, double %41)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  %42 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %43 = bitcast %struct._GimpSizeEntry* %42 to i8*
  %44 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %45 = bitcast %struct._GObject* %44 to i8*
  %call30 = call i32 @g_signal_handlers_unblock_matched(i8* %43, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_size_entry_callback to i8*), i8* %45)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_size_entry_notify_unit(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpSizeEntry* %entry1) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load i32, i32* %value, align 4
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %5)
  %cmp = icmp ne i32 %4, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %7 = bitcast %struct._GimpSizeEntry* %6 to i8*
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_size_entry_callback to i8*), i8* %9)
  %10 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %11 = load i32, i32* %value, align 4
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %10, i32 %11)
  %12 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %13 = bitcast %struct._GimpSizeEntry* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_size_entry_callback to i8*), i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_coordinates_new(%struct._GObject* %config, i8* %x_property_name, i8* %y_property_name, i8* %unit_property_name, i8* %unit_format, i32 %update_policy, double %xresolution, double %yresolution, i32 %has_chainbutton) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %x_property_name.addr = alloca i8*, align 8
  %y_property_name.addr = alloca i8*, align 8
  %unit_property_name.addr = alloca i8*, align 8
  %unit_format.addr = alloca i8*, align 8
  %update_policy.addr = alloca i32, align 4
  %xresolution.addr = alloca double, align 8
  %yresolution.addr = alloca double, align 8
  %has_chainbutton.addr = alloca i32, align 4
  %entry1 = alloca %struct._GtkWidget*, align 8
  %chainbutton = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %x_property_name, i8** %x_property_name.addr, align 8
  store i8* %y_property_name, i8** %y_property_name.addr, align 8
  store i8* %unit_property_name, i8** %unit_property_name.addr, align 8
  store i8* %unit_format, i8** %unit_format.addr, align 8
  store i32 %update_policy, i32* %update_policy.addr, align 4
  store double %xresolution, double* %xresolution.addr, align 8
  store double %yresolution, double* %yresolution.addr, align 8
  store i32 %has_chainbutton, i32* %has_chainbutton.addr, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %chainbutton, align 8
  %0 = load i8*, i8** %unit_format.addr, align 8
  %1 = load i32, i32* %update_policy.addr, align 4
  %call = call %struct._GtkWidget* @gimp_size_entry_new(i32 2, i32 1, i8* %0, i32 0, i32 0, i32 1, i32 10, i32 %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %entry1, align 8
  %2 = load i32, i32* %has_chainbutton.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._GtkWidget* @gimp_chain_button_new(i32 2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %chainbutton, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %5, %struct._GtkWidget* %6, i32 1, i32 3, i32 3, i32 4)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = load i8*, i8** %x_property_name.addr, align 8
  %10 = load i8*, i8** %y_property_name.addr, align 8
  %11 = load i8*, i8** %unit_property_name.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %14 = load double, double* %xresolution.addr, align 8
  %15 = load double, double* %yresolution.addr, align 8
  %call5 = call i32 @gimp_prop_coordinates_connect(%struct._GObject* %8, i8* %9, i8* %10, i8* %11, %struct._GtkWidget* %12, %struct._GtkWidget* %13, double %14, double %15)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %16)
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  store %struct._GtkWidget* %17, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %18
}

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #2

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #2

declare void @gtk_widget_show(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_prop_coordinates_connect(%struct._GObject* %config, i8* %x_property_name, i8* %y_property_name, i8* %unit_property_name, %struct._GtkWidget* %entry1, %struct._GtkWidget* %chainbutton, double %xresolution, double %yresolution) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GObject*, align 8
  %x_property_name.addr = alloca i8*, align 8
  %y_property_name.addr = alloca i8*, align 8
  %unit_property_name.addr = alloca i8*, align 8
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %chainbutton.addr = alloca %struct._GtkWidget*, align 8
  %xresolution.addr = alloca double, align 8
  %yresolution.addr = alloca double, align 8
  %x_param_spec = alloca %struct._GParamSpec*, align 8
  %y_param_spec = alloca %struct._GParamSpec*, align 8
  %unit_param_spec = alloca %struct._GParamSpec*, align 8
  %x_value = alloca double, align 8
  %x_lower = alloca double, align 8
  %x_upper = alloca double, align 8
  %y_value = alloca double, align 8
  %y_lower = alloca double, align 8
  %y_upper = alloca double, align 8
  %unit_value = alloca i32, align 4
  %old_x_value = alloca double*, align 8
  %old_y_value = alloca double*, align 8
  %old_unit_value = alloca i32*, align 8
  %chain_checked = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %x_property_name, i8** %x_property_name.addr, align 8
  store i8* %y_property_name, i8** %y_property_name.addr, align 8
  store i8* %unit_property_name, i8** %unit_property_name.addr, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct._GtkWidget* %chainbutton, %struct._GtkWidget** %chainbutton.addr, align 8
  store double %xresolution, double* %xresolution.addr, align 8
  store double %yresolution, double* %yresolution.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_coordinates_connect, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_size_entry_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpSizeEntry*
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %15, i32 0, i32 2
  %16 = load i32, i32* %number_of_fields, align 4
  %cmp15 = icmp eq i32 %16, 2
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.12
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_coordinates_connect, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton.addr, align 8
  %cmp21 = icmp eq %struct._GtkWidget* %17, null
  br i1 %cmp21, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.20
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gimp_chain_button_get_type() #8
  store i64 %call26, i64* %__t25, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %lor.lhs.false
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type36, align 8
  %26 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %25, %26
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %28 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #7
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %29 = load i32, i32* %__r28, align 4
  store i32 %29, i32* %tmp43
  %30 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %30, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42, %do.body.20
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_coordinates_connect, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.33, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %31 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %32 = load i8*, i8** %x_property_name.addr, align 8
  %call49 = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %31, i8* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_coordinates_connect, i32 0, i32 0))
  store %struct._GParamSpec* %call49, %struct._GParamSpec** %x_param_spec, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %tobool50 = icmp ne %struct._GParamSpec* %33, null
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %do.end.48
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %do.end.48
  %34 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %35 = load i8*, i8** %y_property_name.addr, align 8
  %call53 = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %34, i8* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_coordinates_connect, i32 0, i32 0))
  store %struct._GParamSpec* %call53, %struct._GParamSpec** %y_param_spec, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %tobool54 = icmp ne %struct._GParamSpec* %36, null
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.52
  %37 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %call57 = call i32 @get_numeric_values(%struct._GObject* %37, %struct._GParamSpec* %38, double* %x_value, double* %x_lower, double* %x_upper, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_coordinates_connect, i32 0, i32 0))
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %lor.lhs.false.59, label %if.then.62

lor.lhs.false.59:                                 ; preds = %if.end.56
  %39 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %call60 = call i32 @get_numeric_values(%struct._GObject* %39, %struct._GParamSpec* %40, double* %y_value, double* %y_lower, double* %y_upper, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_coordinates_connect, i32 0, i32 0))
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %lor.lhs.false.59, %if.end.56
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %lor.lhs.false.59
  %41 = load i8*, i8** %unit_property_name.addr, align 8
  %tobool64 = icmp ne i8* %41, null
  br i1 %tobool64, label %if.then.65, label %if.else.71

if.then.65:                                       ; preds = %if.end.63
  %42 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %43 = load i8*, i8** %unit_property_name.addr, align 8
  %call66 = call i64 @gimp_param_unit_get_type() #8
  %call67 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %42, i8* %43, i64 %call66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_coordinates_connect, i32 0, i32 0))
  store %struct._GParamSpec* %call67, %struct._GParamSpec** %unit_param_spec, align 8
  %44 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool68 = icmp ne %struct._GParamSpec* %44, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.then.65
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.65
  %45 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %46 = bitcast %struct._GObject* %45 to i8*
  %47 = load i8*, i8** %unit_property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %46, i8* %47, i32* %unit_value, i8* null)
  br label %if.end.72

if.else.71:                                       ; preds = %if.end.63
  store %struct._GParamSpec* null, %struct._GParamSpec** %unit_param_spec, align 8
  store i32 1, i32* %unit_value, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.end.70
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_size_entry_get_type() #8
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call73)
  %50 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpSizeEntry*
  %call75 = call %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry* %50, i32 0)
  %51 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  call void @set_param_spec(%struct._GObject* null, %struct._GtkWidget* %call75, %struct._GParamSpec* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_size_entry_get_type() #8
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call76)
  %54 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpSizeEntry*
  %call78 = call %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry* %54, i32 1)
  %55 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  call void @set_param_spec(%struct._GObject* null, %struct._GtkWidget* %call78, %struct._GParamSpec* %55)
  %56 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool79 = icmp ne %struct._GParamSpec* %56, null
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.end.72
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_size_entry_get_type() #8
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call81)
  %59 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpSizeEntry*
  %unitmenu = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %59, i32 0, i32 3
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %unitmenu, align 8
  %61 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  call void @set_param_spec(%struct._GObject* null, %struct._GtkWidget* %60, %struct._GParamSpec* %61)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.end.72
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_size_entry_get_type() #8
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call84)
  %64 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpSizeEntry*
  %65 = load i32, i32* %unit_value, align 4
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %64, i32 %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_size_entry_get_type() #8
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call86)
  %68 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpSizeEntry*
  %update_policy = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %68, i32 0, i32 8
  %69 = load i32, i32* %update_policy, align 4
  switch i32 %69, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %if.end.83
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_size_entry_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call88)
  %72 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpSizeEntry*
  %73 = load double, double* %xresolution.addr, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %72, i32 0, double %73, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_size_entry_get_type() #8
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call90)
  %76 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpSizeEntry*
  %77 = load double, double* %yresolution.addr, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %76, i32 1, double %77, i32 0)
  %78 = load double, double* %x_value, align 8
  %79 = load double, double* %y_value, align 8
  %sub = fsub double %78, %79
  %cmp92 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %80 = load double, double* %x_value, align 8
  %81 = load double, double* %y_value, align 8
  %sub93 = fsub double %80, %81
  %sub94 = fsub double -0.000000e+00, %sub93
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %82 = load double, double* %x_value, align 8
  %83 = load double, double* %y_value, align 8
  %sub95 = fsub double %82, %83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub94, %cond.true ], [ %sub95, %cond.false ]
  %cmp96 = fcmp olt double %cond, 1.000000e+00
  %conv = zext i1 %cmp96 to i32
  store i32 %conv, i32* %chain_checked, align 4
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.83
  %84 = load double, double* %x_value, align 8
  %85 = load double, double* %y_value, align 8
  %sub98 = fsub double %84, %85
  %cmp99 = fcmp olt double %sub98, 0.000000e+00
  br i1 %cmp99, label %cond.true.101, label %cond.false.104

cond.true.101:                                    ; preds = %sw.bb.97
  %86 = load double, double* %x_value, align 8
  %87 = load double, double* %y_value, align 8
  %sub102 = fsub double %86, %87
  %sub103 = fsub double -0.000000e+00, %sub102
  br label %cond.end.106

cond.false.104:                                   ; preds = %sw.bb.97
  %88 = load double, double* %x_value, align 8
  %89 = load double, double* %y_value, align 8
  %sub105 = fsub double %88, %89
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %cond.true.101
  %cond107 = phi double [ %sub103, %cond.true.101 ], [ %sub105, %cond.false.104 ]
  %cmp108 = fcmp olt double %cond107, 5.000000e-03
  %conv109 = zext i1 %cmp108 to i32
  store i32 %conv109, i32* %chain_checked, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.83
  %90 = load double, double* %x_value, align 8
  %91 = load double, double* %y_value, align 8
  %cmp110 = fcmp oeq double %90, %91
  %conv111 = zext i1 %cmp110 to i32
  store i32 %conv111, i32* %chain_checked, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.106, %cond.end
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_size_entry_get_type() #8
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call112)
  %94 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpSizeEntry*
  %95 = load double, double* %x_lower, align 8
  %96 = load double, double* %x_upper, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %94, i32 0, double %95, double %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call114 = call i64 @gimp_size_entry_get_type() #8
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call114)
  %99 = bitcast %struct._GTypeInstance* %call115 to %struct._GimpSizeEntry*
  %100 = load double, double* %y_lower, align 8
  %101 = load double, double* %y_upper, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %99, i32 1, double %100, double %101)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_size_entry_get_type() #8
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call116)
  %104 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpSizeEntry*
  %105 = load double, double* %x_value, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %104, i32 0, double %105)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_size_entry_get_type() #8
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call118)
  %108 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpSizeEntry*
  %109 = load double, double* %y_value, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %108, i32 1, double %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 80)
  %112 = bitcast %struct._GTypeInstance* %call120 to %struct._GObject*
  %113 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %114 = bitcast %struct._GParamSpec* %113 to i8*
  call void @g_object_set_data(%struct._GObject* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i8* %114)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 80)
  %117 = bitcast %struct._GTypeInstance* %call121 to %struct._GObject*
  %118 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %119 = bitcast %struct._GParamSpec* %118 to i8*
  call void @g_object_set_data(%struct._GObject* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0), i8* %119)
  %call122 = call noalias i8* @g_malloc0_n(i64 1, i64 8)
  %120 = bitcast i8* %call122 to double*
  store double* %120, double** %old_x_value, align 8
  %121 = load double, double* %x_value, align 8
  %122 = load double*, double** %old_x_value, align 8
  store double %121, double* %122, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 80)
  %125 = bitcast %struct._GTypeInstance* %call123 to %struct._GObject*
  %126 = load double*, double** %old_x_value, align 8
  %127 = bitcast double* %126 to i8*
  call void @g_object_set_data_full(%struct._GObject* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* %127, void (i8*)* @g_free)
  %call124 = call noalias i8* @g_malloc0_n(i64 1, i64 8)
  %128 = bitcast i8* %call124 to double*
  store double* %128, double** %old_y_value, align 8
  %129 = load double, double* %y_value, align 8
  %130 = load double*, double** %old_y_value, align 8
  store double %129, double* %130, align 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 80)
  %133 = bitcast %struct._GTypeInstance* %call125 to %struct._GObject*
  %134 = load double*, double** %old_y_value, align 8
  %135 = bitcast double* %134 to i8*
  call void @g_object_set_data_full(%struct._GObject* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* %135, void (i8*)* @g_free)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton.addr, align 8
  %tobool126 = icmp ne %struct._GtkWidget* %136, null
  br i1 %tobool126, label %if.then.127, label %if.end.134

if.then.127:                                      ; preds = %sw.epilog
  %137 = load i32, i32* %chain_checked, align 4
  %tobool128 = icmp ne i32 %137, 0
  br i1 %tobool128, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %if.then.127
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton.addr, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call130 = call i64 @gimp_chain_button_get_type() #8
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call130)
  %140 = bitcast %struct._GTypeInstance* %call131 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %140, i32 1)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %if.then.127
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 80)
  %143 = bitcast %struct._GTypeInstance* %call133 to %struct._GObject*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton.addr, align 8
  %145 = bitcast %struct._GtkWidget* %144 to i8*
  call void @g_object_set_data(%struct._GObject* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i8* %145)
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.132, %sw.epilog
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %147 = bitcast %struct._GtkWidget* %146 to i8*
  %148 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %149 = bitcast %struct._GObject* %148 to i8*
  %call135 = call i64 @g_signal_connect_data(i8* %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to void ()*), i8* %149, void (i8*, %struct._GClosure*)* null, i32 0)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %151 = bitcast %struct._GtkWidget* %150 to i8*
  %152 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %153 = bitcast %struct._GObject* %152 to i8*
  %call136 = call i64 @g_signal_connect_data(i8* %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to void ()*), i8* %153, void (i8*, %struct._GClosure*)* null, i32 0)
  %154 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %155 = load i8*, i8** %x_property_name.addr, align 8
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %157 = bitcast %struct._GtkWidget* %156 to i8*
  call void @connect_notify(%struct._GObject* %154, i8* %155, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpSizeEntry*)* @gimp_prop_coordinates_notify_x to void ()*), i8* %157)
  %158 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %159 = load i8*, i8** %y_property_name.addr, align 8
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %161 = bitcast %struct._GtkWidget* %160 to i8*
  call void @connect_notify(%struct._GObject* %158, i8* %159, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpSizeEntry*)* @gimp_prop_coordinates_notify_y to void ()*), i8* %161)
  %162 = load i8*, i8** %unit_property_name.addr, align 8
  %tobool137 = icmp ne i8* %162, null
  br i1 %tobool137, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %if.end.134
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 80)
  %165 = bitcast %struct._GTypeInstance* %call139 to %struct._GObject*
  %166 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %167 = bitcast %struct._GParamSpec* %166 to i8*
  call void @g_object_set_data(%struct._GObject* %165, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %167)
  %call140 = call noalias i8* @g_malloc0_n(i64 1, i64 4)
  %168 = bitcast i8* %call140 to i32*
  store i32* %168, i32** %old_unit_value, align 8
  %169 = load i32, i32* %unit_value, align 4
  %170 = load i32*, i32** %old_unit_value, align 8
  store i32 %169, i32* %170, align 4
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 80)
  %173 = bitcast %struct._GTypeInstance* %call141 to %struct._GObject*
  %174 = load i32*, i32** %old_unit_value, align 8
  %175 = bitcast i32* %174 to i8*
  call void @g_object_set_data_full(%struct._GObject* %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* %175, void (i8*)* @g_free)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %177 = bitcast %struct._GtkWidget* %176 to i8*
  %178 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %179 = bitcast %struct._GObject* %178 to i8*
  %call142 = call i64 @g_signal_connect_data(i8* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to void ()*), i8* %179, void (i8*, %struct._GClosure*)* null, i32 0)
  %180 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %181 = load i8*, i8** %unit_property_name.addr, align 8
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %183 = bitcast %struct._GtkWidget* %182 to i8*
  call void @connect_notify(%struct._GObject* %180, i8* %181, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpSizeEntry*)* @gimp_prop_coordinates_notify_unit to void ()*), i8* %183)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %if.end.134
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.143, %if.then.69, %if.then.62, %if.then.55, %if.then.51, %if.else.46, %if.else.17, %if.else.10
  %184 = load i32, i32* %retval
  ret i32 %184
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #3

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #2

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_coordinates_callback(%struct._GimpSizeEntry* %entry1, %struct._GObject* %config) #0 {
entry:
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %x_param_spec = alloca %struct._GParamSpec*, align 8
  %y_param_spec = alloca %struct._GParamSpec*, align 8
  %unit_param_spec = alloca %struct._GParamSpec*, align 8
  %x_value = alloca double, align 8
  %y_value = alloca double, align 8
  %unit_value = alloca i32, align 4
  %old_x_value = alloca double*, align 8
  %old_y_value = alloca double*, align 8
  %old_unit_value = alloca i32*, align 8
  %backwards = alloca i32, align 4
  %chainbutton = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst83 = alloca %struct._GTypeInstance*, align 8
  %__t85 = alloca i64, align 8
  %__r88 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %__inst124 = alloca %struct._GTypeInstance*, align 8
  %__t126 = alloca i64, align 8
  %__r129 = alloca i32, align 4
  %tmp145 = alloca i32, align 4
  %__inst149 = alloca %struct._GTypeInstance*, align 8
  %__t151 = alloca i64, align 8
  %__r154 = alloca i32, align 4
  %tmp170 = alloca i32, align 4
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0))
  %3 = bitcast i8* %call2 to %struct._GParamSpec*
  store %struct._GParamSpec* %3, %struct._GParamSpec** %x_param_spec, align 8
  %4 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %5 = bitcast %struct._GimpSizeEntry* %4 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0))
  %7 = bitcast i8* %call4 to %struct._GParamSpec*
  store %struct._GParamSpec* %7, %struct._GParamSpec** %y_param_spec, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %8, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %tobool5 = icmp ne %struct._GParamSpec* %9, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.182

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %11 = bitcast %struct._GimpSizeEntry* %10 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %call7 = call i8* @g_object_get_data(%struct._GObject* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0))
  %13 = bitcast i8* %call7 to %struct._GParamSpec*
  store %struct._GParamSpec* %13, %struct._GParamSpec** %unit_param_spec, align 8
  %14 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call8 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %14, i32 0)
  store double %call8, double* %x_value, align 8
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call9 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %15, i32 1)
  store double %call9, double* %y_value, align 8
  %16 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call10 = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %16)
  store i32 %call10, i32* %unit_value, align 4
  %17 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %18 = bitcast %struct._GimpSizeEntry* %17 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  %20 = bitcast i8* %call12 to double*
  store double* %20, double** %old_x_value, align 8
  %21 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %22 = bitcast %struct._GimpSizeEntry* %21 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %call14 = call i8* @g_object_get_data(%struct._GObject* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0))
  %24 = bitcast i8* %call14 to double*
  store double* %24, double** %old_y_value, align 8
  %25 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %26 = bitcast %struct._GimpSizeEntry* %25 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %call16 = call i8* @g_object_get_data(%struct._GObject* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0))
  %28 = bitcast i8* %call16 to i32*
  store i32* %28, i32** %old_unit_value, align 8
  %29 = load double*, double** %old_x_value, align 8
  %tobool17 = icmp ne double* %29, null
  br i1 %tobool17, label %lor.lhs.false.18, label %if.then.23

lor.lhs.false.18:                                 ; preds = %if.end
  %30 = load double*, double** %old_y_value, align 8
  %tobool19 = icmp ne double* %30, null
  br i1 %tobool19, label %lor.lhs.false.20, label %if.then.23

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.18
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool21 = icmp ne %struct._GParamSpec* %31, null
  br i1 %tobool21, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %lor.lhs.false.20
  %32 = load i32*, i32** %old_unit_value, align 8
  %tobool22 = icmp ne i32* %32, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true, %lor.lhs.false.18, %if.end
  br label %if.end.182

if.end.24:                                        ; preds = %land.lhs.true, %lor.lhs.false.20
  %33 = load double, double* %x_value, align 8
  %34 = load double, double* %y_value, align 8
  %cmp = fcmp une double %33, %34
  br i1 %cmp, label %if.then.25, label %if.end.46

if.then.25:                                       ; preds = %if.end.24
  %35 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %36 = bitcast %struct._GimpSizeEntry* %35 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %call27 = call i8* @g_object_get_data(%struct._GObject* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %38 = bitcast i8* %call27 to %struct._GtkWidget*
  store %struct._GtkWidget* %38, %struct._GtkWidget** %chainbutton, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %tobool28 = icmp ne %struct._GtkWidget* %39, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.45

land.lhs.true.29:                                 ; preds = %if.then.25
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_chain_button_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpChainButton*
  %call32 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %42)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.45

land.lhs.true.34:                                 ; preds = %land.lhs.true.29
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %call36 = call i8* @g_object_get_data(%struct._GObject* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0))
  %tobool37 = icmp ne i8* %call36, null
  br i1 %tobool37, label %if.end.45, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.34
  %46 = load double, double* %x_value, align 8
  %47 = load double*, double** %old_x_value, align 8
  %48 = load double, double* %47, align 8
  %cmp39 = fcmp une double %46, %48
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.38
  %49 = load double, double* %x_value, align 8
  store double %49, double* %y_value, align 8
  br label %if.end.44

if.else:                                          ; preds = %if.then.38
  %50 = load double, double* %y_value, align 8
  %51 = load double*, double** %old_y_value, align 8
  %52 = load double, double* %51, align 8
  %cmp41 = fcmp une double %50, %52
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else
  %53 = load double, double* %y_value, align 8
  store double %53, double* %x_value, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.34, %land.lhs.true.29, %if.then.25
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.24
  %54 = load double*, double** %old_x_value, align 8
  %55 = load double, double* %54, align 8
  %56 = load double, double* %x_value, align 8
  %cmp47 = fcmp oeq double %55, %56
  %conv = zext i1 %cmp47 to i32
  store i32 %conv, i32* %backwards, align 4
  %57 = load double*, double** %old_x_value, align 8
  %58 = load double, double* %57, align 8
  %59 = load double, double* %x_value, align 8
  %cmp48 = fcmp oeq double %58, %59
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.60

land.lhs.true.50:                                 ; preds = %if.end.46
  %60 = load double*, double** %old_y_value, align 8
  %61 = load double, double* %60, align 8
  %62 = load double, double* %y_value, align 8
  %cmp51 = fcmp oeq double %61, %62
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %land.lhs.true.50
  %63 = load i32*, i32** %old_unit_value, align 8
  %cmp54 = icmp eq i32* %63, null
  br i1 %cmp54, label %if.then.59, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %land.lhs.true.53
  %64 = load i32*, i32** %old_unit_value, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %unit_value, align 4
  %cmp57 = icmp eq i32 %65, %66
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false.56, %land.lhs.true.53
  br label %if.end.182

if.end.60:                                        ; preds = %lor.lhs.false.56, %land.lhs.true.50, %if.end.46
  %67 = load double, double* %x_value, align 8
  %68 = load double*, double** %old_x_value, align 8
  store double %67, double* %68, align 8
  %69 = load double, double* %y_value, align 8
  %70 = load double*, double** %old_y_value, align 8
  store double %69, double* %70, align 8
  %71 = load i32*, i32** %old_unit_value, align 8
  %tobool61 = icmp ne i32* %71, null
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.60
  %72 = load i32, i32* %unit_value, align 4
  %73 = load i32*, i32** %old_unit_value, align 8
  store i32 %72, i32* %73, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.60
  %74 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %tobool64 = icmp ne %struct._GParamSpec* %74, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  %75 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %76 = bitcast %struct._GObject* %75 to i8*
  %77 = load %struct._GParamSpec*, %struct._GParamSpec** %unit_param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %77, i32 0, i32 1
  %78 = load i8*, i8** %name, align 8
  %79 = load i32, i32* %unit_value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %76, i8* %78, i32 %79, i8* null)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  %80 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %81 = bitcast %struct._GParamSpec* %80 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %81, %struct._GTypeInstance** %__inst, align 8
  %82 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %82, i64 3
  %83 = load i64, i64* %arrayidx, align 8
  store i64 %83, i64* %__t, align 8
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool67 = icmp ne %struct._GTypeInstance* %84, null
  br i1 %tobool67, label %if.else.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.66
  store i32 0, i32* %__r, align 4
  br label %if.end.79

if.else.69:                                       ; preds = %if.end.66
  %85 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %85, i32 0, i32 0
  %86 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool70 = icmp ne %struct._GTypeClass* %86, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.else.76

land.lhs.true.71:                                 ; preds = %if.else.69
  %87 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %87, i32 0, i32 0
  %88 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %88, i32 0, i32 0
  %89 = load i64, i64* %g_type, align 8
  %90 = load i64, i64* %__t, align 8
  %cmp73 = icmp eq i64 %89, %90
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %land.lhs.true.71
  store i32 1, i32* %__r, align 4
  br label %if.end.78

if.else.76:                                       ; preds = %land.lhs.true.71, %if.else.69
  %91 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %92 = load i64, i64* %__t, align 8
  %call77 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %91, i64 %92) #7
  store i32 %call77, i32* %__r, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.68
  %93 = load i32, i32* %__r, align 4
  store i32 %93, i32* %tmp
  %94 = load i32, i32* %tmp
  %tobool80 = icmp ne i32 %94, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.122

land.lhs.true.81:                                 ; preds = %if.end.79
  %95 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %96 = bitcast %struct._GParamSpec* %95 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %96, %struct._GTypeInstance** %__inst83, align 8
  %97 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx86 = getelementptr inbounds i64, i64* %97, i64 3
  %98 = load i64, i64* %arrayidx86, align 8
  store i64 %98, i64* %__t85, align 8
  %99 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %tobool89 = icmp ne %struct._GTypeInstance* %99, null
  br i1 %tobool89, label %if.else.91, label %if.then.90

if.then.90:                                       ; preds = %land.lhs.true.81
  store i32 0, i32* %__r88, align 4
  br label %if.end.103

if.else.91:                                       ; preds = %land.lhs.true.81
  %100 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %g_class92 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %100, i32 0, i32 0
  %101 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class92, align 8
  %tobool93 = icmp ne %struct._GTypeClass* %101, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.else.100

land.lhs.true.94:                                 ; preds = %if.else.91
  %102 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %g_class95 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %102, i32 0, i32 0
  %103 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class95, align 8
  %g_type96 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %103, i32 0, i32 0
  %104 = load i64, i64* %g_type96, align 8
  %105 = load i64, i64* %__t85, align 8
  %cmp97 = icmp eq i64 %104, %105
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %land.lhs.true.94
  store i32 1, i32* %__r88, align 4
  br label %if.end.102

if.else.100:                                      ; preds = %land.lhs.true.94, %if.else.91
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %107 = load i64, i64* %__t85, align 8
  %call101 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %106, i64 %107) #7
  store i32 %call101, i32* %__r88, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.100, %if.then.99
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.90
  %108 = load i32, i32* %__r88, align 4
  store i32 %108, i32* %tmp104
  %109 = load i32, i32* %tmp104
  %tobool105 = icmp ne i32 %109, 0
  br i1 %tobool105, label %if.then.106, label %if.else.122

if.then.106:                                      ; preds = %if.end.103
  %110 = load i32, i32* %backwards, align 4
  %tobool107 = icmp ne i32 %110, 0
  br i1 %tobool107, label %if.then.108, label %if.else.114

if.then.108:                                      ; preds = %if.then.106
  %111 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %112 = bitcast %struct._GObject* %111 to i8*
  %113 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %name109 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %113, i32 0, i32 1
  %114 = load i8*, i8** %name109, align 8
  %115 = load double, double* %y_value, align 8
  %add = fadd double %115, 5.000000e-01
  %conv110 = fptosi double %add to i32
  %116 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %name111 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %116, i32 0, i32 1
  %117 = load i8*, i8** %name111, align 8
  %118 = load double, double* %x_value, align 8
  %add112 = fadd double %118, 5.000000e-01
  %conv113 = fptosi double %add112 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %112, i8* %114, i32 %conv110, i8* %117, i32 %conv113, i8* null)
  br label %if.end.121

if.else.114:                                      ; preds = %if.then.106
  %119 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %120 = bitcast %struct._GObject* %119 to i8*
  %121 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %name115 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %121, i32 0, i32 1
  %122 = load i8*, i8** %name115, align 8
  %123 = load double, double* %x_value, align 8
  %add116 = fadd double %123, 5.000000e-01
  %conv117 = fptosi double %add116 to i32
  %124 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %name118 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %124, i32 0, i32 1
  %125 = load i8*, i8** %name118, align 8
  %126 = load double, double* %y_value, align 8
  %add119 = fadd double %126, 5.000000e-01
  %conv120 = fptosi double %add119 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %120, i8* %122, i32 %conv117, i8* %125, i32 %conv120, i8* null)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.114, %if.then.108
  br label %if.end.182

if.else.122:                                      ; preds = %if.end.103, %if.end.79
  %127 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %128 = bitcast %struct._GParamSpec* %127 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %128, %struct._GTypeInstance** %__inst124, align 8
  %129 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx127 = getelementptr inbounds i64, i64* %129, i64 13
  %130 = load i64, i64* %arrayidx127, align 8
  store i64 %130, i64* %__t126, align 8
  %131 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst124, align 8
  %tobool130 = icmp ne %struct._GTypeInstance* %131, null
  br i1 %tobool130, label %if.else.132, label %if.then.131

if.then.131:                                      ; preds = %if.else.122
  store i32 0, i32* %__r129, align 4
  br label %if.end.144

if.else.132:                                      ; preds = %if.else.122
  %132 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst124, align 8
  %g_class133 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %132, i32 0, i32 0
  %133 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class133, align 8
  %tobool134 = icmp ne %struct._GTypeClass* %133, null
  br i1 %tobool134, label %land.lhs.true.135, label %if.else.141

land.lhs.true.135:                                ; preds = %if.else.132
  %134 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst124, align 8
  %g_class136 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %134, i32 0, i32 0
  %135 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class136, align 8
  %g_type137 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %135, i32 0, i32 0
  %136 = load i64, i64* %g_type137, align 8
  %137 = load i64, i64* %__t126, align 8
  %cmp138 = icmp eq i64 %136, %137
  br i1 %cmp138, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %land.lhs.true.135
  store i32 1, i32* %__r129, align 4
  br label %if.end.143

if.else.141:                                      ; preds = %land.lhs.true.135, %if.else.132
  %138 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst124, align 8
  %139 = load i64, i64* %__t126, align 8
  %call142 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %138, i64 %139) #7
  store i32 %call142, i32* %__r129, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.141, %if.then.140
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.131
  %140 = load i32, i32* %__r129, align 4
  store i32 %140, i32* %tmp145
  %141 = load i32, i32* %tmp145
  %tobool146 = icmp ne i32 %141, 0
  br i1 %tobool146, label %land.lhs.true.147, label %if.end.181

land.lhs.true.147:                                ; preds = %if.end.144
  %142 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %143 = bitcast %struct._GParamSpec* %142 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %143, %struct._GTypeInstance** %__inst149, align 8
  %144 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx152 = getelementptr inbounds i64, i64* %144, i64 13
  %145 = load i64, i64* %arrayidx152, align 8
  store i64 %145, i64* %__t151, align 8
  %146 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst149, align 8
  %tobool155 = icmp ne %struct._GTypeInstance* %146, null
  br i1 %tobool155, label %if.else.157, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true.147
  store i32 0, i32* %__r154, align 4
  br label %if.end.169

if.else.157:                                      ; preds = %land.lhs.true.147
  %147 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst149, align 8
  %g_class158 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %147, i32 0, i32 0
  %148 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class158, align 8
  %tobool159 = icmp ne %struct._GTypeClass* %148, null
  br i1 %tobool159, label %land.lhs.true.160, label %if.else.166

land.lhs.true.160:                                ; preds = %if.else.157
  %149 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst149, align 8
  %g_class161 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %149, i32 0, i32 0
  %150 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class161, align 8
  %g_type162 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %150, i32 0, i32 0
  %151 = load i64, i64* %g_type162, align 8
  %152 = load i64, i64* %__t151, align 8
  %cmp163 = icmp eq i64 %151, %152
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %land.lhs.true.160
  store i32 1, i32* %__r154, align 4
  br label %if.end.168

if.else.166:                                      ; preds = %land.lhs.true.160, %if.else.157
  %153 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst149, align 8
  %154 = load i64, i64* %__t151, align 8
  %call167 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %153, i64 %154) #7
  store i32 %call167, i32* %__r154, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.166, %if.then.165
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.156
  %155 = load i32, i32* %__r154, align 4
  store i32 %155, i32* %tmp170
  %156 = load i32, i32* %tmp170
  %tobool171 = icmp ne i32 %156, 0
  br i1 %tobool171, label %if.then.172, label %if.end.181

if.then.172:                                      ; preds = %if.end.169
  %157 = load i32, i32* %backwards, align 4
  %tobool173 = icmp ne i32 %157, 0
  br i1 %tobool173, label %if.then.174, label %if.else.177

if.then.174:                                      ; preds = %if.then.172
  %158 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %159 = bitcast %struct._GObject* %158 to i8*
  %160 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %name175 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %160, i32 0, i32 1
  %161 = load i8*, i8** %name175, align 8
  %162 = load double, double* %y_value, align 8
  %163 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %name176 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %163, i32 0, i32 1
  %164 = load i8*, i8** %name176, align 8
  %165 = load double, double* %x_value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %159, i8* %161, double %162, i8* %164, double %165, i8* null)
  br label %if.end.180

if.else.177:                                      ; preds = %if.then.172
  %166 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %167 = bitcast %struct._GObject* %166 to i8*
  %168 = load %struct._GParamSpec*, %struct._GParamSpec** %x_param_spec, align 8
  %name178 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %168, i32 0, i32 1
  %169 = load i8*, i8** %name178, align 8
  %170 = load double, double* %x_value, align 8
  %171 = load %struct._GParamSpec*, %struct._GParamSpec** %y_param_spec, align 8
  %name179 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %171, i32 0, i32 1
  %172 = load i8*, i8** %name179, align 8
  %173 = load double, double* %y_value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %167, i8* %169, double %170, i8* %172, double %173, i8* null)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.then.174
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.end.169, %if.end.144
  br label %if.end.182

if.end.182:                                       ; preds = %if.then, %if.then.23, %if.then.59, %if.end.181, %if.end.121
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_coordinates_notify_x(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpSizeEntry* %entry1) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %value = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %int_value = alloca i32, align 4
  %old_x_value = alloca double*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 3
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %16, i8* %18, i32* %int_value, i8* null)
  %19 = load i32, i32* %int_value, align 4
  %conv = sitofp i32 %19 to double
  store double %conv, double* %value, align 8
  br label %if.end.12

if.else.10:                                       ; preds = %if.end.6
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name11 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name11, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %21, i8* %23, double* %value, i8* null)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  %24 = load double, double* %value, align 8
  %25 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call13 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %25, i32 0)
  %cmp14 = fcmp une double %24, %call13
  br i1 %cmp14, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %if.end.12
  %26 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %27 = bitcast %struct._GimpSizeEntry* %26 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %call19 = call i8* @g_object_get_data(%struct._GObject* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  %29 = bitcast i8* %call19 to double*
  store double* %29, double** %old_x_value, align 8
  %30 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %31 = bitcast %struct._GimpSizeEntry* %30 to i8*
  %32 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %33 = bitcast %struct._GObject* %32 to i8*
  %call20 = call i32 @g_signal_handlers_block_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to i8*), i8* %33)
  %34 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %35 = load double, double* %value, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %34, i32 0, double %35)
  %36 = load double*, double** %old_x_value, align 8
  %tobool21 = icmp ne double* %36, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.16
  %37 = load double, double* %value, align 8
  %38 = load double*, double** %old_x_value, align 8
  store double %37, double* %38, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.16
  %39 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %40 = bitcast %struct._GimpSizeEntry* %39 to i8*
  %41 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call24 = call double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %41, i32 0)
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), double %call24)
  %42 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %43 = bitcast %struct._GimpSizeEntry* %42 to i8*
  %44 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %45 = bitcast %struct._GObject* %44 to i8*
  %call25 = call i32 @g_signal_handlers_unblock_matched(i8* %43, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to i8*), i8* %45)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.23, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_coordinates_notify_y(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpSizeEntry* %entry1) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %value = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %int_value = alloca i32, align 4
  %old_y_value = alloca double*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 3
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %16, i8* %18, i32* %int_value, i8* null)
  %19 = load i32, i32* %int_value, align 4
  %conv = sitofp i32 %19 to double
  store double %conv, double* %value, align 8
  br label %if.end.12

if.else.10:                                       ; preds = %if.end.6
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name11 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name11, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %21, i8* %23, double* %value, i8* null)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  %24 = load double, double* %value, align 8
  %25 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call13 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %25, i32 1)
  %cmp14 = fcmp une double %24, %call13
  br i1 %cmp14, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %if.end.12
  %26 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %27 = bitcast %struct._GimpSizeEntry* %26 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %call19 = call i8* @g_object_get_data(%struct._GObject* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0))
  %29 = bitcast i8* %call19 to double*
  store double* %29, double** %old_y_value, align 8
  %30 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %31 = bitcast %struct._GimpSizeEntry* %30 to i8*
  %32 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %33 = bitcast %struct._GObject* %32 to i8*
  %call20 = call i32 @g_signal_handlers_block_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to i8*), i8* %33)
  %34 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %35 = load double, double* %value, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %34, i32 1, double %35)
  %36 = load double*, double** %old_y_value, align 8
  %tobool21 = icmp ne double* %36, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.16
  %37 = load double, double* %value, align 8
  %38 = load double*, double** %old_y_value, align 8
  store double %37, double* %38, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.16
  %39 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %40 = bitcast %struct._GimpSizeEntry* %39 to i8*
  %41 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call24 = call double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %41, i32 1)
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), double %call24)
  %42 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %43 = bitcast %struct._GimpSizeEntry* %42 to i8*
  %44 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %45 = bitcast %struct._GObject* %44 to i8*
  %call25 = call i32 @g_signal_handlers_unblock_matched(i8* %43, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to i8*), i8* %45)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.23, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_coordinates_notify_unit(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GimpSizeEntry* %entry1) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load i32, i32* %value, align 4
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %5)
  %cmp = icmp ne i32 %4, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %7 = bitcast %struct._GimpSizeEntry* %6 to i8*
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to i8*), i8* %9)
  %10 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %11 = load i32, i32* %value, align 4
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %10, i32 %11)
  %12 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %13 = bitcast %struct._GimpSizeEntry* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct._GObject*)* @gimp_prop_coordinates_callback to i8*), i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_color_area_new(%struct._GObject* %config, i8* %property_name, i32 %width, i32 %height, i32 %type) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %area = alloca %struct._GtkWidget*, align 8
  %value = alloca %struct._GimpRGB*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call i64 @gimp_param_rgb_get_type() #8
  %call1 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %call, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_color_area_new, i32 0, i32 0))
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %4 = bitcast %struct._GObject* %3 to i8*
  %5 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %4, i8* %5, %struct._GimpRGB** %value, i8* null)
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %value, align 8
  %7 = load i32, i32* %type.addr, align 4
  %call2 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %6, i32 %7, i32 768)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %area, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %9 = load i32, i32* %width.addr, align 4
  %10 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %8, i32 %9, i32 %10)
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %value, align 8
  %12 = bitcast %struct._GimpRGB* %11 to i8*
  call void @g_free(i8* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %15, %struct._GtkWidget* %16, %struct._GParamSpec* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_color_area_callback to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %23 = load i8*, i8** %property_name.addr, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  call void @connect_notify(%struct._GObject* %22, i8* %23, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_color_area_notify to void ()*), i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  store %struct._GtkWidget* %26, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %27
}

; Function Attrs: nounwind readnone
declare i64 @gimp_param_rgb_get_type() #3

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_color_area_callback(%struct._GtkWidget* %area, %struct._GObject* %config) #0 {
entry:
  %area.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_area_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorArea*
  call void @gimp_color_area_get_color(%struct._GimpColorArea* %6, %struct._GimpRGB* %value)
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call4 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_color_area_notify to i8*), i8* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, %struct._GimpRGB* %value, i8* null)
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_color_area_notify to i8*), i8* %18)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_color_area_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %area) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %area.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca %struct._GimpRGB*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, %struct._GimpRGB** %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_color_area_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_color_area_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorArea*
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %value, align 8
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %10, %struct._GimpRGB* %11)
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %value, align 8
  %13 = bitcast %struct._GimpRGB* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %area.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_color_area_callback to i8*), i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_unit_combo_box_new(%struct._GObject* %config, i8* %property_name) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %unit = alloca i32, align 4
  %value = alloca %struct._GValue, align 8
  %show_pixels = alloca i32, align 4
  %show_percent = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %2 = load i8*, i8** %property_name.addr, align 8
  %call = call i64 @gimp_param_unit_get_type() #8
  %call1 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %1, i8* %2, i64 %call, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_unit_combo_box_new, i32 0, i32 0))
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 3
  %5 = load i64, i64* %value_type, align 8
  %call2 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %5)
  call void @g_value_set_int(%struct._GValue* %value, i32 0)
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call3 = call i32 @g_param_value_validate(%struct._GParamSpec* %6, %struct._GValue* %value)
  %cmp = icmp eq i32 %call3, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %show_pixels, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 65536)
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call4 = call i32 @g_param_value_validate(%struct._GParamSpec* %7, %struct._GValue* %value)
  %cmp5 = icmp eq i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %show_percent, align 4
  call void @g_value_unset(%struct._GValue* %value)
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %unit, i8* null)
  %call7 = call %struct._GtkWidget* @gimp_unit_combo_box_new()
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %combo, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_combo_box_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkComboBox*
  %call10 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %13)
  store %struct._GtkTreeModel* %call10, %struct._GtkTreeModel** %model, align 8
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %15 = bitcast %struct._GtkTreeModel* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpUnitStore*
  %17 = load i32, i32* %show_pixels, align 4
  call void @gimp_unit_store_set_has_pixels(%struct._GimpUnitStore* %16, i32 %17)
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %19 = bitcast %struct._GtkTreeModel* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_unit_store_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpUnitStore*
  %21 = load i32, i32* %show_percent, align 4
  call void @gimp_unit_store_set_has_percent(%struct._GimpUnitStore* %20, i32 %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_unit_combo_box_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpUnitComboBox*
  %25 = load i32, i32* %unit, align 4
  call void @gimp_unit_combo_box_set_active(%struct._GimpUnitComboBox* %24, i32 %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %28, %struct._GtkWidget* %29, %struct._GParamSpec* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %34 = bitcast %struct._GObject* %33 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_unit_combo_box_callback to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 0)
  %35 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %36 = load i8*, i8** %property_name.addr, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  call void @connect_notify(%struct._GObject* %35, i8* %36, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_unit_combo_box_notify to void ()*), i8* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  store %struct._GtkWidget* %39, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %40
}

declare %struct._GtkWidget* @gimp_unit_combo_box_new() #2

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #2

declare void @gimp_unit_store_set_has_pixels(%struct._GimpUnitStore*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_store_get_type() #3

declare void @gimp_unit_store_set_has_percent(%struct._GimpUnitStore*, i32) #2

declare void @gimp_unit_combo_box_set_active(%struct._GimpUnitComboBox*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_unit_combo_box_callback(%struct._GtkWidget* %combo, %struct._GObject* %config) #0 {
entry:
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %unit = alloca i32, align 4
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_unit_combo_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpUnitComboBox*
  %call4 = call i32 @gimp_unit_combo_box_get_active(%struct._GimpUnitComboBox* %6)
  store i32 %call4, i32* %unit, align 4
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_unit_combo_box_notify to i8*), i8* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load i32, i32* %unit, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, i32 %15, i8* null)
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call6 = call i32 @g_signal_handlers_unblock_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_unit_combo_box_notify to i8*), i8* %19)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_unit_combo_box_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %combo) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %unit, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_unit_combo_box_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_unit_combo_box_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpUnitComboBox*
  %11 = load i32, i32* %unit, align 4
  call void @gimp_unit_combo_box_set_active(%struct._GimpUnitComboBox* %10, i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_unit_combo_box_callback to i8*), i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_unit_menu_new(%struct._GObject* %config, i8* %property_name, i8* %unit_format) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %unit_format.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  %value = alloca %struct._GValue, align 8
  %show_pixels = alloca i32, align 4
  %show_percent = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %unit_format, i8** %unit_format.addr, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %2 = load i8*, i8** %property_name.addr, align 8
  %call = call i64 @gimp_param_unit_get_type() #8
  %call1 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %1, i8* %2, i64 %call, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_prop_unit_menu_new, i32 0, i32 0))
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 3
  %5 = load i64, i64* %value_type, align 8
  %call2 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %5)
  call void @g_value_set_int(%struct._GValue* %value, i32 0)
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call3 = call i32 @g_param_value_validate(%struct._GParamSpec* %6, %struct._GValue* %value)
  %cmp = icmp eq i32 %call3, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %show_pixels, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 65536)
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call4 = call i32 @g_param_value_validate(%struct._GParamSpec* %7, %struct._GValue* %value)
  %cmp5 = icmp eq i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %show_percent, align 4
  call void @g_value_unset(%struct._GValue* %value)
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %10, i32* %unit, i8* null)
  %11 = load i8*, i8** %unit_format.addr, align 8
  %12 = load i32, i32* %unit, align 4
  %13 = load i32, i32* %show_pixels, align 4
  %14 = load i32, i32* %show_percent, align 4
  %call7 = call %struct._GtkWidget* @gimp_unit_menu_new(i8* %11, i32 %12, i32 %13, i32 %14, i32 1)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %menu, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %17, %struct._GtkWidget* %18, %struct._GParamSpec* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %23 = bitcast %struct._GObject* %22 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_unit_menu_callback to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %25 = load i8*, i8** %property_name.addr, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  call void @connect_notify(%struct._GObject* %24, i8* %25, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_unit_menu_notify to void ()*), i8* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %29
}

declare %struct._GtkWidget* @gimp_unit_menu_new(i8*, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_unit_menu_callback(%struct._GtkWidget* %menu, %struct._GObject* %config) #0 {
entry:
  %menu.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %unit = alloca i32, align 4
  store %struct._GtkWidget* %menu, %struct._GtkWidget** %menu.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %5 = bitcast i32* %unit to i8*
  call void @gimp_unit_menu_update(%struct._GtkWidget* %4, i8* %5)
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_unit_menu_notify to i8*), i8* %9)
  %10 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %11 = bitcast %struct._GObject* %10 to i8*
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load i32, i32* %unit, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %11, i8* %13, i32 %14, i8* null)
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_unit_menu_notify to i8*), i8* %18)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_unit_menu_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %menu) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %menu.addr = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %menu, %struct._GtkWidget** %menu.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %unit, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_unit_menu_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_unit_menu_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpUnitMenu*
  %11 = load i32, i32* %unit, align 4
  call void @gimp_unit_menu_set_unit(%struct._GimpUnitMenu* %10, i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %13 = bitcast i32* %unit to i8*
  call void @gimp_unit_menu_update(%struct._GtkWidget* %12, i8* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_unit_menu_callback to i8*), i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_stock_image_new(%struct._GObject* %config, i8* %property_name, i32 %icon_size) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %icon_size.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %stock_id = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %icon_size, i32* %icon_size.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 14
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_stock_image_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %6 = bitcast %struct._GObject* %5 to i8*
  %7 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* %7, i8** %stock_id, i8* null)
  %8 = load i8*, i8** %stock_id, align 8
  %9 = load i32, i32* %icon_size.addr, align 4
  %call1 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %8, i32 %9)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %image, align 8
  %10 = load i8*, i8** %stock_id, align 8
  %tobool2 = icmp ne i8* %10, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %14, %struct._GtkWidget* %15, %struct._GParamSpec* %16)
  %17 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %18 = load i8*, i8** %property_name.addr, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  call void @connect_notify(%struct._GObject* %17, i8* %18, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_stock_image_notify to void ()*), i8* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  store %struct._GtkWidget* %21, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %22
}

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_stock_image_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %image) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %image.addr = alloca %struct._GtkWidget*, align 8
  %stock_id = alloca i8*, align 8
  %icon_size = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %image, %struct._GtkWidget** %image.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %stock_id, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %image.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_image_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkImage*
  call void @gtk_image_get_stock(%struct._GtkImage* %6, i8** null, i32* %icon_size)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %image.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_image_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkImage*
  %10 = load i8*, i8** %stock_id, align 8
  %11 = load i32, i32* %icon_size, align 4
  call void @gtk_image_set_from_stock(%struct._GtkImage* %9, i8* %10, i32 %11)
  %12 = load i8*, i8** %stock_id, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_expander_new(%struct._GObject* %config, i8* %property_name, i8* %label) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %expander = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 2
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_prop_expander_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %6 = bitcast %struct._GObject* %5 to i8*
  %7 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* %7, i32* %value, i8* null)
  %call1 = call i64 @gtk_expander_get_type() #8
  %8 = load i8*, i8** %label.addr, align 8
  %9 = load i32, i32* %value, align 4
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %9, i8* null)
  %10 = bitcast i8* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %10, %struct._GtkWidget** %expander, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %13, %struct._GtkWidget* %14, %struct._GParamSpec* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %19 = bitcast %struct._GObject* %18 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkExpander*, %struct._GParamSpec*, %struct._GObject*)* @gimp_prop_expanded_notify to void ()*), i8* %19, void (i8*, %struct._GClosure*)* null, i32 0)
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = load i8*, i8** %property_name.addr, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  call void @connect_notify(%struct._GObject* %20, i8* %21, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkExpander*)* @gimp_prop_expander_notify to void ()*), i8* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  store %struct._GtkWidget* %24, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %25
}

; Function Attrs: nounwind readnone
declare i64 @gtk_expander_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_expanded_notify(%struct._GtkExpander* %expander, %struct._GParamSpec* %param_spec, %struct._GObject* %config) #0 {
entry:
  %expander.addr = alloca %struct._GtkExpander*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  store %struct._GtkExpander* %expander, %struct._GtkExpander** %expander.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkExpander*, %struct._GtkExpander** %expander.addr, align 8
  %1 = bitcast %struct._GtkExpander* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec.addr, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %5 = bitcast %struct._GObject* %4 to i8*
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  %8 = load %struct._GtkExpander*, %struct._GtkExpander** %expander.addr, align 8
  %call2 = call i32 @gtk_expander_get_expanded(%struct._GtkExpander* %8)
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* %7, i32 %call2, i8* null)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_expander_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkExpander* %expander) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %expander.addr = alloca %struct._GtkExpander*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkExpander* %expander, %struct._GtkExpander** %expander.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load %struct._GtkExpander*, %struct._GtkExpander** %expander.addr, align 8
  %call = call i32 @gtk_expander_get_expanded(%struct._GtkExpander* %4)
  %5 = load i32, i32* %value, align 4
  %cmp = icmp ne i32 %call, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkExpander*, %struct._GtkExpander** %expander.addr, align 8
  %7 = bitcast %struct._GtkExpander* %6 to i8*
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkExpander*, %struct._GParamSpec*, %struct._GObject*)* @gimp_prop_expanded_notify to i8*), i8* %9)
  %10 = load %struct._GtkExpander*, %struct._GtkExpander** %expander.addr, align 8
  %11 = load i32, i32* %value, align 4
  call void @gtk_expander_set_expanded(%struct._GtkExpander* %10, i32 %11)
  %12 = load %struct._GtkExpander*, %struct._GtkExpander** %expander.addr, align 8
  %13 = bitcast %struct._GtkExpander* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call2 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkExpander*, %struct._GParamSpec*, %struct._GObject*)* @gimp_prop_expanded_notify to i8*), i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GParamSpec* @get_param_spec(%struct._GObject* %object) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call = call i32 @gimp_prop_widgets_param_spec_quark() #8
  %call1 = call i8* @g_object_get_qdata(%struct._GObject* %0, i32 %call)
  %1 = bitcast i8* %call1 to %struct._GParamSpec*
  ret %struct._GParamSpec* %1
}

declare void @g_object_set(i8*, i8*, ...) #2

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #2

declare void @gimp_toggle_button_sensitive_update(%struct._GtkToggleButton*) #2

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #2

; Function Attrs: nounwind readnone uwtable
define internal i32 @gimp_prop_widgets_param_spec_quark() #6 {
entry:
  %0 = load i32, i32* @gimp_prop_widgets_param_spec_quark.param_spec_quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0))
  store i32 %call, i32* @gimp_prop_widgets_param_spec_quark.param_spec_quark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @gimp_prop_widgets_param_spec_quark.param_spec_quark, align 4
  ret i32 %1
}

declare i32 @g_quark_from_static_string(i8*) #2

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #2

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #2

declare i32 @gtk_combo_box_get_active(%struct._GtkComboBox*) #2

declare void @gimp_enum_label_set_value(%struct._GimpEnumLabel*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_label_get_type() #3

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #2

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #2

declare i64 @gimp_memsize_entry_get_value(%struct._GimpMemsizeEntry*) #2

declare void @gimp_memsize_entry_set_value(%struct._GimpMemsizeEntry*, i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #1

declare i8* @g_value_get_string(%struct._GValue*) #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i32 @g_value_transform(%struct._GValue*, %struct._GValue*) #2

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #2

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #2

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @g_utf8_strlen(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @dngettext(i8*, i8*, i8*, i64) #4

declare void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i32) #2

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #2

declare void @gtk_text_buffer_delete(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #2

declare i8* @gimp_string_combo_box_get_active(%struct._GimpStringComboBox*) #2

declare noalias i8* @g_path_get_basename(i8*) #2

declare void @gtk_file_chooser_set_show_hidden(%struct._GtkFileChooser*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_file_chooser_button_callback(%struct._GtkFileChooser* %button, %struct._GObject* %config) #0 {
entry:
  %button.addr = alloca %struct._GtkFileChooser*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  store %struct._GtkFileChooser* %button, %struct._GtkFileChooser** %button.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %1 = bitcast %struct._GtkFileChooser* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call %struct._GParamSpec* @get_param_spec(%struct._GObject* %2)
  store %struct._GParamSpec* %call1, %struct._GParamSpec** %param_spec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %4)
  store i8* %call2, i8** %value, align 8
  %5 = load i8*, i8** %value, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i8*, i8** %value, align 8
  %call4 = call noalias i8* @g_filename_to_utf8(i8* %6, i64 -1, i64* null, i64* null, %struct._GError** null)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call4, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %utf8, align 8
  %7 = load i8*, i8** %value, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %9, i8* %11, i8** %value, i8* null)
  %12 = load i8*, i8** %value, align 8
  %tobool5 = icmp ne i8* %12, null
  br i1 %tobool5, label %land.lhs.true, label %if.then.9

land.lhs.true:                                    ; preds = %cond.end
  %13 = load i8*, i8** %utf8, align 8
  %tobool6 = icmp ne i8* %13, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.then.9

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %14 = load i8*, i8** %value, align 8
  %15 = load i8*, i8** %utf8, align 8
  %call8 = call i32 @strcmp(i8* %14, i8* %15) #7
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.end.13, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.7, %land.lhs.true, %cond.end
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %19 = bitcast %struct._GtkFileChooser* %18 to i8*
  %call10 = call i32 @g_signal_handlers_block_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkFileChooser*)* @gimp_prop_file_chooser_button_notify to i8*), i8* %19)
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name11 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %22, i32 0, i32 1
  %23 = load i8*, i8** %name11, align 8
  %24 = load i8*, i8** %utf8, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %21, i8* %23, i8* %24, i8* null)
  %25 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %26 = bitcast %struct._GObject* %25 to i8*
  %27 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %28 = bitcast %struct._GtkFileChooser* %27 to i8*
  %call12 = call i32 @g_signal_handlers_unblock_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkFileChooser*)* @gimp_prop_file_chooser_button_notify to i8*), i8* %28)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %land.lhs.true.7
  %29 = load i8*, i8** %value, align 8
  call void @g_free(i8* %29)
  %30 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %30)
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_file_chooser_button_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkFileChooser* %button) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %button.addr = alloca %struct._GtkFileChooser*, align 8
  %value = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkFileChooser* %button, %struct._GtkFileChooser** %button.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %value, align 8
  %call = call noalias i8* @gimp_config_path_expand(i8* %5, i32 1, %struct._GError** null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %filename, align 8
  %6 = load i8*, i8** %value, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %8 = bitcast %struct._GtkFileChooser* %7 to i8*
  %9 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %10 = bitcast %struct._GObject* %9 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkFileChooser*, %struct._GObject*)* @gimp_prop_file_chooser_button_callback to i8*), i8* %10)
  %11 = load i8*, i8** %filename, align 8
  %tobool2 = icmp ne i8* %11, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %12 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %13 = load i8*, i8** %filename, align 8
  %call3 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %12, i8* %13)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %14 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  call void @gtk_file_chooser_unselect_all(%struct._GtkFileChooser* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %button.addr, align 8
  %16 = bitcast %struct._GtkFileChooser* %15 to i8*
  %17 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %18 = bitcast %struct._GObject* %17 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkFileChooser*, %struct._GObject*)* @gimp_prop_file_chooser_button_callback to i8*), i8* %18)
  %19 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %19)
  ret void
}

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #2

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare void @gtk_file_chooser_unselect_all(%struct._GtkFileChooser*) #2

declare i8* @gimp_path_editor_get_path(%struct._GimpPathEditor*) #2

declare i8* @gimp_path_editor_get_writable_path(%struct._GimpPathEditor*) #2

declare void @gimp_path_editor_set_path(%struct._GimpPathEditor*, i8*) #2

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #2

declare double @gimp_size_entry_get_value(%struct._GimpSizeEntry*, i32) #2

declare i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry*) #2

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #2

declare void @g_signal_emit_by_name(i8*, i8*, ...) #2

declare void @gimp_color_area_get_color(%struct._GimpColorArea*, %struct._GimpRGB*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #3

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #2

declare i32 @gimp_unit_combo_box_get_active(%struct._GimpUnitComboBox*) #2

declare void @gimp_unit_menu_update(%struct._GtkWidget*, i8*) #2

declare void @gimp_unit_menu_set_unit(%struct._GimpUnitMenu*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_menu_get_type() #3

declare void @gtk_image_get_stock(%struct._GtkImage*, i8**, i32*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #3

declare void @gtk_image_set_from_stock(%struct._GtkImage*, i8*, i32) #2

declare i32 @gtk_expander_get_expanded(%struct._GtkExpander*) #2

declare void @gtk_expander_set_expanded(%struct._GtkExpander*, i32) #2

declare void @g_object_set_qdata(%struct._GObject*, i32, i8*) #2

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #2

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #2

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #2

declare i32 @g_type_is_a(i64, i64) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
