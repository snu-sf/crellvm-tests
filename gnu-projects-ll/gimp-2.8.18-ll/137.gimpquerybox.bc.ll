; ModuleID = './libgimpwidgets/gimpquerybox.bc'
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
%struct._QueryBox = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GObject*, i64, void ()*, i8* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }

@.str = private unnamed_addr constant [20 x i8] c"gtk-dialog-question\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.create_query_box = private unnamed_addr constant [17 x i8] c"create_query_box\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"parent == NULL || GTK_IS_WIDGET (parent)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"object == NULL || G_IS_OBJECT (object)\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"object == NULL || signal != NULL\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"gimp-query-box\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"gimp-query-box-vbox\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_query_string_box(i8* %title, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, i8* %message, i8* %initial, %struct._GObject* %object, i8* %signal, void (%struct._GtkWidget*, i8*, i8*)* %callback, i8* %data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %initial.addr = alloca i8*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %signal.addr = alloca i8*, align 8
  %callback.addr = alloca void (%struct._GtkWidget*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %query_box = alloca %struct._QueryBox*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i8* %initial, i8** %initial.addr, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %signal, i8** %signal.addr, align 8
  store void (%struct._GtkWidget*, i8*, i8*)* %callback, void (%struct._GtkWidget*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %3 = load i8*, i8** %help_id.addr, align 8
  %4 = load i8*, i8** %message.addr, align 8
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = load i8*, i8** %signal.addr, align 8
  %7 = load void (%struct._GtkWidget*, i8*, i8*)*, void (%struct._GtkWidget*, i8*, i8*)** %callback.addr, align 8
  %8 = bitcast void (%struct._GtkWidget*, i8*, i8*)* %7 to void ()*
  %9 = load i8*, i8** %data.addr, align 8
  %call = call %struct._QueryBox* @create_query_box(i8* %0, %struct._GtkWidget* %1, void (i8*, i8*)* %2, i8* %3, void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._QueryBox*)* @string_query_box_response to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._GObject* %5, i8* %6, void ()* %8, i8* %9)
  store %struct._QueryBox* %call, %struct._QueryBox** %query_box, align 8
  %10 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %tobool = icmp ne %struct._QueryBox* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %entry1, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_entry_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEntry*
  %14 = load i8*, i8** %initial.addr, align 8
  %tobool5 = icmp ne i8* %14, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i8*, i8** %initial.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %cond.false ]
  call void @gtk_entry_set_text(%struct._GtkEntry* %13, i8* %cond)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_entry_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %18, i32 1)
  %19 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %19, i32 0, i32 1
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call8)
  %22 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %27 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %entry10 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %27, i32 0, i32 2
  store %struct._GtkWidget* %26, %struct._GtkWidget** %entry10, align 8
  %28 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %28, i32 0, i32 0
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  store %struct._GtkWidget* %29, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._QueryBox* @create_query_box(i8* %title, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, void ()* %response_callback, i8* %stock_id, i8* %message, i8* %ok_button, i8* %cancel_button, %struct._GObject* %object, i8* %signal, void ()* %callback, i8* %callback_data) #0 {
entry:
  %retval = alloca %struct._QueryBox*, align 8
  %title.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %response_callback.addr = alloca void ()*, align 8
  %stock_id.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %ok_button.addr = alloca i8*, align 8
  %cancel_button.addr = alloca i8*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %signal.addr = alloca i8*, align 8
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %query_box = alloca %struct._QueryBox*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %closure = alloca %struct._GClosure*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %content_area77 = alloca %struct._GtkWidget*, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store void ()* %response_callback, void ()** %response_callback.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i8* %ok_button, i8** %ok_button.addr, align 8
  store i8* %cancel_button, i8** %cancel_button.addr, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %signal, i8** %signal.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %hbox, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #4
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #5
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.create_query_box, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0))
  store %struct._QueryBox* null, %struct._QueryBox** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %cmp13 = icmp eq %struct._GObject* %14, null
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %do.body.12
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %16 = bitcast %struct._GObject* %15 to %struct._GTypeInstance*
  %call15 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %16, i64 80) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %lor.lhs.false.14, %do.body.12
  br label %if.end.19

