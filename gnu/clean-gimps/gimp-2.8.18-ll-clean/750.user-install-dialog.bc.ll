; ModuleID = './app/dialogs/user-install-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpUserInstall = type opaque
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.user_install_dialog_run = private unnamed_addr constant [24 x i8] c"user_install_dialog_run\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"install != NULL\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GIMP User Installation\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"gimp-wilber-eek\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gtk-quit\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"User installation failed!\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"The GIMP user installation failed; see the log for details.\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Installation Log\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @user_install_dialog_run(%struct._GimpUserInstall* %install) #0 {
entry:
  %retval = alloca i32, align 4
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %success = alloca i32, align 4
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %cmp = icmp ne %struct._GimpUserInstall* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.user_install_dialog_run, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call = call %struct._GtkWidget* @user_install_dialog_new(%struct._GimpUserInstall* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call1 = call i32 @gimp_user_install_run(%struct._GimpUserInstall* %2)
  store i32 %call1, i32* %success, align 4
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %do.end
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  call void @gtk_main()
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %do.end
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %7)
  %8 = load i32, i32* %success, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.else
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @user_install_dialog_new(%struct._GimpUserInstall* %install) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %scrolled = alloca %struct._GtkWidget*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  call void @gimp_stock_init()
  %call = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_message_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %2, i32 0, i32 1
  %3 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #4
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %3, i8* %call4)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_message_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpMessageDialog*
  %box7 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %6, i32 0, i32 1
  %7 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box7, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i32 0, i32 0)) #4
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %7, i8* %call8)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #4
  %call10 = call %struct._GtkWidget* @gimp_frame_new(i8* %call9)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %frame, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call11)
  %10 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %10, i32 12)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call13)
  %13 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  %call15 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %13)
  %14 = bitcast %struct._GtkWidget* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call16)
  %15 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 1, i32 1, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call18 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %scrolled, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_scrolled_window_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %20, i32 1, i32 1)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_container_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call21)
  %23 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkContainer*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  call void @gtk_container_add(%struct._GtkContainer* %23, %struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call23 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  store %struct._GtkTextBuffer* %call23, %struct._GtkTextBuffer** %buffer, align 8
  %26 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call24 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 700, i8* null)
  %27 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call25 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %27)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %view, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_text_view_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call26)
  %30 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTextView*
  call void @gtk_text_view_set_editable(%struct._GtkTextView* %30, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_text_view_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call28)
  %33 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %33, i32 2)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %34, i32 -1, i32 200)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %37, %struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %41 = bitcast %struct._GtkTextBuffer* %40 to i8*
  call void @g_object_unref(i8* %41)
  %42 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %43 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %44 = bitcast %struct._GtkTextBuffer* %43 to i8*
  call void @gimp_user_install_set_log_handler(%struct._GimpUserInstall* %42, void (i8*, i32, i8*)* @user_install_dialog_log, i8* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  ret %struct._GtkWidget* %45
}

declare i32 @gimp_user_install_run(%struct._GimpUserInstall*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_main_quit() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_main() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_stock_init() #1

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #3

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

declare %struct._GtkTextTag* @gtk_text_buffer_create_tag(%struct._GtkTextBuffer*, i8*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

declare void @gtk_text_view_set_editable(%struct._GtkTextView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #3

declare void @gtk_text_view_set_wrap_mode(%struct._GtkTextView*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_user_install_set_log_handler(%struct._GimpUserInstall*, void (i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @user_install_dialog_log(i8* %message, i32 %error, i8* %data) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %error.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %error, i32* %error.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %2, %struct._GtkTextBuffer** %buffer, align 8
  %3 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %3, %struct._GtkTextIter* %cursor)
  %4 = load i32, i32* %error.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %message.addr, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %7 = load i8*, i8** %message.addr, align 8
  call void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32, i8*, ...) @gtk_text_buffer_insert_with_tags_by_name(%struct._GtkTextBuffer* %6, %struct._GtkTextIter* %cursor, i8* %7, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* null)
  br label %if.end.5

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load i8*, i8** %message.addr, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %10 = load i8*, i8** %message.addr, align 8
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %9, %struct._GtkTextIter* %cursor, i8* %10, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %11, %struct._GtkTextIter* %cursor, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32 -1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #3

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_insert_with_tags_by_name(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32, i8*, ...) #1

declare void @gtk_text_buffer_insert(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
