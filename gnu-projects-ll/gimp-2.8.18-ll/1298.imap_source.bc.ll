; ModuleID = './plug-ins/imagemap/imap_source.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
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
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }

@do_source_dialog.dialog = internal global %struct.DefaultDialog_t* null, align 8
@do_source_dialog.text = internal global %struct._GtkWidget* null, align 8
@do_source_dialog.buffer = internal global %struct._GtkTextBuffer* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"View Source\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @do_source_dialog() #0 {
entry:
  %swin = alloca %struct._GtkWidget*, align 8
  %0 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_source_dialog.dialog, align 8
  %tobool = icmp ne %struct.DefaultDialog_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #4
  %call1 = call %struct.DefaultDialog_t* @make_default_dialog(i8* %call)
  store %struct.DefaultDialog_t* %call1, %struct.DefaultDialog_t** @do_source_dialog.dialog, align 8
  %1 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_source_dialog.dialog, align 8
  call void @default_dialog_hide_cancel_button(%struct.DefaultDialog_t* %1)
  %2 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_source_dialog.dialog, align 8
  call void @default_dialog_hide_apply_button(%struct.DefaultDialog_t* %2)
  %call2 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  store %struct._GtkTextBuffer* %call2, %struct._GtkTextBuffer** @do_source_dialog.buffer, align 8
  %3 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** @do_source_dialog.buffer, align 8
  %call3 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %3)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @do_source_dialog.text, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @do_source_dialog.text, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_text_view_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTextView*
  call void @gtk_text_view_set_editable(%struct._GtkTextView* %6, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @do_source_dialog.text, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call6 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %swin, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_scrolled_window_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %10, i32 1)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %11, i32 400, i32 300)
  %12 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_source_dialog.dialog, align 8
  %vbox = getelementptr inbounds %struct.DefaultDialog_t, %struct.DefaultDialog_t* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 1, i32 1, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_scrolled_window_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %19, i32 1, i32 1)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call13)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @do_source_dialog.text, align 8
  call void @gtk_container_add(%struct._GtkContainer* %23, %struct._GtkWidget* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** @do_source_dialog.buffer, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i32 -1)
  %26 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** @do_source_dialog.buffer, align 8
  %27 = bitcast %struct._GtkTextBuffer* %26 to i8*
  call void @dump_output(i8* %27, void (i8*, i8*, ...)* bitcast (void (%struct._GtkTextBuffer*, i8*, ...)* @save_to_view to void (i8*, i8*, ...)*))
  %28 = load %struct.DefaultDialog_t*, %struct.DefaultDialog_t** @do_source_dialog.dialog, align 8
  call void @default_dialog_show(%struct.DefaultDialog_t* %28)
  ret void
}

declare %struct.DefaultDialog_t* @make_default_dialog(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @default_dialog_hide_cancel_button(%struct.DefaultDialog_t*) #1

declare void @default_dialog_hide_apply_button(%struct.DefaultDialog_t*) #1

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

declare void @gtk_text_view_set_editable(%struct._GtkTextView*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

declare void @dump_output(i8*, void (i8*, i8*, ...)*) #1

; Function Attrs: nounwind uwtable
define internal void @save_to_view(%struct._GtkTextBuffer* %buffer, i8* %format, ...) #0 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %scratch = alloca [1024 x i8], align 16
  %iter = alloca %struct._GtkTextIter, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %scratch, i32 0, i32 0
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vsprintf(i8* %arraydecay2, i8* %0, %struct.__va_list_tag* %arraydecay3) #4
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %1 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %1, %struct._GtkTextIter* %iter)
  %2 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %scratch, i32 0, i32 0
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %2, %struct._GtkTextIter* %iter, i8* %arraydecay6, i32 -1)
  ret void
}

declare void @default_dialog_show(%struct.DefaultDialog_t*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_insert(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