if.else.18:                                       ; preds = %lor.lhs.false.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.create_query_box, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  store %struct._QueryBox* null, %struct._QueryBox** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %cmp22 = icmp eq %struct._GObject* %17, null
  br i1 %cmp22, label %if.then.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %do.body.21
  %18 = load i8*, i8** %signal.addr, align 8
  %cmp24 = icmp ne i8* %18, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %lor.lhs.false.23, %do.body.21
  br label %if.end.27

if.else.26:                                       ; preds = %lor.lhs.false.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.create_query_box, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store %struct._QueryBox* null, %struct._QueryBox** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %call29 = call noalias i8* @g_slice_alloc0(i64 56)
  %19 = bitcast i8* %call29 to %struct._QueryBox*
  store %struct._QueryBox* %19, %struct._QueryBox** %query_box, align 8
  %20 = load i8*, i8** %title.addr, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %22 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %23 = load i8*, i8** %help_id.addr, align 8
  %24 = load i8*, i8** %cancel_button.addr, align 8
  %25 = load i8*, i8** %ok_button.addr, align 8
  %call30 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct._GtkWidget* %21, i32 0, void (i8*, i8*)* %22, i8* %23, i8* %24, i32 -6, i8* %25, i32 -5, i8* null)
  %26 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %26, i32 0, i32 0
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %qbox, align 8
  %27 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox31 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %27, i32 0, i32 0
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox31, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_dialog_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call32)
  %30 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %30, i32 -5, i32 -6, i32 -1)
  %31 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox34 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %31, i32 0, i32 0
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox34, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load void ()*, void ()** %response_callback.addr, align 8
  %35 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %36 = bitcast %struct._QueryBox* %35 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void ()* %34, i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %response_handler = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %37, i32 0, i32 4
  store i64 %call35, i64* %response_handler, align 8
  %38 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox36 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %38, i32 0, i32 0
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox36, align 8
  %40 = bitcast %struct._GtkWidget* %39 to i8*
  %41 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox37 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %41, i32 0, i32 0
  %42 = bitcast %struct._GtkWidget** %qbox37 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %tobool39 = icmp ne %struct._GObject* %43, null
  br i1 %tobool39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %do.end.28
  %44 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %45 = bitcast %struct._QueryBox* %44 to i8*
  %call42 = call %struct._GClosure* @g_cclosure_new_swap(void ()* bitcast (void (%struct._QueryBox*)* @query_box_cancel_callback to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null)
  store %struct._GClosure* %call42, %struct._GClosure** %closure, align 8
  %46 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox43 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %46, i32 0, i32 0
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox43, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call44 to %struct._GObject*
  %50 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_object_watch_closure(%struct._GObject* %49, %struct._GClosure* %50)
  %51 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %52 = bitcast %struct._GObject* %51 to i8*
  %53 = load i8*, i8** %signal.addr, align 8
  %54 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  %call45 = call i64 @g_signal_connect_closure(i8* %52, i8* %53, %struct._GClosure* %54, i32 0)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.40, %do.end.28
  %55 = load i8*, i8** %stock_id.addr, align 8
  %tobool47 = icmp ne i8* %55, null
  br i1 %tobool47, label %if.then.48, label %if.end.65

if.then.48:                                       ; preds = %if.end.46
  %56 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox51 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %56, i32 0, i32 0
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox51, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_dialog_get_type() #4
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call52)
  %59 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkDialog*
  %call54 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %59)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %content_area, align 8
  %call55 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %hbox, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_container_get_type() #4
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call56)
  %62 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %62, i32 12)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #4
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call58)
  %65 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 1, i32 1, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load i8*, i8** %stock_id.addr, align 8
  %call60 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %68, i32 6)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %image, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_misc_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call61)
  %71 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %71, float 5.000000e-01, float 0.000000e+00)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #4
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call63)
  %74 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %74, %struct._GtkWidget* %75, i32 0, i32 0, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.48, %if.end.46
  %call66 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  %77 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %77, i32 0, i32 1
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %vbox, align 8
  %78 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox67 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %78, i32 0, i32 0
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox67, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 80)
  %81 = bitcast %struct._GTypeInstance* %call68 to %struct._GObject*
  %82 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox69 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %82, i32 0, i32 1
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox69, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  call void @g_object_set_data(%struct._GObject* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %tobool70 = icmp ne %struct._GtkWidget* %85, null
  br i1 %tobool70, label %if.then.71, label %if.else.75

if.then.71:                                       ; preds = %if.end.65
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_box_get_type() #4
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call72)
  %88 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkBox*
  %89 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox74 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %89, i32 0, i32 1
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox74, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %90, i32 0, i32 0, i32 0)
  br label %if.end.88

