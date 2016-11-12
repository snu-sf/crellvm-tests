; ModuleID = './libgimpwidgets/gimphelpui.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct._GtkBindingSet = type { i8*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, i8 }
%struct._GtkBindingEntry = type { i32, i32, %struct._GtkBindingSet*, i8, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, %struct._GtkBindingSignal* }
%struct._GtkBindingSignal = type { %struct._GtkBindingSignal*, i8*, i32, %struct._GtkBindingArg* }
%struct._GtkBindingArg = type { i64, %union.anon }
%union.anon = type { i64 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkCursor = type { i32, i32 }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GtkTooltip = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }

@tooltips_enable_called = internal global i32 0, align 4
@tooltips_enabled = internal global i32 1, align 4
@_gimp_standard_help_func = external global void (i8*, i8*)*, align 8
@.str = private unnamed_addr constant [67 x i8] c"%s: you must call gimp_widgets_init() before using the help system\00", align 1
@__func__.gimp_standard_help_func = private unnamed_addr constant [24 x i8] c"gimp_standard_help_func\00", align 1
@gimp_help_connect.initialized = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_help_connect = private unnamed_addr constant [18 x i8] c"gimp_help_connect\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"help_func != NULL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"show-help\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gimp-help-data\00", align 1
@__func__.gimp_help_set_help_data = private unnamed_addr constant [24 x i8] c"gimp_help_set_help_data\00", align 1
@__func__.gimp_help_set_help_data_with_markup = private unnamed_addr constant [36 x i8] c"gimp_help_set_help_data_with_markup\00", align 1
@__func__.gimp_context_help = private unnamed_addr constant [18 x i8] c"gimp_context_help\00", align 1
@gimp_help_id_quark.quark = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"gimp-help-id\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@__func__.gimp_help_menu_item_set_tooltip = private unnamed_addr constant [32 x i8] c"gimp_help_menu_item_set_tooltip\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GTK_IS_MENU_ITEM (widget)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"has-tooltip\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"query-tooltip\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Press F1 for more help\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_help_enable_tooltips() #0 {
entry:
  %0 = load i32, i32* @tooltips_enable_called, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @tooltips_enable_called, align 4
  store i32 1, i32* @tooltips_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_help_disable_tooltips() #0 {
entry:
  %0 = load i32, i32* @tooltips_enable_called, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @tooltips_enable_called, align 4
  store i32 0, i32* @tooltips_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_standard_help_func(i8* %help_id, i8* %help_data) #0 {
entry:
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  %0 = load void (i8*, i8*)*, void (i8*, i8*)** @_gimp_standard_help_func, align 8
  %tobool = icmp ne void (i8*, i8*)* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_standard_help_func, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** @_gimp_standard_help_func, align 8
  %2 = load i8*, i8** %help_id.addr, align 8
  %3 = load i8*, i8** %help_data.addr, align 8
  call void %1(i8* %2, i8* %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_help_connect(%struct._GtkWidget* %widget, void (i8*, i8*)* %help_func, i8* %help_id, i8* %help_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %binding_set = alloca %struct._GtkBindingSet*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_help_connect, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %cmp12 = icmp ne void (i8*, i8*)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_help_connect, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i32, i32* @gimp_help_connect.initialized, align 4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %if.end.25, label %if.then.18

if.then.18:                                       ; preds = %do.end.16
  %call20 = call i64 @gtk_widget_get_type() #7
  %call21 = call i8* @g_type_class_peek(i64 %call20)
  %call22 = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %call21)
  store %struct._GtkBindingSet* %call22, %struct._GtkBindingSet** %binding_set, align 8
  %15 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  %call23 = call i64 @gtk_widget_help_type_get_type() #7
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %15, i32 65470, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 1, i64 %call23, i32 255)
  %16 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  %call24 = call i64 @gtk_widget_help_type_get_type() #7
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %16, i32 65425, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 1, i64 %call24, i32 255)
  store i32 1, i32* @gimp_help_connect.initialized, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %do.end.16
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %17, i8* null, i8* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %22 = load i8*, i8** %help_data.addr, align 8
  call void @g_object_set_data(%struct._GObject* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %26 = bitcast void (i8*, i8*)* %25 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i32, void (i8*, i8*)*)* @gimp_help_callback to void ()*), i8* %26, void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %27, i32 256)
  br label %return

return:                                           ; preds = %if.end.25, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GtkBindingSet* @gtk_binding_set_by_class(i8*) #3

