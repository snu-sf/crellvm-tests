; ModuleID = './libgimpwidgets/gimpenumwidgets.bc'
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
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }

@.str = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_enum_radio_box_new = private unnamed_addr constant [24 x i8] c"gimp_enum_radio_box_new\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"G_TYPE_IS_ENUM (enum_type)\00", align 1
@__func__.gimp_enum_radio_box_new_with_range = private unnamed_addr constant [35 x i8] c"gimp_enum_radio_box_new_with_range\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@__func__.gimp_enum_radio_frame_new = private unnamed_addr constant [26 x i8] c"gimp_enum_radio_frame_new\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"label_widget == NULL || GTK_IS_WIDGET (label_widget)\00", align 1
@__func__.gimp_enum_radio_frame_new_with_range = private unnamed_addr constant [37 x i8] c"gimp_enum_radio_frame_new_with_range\00", align 1
@__func__.gimp_enum_stock_box_new = private unnamed_addr constant [24 x i8] c"gimp_enum_stock_box_new\00", align 1
@__func__.gimp_enum_stock_box_new_with_range = private unnamed_addr constant [35 x i8] c"gimp_enum_stock_box_new_with_range\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"stock_prefix != NULL\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__func__.gimp_enum_stock_box_set_child_padding = private unnamed_addr constant [38 x i8] c"gimp_enum_stock_box_set_child_padding\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"GTK_IS_CONTAINER (stock_box)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_enum_radio_box_new(i64 %enum_type, void ()* %callback, i8* %callback_data, %struct._GtkWidget** %first_button) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %enum_type.addr = alloca i64, align 8
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %first_button.addr = alloca %struct._GtkWidget**, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store %struct._GtkWidget** %first_button, %struct._GtkWidget*** %first_button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_enum_radio_box_new, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %enum_type.addr, align 8
  %call1 = call i8* @g_type_class_ref(i64 %1)
  %2 = bitcast i8* %call1 to %struct._GEnumClass*
  store %struct._GEnumClass* %2, %struct._GEnumClass** %enum_class, align 8
  %3 = load i64, i64* %enum_type.addr, align 8
  %4 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %minimum = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %4, i32 0, i32 1
  %5 = load i32, i32* %minimum, align 4
  %6 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %maximum = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %6, i32 0, i32 2
  %7 = load i32, i32* %maximum, align 4
  %8 = load void ()*, void ()** %callback.addr, align 8
  %9 = load i8*, i8** %callback_data.addr, align 8
  %10 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_enum_radio_box_new_with_range(i64 %3, i32 %5, i32 %7, void ()* %8, i8* %9, %struct._GtkWidget** %10)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %vbox, align 8
  %11 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %12 = bitcast %struct._GEnumClass* %11 to i8*
  call void @g_type_class_unref(i8* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  store %struct._GtkWidget* %13, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %14
}