if.else.75:                                       ; preds = %if.end.65
  %91 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox78 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %91, i32 0, i32 0
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox78, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_dialog_get_type() #4
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call79)
  %94 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkDialog*
  %call81 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %94)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %content_area77, align 8
  %95 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox82 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %95, i32 0, i32 1
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox82, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_container_get_type() #4
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call83)
  %98 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %98, i32 12)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area77, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #4
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call85)
  %101 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %102 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox87 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %102, i32 0, i32 1
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox87, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %101, %struct._GtkWidget* %103, i32 1, i32 1, i32 0)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.75, %if.then.71
  %104 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox89 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %104, i32 0, i32 1
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox89, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %106 = load i8*, i8** %message.addr, align 8
  %tobool90 = icmp ne i8* %106, null
  br i1 %tobool90, label %if.then.91, label %if.end.100

if.then.91:                                       ; preds = %if.end.88
  %107 = load i8*, i8** %message.addr, align 8
  %call92 = call %struct._GtkWidget* @gtk_label_new(i8* %107)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %label, align 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_misc_get_type() #4
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call93)
  %110 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %110, float 0.000000e+00, float 5.000000e-01)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_label_get_type() #4
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call95)
  %113 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %113, i32 1)
  %114 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox97 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %114, i32 0, i32 1
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox97, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_box_get_type() #4
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call98)
  %117 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkBox*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %117, %struct._GtkWidget* %118, i32 0, i32 0, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %119)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.91, %if.end.88
  %120 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %entry101 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %120, i32 0, i32 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %entry101, align 8
  %121 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %122 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %object102 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %122, i32 0, i32 3
  store %struct._GObject* %121, %struct._GObject** %object102, align 8
  %123 = load void ()*, void ()** %callback.addr, align 8
  %124 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %callback103 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %124, i32 0, i32 5
  store void ()* %123, void ()** %callback103, align 8
  %125 = load i8*, i8** %callback_data.addr, align 8
  %126 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %callback_data104 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %126, i32 0, i32 6
  store i8* %125, i8** %callback_data104, align 8
  %127 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  store %struct._QueryBox* %127, %struct._QueryBox** %retval
  br label %return

return:                                           ; preds = %if.end.100, %if.else.26, %if.else.18, %if.else.10
  %128 = load %struct._QueryBox*, %struct._QueryBox** %retval
  ret %struct._QueryBox* %128
}

