; ModuleID = './app/widgets/gimppropwidgets.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GParamSpecDouble = type { %struct._GParamSpec, double, double, double, double }
%struct._GtkScaleButton = type { %struct._GtkButton, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkScaleButtonPrivate* }
%struct._GtkScaleButtonPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpecInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GParamSpecUInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.GimpPropNumberPairEntryData = type { %struct._GObject*, i8*, i8*, i8*, i8*, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GimpNumberPairEntry = type { %struct._GtkEntry, i8* }
%struct._GimpLanguageComboBox = type opaque
%struct._GimpLanguageEntry = type opaque
%struct._GimpIconPicker = type { %struct._GtkBox }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GimpColorPanel = type { %struct._GimpColorButton, %struct._GimpContext*, %struct._GtkWidget* }

@g_param_spec_types = external global i64*, align 8
@__func__.gimp_prop_expanding_frame_new = private unnamed_addr constant [30 x i8] c"gimp_prop_expanding_frame_new\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@__func__.gimp_prop_paint_mode_menu_new = private unnamed_addr constant [30 x i8] c"gimp_prop_paint_mode_menu_new\00", align 1
@__func__.gimp_prop_color_button_new = private unnamed_addr constant [27 x i8] c"gimp_prop_color_button_new\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@__func__.gimp_prop_scale_button_new = private unnamed_addr constant [27 x i8] c"gimp_prop_scale_button_new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@__func__.gimp_prop_spin_scale_new = private unnamed_addr constant [25 x i8] c"gimp_prop_spin_scale_new\00", align 1
@__func__.gimp_prop_opacity_spin_scale_new = private unnamed_addr constant [33 x i8] c"gimp_prop_opacity_spin_scale_new\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"opacity-scale\00", align 1
@__func__.gimp_prop_view_new = private unnamed_addr constant [19 x i8] c"gimp_prop_view_new\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s: property '%s' of %s is not a GimpViewable\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: cannot create view for type '%s'\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"gimp-prop-number-pair-entry-data\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ratio-changed\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"numbers-changed\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"notify::user-override\00", align 1
@__func__.gimp_prop_language_combo_box_new = private unnamed_addr constant [33 x i8] c"gimp_prop_language_combo_box_new\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.gimp_prop_language_entry_new = private unnamed_addr constant [29 x i8] c"gimp_prop_language_entry_new\00", align 1
@__func__.gimp_prop_icon_picker_new = private unnamed_addr constant [26 x i8] c"gimp_prop_icon_picker_new\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"notify::stock-id\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_prop_table_new = private unnamed_addr constant [20 x i8] c"gimp_prop_table_new\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"G_IS_OBJECT (config)\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@gimp_prop_table_new.multiline_quark = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"%s: not supported: %s (%s)\0A\00", align 1
@gimp_prop_widgets_param_spec_quark.param_spec_quark = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"gimp-config-param-spec\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"%s: unhandled param spec of type %s\00", align 1
@__func__.gimp_prop_adjustment_notify = private unnamed_addr constant [28 x i8] c"gimp_prop_adjustment_notify\00", align 1
@__func__.gimp_prop_number_pair_entry_config_notify = private unnamed_addr constant [42 x i8] c"gimp_prop_number_pair_entry_config_notify\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"%s: %s has no property named '%s'\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"%s: property '%s' of %s is writable\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"%s: property '%s' of %s is not a %s\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"%s: property '%s' of %s is not numeric\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"notify::\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_expanding_frame_new(%struct._GObject* %config, i8* %property_name, i8* %button_label, %struct._GtkWidget* %child, %struct._GtkWidget** %button) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %button_label.addr = alloca i8*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %button.addr = alloca %struct._GtkWidget**, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %button_label, i8** %button_label.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store %struct._GtkWidget** %button, %struct._GtkWidget*** %button.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 2
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_expanding_frame_new, i32 0, i32 0))
  %tobool = icmp ne %struct._GParamSpec* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %frame, align 8
  %4 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %5 = load i8*, i8** %property_name.addr, align 8
  %6 = load i8*, i8** %button_label.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %4, i8* %5, i8* %6)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %toggle, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_frame_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkFrame*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %9, %struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_container_add(%struct._GtkContainer* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %17, i8* %18, i32* %value, i8* null)
  %19 = load i32, i32* %value, align 4
  %tobool7 = icmp ne i32 %19, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %call10 = call i64 @g_signal_connect_object(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, %struct._GtkWidget*)* @gimp_toggle_button_set_visible to void ()*), i8* %24, i32 0)
  %25 = load %struct._GtkWidget**, %struct._GtkWidget*** %button.addr, align 8
  %tobool11 = icmp ne %struct._GtkWidget** %25, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %27 = load %struct._GtkWidget**, %struct._GtkWidget*** %button.addr, align 8
  store %struct._GtkWidget* %26, %struct._GtkWidget** %27, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %29
}

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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* %7, i8* %9, i8* %call1)
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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @g_object_get(i8*, i8*, ...) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @gimp_toggle_button_set_visible(%struct._GtkToggleButton*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_paint_mode_menu_new(%struct._GObject* %config, i8* %property_name, i32 %with_behind_mode, i32 %with_replace_modes) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %with_behind_mode.addr = alloca i32, align 4
  %with_replace_modes.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i32 %with_behind_mode, i32* %with_behind_mode.addr, align 4
  store i32 %with_replace_modes, i32* %with_replace_modes.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 10
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_prop_paint_mode_menu_new, i32 0, i32 0))
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
  %8 = load i32, i32* %with_behind_mode.addr, align 4
  %9 = load i32, i32* %with_replace_modes.addr, align 4
  %call1 = call %struct._GtkWidget* @gimp_paint_mode_menu_new(i32 %8, i32 %9)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %menu, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_int_combo_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call2)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpIntComboBox*
  %13 = load i32, i32* %value, align 4
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call4 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %12, i32 %13, void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_paint_menu_callback to void ()*), i8* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %18, %struct._GtkWidget* %19, %struct._GParamSpec* %20)
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = load i8*, i8** %property_name.addr, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  call void @connect_notify(%struct._GObject* %21, i8* %22, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_paint_menu_notify to void ()*), i8* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  store %struct._GtkWidget* %25, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %26
}

declare %struct._GtkWidget* @gimp_paint_mode_menu_new(i32, i32) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_paint_menu_callback(%struct._GtkWidget* %widget, %struct._GObject* %config) #0 {
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
  %call2 = call i64 @gimp_int_combo_box_get_type() #7
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
define internal void @set_param_spec(%struct._GObject* %object, %struct._GtkWidget* %widget, %struct._GParamSpec* %param_spec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %blurb = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %tobool = icmp ne %struct._GObject* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call = call i32 @gimp_prop_widgets_param_spec_quark() #7
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %3 = bitcast %struct._GParamSpec* %2 to i8*
  call void @g_object_set_qdata(%struct._GObject* %1, i32 %call, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call3 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %5)
  store i8* %call3, i8** %blurb, align 8
  %6 = load i8*, i8** %blurb, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load i8*, i8** %blurb, align 8
  %call6 = call i8* @gettext(i8* %8) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %7, i8* %call6, i8* null)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
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
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* %0, i8* null)
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
define internal void @gimp_prop_paint_menu_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %menu) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %menu.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %menu, %struct._GtkWidget** %menu.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i32* %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_paint_menu_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_int_combo_box_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %11 = load i32, i32* %value, align 4
  %call3 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %10, i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %menu.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_paint_menu_callback to i8*), i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_color_button_new(%struct._GObject* %config, i8* %property_name, i8* %title, i32 %width, i32 %height, i32 %type) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %value = alloca %struct._GimpRGB*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call i64 @gimp_param_rgb_get_type() #7
  %call1 = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %call, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_color_button_new, i32 0, i32 0))
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
  %6 = load i8*, i8** %title.addr, align 8
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %value, align 8
  %8 = load i32, i32* %type.addr, align 4
  %9 = load i32, i32* %width.addr, align 4
  %10 = load i32, i32* %height.addr, align 4
  %call2 = call %struct._GtkWidget* @gimp_color_panel_new(i8* %6, %struct._GimpRGB* %7, i32 %8, i32 %9, i32 %10)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %button, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %value, align 8
  %12 = bitcast %struct._GimpRGB* %11 to i8*
  call void @g_free(i8* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %15, %struct._GtkWidget* %16, %struct._GParamSpec* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_color_button_callback to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %23 = load i8*, i8** %property_name.addr, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  call void @connect_notify(%struct._GObject* %22, i8* %23, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_color_button_notify to void ()*), i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %26, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %27
}

; Function Attrs: nounwind readnone
declare i64 @gimp_param_rgb_get_type() #2

declare %struct._GtkWidget* @gimp_color_panel_new(i8*, %struct._GimpRGB*, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_color_button_callback(%struct._GtkWidget* %button, %struct._GObject* %config) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
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
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_button_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %6, %struct._GimpRGB* %value)
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call4 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_color_button_notify to i8*), i8* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, %struct._GimpRGB* %value, i8* null)
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_color_button_notify to i8*), i8* %18)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_color_button_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %button) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca %struct._GimpRGB*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, %struct._GimpRGB** %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_color_button_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_color_button_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorButton*
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %value, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %11)
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %value, align 8
  %13 = bitcast %struct._GimpRGB* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_color_button_callback to i8*), i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_scale_button_new(%struct._GObject* %config, i8* %property_name) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %value = alloca double, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 13
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_prop_scale_button_new, i32 0, i32 0))
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
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* %8, double* %value, i8* null)
  %9 = load double, double* %value, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %11 = bitcast %struct._GParamSpec* %10 to %struct._GTypeInstance*
  %12 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %12, i64 13
  %13 = load i64, i64* %arrayidx1, align 8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %13)
  %14 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpecDouble*
  %minimum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %14, i32 0, i32 1
  %15 = load double, double* %minimum, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %18 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %18, i64 13
  %19 = load i64, i64* %arrayidx3, align 8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %19)
  %20 = bitcast %struct._GTypeInstance* %call4 to %struct._GParamSpecDouble*
  %maximum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %20, i32 0, i32 2
  %21 = load double, double* %maximum, align 8
  %call5 = call %struct._GtkWidget* @gimp_scale_button_new(double %9, double %15, double %21)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %button, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %24, %struct._GtkWidget* %25, %struct._GParamSpec* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %30 = bitcast %struct._GObject* %29 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, double, %struct._GObject*)* @gimp_prop_scale_button_callback to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  %31 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %32 = load i8*, i8** %property_name.addr, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  call void @connect_notify(%struct._GObject* %31, i8* %32, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_scale_button_notify to void ()*), i8* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %35, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %36
}