declare i64 @g_type_fundamental(i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_enum_radio_box_new_with_range(i64 %enum_type, i32 %minimum, i32 %maximum, void ()* %callback, i8* %callback_data, %struct._GtkWidget** %first_button) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %enum_type.addr = alloca i64, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %first_button.addr = alloca %struct._GtkWidget**, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %value = alloca %struct._GEnumValue*, align 8
  %group = alloca %struct._GSList*, align 8
  %desc = alloca i8*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store %struct._GtkWidget** %first_button, %struct._GtkWidget*** %first_button.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_enum_radio_box_new_with_range, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %enum_type.addr, align 8
  %call1 = call i8* @g_type_class_ref(i64 %1)
  %2 = bitcast i8* %call1 to %struct._GEnumClass*
  store %struct._GEnumClass* %2, %struct._GEnumClass** %enum_class, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 1)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %vbox, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %6 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %7 = bitcast %struct._GEnumClass* %6 to i8*
  call void @g_object_weak_ref(%struct._GObject* %5, void (i8*, %struct._GObject*)* bitcast (void (i8*)* @g_type_class_unref to void (i8*, %struct._GObject*)*), i8* %7)
  %8 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %tobool = icmp ne %struct._GtkWidget** %8, null
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.end
  %9 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %9, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.end
  %10 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %10, i32 0, i32 4
  %11 = load %struct._GEnumValue*, %struct._GEnumValue** %values, align 8
  store %struct._GEnumValue* %11, %struct._GEnumValue** %value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %12 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %12, i32 0, i32 1
  %13 = load i8*, i8** %value_name, align 8
  %tobool6 = icmp ne i8* %13, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value7 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %14, i32 0, i32 0
  %15 = load i32, i32* %value7, align 4
  %16 = load i32, i32* %minimum.addr, align 4
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value9 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %17, i32 0, i32 0
  %18 = load i32, i32* %value9, align 4
  %19 = load i32, i32* %maximum.addr, align 4
  %cmp10 = icmp sgt i32 %18, %19
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.12:                                        ; preds = %lor.lhs.false
  %20 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %21 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %call13 = call i8* @gimp_enum_value_get_desc(%struct._GEnumClass* %20, %struct._GEnumValue* %21)
  store i8* %call13, i8** %desc, align 8
  %22 = load %struct._GSList*, %struct._GSList** %group, align 8
  %23 = load i8*, i8** %desc, align 8
  %call14 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %22, i8* %23)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %button, align 8
  %24 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %tobool15 = icmp ne %struct._GtkWidget** %24, null
  br i1 %tobool15, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.12
  %25 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %25, align 8
  %cmp16 = icmp eq %struct._GtkWidget* %26, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %28 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  store %struct._GtkWidget* %27, %struct._GtkWidget** %28, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.end.12
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_radio_button_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call19)
  %31 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkRadioButton*
  %call21 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %31)
  store %struct._GSList* %call21, %struct._GSList** %group, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  %40 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value25 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %40, i32 0, i32 0
  %41 = load i32, i32* %value25, align 4
  %conv = sext i32 %41 to i64
  %42 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %42)
  %43 = load void ()*, void ()** %callback.addr, align 8
  %tobool26 = icmp ne void ()* %43, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.18
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %46 = load void ()*, void ()** %callback.addr, align 8
  %47 = load i8*, i8** %callback_data.addr, align 8
  %call28 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), void ()* %46, i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.29, %if.then.11
  %48 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %48, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %value, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  store %struct._GtkWidget* %49, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %50
}

