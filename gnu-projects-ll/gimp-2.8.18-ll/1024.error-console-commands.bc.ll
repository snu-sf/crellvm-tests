; ModuleID = './app/actions/error-console-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpErrorConsole = type { %struct._GimpEditor, %struct._Gimp*, %struct._GtkTextBuffer*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GdkDrawable = type { %struct._GObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpEditorPrivate = type opaque
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
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkFileChooser = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GdkAtom = type opaque

@.str = private unnamed_addr constant [34 x i8] c"Cannot save. Nothing is selected.\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Save Error Log to File\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"gimp-save-errors\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"gimp-errors-dialog\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Error writing file '%s':\0A%s\00", align 1

; Function Attrs: nounwind uwtable
define void @error_console_clear_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %console = alloca %struct._GimpErrorConsole*, align 8
  %start_iter = alloca %struct._GtkTextIter, align 8
  %end_iter = alloca %struct._GtkTextIter, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_error_console_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpErrorConsole*
  store %struct._GimpErrorConsole* %2, %struct._GimpErrorConsole** %console, align 8
  %3 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %text_buffer = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %3, i32 0, i32 2
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  %5 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %text_buffer2 = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %5, i32 0, i32 2
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer2, align 8
  call void @gtk_text_buffer_delete(%struct._GtkTextBuffer* %6, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_error_console_get_type() #2

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_delete(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define void @error_console_select_all_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %console = alloca %struct._GimpErrorConsole*, align 8
  %start_iter = alloca %struct._GtkTextIter, align 8
  %end_iter = alloca %struct._GtkTextIter, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_error_console_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpErrorConsole*
  store %struct._GimpErrorConsole* %2, %struct._GimpErrorConsole** %console, align 8
  %3 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %text_buffer = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %3, i32 0, i32 2
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  %5 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %text_buffer2 = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %5, i32 0, i32 2
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer2, align 8
  call void @gtk_text_buffer_select_range(%struct._GtkTextBuffer* %6, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  ret void
}

declare void @gtk_text_buffer_select_range(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define void @error_console_save_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %console = alloca %struct._GimpErrorConsole*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_error_console_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpErrorConsole*
  store %struct._GimpErrorConsole* %2, %struct._GimpErrorConsole** %console, align 8
  %3 = load i32, i32* %value.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %text_buffer = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %4, i32 0, i32 2
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %call2 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* null, %struct._GtkTextIter* null)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %gimp = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %9 = bitcast %struct._GimpErrorConsole* %8 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %7, %struct._GObject* %10, i32 1, i8* %call5)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %file_dialog = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %13 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %file_dialog8 = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %13, i32 0, i32 6
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog8, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_window_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %16)
  br label %return

if.end.11:                                        ; preds = %if.end
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #5
  %call13 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call12, %struct._GtkWindow* null, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 -5, i8* null)
  %17 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %file_dialog14 = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %17, i32 0, i32 6
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %file_dialog14, align 8
  %18 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %file_dialog15 = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %18, i32 0, i32 6
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog15, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_dialog_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %21, i32 -5, i32 -6, i32 -1)
  %22 = load i32, i32* %value.addr, align 4
  %23 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %save_selection = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %23, i32 0, i32 7
  store i32 %22, i32* %save_selection, align 4
  %24 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %file_dialog18 = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %24, i32 0, i32 6
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog18, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %28 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %file_dialog20 = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %28, i32 0, i32 6
  %29 = bitcast %struct._GtkWidget** %file_dialog20 to i8*
  %30 = bitcast i8* %29 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %27, i8** %30)
  %31 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %file_dialog21 = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %31, i32 0, i32 6
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %file_dialog21, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_file_chooser_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %34, %struct._GtkFileChooser** %chooser, align 8
  %35 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %36 = bitcast %struct._GtkFileChooser* %35 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_window_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call24)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWindow*
  %38 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %39 = bitcast %struct._GimpErrorConsole* %38 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_widget_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call26)
  %40 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWidget*
  %call28 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %40)
  call void @gtk_window_set_screen(%struct._GtkWindow* %37, %struct._GdkScreen* %call28)
  %41 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %42 = bitcast %struct._GtkFileChooser* %41 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_window_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call29)
  %43 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %43, i32 2)
  %44 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %45 = bitcast %struct._GtkFileChooser* %44 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_window_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call31)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  %47 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %48 = bitcast %struct._GtkFileChooser* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_dialog_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %49, i32 -5)
  %50 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %50, i32 1)
  %51 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %52 = bitcast %struct._GtkFileChooser* %51 to i8*
  %53 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %54 = bitcast %struct._GimpErrorConsole* %53 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpErrorConsole*)* @error_console_save_response to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %56 = bitcast %struct._GtkFileChooser* %55 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %58 = bitcast %struct._GtkFileChooser* %57 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_widget_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call37)
  %59 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkWidget*
  call void @gimp_help_connect(%struct._GtkWidget* %59, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %60 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %61 = bitcast %struct._GtkFileChooser* %60 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_widget_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call39)
  %62 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  br label %return

return:                                           ; preds = %if.end.11, %if.then.7, %if.then
  ret void
}

declare i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @error_console_save_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpErrorConsole* %console) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %console.addr = alloca %struct._GimpErrorConsole*, align 8
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpErrorConsole* %console, %struct._GimpErrorConsole** %console.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console.addr, align 8
  %text_buffer = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %4, i32 0, i32 2
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %6 = bitcast %struct._GtkTextBuffer* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_text_buffer_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTextBuffer*
  %8 = load i8*, i8** %filename, align 8
  %9 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console.addr, align 8
  %save_selection = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %9, i32 0, i32 7
  %10 = load i32, i32* %save_selection, align 4
  %call5 = call i32 @gimp_text_buffer_save(%struct._GimpTextBuffer* %7, i8* %8, i32 %10, %struct._GError** %error)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %11 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #5
  %16 = load i8*, i8** %filename, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %16)
  %17 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %17, i32 0, i32 2
  %18 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %12, %struct._GObject* %15, i32 2, i8* %call8, i8* %call9, i8* %18)
  call void @g_clear_error(%struct._GError** %error)
  %19 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %19)
  br label %return

if.end:                                           ; preds = %if.then
  %20 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %20)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %21)
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #2

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i32 @gimp_text_buffer_save(%struct._GimpTextBuffer*, i8*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_buffer_get_type() #2

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_free(i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