; Function Attrs: nounwind uwtable
define internal void @string_query_box_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._QueryBox* %query_box) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %query_box.addr = alloca %struct._QueryBox*, align 8
  %string = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._QueryBox* %query_box, %struct._QueryBox** %query_box.addr, align 8
  %0 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_disconnect(%struct._QueryBox* %0)
  %1 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %entry1 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %1, i32 0, i32 2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %4)
  store i8* %call3, i8** %string, align 8
  %5 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %5, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %6, i32 0, i32 5
  %7 = load void ()*, void ()** %callback, align 8
  %8 = bitcast void ()* %7 to void (%struct._GtkWidget*, i8*, i8*)*
  %9 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  %11 = load i8*, i8** %string, align 8
  %12 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback_data = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %12, i32 0, i32 6
  %13 = load i8*, i8** %callback_data, align 8
  call void %8(%struct._GtkWidget* %10, i8* %11, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_destroy(%struct._QueryBox* %14)
  ret void
}

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_query_int_box(i8* %title, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, i8* %message, i32 %initial, i32 %lower, i32 %upper, %struct._GObject* %object, i8* %signal, void (%struct._GtkWidget*, i32, i8*)* %callback, i8* %data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %initial.addr = alloca i32, align 4
  %lower.addr = alloca i32, align 4
  %upper.addr = alloca i32, align 4
  %object.addr = alloca %struct._GObject*, align 8
  %signal.addr = alloca i8*, align 8
  %callback.addr = alloca void (%struct._GtkWidget*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %query_box = alloca %struct._QueryBox*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %initial, i32* %initial.addr, align 4
  store i32 %lower, i32* %lower.addr, align 4
  store i32 %upper, i32* %upper.addr, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %signal, i8** %signal.addr, align 8
  store void (%struct._GtkWidget*, i32, i8*)* %callback, void (%struct._GtkWidget*, i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %3 = load i8*, i8** %help_id.addr, align 8
  %4 = load i8*, i8** %message.addr, align 8
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = load i8*, i8** %signal.addr, align 8
  %7 = load void (%struct._GtkWidget*, i32, i8*)*, void (%struct._GtkWidget*, i32, i8*)** %callback.addr, align 8
  %8 = bitcast void (%struct._GtkWidget*, i32, i8*)* %7 to void ()*
  %9 = load i8*, i8** %data.addr, align 8
  %call = call %struct._QueryBox* @create_query_box(i8* %0, %struct._GtkWidget* %1, void (i8*, i8*)* %2, i8* %3, void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._QueryBox*)* @int_query_box_response to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._GObject* %5, i8* %6, void ()* %8, i8* %9)
  store %struct._QueryBox* %call, %struct._QueryBox** %query_box, align 8
  %10 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %tobool = icmp ne %struct._QueryBox* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %initial.addr, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %lower.addr, align 4
  %conv1 = sitofp i32 %12 to double
  %13 = load i32, i32* %upper.addr, align 4
  %conv2 = sitofp i32 %13 to double
  %call3 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %conv, double %conv1, double %conv2, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %spinbutton, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call4)
  %16 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %16, i32 1)
  %17 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %17, i32 0, i32 1
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call6)
  %20 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %25 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %entry8 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %25, i32 0, i32 2
  store %struct._GtkWidget* %24, %struct._GtkWidget** %entry8, align 8
  %26 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %26, i32 0, i32 0
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  store %struct._GtkWidget* %27, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %28
}

; Function Attrs: nounwind uwtable
define internal void @int_query_box_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._QueryBox* %query_box) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %query_box.addr = alloca %struct._QueryBox*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._QueryBox* %query_box, %struct._QueryBox** %query_box.addr, align 8
  %0 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_disconnect(%struct._QueryBox* %0)
  %1 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %entry1 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %1, i32 0, i32 2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton* %4)
  store i32 %call3, i32* %value, align 4
  %5 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %5, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %6, i32 0, i32 5
  %7 = load void ()*, void ()** %callback, align 8
  %8 = bitcast void ()* %7 to void (%struct._GtkWidget*, i32, i8*)*
  %9 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  %11 = load i32, i32* %value, align 4
  %12 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback_data = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %12, i32 0, i32 6
  %13 = load i8*, i8** %callback_data, align 8
  call void %8(%struct._GtkWidget* %10, i32 %11, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_destroy(%struct._QueryBox* %14)
  ret void
}

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_query_double_box(i8* %title, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, i8* %message, double %initial, double %lower, double %upper, i32 %digits, %struct._GObject* %object, i8* %signal, void (%struct._GtkWidget*, double, i8*)* %callback, i8* %data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %initial.addr = alloca double, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %object.addr = alloca %struct._GObject*, align 8
  %signal.addr = alloca i8*, align 8
  %callback.addr = alloca void (%struct._GtkWidget*, double, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %query_box = alloca %struct._QueryBox*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store double %initial, double* %initial.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %signal, i8** %signal.addr, align 8
  store void (%struct._GtkWidget*, double, i8*)* %callback, void (%struct._GtkWidget*, double, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %3 = load i8*, i8** %help_id.addr, align 8
  %4 = load i8*, i8** %message.addr, align 8
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = load i8*, i8** %signal.addr, align 8
  %7 = load void (%struct._GtkWidget*, double, i8*)*, void (%struct._GtkWidget*, double, i8*)** %callback.addr, align 8
  %8 = bitcast void (%struct._GtkWidget*, double, i8*)* %7 to void ()*
  %9 = load i8*, i8** %data.addr, align 8
  %call = call %struct._QueryBox* @create_query_box(i8* %0, %struct._GtkWidget* %1, void (i8*, i8*)* %2, i8* %3, void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._QueryBox*)* @double_query_box_response to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._GObject* %5, i8* %6, void ()* %8, i8* %9)
  store %struct._QueryBox* %call, %struct._QueryBox** %query_box, align 8
  %10 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %tobool = icmp ne %struct._QueryBox* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load double, double* %initial.addr, align 8
  %12 = load double, double* %lower.addr, align 8
  %13 = load double, double* %upper.addr, align 8
  %14 = load i32, i32* %digits.addr, align 4
  %call1 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %11, double %12, double %13, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 %14)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %spinbutton, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_entry_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call2)
  %17 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %17, i32 1)
  %18 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %18, i32 0, i32 1
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call4)
  %21 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %26 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %entry6 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %26, i32 0, i32 2
  store %struct._GtkWidget* %25, %struct._GtkWidget** %entry6, align 8
  %27 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %27, i32 0, i32 0
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %29
}