declare %struct._GtkWidget* @gimp_scale_button_new(double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_scale_button_callback(%struct._GtkWidget* %button, double %value, %struct._GObject* %config) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca double, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store double %value, double* %value.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
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
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_scale_button_notify to i8*), i8* %7)
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load double, double* %value.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* %11, double %12, i8* null)
  %13 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_scale_button_notify to i8*), i8* %16)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_scale_button_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %button) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca double, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, double* %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, double, %struct._GObject*)* @gimp_prop_scale_button_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_scale_button_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkScaleButton*
  %11 = load double, double* %value, align 8
  call void @gtk_scale_button_set_value(%struct._GtkScaleButton* %10, double %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, double, %struct._GObject*)* @gimp_prop_scale_button_callback to i8*), i8* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_spin_scale_new(%struct._GObject* %config, i8* %property_name, i8* %label, double %step_increment, double %page_increment, i32 %digits) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %value = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %call = call %struct._GParamSpec* @find_param_spec(%struct._GObject* %0, i8* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_spin_scale_new, i32 0, i32 0))
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
  %call1 = call i32 @get_numeric_values(%struct._GObject* %3, %struct._GParamSpec* %4, double* %value, double* %lower, double* %upper, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_prop_spin_scale_new, i32 0, i32 0))
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
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
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
  %25 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %26 = bitcast %struct._GtkObject* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_adjustment_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkAdjustment*
  %28 = load i8*, i8** %label.addr, align 8
  %29 = load i32, i32* %digits.addr, align 4
  %call20 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %27, i8* %28, i32 %29)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %scale, align 8
  %30 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %31 = bitcast %struct._GtkObject* %30 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %32, %struct._GtkWidget* %33, %struct._GParamSpec* %34)
  %35 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %36 = bitcast %struct._GtkObject* %35 to i8*
  %37 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %38 = bitcast %struct._GObject* %37 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GObject*)* @gimp_prop_adjustment_callback to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %40 = load i8*, i8** %property_name.addr, align 8
  %41 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  call void @connect_notify(%struct._GObject* %39, i8* %40, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkAdjustment*)* @gimp_prop_adjustment_notify to void ()*), i8* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  store %struct._GtkWidget* %43, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.3, %if.then
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %44
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0), i8* %6, i8* %call2, i8* %11)
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
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #8
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
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #8
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
  %call70 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %75, i64 %76) #8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0), i8* %95, i8* %97, i8* %call86)
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
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

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
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
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
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #8
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
  %call62 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %56, i64 %57) #8
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
  %call90 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %76, i64 %77) #8
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
  %call118 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %96, i64 %97) #8
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
  %call146 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %116, i64 %117) #8
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
  %call174 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %136, i64 %137) #8
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
  %call181 = call i8* @g_object_get_data(%struct._GObject* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
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
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #8
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
  %call29 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #8
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
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %51, i64 %52) #8
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
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %71, i64 %72) #8
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
  %call116 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %91, i64 %92) #8
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
  %call145 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %111, i64 %112) #8
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
  %call174 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %131, i64 %132) #8
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
  %call182 = call i8* @g_object_get_data(%struct._GObject* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_prop_adjustment_notify, i32 0, i32 0), i8* %call190)
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
define %struct._GtkWidget* @gimp_prop_opacity_spin_scale_new(%struct._GObject* %config, i8* %property_name, i8* %label) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %value = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 13
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_prop_opacity_spin_scale_new, i32 0, i32 0))
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
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* %7, double* %value, i8* null)
  %8 = load double, double* %value, align 8
  %mul = fmul double %8, 1.000000e+02
  store double %mul, double* %value, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %10 = bitcast %struct._GParamSpec* %9 to %struct._GTypeInstance*
  %11 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %11, i64 13
  %12 = load i64, i64* %arrayidx1, align 8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %12)
  %13 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpecDouble*
  %minimum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %13, i32 0, i32 1
  %14 = load double, double* %minimum, align 8
  %mul3 = fmul double %14, 1.000000e+02
  store double %mul3, double* %lower, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  %17 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %17, i64 13
  %18 = load i64, i64* %arrayidx4, align 8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %18)
  %19 = bitcast %struct._GTypeInstance* %call5 to %struct._GParamSpecDouble*
  %maximum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %19, i32 0, i32 2
  %20 = load double, double* %maximum, align 8
  %mul6 = fmul double %20, 1.000000e+02
  store double %mul6, double* %upper, align 8
  %21 = load double, double* %value, align 8
  %22 = load double, double* %lower, align 8
  %23 = load double, double* %upper, align 8
  %call7 = call %struct._GtkObject* @gtk_adjustment_new(double %21, double %22, double %23, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00)
  store %struct._GtkObject* %call7, %struct._GtkObject** %adjustment, align 8
  %24 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %25 = bitcast %struct._GtkObject* %24 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_adjustment_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call8)
  %26 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkAdjustment*
  %27 = load i8*, i8** %label.addr, align 8
  %call10 = call %struct._GtkWidget* @gimp_spin_scale_new(%struct._GtkAdjustment* %26, i8* %27, i32 1)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %scale, align 8
  %28 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %29 = bitcast %struct._GtkObject* %28 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %30, %struct._GtkWidget* %31, %struct._GParamSpec* %32)
  %33 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %34 = bitcast %struct._GtkObject* %33 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %36 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %37 = bitcast %struct._GtkObject* %36 to i8*
  %38 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %39 = bitcast %struct._GObject* %38 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GObject*)* @gimp_prop_adjustment_callback to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %41 = load i8*, i8** %property_name.addr, align 8
  %42 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %43 = bitcast %struct._GtkObject* %42 to i8*
  call void @connect_notify(%struct._GObject* %40, i8* %41, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkAdjustment*)* @gimp_prop_adjustment_notify to void ()*), i8* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  store %struct._GtkWidget* %44, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %45
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_view_new(%struct._GObject* %config, i8* %property_name, %struct._GimpContext* %context, i32 %size) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %size.addr = alloca i32, align 4
  %param_spec = alloca %struct._GParamSpec*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 19
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_prop_view_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 3
  %6 = load i64, i64* %value_type, align 8
  %call1 = call i64 @gimp_viewable_get_type() #7
  %call2 = call i32 @g_type_is_a(i64 %6, i64 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** %property_name.addr, align 8
  %8 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %9 = bitcast %struct._GObject* %8 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %11)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_prop_view_new, i32 0, i32 0), i8* %7, i8* %call5)
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call7 = call i64 @gimp_view_get_type() #7
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 3
  %14 = load i64, i64* %value_type8, align 8
  %15 = load i32, i32* %size.addr, align 4
  %call9 = call %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext* %12, i64 %call7, i64 %14, i32 %15, i32 0, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %view, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool10 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type12 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 3
  %18 = load i64, i64* %value_type12, align 8
  %call13 = call i8* @g_type_name(i64 %18)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_prop_view_new, i32 0, i32 0), i8* %call13)
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.6
  %19 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %20 = bitcast %struct._GObject* %19 to i8*
  %21 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %20, i8* %21, %struct._GimpViewable** %viewable, i8* null)
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool15 = icmp ne %struct._GimpViewable* %22, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_view_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpView*
  %26 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  call void @gimp_view_set_viewable(%struct._GimpView* %25, %struct._GimpViewable* %26)
  %27 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %28 = bitcast %struct._GimpViewable* %27 to i8*
  call void @g_object_unref(i8* %28)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %31, %struct._GtkWidget* %32, %struct._GParamSpec* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %value_type21 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %35, i32 0, i32 3
  %36 = load i64, i64* %value_type21, align 8
  %37 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %38 = bitcast %struct._GObject* %37 to i8*
  %call22 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %34, i64 %36, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_prop_view_drop, i8* %38)
  %39 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %40 = load i8*, i8** %property_name.addr, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  call void @connect_notify(%struct._GObject* %39, i8* %40, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_view_notify to void ()*), i8* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %43, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.11, %if.then.4, %if.then
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %44
}

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