declare i8* @g_type_class_peek(i64) #3

declare void @gtk_binding_entry_add_signal(%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_help_type_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_help_set_help_data(%struct._GtkWidget* %widget, i8* %tooltip, i8* %help_id) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tooltip.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_help_set_help_data, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* @tooltips_enabled, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.38

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = load i8*, i8** %tooltip.addr, align 8
  call void @gtk_widget_set_tooltip_text(%struct._GtkWidget* %14, i8* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_menu_item_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %if.then.12
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type27, align 8
  %24 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %23, %24
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %26 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %27 = load i32, i32* %__r19, align 4
  store i32 %27, i32* %tmp34
  %28 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %30 = load i8*, i8** %tooltip.addr, align 8
  %31 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_menu_item_set_tooltip(%struct._GtkWidget* %29, i8* %30, i8* %31)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %do.end
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %call40 = call i32 @gimp_help_id_quark() #7
  %35 = load i8*, i8** %help_id.addr, align 8
  call void @g_object_set_qdata(%struct._GObject* %34, i32 %call40, i8* %35)
  br label %return

return:                                           ; preds = %if.end.38, %if.else.9
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_help_callback(%struct._GtkWidget* %widget, i32 %help_type, void (i8*, i8*)* %help_func) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %help_type.addr = alloca i32, align 4
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %help_type, i32* %help_type.addr, align 4
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  %0 = load i32, i32* %help_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 255, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %tobool = icmp ne void (i8*, i8*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i32 @gimp_help_id_quark() #7
  %call2 = call i8* @g_object_get_qdata(%struct._GObject* %5, i32 %call1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  call void %2(i8* %call2, i8* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call6 = call i32 @g_idle_add(i32 (i8*)* @gimp_context_help_idle_start, i8* %10)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.5, %if.end
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #3

declare void @gtk_widget_set_tooltip_text(%struct._GtkWidget*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_item_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_help_menu_item_set_tooltip(%struct._GtkWidget* %widget, i8* %tooltip, i8* %help_id) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tooltip.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_menu_item_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_help_menu_item_set_tooltip, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %tooltip.addr, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.else.16

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load i8*, i8** %help_id.addr, align 8
  %tobool13 = icmp ne i8* %14, null
  br i1 %tobool13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %land.lhs.true.12
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* null)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)* @gimp_help_menu_item_query_tooltip to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.21

if.else.16:                                       ; preds = %land.lhs.true.12, %do.end
  %19 = load i8*, i8** %tooltip.addr, align 8
  %tobool17 = icmp ne i8* %19, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.else.16
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* null)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call19 = call i32 @g_signal_handlers_disconnect_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)* @gimp_help_menu_item_query_tooltip to i8*), i8* null)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.else.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.end.20, %if.then.14
  ret void
}

declare void @g_object_set_qdata(%struct._GObject*, i32, i8*) #3

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_help_id_quark() #4 {
entry:
  %0 = load i32, i32* @gimp_help_id_quark.quark, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call, i32* @gimp_help_id_quark.quark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @gimp_help_id_quark.quark, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gimp_help_set_help_data_with_markup(%struct._GtkWidget* %widget, i8* %tooltip, i8* %help_id) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tooltip.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_help_set_help_data_with_markup, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* @tooltips_enabled, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.38

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = load i8*, i8** %tooltip.addr, align 8
  call void @gtk_widget_set_tooltip_markup(%struct._GtkWidget* %14, i8* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_menu_item_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %if.then.12
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type27, align 8
  %24 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %23, %24
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %26 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %27 = load i32, i32* %__r19, align 4
  store i32 %27, i32* %tmp34
  %28 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %30 = load i8*, i8** %tooltip.addr, align 8
  %31 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_menu_item_set_tooltip(%struct._GtkWidget* %29, i8* %30, i8* %31)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %do.end
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %call40 = call i32 @gimp_help_id_quark() #7
  %35 = load i8*, i8** %help_id.addr, align 8
  call void @g_object_set_qdata(%struct._GObject* %34, i32 %call40, i8* %35)
  br label %return

return:                                           ; preds = %if.end.38, %if.else.9
  ret void
}