; Function Attrs: nounwind uwtable
define internal void @double_query_box_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._QueryBox* %query_box) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %query_box.addr = alloca %struct._QueryBox*, align 8
  %value = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._QueryBox* %query_box, %struct._QueryBox** %query_box.addr, align 8
  %0 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_disconnect(%struct._QueryBox* %0)
  %1 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %entry1 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %1, i32 0, i32 2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %4)
  store double %call3, double* %value, align 8
  %5 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %5, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %6, i32 0, i32 5
  %7 = load void ()*, void ()** %callback, align 8
  %8 = bitcast void ()* %7 to void (%struct._GtkWidget*, double, i8*)*
  %9 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  %11 = load double, double* %value, align 8
  %12 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback_data = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %12, i32 0, i32 6
  %13 = load i8*, i8** %callback_data, align 8
  call void %8(%struct._GtkWidget* %10, double %11, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_destroy(%struct._QueryBox* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_query_size_box(i8* %title, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, i8* %message, double %initial, double %lower, double %upper, i32 %digits, i32 %unit, double %resolution, i32 %dot_for_dot, %struct._GObject* %object, i8* %signal, void (%struct._GtkWidget*, double, i32, i8*)* %callback, i8* %data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %initial.addr = alloca double, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  %resolution.addr = alloca double, align 8
  %dot_for_dot.addr = alloca i32, align 4
  %object.addr = alloca %struct._GObject*, align 8
  %signal.addr = alloca i8*, align 8
  %callback.addr = alloca void (%struct._GtkWidget*, double, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %query_box = alloca %struct._QueryBox*, align 8
  %sizeentry = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store double %initial, double* %initial.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store double %resolution, double* %resolution.addr, align 8
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %signal, i8** %signal.addr, align 8
  store void (%struct._GtkWidget*, double, i32, i8*)* %callback, void (%struct._GtkWidget*, double, i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %3 = load i8*, i8** %help_id.addr, align 8
  %4 = load i8*, i8** %message.addr, align 8
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = load i8*, i8** %signal.addr, align 8
  %7 = load void (%struct._GtkWidget*, double, i32, i8*)*, void (%struct._GtkWidget*, double, i32, i8*)** %callback.addr, align 8
  %8 = bitcast void (%struct._GtkWidget*, double, i32, i8*)* %7 to void ()*
  %9 = load i8*, i8** %data.addr, align 8
  %call = call %struct._QueryBox* @create_query_box(i8* %0, %struct._GtkWidget* %1, void (i8*, i8*)* %2, i8* %3, void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._QueryBox*)* @size_query_box_response to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._GObject* %5, i8* %6, void ()* %8, i8* %9)
  store %struct._QueryBox* %call, %struct._QueryBox** %query_box, align 8
  %10 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %tobool = icmp ne %struct._QueryBox* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %unit.addr, align 4
  %call1 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 0, i32 0, i32 12, i32 1)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %sizeentry, align 8
  %12 = load i32, i32* %dot_for_dot.addr, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_size_entry_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %15, i32 0)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_size_entry_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpSizeEntry*
  %19 = load double, double* %resolution.addr, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %18, i32 0, double %19, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_size_entry_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpSizeEntry*
  %23 = load i32, i32* %digits.addr, align 4
  call void @gimp_size_entry_set_refval_digits(%struct._GimpSizeEntry* %22, i32 0, i32 %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_size_entry_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call11)
  %26 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpSizeEntry*
  %27 = load double, double* %lower.addr, align 8
  %28 = load double, double* %upper.addr, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %26, i32 0, double %27, double %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_size_entry_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call13)
  %31 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpSizeEntry*
  %32 = load double, double* %initial.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %31, i32 0, double %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_size_entry_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call15)
  %35 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpSizeEntry*
  %call17 = call %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry* %35, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %spinbutton, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_entry_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call18)
  %38 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %38, i32 1)
  %39 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %vbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %39, i32 0, i32 1
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call20)
  %42 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_size_entry_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call22)
  %46 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_grab_focus(%struct._GimpSizeEntry* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %49 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %entry24 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %49, i32 0, i32 2
  store %struct._GtkWidget* %48, %struct._GtkWidget** %entry24, align 8
  %50 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %50, i32 0, i32 0
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  store %struct._GtkWidget* %51, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %52
}