declare void @g_object_unref(i8*) #1

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_view_drop(%struct._GtkWidget* %view, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %view.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %config = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GtkWidget* %view, %struct._GtkWidget** %view.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
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
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  store %struct._GObject* %6, %struct._GObject** %config, align 8
  %7 = load %struct._GObject*, %struct._GObject** %config, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* %10, %struct._GimpViewable* %11, i8* null)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_view_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %view) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %view.addr = alloca %struct._GtkWidget*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %view, %struct._GtkWidget** %view.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, %struct._GimpViewable** %viewable, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  call void @gimp_view_set_viewable(%struct._GimpView* %6, %struct._GimpViewable* %7)
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %10 = bitcast %struct._GimpViewable* %9 to i8*
  call void @g_object_unref(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_number_pair_entry_new(%struct._GObject* %config, i8* %left_number_property, i8* %right_number_property, i8* %default_left_number_property, i8* %default_right_number_property, i8* %user_override_property, i32 %connect_numbers_changed, i32 %connect_ratio_changed, i8* %separators, i32 %allow_simplification, double %min_valid_value, double %max_valid_value) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %left_number_property.addr = alloca i8*, align 8
  %right_number_property.addr = alloca i8*, align 8
  %default_left_number_property.addr = alloca i8*, align 8
  %default_right_number_property.addr = alloca i8*, align 8
  %user_override_property.addr = alloca i8*, align 8
  %connect_numbers_changed.addr = alloca i32, align 4
  %connect_ratio_changed.addr = alloca i32, align 4
  %separators.addr = alloca i8*, align 8
  %allow_simplification.addr = alloca i32, align 4
  %min_valid_value.addr = alloca double, align 8
  %max_valid_value.addr = alloca double, align 8
  %data = alloca %struct.GimpPropNumberPairEntryData*, align 8
  %number_pair_entry = alloca %struct._GtkWidget*, align 8
  %left_number = alloca double, align 8
  %right_number = alloca double, align 8
  %default_left_number = alloca double, align 8
  %default_right_number = alloca double, align 8
  %user_override = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %left_number_property, i8** %left_number_property.addr, align 8
  store i8* %right_number_property, i8** %right_number_property.addr, align 8
  store i8* %default_left_number_property, i8** %default_left_number_property.addr, align 8
  store i8* %default_right_number_property, i8** %default_right_number_property.addr, align 8
  store i8* %user_override_property, i8** %user_override_property.addr, align 8
  store i32 %connect_numbers_changed, i32* %connect_numbers_changed.addr, align 4
  store i32 %connect_ratio_changed, i32* %connect_ratio_changed.addr, align 4
  store i8* %separators, i8** %separators.addr, align 8
  store i32 %allow_simplification, i32* %allow_simplification.addr, align 4
  store double %min_valid_value, double* %min_valid_value.addr, align 8
  store double %max_valid_value, double* %max_valid_value.addr, align 8
  %call = call noalias i8* @g_slice_alloc(i64 48)
  %0 = bitcast i8* %call to %struct.GimpPropNumberPairEntryData*
  store %struct.GimpPropNumberPairEntryData* %0, %struct.GimpPropNumberPairEntryData** %data, align 8
  %1 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %2 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %config1 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %2, i32 0, i32 0
  store %struct._GObject* %1, %struct._GObject** %config1, align 8
  %3 = load i8*, i8** %left_number_property.addr, align 8
  %4 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %left_number_property2 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %4, i32 0, i32 1
  store i8* %3, i8** %left_number_property2, align 8
  %5 = load i8*, i8** %right_number_property.addr, align 8
  %6 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %right_number_property3 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %6, i32 0, i32 2
  store i8* %5, i8** %right_number_property3, align 8
  %7 = load i8*, i8** %default_left_number_property.addr, align 8
  %8 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %default_left_number_property4 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %8, i32 0, i32 3
  store i8* %7, i8** %default_left_number_property4, align 8
  %9 = load i8*, i8** %default_right_number_property.addr, align 8
  %10 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %default_right_number_property5 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %10, i32 0, i32 4
  store i8* %9, i8** %default_right_number_property5, align 8
  %11 = load i8*, i8** %user_override_property.addr, align 8
  %12 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %user_override_property6 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %12, i32 0, i32 5
  store i8* %11, i8** %user_override_property6, align 8
  %13 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load i8*, i8** %left_number_property.addr, align 8
  %16 = load i8*, i8** %right_number_property.addr, align 8
  %17 = load i8*, i8** %default_left_number_property.addr, align 8
  %18 = load i8*, i8** %default_right_number_property.addr, align 8
  %19 = load i8*, i8** %user_override_property.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %14, i8* %15, double* %left_number, i8* %16, double* %right_number, i8* %17, double* %default_left_number, i8* %18, double* %default_right_number, i8* %19, i32* %user_override, i8* null)
  %20 = load i8*, i8** %separators.addr, align 8
  %21 = load i32, i32* %allow_simplification.addr, align 4
  %22 = load double, double* %min_valid_value.addr, align 8
  %23 = load double, double* %max_valid_value.addr, align 8
  %call7 = call %struct._GtkWidget* @gimp_number_pair_entry_new(i8* %20, i32 %21, double %22, double %23)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %number_pair_entry, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %27 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %28 = bitcast %struct.GimpPropNumberPairEntryData* %27 to i8*
  call void @g_object_set_data_full(%struct._GObject* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* %28, void (i8*)* bitcast (void (%struct.GimpPropNumberPairEntryData*)* @gimp_prop_number_pair_entry_data_free to void (i8*)*))
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_entry_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call9)
  %31 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %31, i32 7)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_number_pair_entry_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call11)
  %34 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpNumberPairEntry*
  %35 = load i32, i32* %user_override, align 4
  call void @gimp_number_pair_entry_set_user_override(%struct._GimpNumberPairEntry* %34, i32 %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_number_pair_entry_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call13)
  %38 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpNumberPairEntry*
  %39 = load double, double* %left_number, align 8
  %40 = load double, double* %right_number, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %38, double %39, double %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_number_pair_entry_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call15)
  %43 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpNumberPairEntry*
  %44 = load double, double* %default_left_number, align 8
  %45 = load double, double* %default_right_number, align 8
  call void @gimp_number_pair_entry_set_default_values(%struct._GimpNumberPairEntry* %43, double %44, double %45)
  %46 = load i32, i32* %connect_ratio_changed.addr, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %49 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %50 = bitcast %struct.GimpPropNumberPairEntryData* %49 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.GimpPropNumberPairEntryData*)* @gimp_prop_number_pair_entry_number_pair_numbers_changed to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %51 = load i32, i32* %connect_numbers_changed.addr, align 4
  %tobool18 = icmp ne i32 %51, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %55 = bitcast %struct.GimpPropNumberPairEntryData* %54 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.GimpPropNumberPairEntryData*)* @gimp_prop_number_pair_entry_number_pair_numbers_changed to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %58 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %59 = bitcast %struct.GimpPropNumberPairEntryData* %58 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GParamSpec*, %struct.GimpPropNumberPairEntryData*)* @gimp_prop_number_pair_entry_number_pair_user_override_notify to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %61 = load i8*, i8** %left_number_property.addr, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  call void @connect_notify(%struct._GObject* %60, i8* %61, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkEntry*)* @gimp_prop_number_pair_entry_config_notify to void ()*), i8* %63)
  %64 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %65 = load i8*, i8** %right_number_property.addr, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  call void @connect_notify(%struct._GObject* %64, i8* %65, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkEntry*)* @gimp_prop_number_pair_entry_config_notify to void ()*), i8* %67)
  %68 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %69 = load i8*, i8** %default_left_number_property.addr, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  call void @connect_notify(%struct._GObject* %68, i8* %69, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkEntry*)* @gimp_prop_number_pair_entry_config_notify to void ()*), i8* %71)
  %72 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %73 = load i8*, i8** %default_right_number_property.addr, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  call void @connect_notify(%struct._GObject* %72, i8* %73, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkEntry*)* @gimp_prop_number_pair_entry_config_notify to void ()*), i8* %75)
  %76 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %77 = load i8*, i8** %user_override_property.addr, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  call void @connect_notify(%struct._GObject* %76, i8* %77, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkEntry*)* @gimp_prop_number_pair_entry_config_notify to void ()*), i8* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %number_pair_entry, align 8
  ret %struct._GtkWidget* %80
}

declare noalias i8* @g_slice_alloc(i64) #1