declare void @g_type_class_unref(i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @gimp_enum_value_get_desc(%struct._GEnumClass*, %struct._GEnumValue*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_enum_radio_frame_new(i64 %enum_type, %struct._GtkWidget* %label_widget, void ()* %callback, i8* %callback_data, %struct._GtkWidget** %first_button) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %enum_type.addr = alloca i64, align 8
  %label_widget.addr = alloca %struct._GtkWidget*, align 8
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %first_button.addr = alloca %struct._GtkWidget**, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %radio_box = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store %struct._GtkWidget* %label_widget, %struct._GtkWidget** %label_widget.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store %struct._GtkWidget** %first_button, %struct._GtkWidget*** %first_button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_enum_radio_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  %cmp2 = icmp eq %struct._GtkWidget* %1, null
  br i1 %cmp2, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gtk_widget_get_type() #4
  store i64 %call3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else.5:                                        ; preds = %lor.lhs.false
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else.5
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp8 = icmp eq i64 %9, %10
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true, %if.else.5
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #5
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.4
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13, %do.body.1
  br label %if.end.17

if.else.16:                                       ; preds = %if.end.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_enum_radio_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %call19 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  %tobool20 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.end.18
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_frame_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call22)
  %18 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkFrame*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %do.end.18
  %21 = load i64, i64* %enum_type.addr, align 8
  %22 = load void ()*, void ()** %callback.addr, align 8
  %23 = load i8*, i8** %callback_data.addr, align 8
  %24 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %call25 = call %struct._GtkWidget* @gimp_enum_radio_box_new(i64 %21, void ()* %22, i8* %23, %struct._GtkWidget** %24)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %radio_box, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call26)
  %27 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  call void @gtk_container_add(%struct._GtkContainer* %27, %struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %30, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else.16, %if.else
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_enum_radio_frame_new_with_range(i64 %enum_type, i32 %minimum, i32 %maximum, %struct._GtkWidget* %label_widget, void ()* %callback, i8* %callback_data, %struct._GtkWidget** %first_button) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %enum_type.addr = alloca i64, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %label_widget.addr = alloca %struct._GtkWidget*, align 8
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %first_button.addr = alloca %struct._GtkWidget**, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %radio_box = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  store %struct._GtkWidget* %label_widget, %struct._GtkWidget** %label_widget.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store %struct._GtkWidget** %first_button, %struct._GtkWidget*** %first_button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_enum_radio_frame_new_with_range, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  %cmp2 = icmp eq %struct._GtkWidget* %1, null
  br i1 %cmp2, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gtk_widget_get_type() #4
  store i64 %call3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else.5:                                        ; preds = %lor.lhs.false
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else.5
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp8 = icmp eq i64 %9, %10
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true, %if.else.5
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #5
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.4
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13, %do.body.1
  br label %if.end.17

if.else.16:                                       ; preds = %if.end.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_enum_radio_frame_new_with_range, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %call19 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  %tobool20 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.end.18
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_frame_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call22)
  %18 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkFrame*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %label_widget.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %do.end.18
  %21 = load i64, i64* %enum_type.addr, align 8
  %22 = load i32, i32* %minimum.addr, align 4
  %23 = load i32, i32* %maximum.addr, align 4
  %24 = load void ()*, void ()** %callback.addr, align 8
  %25 = load i8*, i8** %callback_data.addr, align 8
  %26 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %call25 = call %struct._GtkWidget* @gimp_enum_radio_box_new_with_range(i64 %21, i32 %22, i32 %23, void ()* %24, i8* %25, %struct._GtkWidget** %26)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %radio_box, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call26)
  %29 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  call void @gtk_container_add(%struct._GtkContainer* %29, %struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %32, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else.16, %if.else
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %33
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_enum_stock_box_new(i64 %enum_type, i8* %stock_prefix, i32 %icon_size, void ()* %callback, i8* %callback_data, %struct._GtkWidget** %first_button) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %enum_type.addr = alloca i64, align 8
  %stock_prefix.addr = alloca i8*, align 8
  %icon_size.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %first_button.addr = alloca %struct._GtkWidget**, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i8* %stock_prefix, i8** %stock_prefix.addr, align 8
  store i32 %icon_size, i32* %icon_size.addr, align 4
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store %struct._GtkWidget** %first_button, %struct._GtkWidget*** %first_button.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_enum_stock_box_new, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %enum_type.addr, align 8
  %call1 = call i8* @g_type_class_ref(i64 %1)
  %2 = bitcast i8* %call1 to %struct._GEnumClass*
  store %struct._GEnumClass* %2, %struct._GEnumClass** %enum_class, align 8
  %3 = load i64, i64* %enum_type.addr, align 8
  %4 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %minimum = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %4, i32 0, i32 1
  %5 = load i32, i32* %minimum, align 4
  %6 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %maximum = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %6, i32 0, i32 2
  %7 = load i32, i32* %maximum, align 4
  %8 = load i8*, i8** %stock_prefix.addr, align 8
  %9 = load i32, i32* %icon_size.addr, align 4
  %10 = load void ()*, void ()** %callback.addr, align 8
  %11 = load i8*, i8** %callback_data.addr, align 8
  %12 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %call2 = call %struct._GtkWidget* @gimp_enum_stock_box_new_with_range(i64 %3, i32 %5, i32 %7, i8* %8, i32 %9, void ()* %10, i8* %11, %struct._GtkWidget** %12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %box, align 8
  %13 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %14 = bitcast %struct._GEnumClass* %13 to i8*
  call void @g_type_class_unref(i8* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_enum_stock_box_new_with_range(i64 %enum_type, i32 %minimum, i32 %maximum, i8* %stock_prefix, i32 %icon_size, void ()* %callback, i8* %callback_data, %struct._GtkWidget** %first_button) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %enum_type.addr = alloca i64, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %stock_prefix.addr = alloca i8*, align 8
  %icon_size.addr = alloca i32, align 4
  %callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %first_button.addr = alloca %struct._GtkWidget**, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %value = alloca %struct._GEnumValue*, align 8
  %stock_id = alloca i8*, align 8
  %group = alloca %struct._GSList*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  store i8* %stock_prefix, i8** %stock_prefix.addr, align 8
  store i32 %icon_size, i32* %icon_size.addr, align 4
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store %struct._GtkWidget** %first_button, %struct._GtkWidget*** %first_button.addr, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_enum_stock_box_new_with_range, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %stock_prefix.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_enum_stock_box_new_with_range, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i64, i64* %enum_type.addr, align 8
  %call7 = call i8* @g_type_class_ref(i64 %2)
  %3 = bitcast i8* %call7 to %struct._GEnumClass*
  store %struct._GEnumClass* %3, %struct._GEnumClass** %enum_class, align 8
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %hbox, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %7 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %8 = bitcast %struct._GEnumClass* %7 to i8*
  call void @g_object_weak_ref(%struct._GObject* %6, void (i8*, %struct._GObject*)* bitcast (void (i8*)* @g_type_class_unref to void (i8*, %struct._GObject*)*), i8* %8)
  %9 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %tobool = icmp ne %struct._GtkWidget** %9, null
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end.6
  %10 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.end.6
  %11 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %11, i32 0, i32 4
  %12 = load %struct._GEnumValue*, %struct._GEnumValue** %values, align 8
  store %struct._GEnumValue* %12, %struct._GEnumValue** %value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %13 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %13, i32 0, i32 1
  %14 = load i8*, i8** %value_name, align 8
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value13 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %15, i32 0, i32 0
  %16 = load i32, i32* %value13, align 4
  %17 = load i32, i32* %minimum.addr, align 4
  %cmp14 = icmp slt i32 %16, %17
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value15 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %18, i32 0, i32 0
  %19 = load i32, i32* %value15, align 4
  %20 = load i32, i32* %maximum.addr, align 4
  %cmp16 = icmp sgt i32 %19, %20
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.18:                                        ; preds = %lor.lhs.false
  %21 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call19 = call %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList* %21)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %button, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_button_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call20)
  %24 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %24, i32 2)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_toggle_button_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_mode(%struct._GtkToggleButton* %27, i32 0)
  %28 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %tobool24 = icmp ne %struct._GtkWidget** %28, null
  br i1 %tobool24, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.18
  %29 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %29, align 8
  %cmp25 = icmp eq %struct._GtkWidget* %30, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %32 = load %struct._GtkWidget**, %struct._GtkWidget*** %first_button.addr, align 8
  store %struct._GtkWidget* %31, %struct._GtkWidget** %32, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true, %if.end.18
  %33 = load i8*, i8** %stock_prefix.addr, align 8
  %34 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %34, i32 0, i32 2
  %35 = load i8*, i8** %value_nick, align 8
  %call28 = call noalias i8* (i8*, ...) @g_strconcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* %35, i8* null)
  store i8* %call28, i8** %stock_id, align 8
  %36 = load i8*, i8** %stock_id, align 8
  %37 = load i32, i32* %icon_size.addr, align 4
  %call29 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %36, i32 %37)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %image, align 8
  %38 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %tobool30 = icmp ne %struct._GtkWidget* %39, null
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.27
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call32)
  %42 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %42, %struct._GtkWidget* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.27
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %46 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %47 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %call35 = call i8* @gimp_enum_value_get_desc(%struct._GEnumClass* %46, %struct._GEnumValue* %47)
  call void @gimp_help_set_help_data(%struct._GtkWidget* %45, i8* %call35, i8* null)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_radio_button_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call36)
  %50 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkRadioButton*
  %call38 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %50)
  store %struct._GSList* %call38, %struct._GSList** %group, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call39)
  %53 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 80)
  %58 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  %59 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value42 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %59, i32 0, i32 0
  %60 = load i32, i32* %value42, align 4
  %conv = sext i32 %60 to i64
  %61 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %61)
  %62 = load void ()*, void ()** %callback.addr, align 8
  %tobool43 = icmp ne void ()* %62, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.34
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %65 = load void ()*, void ()** %callback.addr, align 8
  %66 = load i8*, i8** %callback_data.addr, align 8
  %call45 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), void ()* %65, i8* %66, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.46, %if.then.17
  %67 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %67, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %value, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  store %struct._GtkWidget* %68, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %69
}