; Function Attrs: nounwind uwtable
define internal void @size_query_box_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._QueryBox* %query_box) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %query_box.addr = alloca %struct._QueryBox*, align 8
  %size = alloca double, align 8
  %unit = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._QueryBox* %query_box, %struct._QueryBox** %query_box.addr, align 8
  %0 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_disconnect(%struct._QueryBox* %0)
  %1 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %entry1 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %1, i32 0, i32 2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpSizeEntry*
  %call3 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %4, i32 0)
  store double %call3, double* %size, align 8
  %5 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %entry4 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %5, i32 0, i32 2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_size_entry_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSizeEntry*
  %call7 = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %8)
  store i32 %call7, i32* %unit, align 4
  %9 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %9, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %10, i32 0, i32 5
  %11 = load void ()*, void ()** %callback, align 8
  %12 = bitcast void ()* %11 to void (%struct._GtkWidget*, double, i32, i8*)*
  %13 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  %15 = load double, double* %size, align 8
  %16 = load i32, i32* %unit, align 4
  %17 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback_data = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %17, i32 0, i32 6
  %18 = load i8*, i8** %callback_data, align 8
  call void %12(%struct._GtkWidget* %14, double %15, i32 %16, i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_destroy(%struct._QueryBox* %19)
  ret void
}

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #2

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_size_entry_set_refval_digits(%struct._GimpSizeEntry*, i32, i32) #1

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry*, i32) #1