declare %struct._GtkWidget* @gimp_number_pair_entry_new(i8*, i32, double, double) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_number_pair_entry_data_free(%struct.GimpPropNumberPairEntryData* %data) #0 {
entry:
  %data.addr = alloca %struct.GimpPropNumberPairEntryData*, align 8
  store %struct.GimpPropNumberPairEntryData* %data, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %1 = bitcast %struct.GimpPropNumberPairEntryData* %0 to i8*
  call void @g_slice_free1(i64 48, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gimp_number_pair_entry_set_user_override(%struct._GimpNumberPairEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_number_pair_entry_get_type() #2

declare void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry*, double, double) #1

declare void @gimp_number_pair_entry_set_default_values(%struct._GimpNumberPairEntry*, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_number_pair_entry_number_pair_numbers_changed(%struct._GtkWidget* %widget, %struct.GimpPropNumberPairEntryData* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca %struct.GimpPropNumberPairEntryData*, align 8
  %left_number = alloca double, align 8
  %right_number = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.GimpPropNumberPairEntryData* %data, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpNumberPairEntry*
  call void @gimp_number_pair_entry_get_values(%struct._GimpNumberPairEntry* %2, double* %left_number, double* %right_number)
  %3 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %config = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %3, i32 0, i32 0
  %4 = load %struct._GObject*, %struct._GObject** %config, align 8
  %5 = bitcast %struct._GObject* %4 to i8*
  %6 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %left_number_property = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %6, i32 0, i32 1
  %7 = load i8*, i8** %left_number_property, align 8
  %8 = load double, double* %left_number, align 8
  %9 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %right_number_property = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %9, i32 0, i32 2
  %10 = load i8*, i8** %right_number_property, align 8
  %11 = load double, double* %right_number, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* %7, double %8, i8* %10, double %11, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_number_pair_entry_number_pair_user_override_notify(%struct._GtkWidget* %entry1, %struct._GParamSpec* %param_spec, %struct.GimpPropNumberPairEntryData* %data) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca %struct.GimpPropNumberPairEntryData*, align 8
  %old_config_user_override = alloca i32, align 4
  %new_config_user_override = alloca i32, align 4
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct.GimpPropNumberPairEntryData* %data, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %0 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %config = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %0, i32 0, i32 0
  %1 = load %struct._GObject*, %struct._GObject** %config, align 8
  %2 = bitcast %struct._GObject* %1 to i8*
  %3 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %user_override_property = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %3, i32 0, i32 5
  %4 = load i8*, i8** %user_override_property, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %2, i8* %4, i32* %old_config_user_override, i8* null)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_number_pair_entry_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpNumberPairEntry*
  %call3 = call i32 @gimp_number_pair_entry_get_user_override(%struct._GimpNumberPairEntry* %7)
  store i32 %call3, i32* %new_config_user_override, align 4
  %8 = load i32, i32* %new_config_user_override, align 4
  %9 = load i32, i32* %old_config_user_override, align 4
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %config4 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %10, i32 0, i32 0
  %11 = load %struct._GObject*, %struct._GObject** %config4, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data.addr, align 8
  %user_override_property5 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %13, i32 0, i32 5
  %14 = load i8*, i8** %user_override_property5, align 8
  %15 = load i32, i32* %new_config_user_override, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, i32 %15, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_number_pair_entry_config_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkEntry* %number_pair_entry) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %number_pair_entry.addr = alloca %struct._GtkEntry*, align 8
  %data = alloca %struct.GimpPropNumberPairEntryData*, align 8
  %left_number = alloca double, align 8
  %right_number = alloca double, align 8
  %default_left_number = alloca double, align 8
  %default_right_number = alloca double, align 8
  %user_override = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkEntry* %number_pair_entry, %struct._GtkEntry** %number_pair_entry.addr, align 8
  %0 = load %struct._GtkEntry*, %struct._GtkEntry** %number_pair_entry.addr, align 8
  %1 = bitcast %struct._GtkEntry* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct.GimpPropNumberPairEntryData*
  store %struct.GimpPropNumberPairEntryData* %3, %struct.GimpPropNumberPairEntryData** %data, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %cmp = icmp ne %struct.GimpPropNumberPairEntryData* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_prop_number_pair_entry_config_notify, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.35

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %left_number_property = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %7, i32 0, i32 1
  %8 = load i8*, i8** %left_number_property, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* %8) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name4 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name4, align 8
  %11 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %right_number_property = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %11, i32 0, i32 2
  %12 = load i8*, i8** %right_number_property, align 8
  %call5 = call i32 @strcmp(i8* %10, i8* %12) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %lor.lhs.false, %do.end
  %13 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %left_number_property8 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %15, i32 0, i32 1
  %16 = load i8*, i8** %left_number_property8, align 8
  %17 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %right_number_property9 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %17, i32 0, i32 2
  %18 = load i8*, i8** %right_number_property9, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %14, i8* %16, double* %left_number, i8* %18, double* %right_number, i8* null)
  %19 = load %struct._GtkEntry*, %struct._GtkEntry** %number_pair_entry.addr, align 8
  %20 = bitcast %struct._GtkEntry* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_number_pair_entry_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpNumberPairEntry*
  %22 = load double, double* %left_number, align 8
  %23 = load double, double* %right_number, align 8
  call void @gimp_number_pair_entry_set_values(%struct._GimpNumberPairEntry* %21, double %22, double %23)
  br label %if.end.35

if.else.12:                                       ; preds = %lor.lhs.false
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name13 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %24, i32 0, i32 1
  %25 = load i8*, i8** %name13, align 8
  %26 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %default_left_number_property = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %26, i32 0, i32 3
  %27 = load i8*, i8** %default_left_number_property, align 8
  %call14 = call i32 @strcmp(i8* %25, i8* %27) #8
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.else.12
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name17 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %28, i32 0, i32 1
  %29 = load i8*, i8** %name17, align 8
  %30 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %default_right_number_property = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %30, i32 0, i32 4
  %31 = load i8*, i8** %default_right_number_property, align 8
  %call18 = call i32 @strcmp(i8* %29, i8* %31) #8
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %lor.lhs.false.16, %if.else.12
  %32 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %33 = bitcast %struct._GObject* %32 to i8*
  %34 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %default_left_number_property21 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %34, i32 0, i32 3
  %35 = load i8*, i8** %default_left_number_property21, align 8
  %36 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %default_right_number_property22 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %36, i32 0, i32 4
  %37 = load i8*, i8** %default_right_number_property22, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %33, i8* %35, double* %default_left_number, i8* %37, double* %default_right_number, i8* null)
  %38 = load %struct._GtkEntry*, %struct._GtkEntry** %number_pair_entry.addr, align 8
  %39 = bitcast %struct._GtkEntry* %38 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_number_pair_entry_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call23)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpNumberPairEntry*
  %41 = load double, double* %default_left_number, align 8
  %42 = load double, double* %default_right_number, align 8
  call void @gimp_number_pair_entry_set_default_values(%struct._GimpNumberPairEntry* %40, double %41, double %42)
  br label %if.end.34

if.else.25:                                       ; preds = %lor.lhs.false.16
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name26 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %43, i32 0, i32 1
  %44 = load i8*, i8** %name26, align 8
  %45 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %user_override_property = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %45, i32 0, i32 5
  %46 = load i8*, i8** %user_override_property, align 8
  %call27 = call i32 @strcmp(i8* %44, i8* %46) #8
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.else.25
  %47 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %48 = bitcast %struct._GObject* %47 to i8*
  %49 = load %struct.GimpPropNumberPairEntryData*, %struct.GimpPropNumberPairEntryData** %data, align 8
  %user_override_property30 = getelementptr inbounds %struct.GimpPropNumberPairEntryData, %struct.GimpPropNumberPairEntryData* %49, i32 0, i32 5
  %50 = load i8*, i8** %user_override_property30, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %48, i8* %50, i32* %user_override, i8* null)
  %51 = load %struct._GtkEntry*, %struct._GtkEntry** %number_pair_entry.addr, align 8
  %52 = bitcast %struct._GtkEntry* %51 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_number_pair_entry_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call31)
  %53 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpNumberPairEntry*
  %54 = load i32, i32* %user_override, align 4
  call void @gimp_number_pair_entry_set_user_override(%struct._GimpNumberPairEntry* %53, i32 %54)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.else.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.20
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.end.34, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_language_combo_box_new(%struct._GObject* %config, i8* %property_name) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 14
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_prop_language_combo_box_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._GtkWidget* @gimp_language_combo_box_new()
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %combo, align 8
  %5 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %6 = bitcast %struct._GObject* %5 to i8*
  %7 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* %7, i8** %value, i8* null)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_language_combo_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLanguageComboBox*
  %11 = load i8*, i8** %value, align 8
  %call4 = call i32 @gimp_language_combo_box_set_code(%struct._GimpLanguageComboBox* %10, i8* %11)
  %12 = load i8*, i8** %value, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %15, %struct._GtkWidget* %16, %struct._GParamSpec* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_language_combo_box_callback to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %23 = load i8*, i8** %property_name.addr, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  call void @connect_notify(%struct._GObject* %22, i8* %23, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_language_combo_box_notify to void ()*), i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  store %struct._GtkWidget* %26, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %27
}

declare %struct._GtkWidget* @gimp_language_combo_box_new() #1

declare i32 @gimp_language_combo_box_set_code(%struct._GimpLanguageComboBox*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_language_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_language_combo_box_callback(%struct._GtkWidget* %combo, %struct._GObject* %config) #0 {
entry:
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %code = alloca i8*, align 8
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
  %call2 = call i64 @gimp_language_combo_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLanguageComboBox*
  %call4 = call i8* @gimp_language_combo_box_get_code(%struct._GimpLanguageComboBox* %6)
  store i8* %call4, i8** %code, align 8
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_language_combo_box_notify to i8*), i8* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %code, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, i8* %15, i8* null)
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call6 = call i32 @g_signal_handlers_unblock_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_language_combo_box_notify to i8*), i8* %19)
  %20 = load i8*, i8** %code, align 8
  call void @g_free(i8* %20)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_language_combo_box_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %combo) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_language_combo_box_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_language_combo_box_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpLanguageComboBox*
  %11 = load i8*, i8** %value, align 8
  %call3 = call i32 @gimp_language_combo_box_set_code(%struct._GimpLanguageComboBox* %10, i8* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call4 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_language_combo_box_callback to i8*), i8* %15)
  %16 = load i8*, i8** %value, align 8
  call void @g_free(i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_language_entry_new(%struct._GObject* %config, i8* %property_name) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 14
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_prop_language_entry_new, i32 0, i32 0))
  store %struct._GParamSpec* %call, %struct._GParamSpec** %param_spec, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %tobool = icmp ne %struct._GParamSpec* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._GtkWidget* @gimp_language_entry_new()
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %entry1, align 8
  %5 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %6 = bitcast %struct._GObject* %5 to i8*
  %7 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* %7, i8** %value, i8* null)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_language_entry_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpLanguageEntry*
  %11 = load i8*, i8** %value, align 8
  %call5 = call i32 @gimp_language_entry_set_code(%struct._GimpLanguageEntry* %10, i8* %11)
  %12 = load i8*, i8** %value, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %15, %struct._GtkWidget* %16, %struct._GParamSpec* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_language_entry_callback to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %23 = load i8*, i8** %property_name.addr, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  call void @connect_notify(%struct._GObject* %22, i8* %23, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_language_entry_notify to void ()*), i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  store %struct._GtkWidget* %26, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %27
}

declare %struct._GtkWidget* @gimp_language_entry_new() #1

