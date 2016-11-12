; ModuleID = './app/actions/text-editor-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpTextEditor = type { %struct._GimpDialog, i32, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpUIManager* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GtkWindowGeometryInfo = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkFileChooser = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._PangoLanguage = type opaque
%struct._GdkAtom = type opaque
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque

@.str = private unnamed_addr constant [23 x i8] c"Open Text File (UTF-8)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"gimp-text-load-file\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @text_editor_load_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpTextEditor*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextEditor*
  store %struct._GimpTextEditor* %2, %struct._GimpTextEditor** %editor, align 8
  %3 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %file_dialog = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %3, i32 0, i32 5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %file_dialog2 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %5, i32 0, i32 5
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %8)
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  %9 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %10 = bitcast %struct._GimpTextEditor* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  %call8 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call5, %struct._GtkWindow* %11, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -5, i8* null)
  %12 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %file_dialog9 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %12, i32 0, i32 5
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %file_dialog9, align 8
  %13 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %file_dialog10 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %13, i32 0, i32 5
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog10, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_file_chooser_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %16, %struct._GtkFileChooser** %chooser, align 8
  %17 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %file_dialog13 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %17, i32 0, i32 5
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog13, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_dialog_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %20, i32 -5, i32 -6, i32 -1)
  %21 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %22 = bitcast %struct._GtkFileChooser* %21 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %24 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %file_dialog17 = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %24, i32 0, i32 5
  %25 = bitcast %struct._GtkWidget** %file_dialog17 to i8*
  %26 = bitcast i8* %25 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %23, i8** %26)
  %27 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %28 = bitcast %struct._GtkFileChooser* %27 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call18)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  %30 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %31 = bitcast %struct._GtkFileChooser* %30 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call20)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %32, i32 2)
  %33 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %34 = bitcast %struct._GtkFileChooser* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_window_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWindow*
  call void @gtk_window_set_destroy_with_parent(%struct._GtkWindow* %35, i32 1)
  %36 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %37 = bitcast %struct._GtkFileChooser* %36 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_dialog_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call24)
  %38 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %38, i32 -5)
  %39 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %40 = bitcast %struct._GtkFileChooser* %39 to i8*
  %41 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %42 = bitcast %struct._GimpTextEditor* %41 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpTextEditor*)* @text_editor_load_response to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %44 = bitcast %struct._GtkFileChooser* %43 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %45 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %46 = bitcast %struct._GtkFileChooser* %45 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_widget_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call28)
  %47 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_editor_get_type() #2

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

declare void @gtk_window_set_destroy_with_parent(%struct._GtkWindow*, i32) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @text_editor_load_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpTextEditor* %editor) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpTextEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpTextEditor* %editor, %struct._GimpTextEditor** %editor.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %1 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %1, i32 0, i32 3
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_view_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTextView*
  %call2 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %4)
  store %struct._GtkTextBuffer* %call2, %struct._GtkTextBuffer** %buffer, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_file_chooser_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkFileChooser*
  %call5 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %7)
  store i8* %call5, i8** %filename, align 8
  %8 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %9 = bitcast %struct._GtkTextBuffer* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_text_buffer_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTextBuffer*
  %11 = load i8*, i8** %filename, align 8
  %call8 = call i32 @gimp_text_buffer_load(%struct._GimpTextBuffer* %10, i8* %11, %struct._GError** %error)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor.addr, align 8
  %ui_manager = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %12, i32 0, i32 6
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %13, i32 0, i32 2
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0)) #5
  %18 = load i8*, i8** %filename, align 8
  %call12 = call i8* @gimp_filename_to_utf8(i8* %18)
  %19 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %19, i32 0, i32 2
  %20 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %14, %struct._GObject* %17, i32 2, i8* %call11, i8* %call12, i8* %20)
  call void @g_clear_error(%struct._GError** %error)
  %21 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %21)
  br label %return

if.end:                                           ; preds = %if.then
  %22 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %22)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %23)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.9
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @text_editor_clear_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpTextEditor*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextEditor*
  store %struct._GimpTextEditor* %2, %struct._GimpTextEditor** %editor, align 8
  %3 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpTextEditor, %struct._GimpTextEditor* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_text_view_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTextView*
  %call4 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %6)
  store %struct._GtkTextBuffer* %call4, %struct._GtkTextBuffer** %buffer, align 8
  %7 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 0)
  ret void
}

declare %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #2

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @text_editor_direction_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpTextEditor*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextEditor*
  store %struct._GimpTextEditor* %2, %struct._GimpTextEditor** %editor, align 8
  %3 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %4 = bitcast %struct._GtkAction* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_radio_action_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkRadioAction*
  %call4 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %5)
  store i32 %call4, i32* %value, align 4
  %6 = load %struct._GimpTextEditor*, %struct._GimpTextEditor** %editor, align 8
  %7 = load i32, i32* %value, align 4
  call void @gimp_text_editor_set_direction(%struct._GimpTextEditor* %6, i32 %7)
  ret void
}

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #2

declare void @gimp_text_editor_set_direction(%struct._GimpTextEditor*, i32) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i32 @gimp_text_buffer_load(%struct._GimpTextBuffer*, i8*, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_buffer_get_type() #2

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_free(i8*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