declare %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList*) #1

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gtk_toggle_button_set_mode(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare noalias i8* @g_strconcat(i8*, ...) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_enum_stock_box_set_child_padding(%struct._GtkWidget* %stock_box, i32 %xpad, i32 %ypad) #0 {
entry:
  %stock_box.addr = alloca %struct._GtkWidget*, align 8
  %xpad.addr = alloca i32, align 4
  %ypad.addr = alloca i32, align 4
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %misc = alloca %struct._GtkMisc*, align 8
  %misc_xpad = alloca i32, align 4
  %misc_ypad = alloca i32, align 4
  store %struct._GtkWidget* %stock_box, %struct._GtkWidget** %stock_box.addr, align 8
  store i32 %xpad, i32* %xpad.addr, align 4
  store i32 %ypad, i32* %ypad.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %stock_box.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_container_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_enum_stock_box_set_child_padding, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %stock_box.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  %call13 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %15)
  store %struct._GList* %call13, %struct._GList** %children, align 8
  %16 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.58, %do.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %17, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_bin_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBin*
  %call18 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %21)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %child, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gtk_misc_get_type() #4
  store i64 %call23, i64* %__t22, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %for.body
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %for.body
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type33, align 8
  %30 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %29, %30
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %32 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #5
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %33 = load i32, i32* %__r25, align 4
  store i32 %33, i32* %tmp40
  %34 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %34, 0
  br i1 %tobool41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %if.end.39
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_misc_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call44)
  %37 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkMisc*
  store %struct._GtkMisc* %37, %struct._GtkMisc** %misc, align 8
  %38 = load %struct._GtkMisc*, %struct._GtkMisc** %misc, align 8
  call void @gtk_misc_get_padding(%struct._GtkMisc* %38, i32* %misc_xpad, i32* %misc_ypad)
  %39 = load %struct._GtkMisc*, %struct._GtkMisc** %misc, align 8
  %40 = load i32, i32* %xpad.addr, align 4
  %cmp48 = icmp slt i32 %40, 0
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.42
  %41 = load i32, i32* %misc_xpad, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.42
  %42 = load i32, i32* %xpad.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %41, %cond.true ], [ %42, %cond.false ]
  %43 = load i32, i32* %ypad.addr, align 4
  %cmp49 = icmp slt i32 %43, 0
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end
  %44 = load i32, i32* %misc_ypad, align 4
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end
  %45 = load i32, i32* %ypad.addr, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %44, %cond.true.50 ], [ %45, %cond.false.51 ]
  call void @gtk_misc_set_padding(%struct._GtkMisc* %39, i32 %cond, i32 %cond53)
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.52, %if.end.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool55 = icmp ne %struct._GList* %46, null
  br i1 %tobool55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %for.inc
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 1
  %48 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.58

cond.false.57:                                    ; preds = %for.inc
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi %struct._GList* [ %48, %cond.true.56 ], [ null, %cond.false.57 ]
  store %struct._GList* %cond59, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %49)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_misc_get_padding(%struct._GtkMisc*, i32*, i32*) #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

declare void @g_list_free(%struct._GList*) #1

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