declare i32 @gimp_language_entry_set_code(%struct._GimpLanguageEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_language_entry_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_language_entry_callback(%struct._GtkWidget* %entry1, %struct._GObject* %config) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %code = alloca i8*, align 8
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
  %call3 = call i64 @gimp_language_entry_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpLanguageEntry*
  %call5 = call i8* @gimp_language_entry_get_code(%struct._GimpLanguageEntry* %6)
  store i8* %call5, i8** %code, align 8
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_language_entry_notify to i8*), i8* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %code, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, i8* %15, i8* null)
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_language_entry_notify to i8*), i8* %19)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_language_entry_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %entry1) #0 {
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
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_language_entry_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_language_entry_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLanguageEntry*
  %11 = load i8*, i8** %value, align 8
  %call4 = call i32 @gimp_language_entry_set_code(%struct._GimpLanguageEntry* %10, i8* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @gimp_prop_language_entry_callback to i8*), i8* %15)
  %16 = load i8*, i8** %value, align 8
  call void @g_free(i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_icon_picker_new(%struct._GObject* %config, i8* %property_name, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %picker = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = load i8*, i8** %property_name.addr, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 14
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GParamSpec* @check_param_spec_w(%struct._GObject* %0, i8* %1, i64 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_prop_icon_picker_new, i32 0, i32 0))
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
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* %7, i8** %value, i8* null)
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call1 = call %struct._GtkWidget* @gimp_icon_picker_new(%struct._Gimp* %8)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %picker, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %picker, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_icon_picker_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call2)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpIconPicker*
  %12 = load i8*, i8** %value, align 8
  call void @gimp_icon_picker_set_stock_id(%struct._GimpIconPicker* %11, i8* %12)
  %13 = load i8*, i8** %value, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %picker, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %picker, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  call void @set_param_spec(%struct._GObject* %16, %struct._GtkWidget* %17, %struct._GParamSpec* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %picker, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %22 = bitcast %struct._GObject* %21 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GParamSpec*, %struct._GObject*)* @gimp_prop_icon_picker_callback to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %24 = load i8*, i8** %property_name.addr, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %picker, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  call void @connect_notify(%struct._GObject* %23, i8* %24, void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_icon_picker_notify to void ()*), i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %picker, align 8
  store %struct._GtkWidget* %27, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %28
}

declare %struct._GtkWidget* @gimp_icon_picker_new(%struct._Gimp*) #1

declare void @gimp_icon_picker_set_stock_id(%struct._GimpIconPicker*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_icon_picker_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_icon_picker_callback(%struct._GtkWidget* %picker, %struct._GParamSpec* %unuded_param_spec, %struct._GObject* %config) #0 {
entry:
  %picker.addr = alloca %struct._GtkWidget*, align 8
  %unuded_param_spec.addr = alloca %struct._GParamSpec*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  %value = alloca i8*, align 8
  store %struct._GtkWidget* %picker, %struct._GtkWidget** %picker.addr, align 8
  store %struct._GParamSpec* %unuded_param_spec, %struct._GParamSpec** %unuded_param_spec.addr, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %picker.addr, align 8
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
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %picker.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_icon_picker_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpIconPicker*
  %call4 = call i8* @gimp_icon_picker_get_stock_id(%struct._GimpIconPicker* %6)
  store i8* %call4, i8** %value, align 8
  %7 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %8 = bitcast %struct._GObject* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %picker.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %8, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_icon_picker_notify to i8*), i8* %10)
  %11 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %12 = bitcast %struct._GObject* %11 to i8*
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %12, i8* %14, i8* %15, i8* null)
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to i8*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %picker.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call6 = call i32 @g_signal_handlers_unblock_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GtkWidget*)* @gimp_prop_icon_picker_notify to i8*), i8* %19)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_prop_icon_picker_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, %struct._GtkWidget* %picker) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %picker.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GtkWidget* %picker, %struct._GtkWidget** %picker.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to i8*
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* %3, i8** %value, i8* null)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %picker.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %6 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GParamSpec*, %struct._GObject*)* @gimp_prop_icon_picker_callback to i8*), i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %picker.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_icon_picker_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIconPicker*
  %11 = load i8*, i8** %value, align 8
  call void @gimp_icon_picker_set_stock_id(%struct._GimpIconPicker* %10, i8* %11)
  %12 = load i8*, i8** %value, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %picker.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GParamSpec*, %struct._GObject*)* @gimp_prop_icon_picker_callback to i8*), i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_prop_table_new(%struct._GObject* %config, i64 %owner_type, %struct._GimpContext* %context) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GObject*, align 8
  %owner_type.addr = alloca i64, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %size_group = alloca %struct._GtkSizeGroup*, align 8
  %param_specs = alloca %struct._GParamSpec**, align 8
  %n_param_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %row = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %label = alloca i8*, align 8
  %__inst37 = alloca %struct._GTypeInstance*, align 8
  %__t39 = alloca i64, align 8
  %__r42 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  %__inst65 = alloca %struct._GTypeInstance*, align 8
  %__t67 = alloca i64, align 8
  %__r70 = alloca i32, align 4
  %tmp85 = alloca i32, align 4
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %__inst112 = alloca %struct._GTypeInstance*, align 8
  %__t114 = alloca i64, align 8
  %__r117 = alloca i32, align 4
  %tmp132 = alloca i32, align 4
  %__inst140 = alloca %struct._GTypeInstance*, align 8
  %__t142 = alloca i64, align 8
  %__r145 = alloca i32, align 4
  %tmp160 = alloca i32, align 4
  %__inst168 = alloca %struct._GTypeInstance*, align 8
  %__t170 = alloca i64, align 8
  %__r173 = alloca i32, align 4
  %tmp188 = alloca i32, align 4
  %__inst192 = alloca %struct._GTypeInstance*, align 8
  %__t194 = alloca i64, align 8
  %__r197 = alloca i32, align 4
  %tmp212 = alloca i32, align 4
  %__inst216 = alloca %struct._GTypeInstance*, align 8
  %__t218 = alloca i64, align 8
  %__r221 = alloca i32, align 4
  %tmp236 = alloca i32, align 4
  %__inst240 = alloca %struct._GTypeInstance*, align 8
  %__t242 = alloca i64, align 8
  %__r245 = alloca i32, align 4
  %tmp260 = alloca i32, align 4
  %adj = alloca %struct._GtkObject*, align 8
  %digits = alloca i32, align 4
  %__inst266 = alloca %struct._GTypeInstance*, align 8
  %__t268 = alloca i64, align 8
  %__r271 = alloca i32, align 4
  %tmp286 = alloca i32, align 4
  %__inst289 = alloca %struct._GTypeInstance*, align 8
  %__t291 = alloca i64, align 8
  %__r294 = alloca i32, align 4
  %tmp309 = alloca i32, align 4
  %__inst320 = alloca %struct._GTypeInstance*, align 8
  %__t322 = alloca i64, align 8
  %__r325 = alloca i32, align 4
  %tmp340 = alloca i32, align 4
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store i64 %owner_type, i64* %owner_type.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 0, i32* %row, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_table_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp = icmp eq %struct._GimpContext* %2, null
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = bitcast %struct._GimpContext* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_context_get_type() #7
  store i64 %call2, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool3, label %if.else.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else.5:                                        ; preds = %lor.lhs.false
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else.5
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp8 = icmp eq i64 %10, %11
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true, %if.else.5
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #8
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.4
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13, %do.body.1
  br label %if.end.17

if.else.16:                                       ; preds = %if.end.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_table_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %16 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GObjectClass*
  %call20 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %19, i32* %n_param_specs)
  store %struct._GParamSpec** %call20, %struct._GParamSpec*** %param_specs, align 8
  %call21 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call21, %struct._GtkSizeGroup** %size_group, align 8
  %call22 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 1, i32 0)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %table, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call23)
  %22 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %22, i32 4)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call25)
  %25 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %25, i32 2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.18
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %n_param_specs, align 4
  %cmp27 = icmp ult i32 %26, %27
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct._GParamSpec**, %struct._GParamSpec*** %param_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %29, i64 %idxprom
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %30, %struct._GParamSpec** %pspec, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %widget, align 8
  store i8* null, i8** %label, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %owner_type31 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 4
  %32 = load i64, i64* %owner_type31, align 8
  %33 = load i64, i64* %owner_type.addr, align 8
  %call32 = call i32 @g_type_is_a(i64 %32, i64 %33)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %for.body
  br label %for.inc

if.end.35:                                        ; preds = %for.body
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %35 = bitcast %struct._GParamSpec* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst37, align 8
  %36 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %36, i64 14
  %37 = load i64, i64* %arrayidx40, align 8
  store i64 %37, i64* %__t39, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst37, align 8
  %tobool43 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool43, label %if.else.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.35
  store i32 0, i32* %__r42, align 4
  br label %if.end.56

if.else.45:                                       ; preds = %if.end.35
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst37, align 8
  %g_class46 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class46, align 8
  %tobool47 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool47, label %land.lhs.true.48, label %if.else.53

land.lhs.true.48:                                 ; preds = %if.else.45
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst37, align 8
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %g_type50 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type50, align 8
  %44 = load i64, i64* %__t39, align 8
  %cmp51 = icmp eq i64 %43, %44
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %land.lhs.true.48
  store i32 1, i32* %__r42, align 4
  br label %if.end.55

if.else.53:                                       ; preds = %land.lhs.true.48, %if.else.45
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst37, align 8
  %46 = load i64, i64* %__t39, align 8
  %call54 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #8
  store i32 %call54, i32* %__r42, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.then.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.44
  %47 = load i32, i32* %__r42, align 4
  store i32 %47, i32* %tmp57
  %48 = load i32, i32* %tmp57
  %tobool58 = icmp ne i32 %48, 0
  br i1 %tobool58, label %if.then.59, label %if.else.110

if.then.59:                                       ; preds = %if.end.56
  %49 = load i32, i32* @gimp_prop_table_new.multiline_quark, align 4
  %tobool60 = icmp ne i32 %49, 0
  br i1 %tobool60, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %if.then.59
  %call62 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0))
  store i32 %call62, i32* @gimp_prop_table_new.multiline_quark, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.then.59
  %50 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %51 = bitcast %struct._GParamSpec* %50 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %51, %struct._GTypeInstance** %__inst65, align 8
  %call68 = call i64 @gimp_param_config_path_get_type() #7
  store i64 %call68, i64* %__t67, align 8
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %tobool71 = icmp ne %struct._GTypeInstance* %52, null
  br i1 %tobool71, label %if.else.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.63
  store i32 0, i32* %__r70, align 4
  br label %if.end.84

