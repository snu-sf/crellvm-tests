; ModuleID = './libgimp/gimppatternmenu.bc'
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
%struct.CompatCallbackData = type { void (i8*, i32, i32, i32, i8*, i32, i8*)*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpPatternSelectButton = type { %struct._GimpSelectButton }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_pattern_select_widget_new = private unnamed_addr constant [31 x i8] c"gimp_pattern_select_widget_new\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pattern-set\00", align 1
@__func__.gimp_pattern_select_widget_close = private unnamed_addr constant [33 x i8] c"gimp_pattern_select_widget_close\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"widget != NULL\00", align 1
@__func__.gimp_pattern_select_widget_set = private unnamed_addr constant [31 x i8] c"gimp_pattern_select_widget_set\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_pattern_select_widget_new(i8* %title, i8* %pattern_name, void (i8*, i32, i32, i32, i8*, i32, i8*)* %callback, i8* %data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %pattern_name.addr = alloca i8*, align 8
  %callback.addr = alloca void (i8*, i32, i32, i32, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %pattern_button = alloca %struct._GtkWidget*, align 8
  %compat_data = alloca %struct.CompatCallbackData*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %pattern_name, i8** %pattern_name.addr, align 8
  store void (i8*, i32, i32, i32, i8*, i32, i8*)* %callback, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void (i8*, i32, i32, i32, i8*, i32, i8*)*, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback.addr, align 8
  %cmp = icmp ne void (i8*, i32, i32, i32, i8*, i32, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_pattern_select_widget_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %title.addr, align 8
  %2 = load i8*, i8** %pattern_name.addr, align 8
  %call = call %struct._GtkWidget* @gimp_pattern_select_button_new(i8* %1, i8* %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %pattern_button, align 8
  %call1 = call noalias i8* @g_slice_alloc(i64 16)
  %3 = bitcast i8* %call1 to %struct.CompatCallbackData*
  store %struct.CompatCallbackData* %3, %struct.CompatCallbackData** %compat_data, align 8
  %4 = load void (i8*, i32, i32, i32, i8*, i32, i8*)*, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback.addr, align 8
  %5 = load %struct.CompatCallbackData*, %struct.CompatCallbackData** %compat_data, align 8
  %callback2 = getelementptr inbounds %struct.CompatCallbackData, %struct.CompatCallbackData* %5, i32 0, i32 0
  store void (i8*, i32, i32, i32, i8*, i32, i8*)* %4, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback2, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load %struct.CompatCallbackData*, %struct.CompatCallbackData** %compat_data, align 8
  %data3 = getelementptr inbounds %struct.CompatCallbackData, %struct.CompatCallbackData* %7, i32 0, i32 1
  store i8* %6, i8** %data3, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_button, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load %struct.CompatCallbackData*, %struct.CompatCallbackData** %compat_data, align 8
  %11 = bitcast %struct.CompatCallbackData* %10 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPatternSelectButton*, i8*, i32, i32, i32, i8*, i32, %struct.CompatCallbackData*)* @compat_callback to void ()*), i8* %11, void (i8*, %struct._GClosure*)* bitcast (void (%struct.CompatCallbackData*)* @compat_callback_data_free to void (i8*, %struct._GClosure*)*), i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %pattern_button, align 8
  store %struct._GtkWidget* %12, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %13
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_pattern_select_button_new(i8*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @compat_callback(%struct._GimpPatternSelectButton* %pattern_button, i8* %pattern_name, i32 %width, i32 %height, i32 %bpp, i8* %mask_data, i32 %dialog_closing, %struct.CompatCallbackData* %data) #0 {
entry:
  %pattern_button.addr = alloca %struct._GimpPatternSelectButton*, align 8
  %pattern_name.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %mask_data.addr = alloca i8*, align 8
  %dialog_closing.addr = alloca i32, align 4
  %data.addr = alloca %struct.CompatCallbackData*, align 8
  store %struct._GimpPatternSelectButton* %pattern_button, %struct._GimpPatternSelectButton** %pattern_button.addr, align 8
  store i8* %pattern_name, i8** %pattern_name.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %mask_data, i8** %mask_data.addr, align 8
  store i32 %dialog_closing, i32* %dialog_closing.addr, align 4
  store %struct.CompatCallbackData* %data, %struct.CompatCallbackData** %data.addr, align 8
  %0 = load %struct.CompatCallbackData*, %struct.CompatCallbackData** %data.addr, align 8
  %callback = getelementptr inbounds %struct.CompatCallbackData, %struct.CompatCallbackData* %0, i32 0, i32 0
  %1 = load void (i8*, i32, i32, i32, i8*, i32, i8*)*, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback, align 8
  %2 = load i8*, i8** %pattern_name.addr, align 8
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  %5 = load i32, i32* %bpp.addr, align 4
  %6 = load i8*, i8** %mask_data.addr, align 8
  %7 = load i32, i32* %dialog_closing.addr, align 4
  %8 = load %struct.CompatCallbackData*, %struct.CompatCallbackData** %data.addr, align 8
  %data1 = getelementptr inbounds %struct.CompatCallbackData, %struct.CompatCallbackData* %8, i32 0, i32 1
  %9 = load i8*, i8** %data1, align 8
  call void %1(i8* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i8* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compat_callback_data_free(%struct.CompatCallbackData* %data) #0 {
entry:
  %data.addr = alloca %struct.CompatCallbackData*, align 8
  store %struct.CompatCallbackData* %data, %struct.CompatCallbackData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.CompatCallbackData*, %struct.CompatCallbackData** %data.addr, align 8
  %1 = bitcast %struct.CompatCallbackData* %0 to i8*
  call void @g_slice_free1(i64 16, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_pattern_select_widget_close(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp ne %struct._GtkWidget* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_pattern_select_widget_close, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_select_button_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelectButton*
  call void @gimp_select_button_close_popup(%struct._GimpSelectButton* %3)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @gimp_select_button_close_popup(%struct._GimpSelectButton*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_select_button_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_pattern_select_widget_set(%struct._GtkWidget* %widget, i8* %pattern_name) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %pattern_name.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %pattern_name, i8** %pattern_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp ne %struct._GtkWidget* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_pattern_select_widget_set, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_pattern_select_button_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPatternSelectButton*
  %4 = load i8*, i8** %pattern_name.addr, align 8
  call void @gimp_pattern_select_button_set_pattern(%struct._GimpPatternSelectButton* %3, i8* %4)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @gimp_pattern_select_button_set_pattern(%struct._GimpPatternSelectButton*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_select_button_get_type() #2

declare void @g_slice_free1(i64, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