declare void @gimp_size_entry_grab_focus(%struct._GimpSizeEntry*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_query_boolean_box(i8* %title, %struct._GtkWidget* %parent, void (i8*, i8*)* %help_func, i8* %help_id, i8* %stock_id, i8* %message, i8* %true_button, i8* %false_button, %struct._GObject* %object, i8* %signal, void (%struct._GtkWidget*, i32, i8*)* %callback, i8* %data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %help_func.addr = alloca void (i8*, i8*)*, align 8
  %help_id.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %true_button.addr = alloca i8*, align 8
  %false_button.addr = alloca i8*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %signal.addr = alloca i8*, align 8
  %callback.addr = alloca void (%struct._GtkWidget*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %query_box = alloca %struct._QueryBox*, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (i8*, i8*)* %help_func, void (i8*, i8*)** %help_func.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i8* %true_button, i8** %true_button.addr, align 8
  store i8* %false_button, i8** %false_button.addr, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %signal, i8** %signal.addr, align 8
  store void (%struct._GtkWidget*, i32, i8*)* %callback, void (%struct._GtkWidget*, i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %help_func.addr, align 8
  %3 = load i8*, i8** %help_id.addr, align 8
  %4 = load i8*, i8** %stock_id.addr, align 8
  %5 = load i8*, i8** %message.addr, align 8
  %6 = load i8*, i8** %true_button.addr, align 8
  %7 = load i8*, i8** %false_button.addr, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %9 = load i8*, i8** %signal.addr, align 8
  %10 = load void (%struct._GtkWidget*, i32, i8*)*, void (%struct._GtkWidget*, i32, i8*)** %callback.addr, align 8
  %11 = bitcast void (%struct._GtkWidget*, i32, i8*)* %10 to void ()*
  %12 = load i8*, i8** %data.addr, align 8
  %call = call %struct._QueryBox* @create_query_box(i8* %0, %struct._GtkWidget* %1, void (i8*, i8*)* %2, i8* %3, void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._QueryBox*)* @boolean_query_box_response to void ()*), i8* %4, i8* %5, i8* %6, i8* %7, %struct._GObject* %8, i8* %9, void ()* %11, i8* %12)
  store %struct._QueryBox* %call, %struct._QueryBox** %query_box, align 8
  %13 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %tobool = icmp ne %struct._QueryBox* %13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %struct._QueryBox*, %struct._QueryBox** %query_box, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define internal void @boolean_query_box_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._QueryBox* %query_box) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %query_box.addr = alloca %struct._QueryBox*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._QueryBox* %query_box, %struct._QueryBox** %query_box.addr, align 8
  %0 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_disconnect(%struct._QueryBox* %0)
  %1 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %1, i32 0, i32 5
  %2 = load void ()*, void ()** %callback, align 8
  %3 = bitcast void ()* %2 to void (%struct._GtkWidget*, i32, i8*)*
  %4 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  %6 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %6, -5
  %conv = zext i1 %cmp to i32
  %7 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %callback_data = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %7, i32 0, i32 6
  %8 = load i8*, i8** %callback_data, align 8
  call void %3(%struct._GtkWidget* %5, i32 %conv, i8* %8)
  %9 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_destroy(%struct._QueryBox* %9)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #3

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare %struct._GClosure* @g_cclosure_new_swap(void ()*, i8*, void (i8*, %struct._GClosure*)*) #1

; Function Attrs: nounwind uwtable
define internal void @query_box_cancel_callback(%struct._QueryBox* %query_box) #0 {
entry:
  %query_box.addr = alloca %struct._QueryBox*, align 8
  store %struct._QueryBox* %query_box, %struct._QueryBox** %query_box.addr, align 8
  %0 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_disconnect(%struct._QueryBox* %0)
  %1 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  call void @query_box_destroy(%struct._QueryBox* %1)
  ret void
}

declare void @g_object_watch_closure(%struct._GObject*, %struct._GClosure*) #1

declare i64 @g_signal_connect_closure(i8*, i8*, %struct._GClosure*, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @query_box_disconnect(%struct._QueryBox* %query_box) #0 {
entry:
  %query_box.addr = alloca %struct._QueryBox*, align 8
  store %struct._QueryBox* %query_box, %struct._QueryBox** %query_box.addr, align 8
  %0 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %1, i32 0)
  %2 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %response_handler = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %2, i32 0, i32 4
  %3 = load i64, i64* %response_handler, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox1 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox1, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %7 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %response_handler2 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %7, i32 0, i32 4
  %8 = load i64, i64* %response_handler2, align 8
  call void @g_signal_handler_disconnect(i8* %6, i64 %8)
  %9 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %response_handler3 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %9, i32 0, i32 4
  store i64 0, i64* %response_handler3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %object = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %10, i32 0, i32 3
  %11 = load %struct._GObject*, %struct._GObject** %object, align 8
  %tobool4 = icmp ne %struct._GObject* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %12 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %object6 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %12, i32 0, i32 3
  %13 = load %struct._GObject*, %struct._GObject** %object6, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %16 = bitcast %struct._QueryBox* %15 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._QueryBox*)* @query_box_cancel_callback to i8*), i8* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @query_box_destroy(%struct._QueryBox* %query_box) #0 {
entry:
  %query_box.addr = alloca %struct._QueryBox*, align 8
  store %struct._QueryBox* %query_box, %struct._QueryBox** %query_box.addr, align 8
  %0 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %qbox1 = getelementptr inbounds %struct._QueryBox, %struct._QueryBox* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %qbox1, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._QueryBox*, %struct._QueryBox** %query_box.addr, align 8
  %5 = bitcast %struct._QueryBox* %4 to i8*
  call void @g_slice_free1(i64 56, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @g_signal_handler_disconnect(i8*, i64) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @g_slice_free1(i64, i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare i32 @gtk_spin_button_get_value_as_int(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

declare double @gtk_spin_button_get_value(%struct._GtkSpinButton*) #1

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