if.else.73:                                       ; preds = %if.end.63
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %g_class74 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class74, align 8
  %tobool75 = icmp ne %struct._GTypeClass* %54, null
  br i1 %tobool75, label %land.lhs.true.76, label %if.else.81

land.lhs.true.76:                                 ; preds = %if.else.73
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %g_type78 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %56, i32 0, i32 0
  %57 = load i64, i64* %g_type78, align 8
  %58 = load i64, i64* %__t67, align 8
  %cmp79 = icmp eq i64 %57, %58
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %land.lhs.true.76
  store i32 1, i32* %__r70, align 4
  br label %if.end.83

if.else.81:                                       ; preds = %land.lhs.true.76, %if.else.73
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %60 = load i64, i64* %__t67, align 8
  %call82 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %59, i64 %60) #8
  store i32 %call82, i32* %__r70, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.72
  %61 = load i32, i32* %__r70, align 4
  store i32 %61, i32* %tmp85
  %62 = load i32, i32* %tmp85
  %tobool86 = icmp ne i32 %62, 0
  br i1 %tobool86, label %if.then.87, label %if.else.90

if.then.87:                                       ; preds = %if.end.84
  %63 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %64 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %64, i32 0, i32 1
  %65 = load i8*, i8** %name, align 8
  %66 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call88 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %66)
  %call89 = call %struct._GtkWidget* @gimp_prop_file_chooser_button_new(%struct._GObject* %63, i8* %65, i8* %call88, i32 0)
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %widget, align 8
  br label %if.end.108

if.else.90:                                       ; preds = %if.end.84
  %67 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %68 = load i32, i32* @gimp_prop_table_new.multiline_quark, align 4
  %call91 = call i8* @g_param_spec_get_qdata(%struct._GParamSpec* %67, i32 %68)
  %tobool92 = icmp ne i8* %call91, null
  br i1 %tobool92, label %if.then.93, label %if.else.104

if.then.93:                                       ; preds = %if.else.90
  %69 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %70 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name96 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %70, i32 0, i32 1
  %71 = load i8*, i8** %name96, align 8
  %call97 = call %struct._GtkTextBuffer* @gimp_prop_text_buffer_new(%struct._GObject* %69, i8* %71, i32 -1)
  store %struct._GtkTextBuffer* %call97, %struct._GtkTextBuffer** %buffer, align 8
  %72 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call98 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %72)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %view, align 8
  %call99 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %widget, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_scrolled_window_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call100)
  %75 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %75, i32 1)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_container_get_type() #7
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call102)
  %78 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkContainer*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %78, %struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  br label %if.end.107

if.else.104:                                      ; preds = %if.else.90
  %81 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %82 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name105 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %82, i32 0, i32 1
  %83 = load i8*, i8** %name105, align 8
  %call106 = call %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject* %81, i8* %83, i32 -1)
  store %struct._GtkWidget* %call106, %struct._GtkWidget** %widget, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.93
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.87
  %84 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call109 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %84)
  store i8* %call109, i8** %label, align 8
  br label %if.end.358

if.else.110:                                      ; preds = %if.end.56
  %85 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %86 = bitcast %struct._GParamSpec* %85 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %86, %struct._GTypeInstance** %__inst112, align 8
  %87 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx115 = getelementptr inbounds i64, i64* %87, i64 2
  %88 = load i64, i64* %arrayidx115, align 8
  store i64 %88, i64* %__t114, align 8
  %89 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %tobool118 = icmp ne %struct._GTypeInstance* %89, null
  br i1 %tobool118, label %if.else.120, label %if.then.119

if.then.119:                                      ; preds = %if.else.110
  store i32 0, i32* %__r117, align 4
  br label %if.end.131

if.else.120:                                      ; preds = %if.else.110
  %90 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class121 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %90, i32 0, i32 0
  %91 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class121, align 8
  %tobool122 = icmp ne %struct._GTypeClass* %91, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.else.128

land.lhs.true.123:                                ; preds = %if.else.120
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class124 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %92, i32 0, i32 0
  %93 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class124, align 8
  %g_type125 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %93, i32 0, i32 0
  %94 = load i64, i64* %g_type125, align 8
  %95 = load i64, i64* %__t114, align 8
  %cmp126 = icmp eq i64 %94, %95
  br i1 %cmp126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %land.lhs.true.123
  store i32 1, i32* %__r117, align 4
  br label %if.end.130

if.else.128:                                      ; preds = %land.lhs.true.123, %if.else.120
  %96 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %97 = load i64, i64* %__t114, align 8
  %call129 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %96, i64 %97) #8
  store i32 %call129, i32* %__r117, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.119
  %98 = load i32, i32* %__r117, align 4
  store i32 %98, i32* %tmp132
  %99 = load i32, i32* %tmp132
  %tobool133 = icmp ne i32 %99, 0
  br i1 %tobool133, label %if.then.134, label %if.else.138

if.then.134:                                      ; preds = %if.end.131
  %100 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %101 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name135 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %101, i32 0, i32 1
  %102 = load i8*, i8** %name135, align 8
  %103 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call136 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %103)
  %call137 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %100, i8* %102, i8* %call136)
  store %struct._GtkWidget* %call137, %struct._GtkWidget** %widget, align 8
  br label %if.end.357

if.else.138:                                      ; preds = %if.end.131
  %104 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %105 = bitcast %struct._GParamSpec* %104 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %105, %struct._GTypeInstance** %__inst140, align 8
  %106 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx143 = getelementptr inbounds i64, i64* %106, i64 10
  %107 = load i64, i64* %arrayidx143, align 8
  store i64 %107, i64* %__t142, align 8
  %108 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst140, align 8
  %tobool146 = icmp ne %struct._GTypeInstance* %108, null
  br i1 %tobool146, label %if.else.148, label %if.then.147

if.then.147:                                      ; preds = %if.else.138
  store i32 0, i32* %__r145, align 4
  br label %if.end.159

if.else.148:                                      ; preds = %if.else.138
  %109 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst140, align 8
  %g_class149 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %109, i32 0, i32 0
  %110 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class149, align 8
  %tobool150 = icmp ne %struct._GTypeClass* %110, null
  br i1 %tobool150, label %land.lhs.true.151, label %if.else.156

land.lhs.true.151:                                ; preds = %if.else.148
  %111 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst140, align 8
  %g_class152 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %111, i32 0, i32 0
  %112 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class152, align 8
  %g_type153 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %112, i32 0, i32 0
  %113 = load i64, i64* %g_type153, align 8
  %114 = load i64, i64* %__t142, align 8
  %cmp154 = icmp eq i64 %113, %114
  br i1 %cmp154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %land.lhs.true.151
  store i32 1, i32* %__r145, align 4
  br label %if.end.158

if.else.156:                                      ; preds = %land.lhs.true.151, %if.else.148
  %115 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst140, align 8
  %116 = load i64, i64* %__t142, align 8
  %call157 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %115, i64 %116) #8
  store i32 %call157, i32* %__r145, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.156, %if.then.155
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.147
  %117 = load i32, i32* %__r145, align 4
  store i32 %117, i32* %tmp160
  %118 = load i32, i32* %tmp160
  %tobool161 = icmp ne i32 %118, 0
  br i1 %tobool161, label %if.then.162, label %if.else.166

if.then.162:                                      ; preds = %if.end.159
  %119 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %120 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name163 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %120, i32 0, i32 1
  %121 = load i8*, i8** %name163, align 8
  %call164 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %119, i8* %121, i32 0, i32 0)
  store %struct._GtkWidget* %call164, %struct._GtkWidget** %widget, align 8
  %122 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call165 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %122)
  store i8* %call165, i8** %label, align 8
  br label %if.end.356

if.else.166:                                      ; preds = %if.end.159
  %123 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %124 = bitcast %struct._GParamSpec* %123 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %124, %struct._GTypeInstance** %__inst168, align 8
  %125 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx171 = getelementptr inbounds i64, i64* %125, i64 3
  %126 = load i64, i64* %arrayidx171, align 8
  store i64 %126, i64* %__t170, align 8
  %127 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst168, align 8
  %tobool174 = icmp ne %struct._GTypeInstance* %127, null
  br i1 %tobool174, label %if.else.176, label %if.then.175

if.then.175:                                      ; preds = %if.else.166
  store i32 0, i32* %__r173, align 4
  br label %if.end.187

if.else.176:                                      ; preds = %if.else.166
  %128 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst168, align 8
  %g_class177 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %128, i32 0, i32 0
  %129 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class177, align 8
  %tobool178 = icmp ne %struct._GTypeClass* %129, null
  br i1 %tobool178, label %land.lhs.true.179, label %if.else.184

land.lhs.true.179:                                ; preds = %if.else.176
  %130 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst168, align 8
  %g_class180 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %130, i32 0, i32 0
  %131 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class180, align 8
  %g_type181 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %131, i32 0, i32 0
  %132 = load i64, i64* %g_type181, align 8
  %133 = load i64, i64* %__t170, align 8
  %cmp182 = icmp eq i64 %132, %133
  br i1 %cmp182, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %land.lhs.true.179
  store i32 1, i32* %__r173, align 4
  br label %if.end.186