declare void @gtk_widget_set_tooltip_markup(%struct._GtkWidget*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_context_help(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_context_help, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call i32 @gimp_help_callback(%struct._GtkWidget* %13, i32 1, void (i8*, i8*)* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i32 @g_quark_from_static_string(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @g_object_get_qdata(%struct._GObject*, i32) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare i32 @g_idle_add(i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_context_help_idle_start(i8* %widget) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca i8*, align 8
  %invisible = alloca %struct._GtkWidget*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  %status = alloca i32, align 4
  store i8* %widget, i8** %widget.addr, align 8
  %call = call %struct._GtkWidget* @gtk_grab_get_current()
  %tobool = icmp ne %struct._GtkWidget* %call, null
  br i1 %tobool, label %if.end.16, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %widget.addr, align 8
  %1 = bitcast i8* %0 to %struct._GtkWidget*
  %call1 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %1)
  %call2 = call %struct._GtkWidget* @gtk_invisible_new_for_screen(%struct._GdkScreen* %call1)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %invisible, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  %call3 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %3)
  %call4 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %call3, i32 92)
  store %struct._GdkCursor* %call4, %struct._GdkCursor** %cursor, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  %call5 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  %5 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  %call6 = call i32 @gdk_pointer_grab(%struct._GdkDrawable* %call5, i32 1, i32 13056, %struct._GdkDrawable* null, %struct._GdkCursor* %5, i32 0)
  store i32 %call6, i32* %status, align 4
  %6 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %6)
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  %call8 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %9)
  %call9 = call i32 @gdk_keyboard_grab(%struct._GdkDrawable* %call8, i32 1, i32 0)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  %call12 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %10)
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %call12, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  call void @gtk_grab_add(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, i8*)* @gimp_context_help_button_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %invisible, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventKey*, i8*)* @gimp_context_help_key_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.13, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.11, %if.then.7
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._GtkWidget* @gtk_grab_get_current() #3

declare %struct._GtkWidget* @gtk_invisible_new_for_screen(%struct._GdkScreen*) #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #3

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #3