if.else.184:                                      ; preds = %land.lhs.true.179, %if.else.176
  %134 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst168, align 8
  %135 = load i64, i64* %__t170, align 8
  %call185 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %134, i64 %135) #8
  store i32 %call185, i32* %__r173, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.184, %if.then.183
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.175
  %136 = load i32, i32* %__r173, align 4
  store i32 %136, i32* %tmp188
  %137 = load i32, i32* %tmp188
  %tobool189 = icmp ne i32 %137, 0
  br i1 %tobool189, label %if.then.262, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %if.end.187
  %138 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %139 = bitcast %struct._GParamSpec* %138 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %139, %struct._GTypeInstance** %__inst192, align 8
  %140 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx195 = getelementptr inbounds i64, i64* %140, i64 4
  %141 = load i64, i64* %arrayidx195, align 8
  store i64 %141, i64* %__t194, align 8
  %142 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst192, align 8
  %tobool198 = icmp ne %struct._GTypeInstance* %142, null
  br i1 %tobool198, label %if.else.200, label %if.then.199

if.then.199:                                      ; preds = %lor.lhs.false.190
  store i32 0, i32* %__r197, align 4
  br label %if.end.211

if.else.200:                                      ; preds = %lor.lhs.false.190
  %143 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst192, align 8
  %g_class201 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %143, i32 0, i32 0
  %144 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class201, align 8
  %tobool202 = icmp ne %struct._GTypeClass* %144, null
  br i1 %tobool202, label %land.lhs.true.203, label %if.else.208

land.lhs.true.203:                                ; preds = %if.else.200
  %145 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst192, align 8
  %g_class204 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %145, i32 0, i32 0
  %146 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class204, align 8
  %g_type205 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %146, i32 0, i32 0
  %147 = load i64, i64* %g_type205, align 8
  %148 = load i64, i64* %__t194, align 8
  %cmp206 = icmp eq i64 %147, %148
  br i1 %cmp206, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %land.lhs.true.203
  store i32 1, i32* %__r197, align 4
  br label %if.end.210

if.else.208:                                      ; preds = %land.lhs.true.203, %if.else.200
  %149 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst192, align 8
  %150 = load i64, i64* %__t194, align 8
  %call209 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %149, i64 %150) #8
  store i32 %call209, i32* %__r197, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.208, %if.then.207
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.199
  %151 = load i32, i32* %__r197, align 4
  store i32 %151, i32* %tmp212
  %152 = load i32, i32* %tmp212
  %tobool213 = icmp ne i32 %152, 0
  br i1 %tobool213, label %if.then.262, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %if.end.211
  %153 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %154 = bitcast %struct._GParamSpec* %153 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %154, %struct._GTypeInstance** %__inst216, align 8
  %155 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx219 = getelementptr inbounds i64, i64* %155, i64 12
  %156 = load i64, i64* %arrayidx219, align 8
  store i64 %156, i64* %__t218, align 8
  %157 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst216, align 8
  %tobool222 = icmp ne %struct._GTypeInstance* %157, null
  br i1 %tobool222, label %if.else.224, label %if.then.223

if.then.223:                                      ; preds = %lor.lhs.false.214
  store i32 0, i32* %__r221, align 4
  br label %if.end.235

if.else.224:                                      ; preds = %lor.lhs.false.214
  %158 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst216, align 8
  %g_class225 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %158, i32 0, i32 0
  %159 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class225, align 8
  %tobool226 = icmp ne %struct._GTypeClass* %159, null
  br i1 %tobool226, label %land.lhs.true.227, label %if.else.232

land.lhs.true.227:                                ; preds = %if.else.224
  %160 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst216, align 8
  %g_class228 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %160, i32 0, i32 0
  %161 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class228, align 8
  %g_type229 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %161, i32 0, i32 0
  %162 = load i64, i64* %g_type229, align 8
  %163 = load i64, i64* %__t218, align 8
  %cmp230 = icmp eq i64 %162, %163
  br i1 %cmp230, label %if.then.231, label %if.else.232

if.then.231:                                      ; preds = %land.lhs.true.227
  store i32 1, i32* %__r221, align 4
  br label %if.end.234

if.else.232:                                      ; preds = %land.lhs.true.227, %if.else.224
  %164 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst216, align 8
  %165 = load i64, i64* %__t218, align 8
  %call233 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %164, i64 %165) #8
  store i32 %call233, i32* %__r221, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.232, %if.then.231
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.223
  %166 = load i32, i32* %__r221, align 4
  store i32 %166, i32* %tmp236
  %167 = load i32, i32* %tmp236
  %tobool237 = icmp ne i32 %167, 0
  br i1 %tobool237, label %if.then.262, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %if.end.235
  %168 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %169 = bitcast %struct._GParamSpec* %168 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %169, %struct._GTypeInstance** %__inst240, align 8
  %170 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx243 = getelementptr inbounds i64, i64* %170, i64 13
  %171 = load i64, i64* %arrayidx243, align 8
  store i64 %171, i64* %__t242, align 8
  %172 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst240, align 8
  %tobool246 = icmp ne %struct._GTypeInstance* %172, null
  br i1 %tobool246, label %if.else.248, label %if.then.247

if.then.247:                                      ; preds = %lor.lhs.false.238
  store i32 0, i32* %__r245, align 4
  br label %if.end.259

if.else.248:                                      ; preds = %lor.lhs.false.238
  %173 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst240, align 8
  %g_class249 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %173, i32 0, i32 0
  %174 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class249, align 8
  %tobool250 = icmp ne %struct._GTypeClass* %174, null
  br i1 %tobool250, label %land.lhs.true.251, label %if.else.256

land.lhs.true.251:                                ; preds = %if.else.248
  %175 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst240, align 8
  %g_class252 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %175, i32 0, i32 0
  %176 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class252, align 8
  %g_type253 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %176, i32 0, i32 0
  %177 = load i64, i64* %g_type253, align 8
  %178 = load i64, i64* %__t242, align 8
  %cmp254 = icmp eq i64 %177, %178
  br i1 %cmp254, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %land.lhs.true.251
  store i32 1, i32* %__r245, align 4
  br label %if.end.258

if.else.256:                                      ; preds = %land.lhs.true.251, %if.else.248
  %179 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst240, align 8
  %180 = load i64, i64* %__t242, align 8
  %call257 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %179, i64 %180) #8
  store i32 %call257, i32* %__r245, align 4
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.256, %if.then.255
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.247
  %181 = load i32, i32* %__r245, align 4
  store i32 %181, i32* %tmp260
  %182 = load i32, i32* %tmp260
  %tobool261 = icmp ne i32 %182, 0
  br i1 %tobool261, label %if.then.262, label %if.else.318

if.then.262:                                      ; preds = %if.end.259, %if.end.235, %if.end.211, %if.end.187
  %183 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %184 = bitcast %struct._GParamSpec* %183 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %184, %struct._GTypeInstance** %__inst266, align 8
  %185 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx269 = getelementptr inbounds i64, i64* %185, i64 12
  %186 = load i64, i64* %arrayidx269, align 8
  store i64 %186, i64* %__t268, align 8
  %187 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst266, align 8
  %tobool272 = icmp ne %struct._GTypeInstance* %187, null
  br i1 %tobool272, label %if.else.274, label %if.then.273

if.then.273:                                      ; preds = %if.then.262
  store i32 0, i32* %__r271, align 4
  br label %if.end.285

if.else.274:                                      ; preds = %if.then.262
  %188 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst266, align 8
  %g_class275 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %188, i32 0, i32 0
  %189 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class275, align 8
  %tobool276 = icmp ne %struct._GTypeClass* %189, null
  br i1 %tobool276, label %land.lhs.true.277, label %if.else.282

land.lhs.true.277:                                ; preds = %if.else.274
  %190 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst266, align 8
  %g_class278 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %190, i32 0, i32 0
  %191 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class278, align 8
  %g_type279 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %191, i32 0, i32 0
  %192 = load i64, i64* %g_type279, align 8
  %193 = load i64, i64* %__t268, align 8
  %cmp280 = icmp eq i64 %192, %193
  br i1 %cmp280, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %land.lhs.true.277
  store i32 1, i32* %__r271, align 4
  br label %if.end.284

if.else.282:                                      ; preds = %land.lhs.true.277, %if.else.274
  %194 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst266, align 8
  %195 = load i64, i64* %__t268, align 8
  %call283 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %194, i64 %195) #8
  store i32 %call283, i32* %__r271, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.282, %if.then.281
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.then.273
  %196 = load i32, i32* %__r271, align 4
  store i32 %196, i32* %tmp286
  %197 = load i32, i32* %tmp286
  %tobool287 = icmp ne i32 %197, 0
  br i1 %tobool287, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.285
  %198 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %199 = bitcast %struct._GParamSpec* %198 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %199, %struct._GTypeInstance** %__inst289, align 8
  %200 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx292 = getelementptr inbounds i64, i64* %200, i64 13
  %201 = load i64, i64* %arrayidx292, align 8
  store i64 %201, i64* %__t291, align 8
  %202 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst289, align 8
  %tobool295 = icmp ne %struct._GTypeInstance* %202, null
  br i1 %tobool295, label %if.else.297, label %if.then.296

if.then.296:                                      ; preds = %lor.rhs
  store i32 0, i32* %__r294, align 4
  br label %if.end.308

if.else.297:                                      ; preds = %lor.rhs
  %203 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst289, align 8
  %g_class298 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %203, i32 0, i32 0
  %204 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class298, align 8
  %tobool299 = icmp ne %struct._GTypeClass* %204, null
  br i1 %tobool299, label %land.lhs.true.300, label %if.else.305

land.lhs.true.300:                                ; preds = %if.else.297
  %205 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst289, align 8
  %g_class301 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %205, i32 0, i32 0
  %206 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class301, align 8
  %g_type302 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %206, i32 0, i32 0
  %207 = load i64, i64* %g_type302, align 8
  %208 = load i64, i64* %__t291, align 8
  %cmp303 = icmp eq i64 %207, %208
  br i1 %cmp303, label %if.then.304, label %if.else.305

if.then.304:                                      ; preds = %land.lhs.true.300
  store i32 1, i32* %__r294, align 4
  br label %if.end.307

if.else.305:                                      ; preds = %land.lhs.true.300, %if.else.297
  %209 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst289, align 8
  %210 = load i64, i64* %__t291, align 8
  %call306 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %209, i64 %210) #8
  store i32 %call306, i32* %__r294, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.305, %if.then.304
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.then.296
  %211 = load i32, i32* %__r294, align 4
  store i32 %211, i32* %tmp309
  %212 = load i32, i32* %tmp309
  %tobool310 = icmp ne i32 %212, 0
  br label %lor.end

lor.end:                                          ; preds = %if.end.308, %if.end.285
  %213 = phi i1 [ true, %if.end.285 ], [ %tobool310, %if.end.308 ]
  %cond = select i1 %213, i32 2, i32 0
  store i32 %cond, i32* %digits, align 4
  %214 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %215 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name311 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %215, i32 0, i32 1
  %216 = load i8*, i8** %name311, align 8
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %218 = bitcast %struct._GtkWidget* %217 to %struct._GTypeInstance*
  %call312 = call i64 @gtk_table_get_type() #7
  %call313 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %218, i64 %call312)
  %219 = bitcast %struct._GTypeInstance* %call313 to %struct._GtkTable*
  %220 = load i32, i32* %row, align 4
  %inc = add nsw i32 %220, 1
  store i32 %inc, i32* %row, align 4
  %221 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call314 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %221)
  %222 = load i32, i32* %digits, align 4
  %call315 = call %struct._GtkObject* @gimp_prop_scale_entry_new(%struct._GObject* %214, i8* %216, %struct._GtkTable* %219, i32 0, i32 %220, i8* %call314, double 1.000000e+00, double 1.000000e+00, i32 %222, i32 0, double 0.000000e+00, double 0.000000e+00)
  store %struct._GtkObject* %call315, %struct._GtkObject** %adj, align 8
  %223 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %224 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %225 = bitcast %struct._GtkObject* %224 to %struct._GTypeInstance*
  %call316 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %225, i64 80)
  %226 = bitcast %struct._GTypeInstance* %call316 to %struct._GObject*
  %call317 = call i8* @g_object_get_data(%struct._GObject* %226, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  %227 = bitcast i8* %call317 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %223, %struct._GtkWidget* %227)
  br label %if.end.355

if.else.318:                                      ; preds = %if.end.259
  %228 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %229 = bitcast %struct._GParamSpec* %228 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %229, %struct._GTypeInstance** %__inst320, align 8
  %call323 = call i64 @gimp_param_rgb_get_type() #7
  store i64 %call323, i64* %__t322, align 8
  %230 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst320, align 8
  %tobool326 = icmp ne %struct._GTypeInstance* %230, null
  br i1 %tobool326, label %if.else.328, label %if.then.327

if.then.327:                                      ; preds = %if.else.318
  store i32 0, i32* %__r325, align 4
  br label %if.end.339

if.else.328:                                      ; preds = %if.else.318
  %231 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst320, align 8
  %g_class329 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %231, i32 0, i32 0
  %232 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class329, align 8
  %tobool330 = icmp ne %struct._GTypeClass* %232, null
  br i1 %tobool330, label %land.lhs.true.331, label %if.else.336

land.lhs.true.331:                                ; preds = %if.else.328
  %233 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst320, align 8
  %g_class332 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %233, i32 0, i32 0
  %234 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class332, align 8
  %g_type333 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %234, i32 0, i32 0
  %235 = load i64, i64* %g_type333, align 8
  %236 = load i64, i64* %__t322, align 8
  %cmp334 = icmp eq i64 %235, %236
  br i1 %cmp334, label %if.then.335, label %if.else.336

if.then.335:                                      ; preds = %land.lhs.true.331
  store i32 1, i32* %__r325, align 4
  br label %if.end.338

if.else.336:                                      ; preds = %land.lhs.true.331, %if.else.328
  %237 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst320, align 8
  %238 = load i64, i64* %__t322, align 8
  %call337 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %237, i64 %238) #8
  store i32 %call337, i32* %__r325, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.else.336, %if.then.335
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %if.then.327
  %239 = load i32, i32* %__r325, align 4
  store i32 %239, i32* %tmp340
  %240 = load i32, i32* %tmp340
  %tobool341 = icmp ne i32 %240, 0
  br i1 %tobool341, label %if.then.342, label %if.else.349

if.then.342:                                      ; preds = %if.end.339
  %241 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %242 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name343 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %242, i32 0, i32 1
  %243 = load i8*, i8** %name343, align 8
  %244 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call344 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %244)
  %call345 = call %struct._GtkWidget* @gimp_prop_color_button_new(%struct._GObject* %241, i8* %243, i8* %call344, i32 128, i32 24, i32 1)
  store %struct._GtkWidget* %call345, %struct._GtkWidget** %widget, align 8
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %246 = bitcast %struct._GtkWidget* %245 to %struct._GTypeInstance*
  %call346 = call i64 @gimp_color_panel_get_type() #7
  %call347 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %246, i64 %call346)
  %247 = bitcast %struct._GTypeInstance* %call347 to %struct._GimpColorPanel*
  %248 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_color_panel_set_context(%struct._GimpColorPanel* %247, %struct._GimpContext* %248)
  %249 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call348 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %249)
  store i8* %call348, i8** %label, align 8
  br label %if.end.354

if.else.349:                                      ; preds = %if.end.339
  %250 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %251 = bitcast %struct._GParamSpec* %250 to %struct._GTypeInstance*
  %g_class350 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %251, i32 0, i32 0
  %252 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class350, align 8
  %g_type351 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %252, i32 0, i32 0
  %253 = load i64, i64* %g_type351, align 8
  %call352 = call i8* @g_type_name(i64 %253)
  %254 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name353 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %254, i32 0, i32 1
  %255 = load i8*, i8** %name353, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_prop_table_new, i32 0, i32 0), i8* %call352, i8* %255)
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.349, %if.then.342
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %lor.end
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.then.162
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.then.134
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.end.108
  %256 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool359 = icmp ne %struct._GtkWidget* %256, null
  br i1 %tobool359, label %if.then.360, label %if.end.365

if.then.360:                                      ; preds = %if.end.358
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %258 = bitcast %struct._GtkWidget* %257 to %struct._GTypeInstance*
  %call361 = call i64 @gtk_table_get_type() #7
  %call362 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %258, i64 %call361)
  %259 = bitcast %struct._GTypeInstance* %call362 to %struct._GtkTable*
  %260 = load i32, i32* %row, align 4
  %inc363 = add nsw i32 %260, 1
  store i32 %inc363, i32* %row, align 4
  %261 = load i8*, i8** %label, align 8
  %262 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call364 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %259, i32 0, i32 %260, i8* %261, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %262, i32 2, i32 0)
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.360, %if.end.358
  br label %for.inc

for.inc:                                          ; preds = %if.end.365, %if.then.34
  %263 = load i32, i32* %i, align 4
  %inc366 = add nsw i32 %263, 1
  store i32 %inc366, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %264 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %size_group, align 8
  %265 = bitcast %struct._GtkSizeGroup* %264 to i8*
  call void @g_object_unref(i8* %265)
  %266 = load %struct._GParamSpec**, %struct._GParamSpec*** %param_specs, align 8
  %267 = bitcast %struct._GParamSpec** %266 to i8*
  call void @g_free(i8* %267)
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  store %struct._GtkWidget* %268, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.16, %if.else
  %269 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %269
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass*, i32*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare i32 @g_quark_from_static_string(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_config_path_get_type() #2

declare %struct._GtkWidget* @gimp_prop_file_chooser_button_new(%struct._GObject*, i8*, i8*, i32) #1

declare i8* @g_param_spec_get_nick(%struct._GParamSpec*) #1

declare i8* @g_param_spec_get_qdata(%struct._GParamSpec*, i32) #1

declare %struct._GtkTextBuffer* @gimp_prop_text_buffer_new(%struct._GObject*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare %struct._GtkObject* @gimp_prop_scale_entry_new(%struct._GObject*, i8*, %struct._GtkTable*, i32, i32, i8*, double, double, i32, i32, double, double) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gimp_color_panel_set_context(%struct._GimpColorPanel*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_panel_get_type() #2

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GParamSpec* @get_param_spec(%struct._GObject* %object) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call = call i32 @gimp_prop_widgets_param_spec_quark() #7
  %call1 = call i8* @g_object_get_qdata(%struct._GObject* %0, i32 %call)
  %1 = bitcast i8* %call1 to %struct._GParamSpec*
  ret %struct._GParamSpec* %1
}

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #1

; Function Attrs: nounwind readnone uwtable
define internal i32 @gimp_prop_widgets_param_spec_quark() #4 {
entry:
  %0 = load i32, i32* @gimp_prop_widgets_param_spec_quark.param_spec_quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0))
  store i32 %call, i32* @gimp_prop_widgets_param_spec_quark.param_spec_quark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @gimp_prop_widgets_param_spec_quark.param_spec_quark, align 4
  ret i32 %1
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #2

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gtk_scale_button_set_value(%struct._GtkScaleButton*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_button_get_type() #2

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @gimp_number_pair_entry_get_values(%struct._GimpNumberPairEntry*, double*, double*) #1

declare i32 @gimp_number_pair_entry_get_user_override(%struct._GimpNumberPairEntry*) #1

declare i8* @gimp_language_combo_box_get_code(%struct._GimpLanguageComboBox*) #1

declare i8* @gimp_language_entry_get_code(%struct._GimpLanguageEntry*) #1

declare i8* @gimp_icon_picker_get_stock_id(%struct._GimpIconPicker*) #1

declare void @g_object_set_qdata(%struct._GObject*, i32, i8*) #1

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i8* %9, i8* %11, i8* %call3, i8* %call4)
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

declare noalias i8* @g_strconcat(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