declare i32 @gdk_pointer_grab(%struct._GdkDrawable*, i32, i32, %struct._GdkDrawable*, %struct._GdkCursor*, i32) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare void @gdk_cursor_unref(%struct._GdkCursor*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare i32 @gdk_keyboard_grab(%struct._GdkDrawable*, i32, i32) #3

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #3

declare void @gtk_grab_add(%struct._GtkWidget*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_context_help_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca i8*, align 8
  %event_widget = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %1 = bitcast %struct._GdkEventButton* %0 to %union._GdkEvent*
  %call = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %event_widget, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 8
  %4 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true.1, label %if.end.8

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %6, 4
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true.1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %7)
  store %struct._GdkDisplay* %call3, %struct._GdkDisplay** %display, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %8)
  %9 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 3
  %11 = load i32, i32* %time, align 4
  call void @gdk_display_keyboard_ungrab(%struct._GdkDisplay* %9, i32 %11)
  %12 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %time4 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 3
  %14 = load i32, i32* %time4, align 4
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %12, i32 %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp5 = icmp ne %struct._GtkWidget* %16, %17
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %event_widget, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call7 = call i32 @g_idle_add(i32 (i8*)* @gimp_context_help_idle_show_help, i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true.1, %land.lhs.true, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_context_help_key_press(%struct._GtkWidget* %widget, %struct._GdkEventKey* %kevent, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %0, i32 0, i32 5
  %1 = load i32, i32* %keyval, align 4
  %cmp = icmp eq i32 %1, 65307
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %2)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_grab_remove(%struct._GtkWidget* %3)
  %4 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %5 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %5, i32 0, i32 3
  %6 = load i32, i32* %time, align 4
  call void @gdk_display_keyboard_ungrab(%struct._GdkDisplay* %4, i32 %6)
  %7 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %8 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %time1 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %8, i32 0, i32 3
  %9 = load i32, i32* %time1, align 4
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %7, i32 %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #3

declare void @gtk_grab_remove(%struct._GtkWidget*) #3

declare void @gdk_display_keyboard_ungrab(%struct._GdkDisplay*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_context_help_idle_show_help(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %help_widget = alloca %struct._GtkWidget*, align 8
  %help_id = alloca i8*, align 8
  %help_data = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* null, i8** %help_id, align 8
  store i8* null, i8** %help_data, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call i8* @gimp_help_get_help_data(%struct._GtkWidget* %2, %struct._GtkWidget** %help_widget, i8** %help_data)
  store i8* %call2, i8** %help_id, align 8
  %3 = load i8*, i8** %help_id, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %help_id, align 8
  %5 = load i8*, i8** %help_data, align 8
  call void @gimp_standard_help_func(i8* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_help_get_help_data(%struct._GtkWidget* %widget, %struct._GtkWidget** %help_widget, i8** %ret_data) #0 {
entry:
  %retval = alloca i8*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %help_widget.addr = alloca %struct._GtkWidget**, align 8
  %ret_data.addr = alloca i8**, align 8
  %help_id = alloca i8*, align 8
  %help_data = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget** %help_widget, %struct._GtkWidget*** %help_widget.addr, align 8
  store i8** %ret_data, i8*** %ret_data.addr, align 8
  store i8* null, i8** %help_id, align 8
  store i8* null, i8** %help_data, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i32 @gimp_help_id_quark() #7
  %call2 = call i8* @g_object_get_qdata(%struct._GObject* %3, i32 %call1)
  store i8* %call2, i8** %help_id, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call4, i8** %help_data, align 8
  %7 = load i8*, i8** %help_id, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %8 = load %struct._GtkWidget**, %struct._GtkWidget*** %help_widget.addr, align 8
  %tobool6 = icmp ne %struct._GtkWidget** %8, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = load %struct._GtkWidget**, %struct._GtkWidget*** %help_widget.addr, align 8
  store %struct._GtkWidget* %9, %struct._GtkWidget** %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %11 = load i8**, i8*** %ret_data.addr, align 8
  %tobool8 = icmp ne i8** %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %12 = load i8*, i8** %help_data, align 8
  %13 = load i8**, i8*** %ret_data.addr, align 8
  store i8* %12, i8** %13, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %14 = load i8*, i8** %help_id, align 8
  store i8* %14, i8** %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %15)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %widget.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._GtkWidget**, %struct._GtkWidget*** %help_widget.addr, align 8
  %tobool13 = icmp ne %struct._GtkWidget** %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  %17 = load %struct._GtkWidget**, %struct._GtkWidget*** %help_widget.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %17, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %for.end
  %18 = load i8**, i8*** %ret_data.addr, align 8
  %tobool16 = icmp ne i8** %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %19 = load i8**, i8*** %ret_data.addr, align 8
  store i8* null, i8** %19, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.end.10
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #3

declare void @g_object_set(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_help_menu_item_query_tooltip(%struct._GtkWidget* %widget, i32 %x, i32 %y, i32 %keyboard_mode, %struct._GtkTooltip* %tooltip) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %keyboard_mode.addr = alloca i32, align 4
  %tooltip.addr = alloca %struct._GtkTooltip*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %text = alloca i8*, align 8
  %use_markup = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %keyboard_mode, i32* %keyboard_mode.addr, align 4
  store %struct._GtkTooltip* %tooltip, %struct._GtkTooltip** %tooltip.addr, align 8
  store i32 1, i32* %use_markup, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i8* @gtk_widget_get_tooltip_markup(%struct._GtkWidget* %0)
  store i8* %call, i8** %text, align 8
  %1 = load i8*, i8** %text, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call i8* @gtk_widget_get_tooltip_text(%struct._GtkWidget* %2)
  store i8* %call1, i8** %text, align 8
  store i32 0, i32* %use_markup, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %text, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %vbox, align 8
  %4 = load i8*, i8** %text, align 8
  %call6 = call %struct._GtkWidget* @gtk_label_new(i8* %4)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %label, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_label_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call7)
  %7 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkLabel*
  %8 = load i32, i32* %use_markup, align 4
  call void @gtk_label_set_use_markup(%struct._GtkLabel* %7, i32 %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_label_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %11, i32 1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_misc_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %14, float 0.000000e+00, float 0.000000e+00)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 1, i32 1, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load i8*, i8** %text, align 8
  call void @g_free(i8* %20)
  %call15 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #5
  %call16 = call %struct._GtkWidget* @gtk_label_new(i8* %call15)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %label, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_label_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %23, i32 3, i32 2, i32 15, double 0x3FEAAAAAAAAAA97E, i32 -1)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_misc_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %26, float 1.000000e+00, float 0.000000e+00)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_tooltip_set_custom(%struct._GtkTooltip* %32, %struct._GtkWidget* %33)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare i8* @gtk_widget_get_tooltip_markup(%struct._GtkWidget*) #3

declare i8* @gtk_widget_get_tooltip_text(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_label_set_use_markup(%struct._GtkLabel*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @g_free(i8*) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #3

declare void @gtk_tooltip_set_custom(%struct._GtkTooltip*, %struct._GtkWidget*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
